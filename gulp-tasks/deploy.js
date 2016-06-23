'use strict'

var gulp          = require('gulp'),
    config        = require('../gulp-config.json'),
    ghPages       = require('gulp-gh-pages');

module.exports = function () {

    gulp.task('deploy', function() {
      return gulp.src(config.dest + '/**/*')
        .pipe(ghPages());
    });
}
