'use strict';

const pkg = require('./package.json');

const paths = {
    build: `${__dirname}/dist`,
    src: `${__dirname}/src`,
    static: `${__dirname}/tmp`,
};

const mandelbrot = require('@frctl/mandelbrot')({
    lang: 'en',
    styles: [
        '/assets/styles/doc-main.css',
        'default',
        '/assets/styles/styleguide.css',
    ],
    static: {
        mount: 'fractal',
    },
    skin: 'navy',
});

/* Create a new Fractal */
const fractal = require('@frctl/fractal').create();

// Project config
fractal.set('project.title', 'Foehn'); // set the title of the project
fractal.set('project.version', pkg.version); // set the version of the project

// Components config
fractal.components.set('default.status', 'wip');
fractal.components.engine('@frctl/nunjucks'); // register the Nunjucks adapter for your components
fractal.components.set('ext', '.html'); // look for files with a .nunj file extension
fractal.components.set('path', `${paths.src}/components`); // tell Fractal where the components will live
fractal.components.set('default.preview', '@preview'); // Tell Fractal what is the default preview

// Docs config
fractal.docs.set('statuses', {
    draft: {
        label: 'Draft',
        description: 'Do not implement.',
        color: '#FF3333',
    },
    wip: {
        label: 'WIP',
        description: 'Work in progress. Implement with caution.',
        color: '#FF9233',
    },
    review: {
        label: 'Need review',
        description: 'Ready for a review.',
        color: '#32edff',
    },
    ready: {
        label: 'Ready',
        description: 'Ready to implement.',
        color: '#29CC29',
    },
});
fractal.docs.set('default.status', 'draft');
fractal.docs.set('ext', '.md');
fractal.docs.set('path', `${paths.src}/docs`); // tell Fractal where the documentation pages will live
fractal.docs.engine('@frctl/nunjucks'); // use Nunjucks for docs

// Web UI config
fractal.web.theme(mandelbrot); // Tell fractal wich theme to use
fractal.web.set('builder.dest', paths.build); // destination for the static export
fractal.web.set('static.path', paths.static); // tell Fractal where static assets are
fractal.web.set('builder.urls.ext', null); // tell fractal to not use file extension when rewriting URLs

// Export config
module.exports = fractal;
