'use strict';

var gulp = require('gulp'),
    del = require('del'),
    config = require('../gulp-config.json');

module.exports = function() {
    gulp.task('clean', function () {
        return del([config.dest]);
    });
};
