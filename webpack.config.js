var path = require('path');
var webpack = require('webpack');

module.exports = function(fabricatorConfig) {

    "use strict";

    var config = {
        entry: {
            'www/assets/fabricator/scripts/f': fabricatorConfig.src.scripts.fabricator,
            'www/assets/toolkit/scripts/toolkit': fabricatorConfig.src.scripts.toolkit,
            'dist/scripts/toolkit': fabricatorConfig.src.scripts.toolkit
        },
        output: {
            path: './',
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
