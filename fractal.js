'use strict';

const paths = {
  build: __dirname + '/dist',
  src: __dirname + '/src',
  static: __dirname + '/tmp'
};

const mandelbrot = require('@frctl/mandelbrot')({
  lang: 'en',
  skin: 'navy'
});

/* Create a new Fractal instance and export it for use elsewhere if required */
const fractal = module.exports = require('@frctl/fractal').create();

/* Set the title of the project */
fractal.set('project.title', 'Foehn');

fractal.components.set('default.status', 'wip');

/* Tell Fractal where the components will live */
fractal.components.set('path', paths.src + '/components');

/* Tell Fractal where the documentation pages will live */
fractal.docs.set('path', paths.src + '/docs');

/* Destination for the static export */
fractal.web.set('builder.dest', paths.build);

/* Tell Fractal where static assets are */
fractal.web.set('static.path', paths.static);

/* Tell fractal to not use file extension when rewriting URLs */
fractal.web.set('builder.urls.ext', null);

/* Tell fractal wich theme to use */
fractal.web.theme(mandelbrot);

/* Tell Fractal what is the default preview */
fractal.components.set('default.preview', '@preview')
