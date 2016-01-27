# Fœhn

Fœhn (*føn*) is the design system build for [the website of the State of Vaud](http://www.vd.ch/).

[Take a look at the documentation](http://dsi-vd.github.io/foehn/).

## Issues

If you don't like the [usual issues view](https://github.com/DSI-VD/foehn/issues), we have [a Waffle board view](https://waffle.io/DSI-VD/foehn).  
[![Stories in Progress](https://badge.waffle.io/DSI-VD/foehn.png?label=Ready)](https://waffle.io/DSI-VD/foehn)

## Build tools

[Fabricator](http://fbrctr.github.io/) is used to build fœhn.

## Quick Start

```shell
$ git clone https://github.com/vdch/foehn.git
$ cd foehn
$ npm start
```

## Versioning

The project use [Semantic Versioning](http://semver.org/).


### How to bump version ?

To bump version use the following commands ([more info](https://docs.npmjs.com/cli/version)):

Patch (v0.0.x)
```shell
$ npm version patch -m "Upgrade to %s for reasons"
```

Minor version (v0.x.0)
```shell
$ npm version minor -m "Upgrade to %s for reasons"
```

Major version (vX.0.0)
```shell
$ npm version major -m "Upgrade to %s for reasons"
```
