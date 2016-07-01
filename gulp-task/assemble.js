'use strict';

var gulp = require('gulp'),
    assemble = require('fabricator-assemble'),
    gutil = require('gulp-util'),
    config = require('../gulp-config.json');

module.exports = function() {
    gulp.task('assemble', ['lint-html'], function (done) {
        assemble({
            logErrors: gutil.env.dev,
            dest: config.dest
        });
        done();
    });
};
