'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json');

module.exports = function () {

    gulp.task('favicon', function () {
        return gulp.src('./src/favicon.ico')
            .pipe(gulp.dest(config.dest));
    });
}
