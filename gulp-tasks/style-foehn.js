var config = require('../gulp-config.json');

/**
 * Build foehn stylesheet
 */
module.exports = function (gulp, plugins) {
    return function () {
        var processors = [
            require('postcss-import'),
            require('postcss-mixins'),
            require('postcss-advanced-variables'),
            require('postcss-custom-media'),
            require('postcss-custom-properties'),
            require('postcss-media-minmax'),
            require('postcss-color-function'),
            require('postcss-nesting'),
            require('postcss-nested'),
            require('postcss-custom-selectors'),
            require('postcss-property-lookup'),
            require('postcss-extend'),
            require('postcss-selector-matches'),
            require('postcss-selector-not'),
            require('postcss-hidden'),
            require('lost'),
            require('postcss-calc'),
            require('pixrem')({html: false}),
            require('postcss-color-rgba-fallback'),
            require('autoprefixer')({browsers: config.browsers}),
            require('postcss-class-prefix')('vd-', {
                ignore: [
                    /wf-/, // ignore webfontloader classes
                    /is-/
                ]
            }),
            require('perfectionist')
        ]

        gulp.src(config.src.styles.foehn)
            // If we are in dev, start sourcemaps
            .pipe(plugins.if(config.dev, plugins.sourcemaps.init()))
            // We always want PostCSS to run
            .pipe( plugins.postcss(processors) )
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // Minify the styles
            .pipe( plugins.cssnano() )
            // Write sourcemaps
            .pipe( plugins.sourcemaps.write() )
            // Rename minified styles file
            .pipe( plugins.rename({ extname: '.min.css' }) )
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // If we are in dev, reload the browser
            .pipe( plugins.if(config.dev, plugins.browserSync.reload({stream:true})) );
    };
};
