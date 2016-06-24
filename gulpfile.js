'use strict';

// modules
var assemble = require('fabricator-assemble');
var browserSync = require('browser-sync');
var gulp = require('gulp');
var reload = browserSync.reload;
var runSequence = require('run-sequence');
var plugins = require('gulp-load-plugins')({
        pattern: ['gulp-*', 'gulp.*', 'del', 'browser-sync']
});

// configuration
var config = require('./gulp-config.json');


// webpack
var webpackConfig = require('./webpack.config')(config);


// tasks
function getTask(task) {
    return require('./gulp-tasks/' + task)(gulp, plugins);
}

gulp.task('clean', getTask('clean'));
gulp.task('lint-styles', getTask('style-lint'));
gulp.task('styles:foehn', ['lint-styles'], getTask('style-foehn'));
require('./gulp-tasks/styles')();
gulp.task('styles', ['styles:fabricator', 'styles:foehn']);
require('./gulp-tasks/scripts')();
gulp.task('images', ['favicon'], getTask('images'));
gulp.task('favicon', getTask('favicon'));
gulp.task('fonts', getTask('fonts'));
require('./gulp-tasks/html-lint')();


// assemble
gulp.task('assemble', ["lint-html"], function (done) {
    assemble({
        logErrors: config.dev,
        dest: config.dest
    });
    done();
});


// server
gulp.task('serve', function () {

    browserSync({
        server: {
            baseDir: config.dest
        },
        notify: false,
        logPrefix: 'FABRICATOR'
    });

    /**
     * Because webpackCompiler.watch() isn't being used
     * manually remove the changed file path from the cache
     */
    function webpackCache(e) {
        var keys = Object.keys(webpackConfig.cache);
        var key, matchedKey;
        for (var keyIndex = 0; keyIndex < keys.length; keyIndex++) {
            key = keys[keyIndex];
            if (key.indexOf(e.path) !== -1) {
                matchedKey = key;
                break;
            }
        }
        if (matchedKey) {
            delete webpackConfig.cache[matchedKey];
        }
    }

    gulp.task('assemble:watch', ['assemble'], reload);
    gulp.watch('src/**/*.{html,md,json,yml}', ['assemble:watch']);

    gulp.task('styles:fabricator:watch', ['styles:fabricator']);
    gulp.watch('src/assets/fabricator/styles/**/*.scss', ['styles:fabricator:watch']);

    gulp.task('styles:foehn:watch', ['styles:foehn']);
    gulp.watch('src/assets/foehn/styles/**/*.css', ['styles:foehn:watch']);

    gulp.task('scripts:watch', ['scripts'], reload);
    gulp.watch('src/assets/{fabricator,foehn}/scripts/**/*.js', ['scripts:watch']).on('change', webpackCache);

    gulp.task('images:watch', ['images'], reload);
    gulp.watch(config.src.images, ['images:watch']);

    gulp.task('fonts:watch', ['fonts'], reload);
    gulp.watch(config.src.fonts, ['fonts:watch']);

});

require('./gulp-tasks/deploy')();



// default build task
gulp.task('default', ['clean'], function () {

    // define build tasks
    var tasks = [
        'styles',
        'scripts',
        'images',
        'fonts',
        'assemble'
    ];

    // run build
    runSequence(tasks, function () {
        if (config.dev) {
            gulp.start('serve');
        }
    });

});
