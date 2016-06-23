'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json');

module.exports = function () {

    gulp.task('fonts', function () {
        return gulp.src(config.src.fonts)
            .pipe(gulp.dest(config.dest + '/assets/foehn/fonts'));
    });
}
