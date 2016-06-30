'use strict';

var gulp = require('gulp'),
    eslint = require('gulp-eslint');

gulp.task('lint-scripts', function () {
     return gulp.src(['src/assets/foehn/**/*.js', 'gulpfile.js', 'gulp-tasks/**/*.js', '!node_modules/**'])
        .pipe(eslint())
        .pipe(eslint.format())
        .pipe(eslint.failAfterError());
});
