/**
 * Lint styles
 */
module.exports = function (gulp, plugins) {
    return function () {
        gulp.src('src/**/*.css')
            .pipe(plugins.stylelint({
                reporters: [
                    {formatter: 'string', console: true}
                ]
            }));
    };
};
