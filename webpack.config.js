var path = require('path');
var webpack = require('webpack');

module.exports = function(fabricatorConfig) {

    "use strict";

    var config = {
        entry: {
            'fabricator/scripts/f': fabricatorConfig.src.scripts.fabricator,
            'foehn/scripts/foehn': fabricatorConfig.src.scripts.foehn
        },
        output: {
            path: path.resolve(__dirname, fabricatorConfig.dest, 'assets'),
            filename: '[name].js'
        },
        module: {
            loaders: [
                {
                    test: /\.js$/,
                    exclude: /(node_modules|prism\.js)/,
                    loaders: ['babel-loader']
                }
            ]
        },
        plugins: [],
        cache: {}
    };

    if (!fabricatorConfig.dev) {
        config.plugins.push(
            new webpack.optimize.UglifyJsPlugin()
        );
    }

    return config;

};
