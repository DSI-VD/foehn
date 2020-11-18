# Fœhn

Fœhn (*føn*) is the design system build for [the website of the State of
Vaud](http://www.vd.ch/).

[Take a look at the documentation](http://dsi-vd.github.io/foehn-design-system/).

[Bootstrap 4](http://www.getbootstrap.com/) is used to build fœhn.

## Changelog

Upgrading? Please read our
[CHANGELOG](https://github.com/DSI-VD/foehn/blob/master/CHANGELOG.md) to learn
what changes to expect in the latest version, whether that's new features, bug
fixes, changes, or whatever else.

## Run locally

You will need [Git](https://help.github.com/articles/set-up-git/),
[Node.js](https://nodejs.org/) and [yarn](https://yarnpkg.com/) to get this
project running.

### Fork repository (optional)

If you are an external contributor make sur to [fork this project
first](https://help.github.com/articles/fork-a-repo/)

### Clone repository

```shell
$ git clone [path/of/the/repo/]foehn.git
$ cd foehn
```

### Install dependencies

```shell
$ yarn
```

### Start a local server

This will build sources, serve pages and watch for changes.

```shell
$ yarn start
```

### Build

Build `./src` to `./dist`

```shell
$ yarn build
```

## New version

1. Make sure, the `CHANGELOG.md` is up to date. If not, update it and commit the
   changes.
1. Run the [`$ yarn version`](https://yarnpkg.com/fr/docs/cli/version) command
   to create a new version of the package. (It also create the tag.)

```shell
$ yarn version
```

## NPM

### Getting Foehn npm package

[Foehn is available on the npmjs
registry](https://www.npmjs.com/package/@dsivd/foehn).

### Publish on the npm registry

The following command will build the code and publish the latest version on the
registry you have set in your [NPM config](https://docs.npmjs.com/cli/config).

```shell
$ npm publish --tag latest
```

If you need to publish a specific version, use `$ yarn  publish --tag <tag>` to
build the code and publish [a specific
tag](https://yarnpkg.com/en/docs/cli/publish#toc-yarn-publish-tag).
