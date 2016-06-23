var config = require('../gulp-config.json');

/**
 * Clean output directories
 */
module.exports = function (gulp, plugins) {
    return function () {
        plugins.del([config.dest]);
    };
};
