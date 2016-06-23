'use strict';

// modules
var assemble = require('fabricator-assemble');
var browserSync = require('browser-sync');
var gulp = require('gulp');
var gutil = require('gulp-util');
var reload = browserSync.reload;
var runSequence = require('run-sequence');
var htmllint = require('gulp-htmllint');
var ghPages = require('gulp-gh-pages');

// configuration
var config = require('./gulp-config.json');


// webpack
var webpackConfig = require('./webpack.config')(config);


// tasks
require('./gulp-tasks/clean')();
require('./gulp-tasks/styles')();
require('./gulp-tasks/scripts')();
require('./gulp-tasks/images')();
require('./gulp-tasks/favicon')();






// fonts
gulp.task('fonts', function () {
    return gulp.src(config.src.fonts)
        .pipe(gulp.dest(config.dest + '/assets/foehn/fonts'));
});

// lint HTML
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


gulp.task('deploy', function() {
  return gulp.src(config.dest + '/**/*')
    .pipe(ghPages());
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
        if (config.dev) {
            gulp.start('serve');
        }
    });

});
