/**
 * Lint HTML files
 */
module.exports = function (gulp, plugins) {
    return function () {
        gulp.src(['dist/**/*.html'])
            .pipe(plugins.htmllint({}, htmllintReporter));
    };

    function htmllintReporter(filepath, issues) {
        if (issues.length > 0) {
            issues.forEach(function (issue) {
                plugins.util.log(plugins.util.colors.cyan('[gulp-htmllint] ') + plugins.util.colors.white(filepath + ' [' + issue.line + ',' + issue.column + ']: ') + plugins.util.colors.red('(' + issue.code + ') ' + issue.msg));
            });

            process.exitCode = 1;
        }
    }
};
