'use strict';

var gulp = require('gulp'),
    eslint = require('gulp-eslint');

module.exports = function() {
    gulp.task('lint-scripts', function () {
        return gulp.src(['src/assets/foehn/**/*.js', './gulpfile.js', './gulp-task/**/*.js', '!node_modules/**'])
            .pipe(eslint())
            .pipe(eslint.format())
            .pipe(eslint.failAfterError());
    });
};
