var config = require('../gulp-config.json'),
    webpackConfig = require('../webpack.config')(config);

/**
 * Clean output directories
 */
module.exports = function (gulp, plugins) {
    return function () {
        plugins.browserSync({
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

        gulp.task('assemble:watch', ['assemble'], plugins.browserSync.reload);
        gulp.watch('src/**/*.{html,md,json,yml}', ['assemble:watch']);

        gulp.task('styles:fabricator:watch', ['styles:fabricator']);
        gulp.watch('src/assets/fabricator/styles/**/*.scss', ['styles:fabricator:watch']);

        gulp.task('styles:foehn:watch', ['styles:foehn']);
        gulp.watch('src/assets/foehn/styles/**/*.css', ['styles:foehn:watch']);

        gulp.task('scripts:watch', ['scripts'], plugins.browserSync.reload);
        gulp.watch('src/assets/{fabricator,foehn}/scripts/**/*.js', ['scripts:watch']).on('change', webpackCache);

        gulp.task('images:watch', ['images'], plugins.browserSync.reload);
        gulp.watch(config.src.images, ['images:watch']);

        gulp.task('fonts:watch', ['fonts'], plugins.browserSync.reload);
        gulp.watch(config.src.fonts, ['fonts:watch']);
    };
};
