'use strict';

// modules
var gulp = require('gulp');
var plugins = require('gulp-load-plugins')({
        pattern: ['gulp-*', 'gulp.*', 'del', 'autoprefixer', 'browser-sync', 'fabricator-assemble', 'webpack', 'run-sequence']
});

// configuration
var config = require('./gulp-config.json');


// tasks
function getTask(task) {
    return require('./gulp-tasks/' + task)(gulp, plugins);
}

gulp.task('clean', getTask('clean'));
gulp.task('lint-styles', getTask('style-lint'));
gulp.task('styles:foehn', ['lint-styles'], getTask('style-foehn'));
gulp.task('styles:fabricator', getTask('style-fabricator'));
gulp.task('styles', ['styles:fabricator', 'styles:foehn']);
gulp.task('scripts', getTask('scripts'));
gulp.task('images', ['favicon'], getTask('images'));
gulp.task('favicon', getTask('favicon'));
gulp.task('fonts', getTask('fonts'));
gulp.task('lint-html', getTask('html-lint'));
gulp.task('assemble', ['lint-html'], getTask('assemble'));
gulp.task('serve', getTask('serve'));
gulp.task('deploy', getTask('deploy'));


// default build task
gulp.task('default', ['clean'], function () {

    // define build tasks
    var tasks = [
        'images',
        'fonts',
        'styles',
        'scripts',
        'assemble'
    ];

    // run build
    plugins.runSequence(tasks, function () {
        if (plugins.util.env.dev) {
            gulp.start('serve');
        }
    });

});
