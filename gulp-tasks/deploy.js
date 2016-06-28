var config = require('../gulp-config.json');

/**
 * Deploy `dist` folder on gh-pages
 */
module.exports = function (gulp, plugins) {
    return function () {
        return gulp.src(config.dest + '/**/*')
          .pipe(plugins.ghPages());
    };
};
