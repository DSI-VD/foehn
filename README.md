# Fœhn

Fœhn (*føn*) is the design system build for [the website of the State of Vaud](http://www.vd.ch/).

[Take a look at the documentation](http://dsi-vd.github.io/foehn/).

[Fractal](http://fractal.build/) and [Bootstrap 4](http://v4-alpha.getbootstrap.com/) is used to build fœhn.

## Changelog

Upgrading? Please read our [CHANGELOG](https://github.com/DSI-VD/foehn/blob/master/CHANGELOG.md) to learn what changes to expect in the latest version, whether that's new features, bug fixes, changes, or whatever else.

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

## Test accessibilit

To test basic accessibility issues using [Pa11y](http://pa11y.org/).

```
$ yarn test-a11y
```

## Deploy the styleguide

We deploy the styleguide to a `gh-pages` branch on Github. To do this, use the
following command to build and then deploy the code:

```shell
$ yarn run deploy
```

The frontend can be viewed at this url: [](http://dsi-vd.github.io/foehn/).

## New version

1. Make sure, the `CHANGELOG.md` is up to date. If not, update it and commit the changes.
1. Run the [`$ yarn version`](https://yarnpkg.com/fr/docs/cli/version) command
   to create a new version of the package. (It also create the tag.)

```shell
$ yarn version
```

## Publish on the npm registry

The following command will build the code and publish the latest version on the
registry you have set in your [NPM config](https://docs.npmjs.com/cli/config).

```shell
$ yarn publish-version
```

If you need to publish a specific version, use `$ npm run build && npm publish --tag <tag>` to build the code and publish [a specific tag](https://docs.npmjs.com/cli/publish).

#### Publish on Nexus (for internal use)

Make sure you have [set Nexus as your registry](https://portail.etat-de-vaud.ch/outils/dsiwiki/x/HABSGw).
