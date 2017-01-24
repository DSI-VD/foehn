---
title: Fœhn - VD.ch
---
**This styleguide has been designed to serve the purpose of the website vd.ch.**

## What is a styleguide ?

According to wikipedia, a styleguide is:<br>
*A set of standards for the writing and design of documents, either for general use or for a specific publication, organization, or field. (It is often called a style sheet, though that term has other meanings.) A style guide establishes and enforces style to improve communication.*

## Framework

This styleguide is extensively based on the framework Bootstrap version 4 using the preprocessor SASS. Further information can be fetched on [the official documentation](https://v4-alpha.getbootstrap.com/)

## Content & hierarchy

All the components are organized accordingly to the [atomic design](http://atomicdesign.bradfrost.com/) philosophy by Brad Frost.<br>
  You can navigate through all theses components with the help of the left side navigation bar.

Additionaly, a few example pages are designed to give an overview of all these elements integrated together

## Usage

Each component are listed with a quick documentation box and an example of the displayed element with his source code. It should give you all the infos to apply this design guideline to any web tools you seek to develop

More technical infos (to use or contribute to the styleguide) are referenced on the README file of the repo [FOEHN](https://github.com/DSI-VD/foehn)

## Getting started

### Install as node dependency

With Yarn:

```bash
$ yarn add https://github.com/DSI-VD/foehn
```

or NPM:

```bash
# test
$ npm install https://github.com/DSI-VD/foehn
```

### How to include

Put this in your `<head/>` tag:

```html
<!-- load all stylesheets -->
<link rel="stylesheet" href="path/to/build/css/vendors.min.css">
<link rel="stylesheet" href="path/to/build/css/main.css">

<!-- load polyfills for old IE -->
<!--[if lte IE 9]>
<script src="path/to/build/js/polyfills.min.js"></script>
<![endif]-->
```

Put this just before the closing `</body>` tag:

```html
<!-- load all the javascript files (jQuery needed for Bootstrap, TetherJS needed for the Tooltip Bootstrap plugin) -->
<script src="//code.jquery.com/jquery-2.2.4.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js" integrity="sha384-Plbmg8JY28KFelvJVai01l8WyZzrYWG825m+cZ0eDDS1f7d/js6ikvy1+X+guPIB" crossorigin="anonymous"></script>
<script src="path/to/build/js/vendors.min.js"></script>
<script src="path/to/build/js/vendors.bundle.js"></script>
<script src="path/to/build/js/app.bundle.js"></script>

<!-- call all the fonts asynchronously -->
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"> </script>
<script>
  WebFont.load({
    custom: {
      families: ['Graphik:n5,n4,i4', 'Produkt:n3,i3,n7,n5'],
      urls: ['path/to/build/fonts/fonts.css']
    }
  });
</script>
```
