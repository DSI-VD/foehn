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
}
