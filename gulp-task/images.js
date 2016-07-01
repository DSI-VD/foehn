'use strict';

var gulp = require('gulp'),
    imagemin = require('gulp-imagemin'),
    config = require('../gulp-config.json');

module.exports = function() {
    gulp.task('images', ['favicon'], function () {
        return gulp.src(config.src.images)
            .pipe(imagemin())
            .pipe(gulp.dest(config.dest + '/assets/foehn/images'));
    });
};
