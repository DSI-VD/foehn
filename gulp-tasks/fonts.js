var config = require('../gulp-config.json');

module.exports = function (gulp, plugins) {
    return function () {
        gulp.src(config.src.fonts)
            .pipe(gulp.dest(config.dest + '/assets/foehn/fonts'));
    };
};
