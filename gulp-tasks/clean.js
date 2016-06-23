'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json'),
    del           = require('del');

module.exports = function () {

    /**
     * Clean output directoriesnew
     */
    gulp.task('clean', function () {
        return del([config.dest]);
    });
}
