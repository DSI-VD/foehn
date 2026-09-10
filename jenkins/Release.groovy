@Library('devsup-library') _

try {
    def gitVersion = params.GIT_VERSION
    def nodeVersion = params.NODE_VERSION
    def githubRepo = params.GITHUB_REPO
    def sourceBranch = params.SOURCE_BRANCH
    def npmVersion = params.NPM_VERSION
    def npmRegistry = 'https://registry.npmjs.org/'

    println "Releasing Foehn ${gitVersion} from branch ${sourceBranch}. " +
        "nodeVersion=${nodeVersion}, npmVersion=${npmVersion}"

    if (!gitVersion) {
        throw new Exception('Missing build parameter "GIT_VERSION"')
    }

    if (!nodeVersion) {
        throw new Exception('Missing build parameter "NODE_VERSION"')
    }

    if (!githubRepo) {
        throw new Exception('Missing build parameter "GITHUB_REPO"')
    }

    if (!sourceBranch) {
        throw new Exception('Missing build parameter "SOURCE_BRANCH"')
    }

    if (!npmVersion) {
        throw new Exception('Missing build parameter "NPM_VERSION"')
    }

    def buildDir = 'release-job'
    def branchName = sourceBranch.replace('origin/', '')

    node('pee') {
        sh "rm -Rf ${buildDir} ; mkdir -p ${buildDir}"

        dir(buildDir) {
            stage('[Foehn] : Clone repository') {
                echo "Getting branch ${branchName} from Git"

                checkout scm
                gitCheckoutBranch(branchName)
                runGitCommand('fetch origin --tags --force')
            }

            stage('[Foehn] : Validate release') {
                sh """
                    set -e

                    PACKAGE_VERSION=\$(node -p "require('./package.json').version")
                    EXPECTED_VERSION=\$(printf '%s' '${gitVersion}' | sed 's/^v//')

                    echo "package.json version: \$PACKAGE_VERSION"
                    echo "Git release version:  \$EXPECTED_VERSION"

                    if [ "\$PACKAGE_VERSION" != "\$EXPECTED_VERSION" ]; then
                        echo "ERROR: package.json version does not match GIT_VERSION"
                        exit 1
                    fi

                    if ! git rev-parse '${gitVersion}^{commit}' >/dev/null 2>&1; then
                        echo "ERROR: Git tag ${gitVersion} does not exist"
                        exit 1
                    fi

                    TAG_COMMIT=\$(git rev-parse '${gitVersion}^{}')
                    HEAD_COMMIT=\$(git rev-parse HEAD)

                    echo "HEAD commit: \$HEAD_COMMIT"
                    echo "Tag commit:  \$TAG_COMMIT"

                    if [ "\$TAG_COMMIT" != "\$HEAD_COMMIT" ]; then
                        echo "ERROR: ${gitVersion} does not point to current HEAD"
                        exit 1
                    fi
                """
            }

            stage('[Foehn] : Install project') {
                runYarnCommand('install --frozen-lockfile', nodeVersion)
            }

            stage('[Foehn] : Build project') {
                runYarnCommand('build', nodeVersion)
            }

            stage('[Foehn] : Push branch to GitHub') {
                sh """
                    if git remote get-url Github >/dev/null 2>&1; then
                        git remote set-url Github '${githubRepo}'
                    else
                        git remote add Github '${githubRepo}'
                    fi
                """

                runGitCommand("fetch Github ${branchName}")
                runGitCommand("push --force-with-lease Github ${branchName}:${branchName}")
            }

            stage('[Foehn] : Push tag to GitHub') {
                sh """
                    set -e

                    LOCAL_COMMIT=\$(git rev-parse '${gitVersion}^{}')
                    REMOTE_TAG=\$(git ls-remote --tags Github 'refs/tags/${gitVersion}' | cut -f1)
                    REMOTE_PEELED=\$(git ls-remote --tags Github 'refs/tags/${gitVersion}^{}' | cut -f1)

                    if [ -z "\$REMOTE_TAG" ]; then
                        echo "Tag ${gitVersion} does not exist on GitHub"
                        git push Github '${gitVersion}'
                    else
                        if [ -n "\$REMOTE_PEELED" ]; then
                            REMOTE_COMMIT="\$REMOTE_PEELED"
                        else
                            REMOTE_COMMIT="\$REMOTE_TAG"
                        fi

                        echo "Local tag commit:  \$LOCAL_COMMIT"
                        echo "Remote tag commit: \$REMOTE_COMMIT"

                        if [ "\$LOCAL_COMMIT" = "\$REMOTE_COMMIT" ]; then
                            echo "Tag ${gitVersion} already points to the correct commit on GitHub"
                        else
                            echo "ERROR: Tag ${gitVersion} exists on GitHub but points to another commit"
                            exit 1
                        fi
                    fi
                """
            }

            stage('[Foehn] : Deploy to npmjs') {
                runNpmCommand(
                    "whoami --registry=${npmRegistry}",
                    nodeVersion
                )

                def packageVersion = runNodeCommand(
                    "node -p \"require('./package.json').version\"",
                    nodeVersion
                )

                def publishedVersion = runNodeCommand(
                    "npm view @dsivd/foehn@${packageVersion} version " +
                        "--registry=${npmRegistry} 2>/dev/null || true",
                    nodeVersion
                )

                if (publishedVersion == packageVersion) {
                    echo "@dsivd/foehn@${packageVersion} is already published. Skipping npm publish."
                } else {
                    runNpmCommand(
                        "publish --tag ${npmVersion} --access public --registry=${npmRegistry}",
                        nodeVersion
                    )
                }
            }
        }
    }
} catch (e) {
    currentBuild.result = 'FAILED'
    throw e
}

def runGitCommand(String command) {
    def gitCommand = "git ${command}"

    echo "Running: ${gitCommand}"
    sh gitCommand
}

def runNodeCommand(String command, String nodeVersion) {
    def sourceNodeResult = sourceNodejs(nodeVersion)
    def cmd = sourceNodeResult ? sourceNodeResult + ' && ' + command : command

    sh(
        script: cmd,
        returnStdout: true
    ).trim()
}

def runNpmCommand(String command, String nodeVersion) {
    def sourceNodeResult = sourceNodejs(nodeVersion)
    def npmCommand = "npm ${command}"
    def cmd = sourceNodeResult ? sourceNodeResult + ' && ' + npmCommand : npmCommand

    echo "Running: ${cmd}"
    sh cmd
}

def runYarnCommand(String command, String nodeVersion) {
    def sourceNodeResult = sourceNodejs(nodeVersion)
    def yarnCommand = "yarn ${command}"
    def cmd = sourceNodeResult ? sourceNodeResult + ' && ' + yarnCommand : yarnCommand

    echo "Running: ${cmd}"
    sh cmd
}
