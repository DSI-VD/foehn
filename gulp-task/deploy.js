'use strict';

var gulp = require('gulp'),
    ghPages = require('gulp-gh-pages'),
    config = require('../gulp-config.json');

module.exports = function() {
    gulp.task('deploy', function() {
        return gulp.src(config.dest + '/**/*')
            .pipe(ghPages());
    });
};
