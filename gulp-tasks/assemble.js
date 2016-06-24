var config = require('../gulp-config.json');

/**
 * Build the frontend
 */
module.exports = function (gulp, plugins) {
    return function (done) {
        plugins.fabricatorAssemble({
            logErrors: config.dev,
            dest: config.dest
        });
        done();
    };
};
