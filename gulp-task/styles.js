'use strict';

var gulp = require('gulp'),
    gulpif = require('gulp-if'),
    gutil = require('gulp-util'),
    sass = require('gulp-sass'),
    sourcemaps = require('gulp-sourcemaps'),
    postcss = require('gulp-postcss'),
    nano = require('gulp-cssnano'),
    gulpStylelint = require('gulp-stylelint'),
    rename = require('gulp-rename'),
    browserSync = require('browser-sync'),
    reload = browserSync.reload,
    config = require('../gulp-config.json');

module.exports = function() {
    gulp.task('styles:fabricator', function () {
        var processors = [
            require('autoprefixer')({browsers: config.browsers})
        ];
        gulp.src(config.src.styles.fabricator)
            // Start sourcemaps
            .pipe(sourcemaps.init())
            // Build CSS files
            .pipe(sass().on('error', sass.logError))
            // We always want PostCSS to run
            .pipe( postcss(processors) )
            // If we are in dev, do not minify
            .pipe( gulpif(!gutil.env.dev, nano()) )
            // Rename the CSS file
            .pipe(rename('f.css'))
            // Write the sourcemaps
            .pipe(sourcemaps.write())
            // Set the destination of the CSS files
            .pipe(gulp.dest(config.dest + '/assets/fabricator/styles'))
            // If we are in dev, reload the browser
            .pipe(gulpif(gutil.env.dev, reload({stream:true})));
    });

    gulp.task('lint-styles', function lintCssTask() {
        return gulp
            .src('src/**/*.css')
            .pipe(gulpStylelint({
                reporters: [
                    {formatter: 'string', console: true}
                ]
            }));
    });

    gulp.task('styles:foehn', ['lint-styles'], function () {
        var processors = [
            require('postcss-import'),
            require('postcss-mixins'),
            require('postcss-each'),
            require('postcss-for'),
            require('postcss-simple-vars'),
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
        ];
        return gulp.src(config.src.styles.foehn)
            // Start sourcemaps
            .pipe(sourcemaps.init())
            // We always want PostCSS to run
            .pipe( postcss(processors) )
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // Minify the styles
            .pipe( nano() )
            // Rename minified styles file
            .pipe(rename({ suffix: '.min' }))
            // Write sourcemaps
            .pipe( sourcemaps.write('.') )
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // If we are in dev, reload the browser
            .pipe( gulpif(gutil.env.dev, reload({stream:true})) );
    });

    gulp.task('styles', ['styles:fabricator', 'styles:foehn']);
};
