'use strict';

// modules
var browserSync = require('browser-sync');
var gulp = require('gulp');
var gutil = require('gulp-util');
var reload = browserSync.reload;
var runSequence = require('run-sequence');

// configuration
var config = require('./gulp-config.json');


// webpack
var webpackConfig = require('./webpack.config')(config);


require(config.tasks + 'clean')();         // $ gulp clean
require(config.tasks + 'styles')();        // $ gulp styles
require(config.tasks + 'lint-scripts')();  // $ gulp lint-scripts
require(config.tasks + 'scripts')();       // $ gulp scripts ['lint-scripts']
require(config.tasks + 'favicon')();        // $ gulp favicon
require(config.tasks + 'images')();        // $ gulp images ['favicon']
require(config.tasks + 'fonts')();         // $ gulp fonts
require(config.tasks + 'lint-html')();     // $ gulp lint-html
require(config.tasks + 'deploy')();        // $ gulp deploy
require(config.tasks + 'assemble')();      // $ gulp assemble

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
        if (gutil.env.dev) {
            gulp.start('serve');
        }
    });

});
