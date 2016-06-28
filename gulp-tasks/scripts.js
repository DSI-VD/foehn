var config        = require('../gulp-config.json'),
    webpackConfig = require('../webpack.config')(config);

/**
 * Build JavaScripts
 */
module.exports = function (gulp, plugins) {
    return function (done) {
        plugins.webpack(webpackConfig).run(function (error, result) {
            if (error) {
                plugins.util.log(plugins.util.colors.red(error));
            }
            result = result.toJson();
            if (result.errors.length) {
                result.errors.forEach(function (error) {
                    plugins.util.log(plugins.util.colors.red(error));
                });
            }
            done();
        });
    };
};
