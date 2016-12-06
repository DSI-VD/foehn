---
title: Fœhn - VD.ch
styleguide: true
permalink: false
---
  <p><strong>This styleguide has been designed to serve the purpose of the website vd.ch.</strong></p>
  <h2>What is a styleguide ?</h2>
  <p>
    According to wikipedia, a styleguide is: <br>
    <em> A set of standards for the writing and design of documents, either for general use or for a specific publication, organization, or field. (It is often called a style sheet, though that term has other meanings.) A style guide establishes and enforces style to improve communication.</em>
  </p>
  <h2>Framework</h2>
  <p>This styleguide is extensively based on the framework Bootstrap version 4 using the preprocessor SASS. Further information can be fetched on <a href="https://v4-alpha.getbootstrap.com/">the official documentation</a></p>
  <h2>Content & hierarchy</h2>
  <p>All the components are organized accordingly to the <a href="http://atomicdesign.bradfrost.com/">atomic design</a> philosophy by Brad Frost.<br>
  You can navigate through all theses components with the help of the left side navigation bar.
  </p>
  <p>Additionaly, a few example pages are designed to give an overview of all these elements integrated together</p>
  <h2>Usage</h2>
  <p>Each component are listed with a quick documentation box and an example of the displayed element with his source code. It should give you all the infos to apply this design guideline to any web tools you seek to develop</p>
  <p>More technical infos (to use or contribute to the styleguide) are referenced on the README file of the repo <a href="https://github.com/DSI-VD/foehn">FOEHN</a></p>
  <h2>Getting started</h2>

  <h3>How to include</h3>

  <p class="mt-1">Put this in your `<head/>` tag:</p>

```html
<!-- load all stylesheets -->
<link rel="stylesheet" href="path/to/build/css/vendors.min.css">
<link rel="stylesheet" href="path/to/build/css/main.css">

<!-- load polyfills for old IE -->
<!--[if lte IE 9]>
<script src="path/to/build/js/polyfills.min.js"></script>
<![endif]-->
```

  <p class="mt-1">Put this just before the closing `</body>` tag:</p>

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

  <h3>Install with yarn</h3>
  <pre>
    <code>$ yarn add https://github.com/DSI-VD/foehn</code>
  </pre>

  <h3>Install with npm</h3>
  <pre>
    <code>$ npm install https://github.com/DSI-VD/foehn</code>
  </pre>
