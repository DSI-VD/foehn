var config        = require('../gulp-config.json');

module.exports = function (gulp, plugins) {
    return function () {
        gulp.src(config.src.images)
            .pipe(plugins.imagemin())
            .pipe(gulp.dest(config.dest + '/assets/foehn/images'));
    };
};
