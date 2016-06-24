var config = require('../gulp-config.json');

/**
 * Build fabricator stylesheet
 */
module.exports = function (gulp, plugins) {
    return function () {
        var processors = [
            plugins.autoprefixer({browsers: config.browsers})
        ]
        gulp.src(config.src.styles.fabricator)
            // Start sourcemaps
            .pipe(plugins.sourcemaps.init())
            // Build CSS files
            .pipe(plugins.sass().on('error', plugins.sass.logError))
            // We always want PostCSS to run
            .pipe( plugins.postcss(processors) )
            // If we are in dev, do not minify
            .pipe( plugins.if(!config.dev, plugins.cssnano()) )
            // Rename the CSS file
            .pipe( plugins.rename('f.css') )
            // Write the sourcemaps
            .pipe( plugins.sourcemaps.write() )
            // Set the destination of the CSS files
            .pipe(gulp.dest(config.dest + '/assets/fabricator/styles'))
            // If we are in dev, reload the browser
            .pipe( plugins.if(config.dev, plugins.browserSync.reload({stream:true})) );
    }
};
