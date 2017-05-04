# Fœhn

Fœhn (*føn*) is the design system build for [the website of the State of Vaud](http://www.vd.ch/).

[Take a look at the documentation](http://dsi-vd.github.io/foehn/).

## Changelog

Upgrading? Please read our [CHANGELOG](https://github.com/DSI-VD/foehn/blob/master/CHANGELOG.md) to learn what changes to expect in the latest version, whether that's new features, bug fixes, changes, or whatever else.

## Quick Start

The following script lets you build, watch and serve the code.

```shell
$ git clone [path/of/the/repo/]foehn.git
$ cd foehn
$ npm start
```

[Fractal](http://fractal.build/) and [Bootstrap 4](http://v4-alpha.getbootstrap.com/) is used to build fœhn.

### Build

If you only want to build the code (the `dist/` folder).

```shell
$ npm run build
```

### Deploy the styleguide

We deploy the styleguide to a `gh-pages` branch on Github. To do this, use the following command:

```shell
$ npm run deploy
```

The frontend can be viewed at this url: [](http://dsi-vd.github.io/foehn/).


### New version

1. Make sure, the `CHANGELOG.md` is up to date. If not, update it and commit the changes.
1. Run the following command to create a new version of the package. (It also create the tag.)

```shell
$ yarn version
```

### Publish on the npm registry

The following command will build the code and publish the latest version on the registry you have set in your [NPM config](https://docs.npmjs.com/cli/config).

```shell
$ npm run publish
```

If you need to publish a specific version, use `$ npm run build && npm publish --tag <tag>` to build the code and publish [a specific tag](https://docs.npmjs.com/cli/publish).

#### Publish on Nexus (for internal use)

Make sure you have [set Nexus as your registry](https://portail.etat-de-vaud.ch/outils/dsiwiki/x/HABSGw).
