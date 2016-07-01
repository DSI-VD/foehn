'use strict';

var gulp = require('gulp'),
    config = require('../gulp-config.json'),
    gutil = require('gulp-util'),
    webpack = require('webpack'),
    webpackConfig = require('../webpack.config')(config),
    webpackCompiler = webpack(webpackConfig);

module.exports = function() {
    gulp.task('scripts', ['lint-scripts'], function (done) {
        webpackCompiler.run(function (error, result) {
            if (error) {
                gutil.log(gutil.colors.red(error));
            }
            result = result.toJson();
            if (result.errors.length) {
                result.errors.forEach(function (error) {
                    gutil.log(gutil.colors.red(error));
                });
            }
            done();
        });
    });
};
