'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json'),
    sourcemaps    = require('gulp-sourcemaps'),
    nano          = require('gulp-cssnano'),
    sass          = require('gulp-sass'),
    postcss       = require('gulp-postcss'),
    gulpif        = require('gulp-if'),
    rename        = require('gulp-rename'),
    browserSync   = require('browser-sync'),
    reload        = browserSync.reload;

module.exports = function () {
    gulp.task('styles:fabricator', function () {
        var processors = [
            require('autoprefixer')({browsers: config.browsers})
        ]
        gulp.src(config.src.styles.fabricator)
            // Start sourcemaps
            .pipe(sourcemaps.init())
            // Build CSS files
            .pipe(sass().on('error', sass.logError))
            // We always want PostCSS to run
            .pipe( postcss(processors) )
            // If we are in dev, do not minify
            .pipe( gulpif(!config.dev, nano()) )
            // Rename the CSS file
            .pipe(rename('f.css'))
            // Write the sourcemaps
            .pipe(sourcemaps.write())
            // Set the destination of the CSS files
            .pipe(gulp.dest(config.dest + '/assets/fabricator/styles'))
            // If we are in dev, reload the browser
            .pipe(gulpif(config.dev, reload({stream:true})));
    });

    gulp.task('lint-styles', function lintCssTask() {
      const gulp = require('gulp');
      const gulpStylelint = require('gulp-stylelint');

      return gulp
        .src('src/**/*.css')
        .pipe(gulpStylelint({
          reporters: [
            {formatter: 'string', console: true}
          ]
        }));
    });

    gulp.task('styles:foehn', ["lint-styles"], function () {
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
        return gulp.src(config.src.styles.foehn)
            // If we are in dev, start sourcemaps
            .pipe(gulpif(config.dev, sourcemaps.init()))
            // We always want PostCSS to run
            .pipe( postcss(processors) )
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // Minify the styles
            .pipe( nano() )
            // Write sourcemaps
            .pipe( sourcemaps.write() )
            // Rename minified styles file
            .pipe(rename({ extname: '.min.css' }))
            // Set the destination for the CSS file
            .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
            // If we are in dev, reload the browser
            .pipe( gulpif(config.dev, reload({stream:true})) );
    });

    gulp.task('styles', ['styles:fabricator', 'styles:foehn']);
}
