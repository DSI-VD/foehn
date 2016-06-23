var config = require('../gulp-config.json');

module.exports = function (gulp, plugins) {
    return function () {
        gulp.src('./src/favicon.ico')
            .pipe(gulp.dest(config.dest));
    };
};
