'use strict';

const paths = {
    build: `${__dirname}/dist`,
    src: `${__dirname}/src`,
    static: `${__dirname}/tmp`
};

const mandelbrot = require('@frctl/mandelbrot')({
    lang: 'en',
    styles: [
        '/assets/styles/doc-main.css',
        'default',
        '/assets/styles/styleguide.css'
    ],
    static: {
        mount: 'fractal'
    },
    skin: 'navy'
});

/* Tune Nunjucks */
const njk = require('@frctl/nunjucks')({
    filters: {
        compUrl: function (handle) {
            return `/components/detail/${handle.replace('@', '')}`;
        },
        renderComponent: function (handle) {
            return `<div class="component-example"><span class="component-example__preview-link"><a href="../../components/preview/${handle.replace('@', '')}" target="_blank">Open this example in a new window</a></span><iframe class="component-example" src="../../components/preview/${handle.replace('@', '')}"></iframe></div>`;
        }
    }
});

/* Create a new Fractal */
const fractal = require('@frctl/fractal').create();
const pkg = require('./package.json');

// Project config
fractal.set('project.title', 'Foehn'); // Set the title of the project
fractal.set('project.version', pkg.version); // Set the version of the project

// Components config
fractal.components.set('default.status', 'wip');
fractal.components.engine(njk); // Register the Nunjucks adapter for your components
fractal.components.set('ext', '.html'); // Look for files with a .nunj file extension
fractal.components.set('path', `${paths.src}/components`); // Tell Fractal where the components will live
fractal.components.set('default.preview', '@preview'); // Tell Fractal what is the default preview

// Docs config
fractal.docs.set('statuses', {
    draft: {
        label: 'Draft',
        description: 'Do not implement.',
        color: '#FF3333'
    },
    wip: {
        label: 'WIP',
        description: 'Work in progress. Implement with caution.',
        color: '#FF9233'
    },
    review: {
        label: 'Need review',
        description: 'Ready for a review.',
        color: '#32edff'
    },
    ready: {
        label: 'Ready',
        description: 'Ready to implement.',
        color: '#29CC29'
    }
});
fractal.docs.set('default.status', 'draft');
fractal.docs.set('ext', '.md');
fractal.docs.set('path', `${paths.src}/docs`); // Tell Fractal where the documentation pages will live
fractal.docs.engine(njk); // Use Nunjucks for docs

// Web UI config
fractal.web.theme(mandelbrot); // Tell fractal wich theme to use
fractal.web.set('builder.dest', paths.build); // Destination for the static export
fractal.web.set('static.path', paths.static); // Tell Fractal where static assets are
fractal.web.set('builder.urls.ext', null); // Tell fractal to not use file extension when rewriting URLs

// Export config
module.exports = fractal;
