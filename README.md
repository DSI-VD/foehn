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

To bump version use the following command:

```
$ yarn version
```

It will ask you the new version number.
