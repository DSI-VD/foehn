@Library('pee-library') _

try {
    def gitVersion = params.GIT_VERSION
    def nodeVersion = params.NODE_VERSION
    def githubRepo = params.GITHUB_REPO
    def sourceBranch = params.SOURCE_BRANCH
    def npmVersion = params.NPM_VERSION

    println "Releasing Foehn ${gitVersion}, nodeVersion=${nodeVersion}"

    if (!gitVersion) {
        throw new Exception('Missing build parameter "NEW_VERSION"')
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

    def buildDir = "release-job"
    def branchName = sourceBranch.replace("origin/", "")

    node('chromium-headless') {
        sh "rm -Rf ${buildDir} ; mkdir -p ${buildDir}"

        dir(buildDir) {
            stage("[Foehn] : Clone repository") {
              echo "Cloning the repository with branch ${branchName}"
              checkout scm
              gitCheckoutBranch(branchName)
            }

            stage("[Foehn] : Install project") {
              echo "Install project"
              runYarnCommand("install", nodeVersion)
            }

            stage("[Foehn] : Pushing to Github") {
              echo "Push to Github"
              runGitCommand("remote add Github ${githubRepo}")
              runGitCommand("push Github ${branchName}")
            }

            stage("[Foehn] : Push new version to Github") {
              runGitCommand("push Github ${gitVersion}")
            }

            stage("[Foehn] : Deploy to npmjs") {
              runNpmCommand("config set registry https://registry.npmjs.org/")
              runNpmCommand("publish --tag ${npmVersion}")
            }
        }
    }
} catch (e) {
    // If there was an exception thrown, the build failed
    currentBuild.result = "FAILED"
    throw e
}

def runYarnCommand(String command, String nodeVersion) {
    def sourceNodeResult = sourceNode(nodeVersion)
    def yarnCommand = "yarn ${command}"
    def cmd = sourceNodeResult ? sourceNodeResult + " && " + yarnCommand : yarnCommand
    echo "Running: ${cmd}"
    sh cmd
}

def runNpmCommand(String command, String nodeVersion) {
    def sourceNodeResult = sourceNode(nodeVersion)
    def npmCommand = "npm ${command}"
    def cmd = sourceNodeResult ? sourceNodeResult + " && " + npmCommand : npmCommand
    echo "Running: ${cmd}"
    sh cmd
}

def runGitCommand(String command) {
    def gitCommand = "git ${command}"
    echo "Running: ${gitCommand}"
    sh gitCommand
}
