'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json'),
    imagemin      = require('gulp-imagemin');

module.exports = function () {

    gulp.task('images', ['favicon'], function () {
        return gulp.src(config.src.images)
            .pipe(imagemin())
            .pipe(gulp.dest(config.dest + '/assets/foehn/images'));
    });
}
