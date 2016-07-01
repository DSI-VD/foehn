'use strict';

var gulp = require('gulp'),
    htmllint = require('gulp-htmllint'),
    gutil = require('gulp-util');

module.exports = function() {

    gulp.task('lint-html', function() {
        return gulp.src(['dist/**/*.html'])
            .pipe(htmllint({}, htmllintReporter));
    });

    function htmllintReporter(filepath, issues) {
        if (issues.length > 0) {
            issues.forEach(function (issue) {
                gutil.log(gutil.colors.cyan('[gulp-htmllint] ') + gutil.colors.white(filepath + ' [' + issue.line + ',' + issue.column + ']: ') + gutil.colors.red('(' + issue.code + ') ' + issue.msg));
            });

            process.exitCode = 1;
        }
    }

};
