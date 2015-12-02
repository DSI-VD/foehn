'use strict';

// modules
var assemble = require('fabricator-assemble');
var browserSync = require('browser-sync');
var nano = require('gulp-cssnano');
var del = require('del');
var gulp = require('gulp');
var gutil = require('gulp-util');
var gulpif = require('gulp-if');
var imagemin = require('gulp-imagemin');
var rename = require('gulp-rename');
var reload = browserSync.reload;
var runSequence = require('run-sequence');
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');
var postcss = require('gulp-postcss');
var stylelint = require("stylelint");
var reporter = require("postcss-reporter");
var webpack = require('webpack');
var ghPages = require('gulp-gh-pages');

// configuration
var config = {
    dev: gutil.env.dev,
    src: {
        scripts: {
            fabricator: './src/assets/fabricator/scripts/fabricator.js',
            toolkit: './src/assets/toolkit/scripts/toolkit.js'
        },
        styles: {
            fabricator: 'src/assets/fabricator/styles/fabricator.scss',
            toolkit: 'src/assets/toolkit/styles/toolkit.css'
        },
        images: 'src/assets/toolkit/images/**/*',
        fonts: 'src/assets/toolkit/fonts/**/*',
        views: 'src/toolkit/views/*.html'
    },
    dest: 'dist'
};


// Config for linting
var stylelintConfig = {
    "rules": {
        "block-no-empty": 2,
        "color-no-invalid-hex": 2,
        "declaration-colon-space-after": [2, "always"],
        "declaration-colon-space-before": [2, "never"],
        "function-comma-space-after": [2, "always"],
        "function-url-quotes": [2, "double"],
        "media-feature-colon-space-after": [2, "always"],
        "media-feature-colon-space-before": [2, "never"],
        "media-feature-name-no-vendor-prefix": 2,
        "number-leading-zero": [2, "never"],
        "number-no-trailing-zeros": 2,
        "property-no-vendor-prefix": 2,
        "rule-no-duplicate-properties": 2,
        "rule-trailing-semicolon": [2, "always"],
        "selector-list-comma-newline-after": [2, "always-multi-line"],
        "selector-no-id": 2,
        "string-quotes": [2, "double"],
        "value-no-vendor-prefix": 2
    }
};


// webpack
var webpackConfig = require('./webpack.config')(config);
var webpackCompiler = webpack(webpackConfig);


// clean
gulp.task('clean', function (cb) {
    del([config.dest], cb);
});


// styles
gulp.task('styles:fabricator', function () {
    var processors = [
        require('autoprefixer')({browsers: ['last 2 version', '> 5% in CH', 'IE >= 11', 'Firefox >= 38', 'Firefox ESR']})
    ]
    gulp.src(config.src.styles.fabricator)
        // Start sourcemaps
        .pipe(sourcemaps.init())
        // Build CSS files
        .pipe(sass().on('error', sass.logError))
        // We always want PostCSS to run
        .pipe( postcss(processors) )
        // If we are in dev, do not minify
        .pipe( gulpif(!config.dev, nano()) )
        // Rename the CSS file
        .pipe(rename('f.css'))
        // Write the sourcemaps
        .pipe(sourcemaps.write())
        // Set the destination of the CSS files
        .pipe(gulp.dest(config.dest + '/assets/fabricator/styles'))
        // If we are in dev, reload the browser
        .pipe(gulpif(config.dev, reload({stream:true})));
});

gulp.task("lint-styles", function() {
    return gulp.src("src/assets/toolkit/styles/*.css")
    .pipe(postcss([
        stylelint(stylelintConfig),
        reporter({
            clearMessages: true,
        }),
    ]));
});

gulp.task('styles:toolkit', ["lint-styles"], function () {
    var processors = [
        require('postcss-import'),
        require('postcss-mixins'),
        require('postcss-advanced-variables'),
        require('postcss-custom-media'),
        require('postcss-custom-properties'),
        require('postcss-media-minmax'),
        require('postcss-color-function'),
        require('postcss-nesting'),
        require('postcss-nested'),
        require('postcss-custom-selectors'),
        require('postcss-property-lookup'),
        require('postcss-extend'),
        require('postcss-selector-matches'),
        require('postcss-selector-not'),
        require('lost'),
        require('postcss-calc'),
        require('pixrem'),
        require('postcss-color-rgba-fallback'),
        require('autoprefixer')({browsers: ['last 2 version', '> 5% in CH', 'IE >= 8', 'Firefox >= 31', 'Firefox ESR']})
        require('doiuse')({browsers: ['last 2 version', '> 5% in CH', 'IE >= 11', 'Firefox >= 38', 'Firefox ESR']})
    ]
    return gulp.src(config.src.styles.toolkit)
        // If we are in dev, start sourcemaps
        .pipe(gulpif(config.dev, sourcemaps.init()))
        // We always want PostCSS to run
        .pipe( postcss(processors) )
        // If we are on dev, don't minify the styles
        .pipe( gulpif(!config.dev, nano()) )
        // If we are in dev, write sourcemaps
        .pipe( gulpif(config.dev, sourcemaps.write()) )
        // Set the destination for the CSS file
        .pipe( gulp.dest(config.dest + '/assets/toolkit/styles') )
        // If we are in dev, reload the browser
        .pipe( gulpif(config.dev, reload({stream:true})) );
});

gulp.task('styles', ['styles:fabricator', 'styles:toolkit']);


// scripts
gulp.task('scripts', function (done) {
    webpackCompiler.run(function (error, result) {
        if (error) {
            gutil.log(gutil.colors.red(error));
        }
        result = result.toJson();
        if (result.errors.length) {
            result.errors.forEach(function (error) {
                gutil.log(gutil.colors.red(error));
            });
        }
        done();
    });
});


// images
gulp.task('images', ['favicon'], function () {
    return gulp.src(config.src.images)
        .pipe(imagemin())
        .pipe(gulp.dest(config.dest + '/assets/toolkit/images'));
});

gulp.task('favicon', function () {
    return gulp.src('./src/favicon.ico')
        .pipe(gulp.dest(config.dest));
});


// fonts
gulp.task('fonts', function () {
    return gulp.src(config.src.fonts)
        .pipe(gulp.dest(config.dest + '/assets/toolkit/fonts'));
});


// assemble
gulp.task('assemble', function (done) {
    assemble({
        logErrors: config.dev
    });
    done();
});


// server
gulp.task('serve', function () {

    browserSync({
        server: {
            baseDir: config.dest
        },
        notify: false,
        logPrefix: 'FABRICATOR'
    });

    /**
     * Because webpackCompiler.watch() isn't being used
     * manually remove the changed file path from the cache
     */
    function webpackCache(e) {
        var keys = Object.keys(webpackConfig.cache);
        var key, matchedKey;
        for (var keyIndex = 0; keyIndex < keys.length; keyIndex++) {
            key = keys[keyIndex];
            if (key.indexOf(e.path) !== -1) {
                matchedKey = key;
                break;
            }
        }
        if (matchedKey) {
            delete webpackConfig.cache[matchedKey];
        }
    }

    gulp.task('assemble:watch', ['assemble'], reload);
    gulp.watch('src/**/*.{html,md,json,yml}', ['assemble:watch']);

    gulp.task('styles:fabricator:watch', ['styles:fabricator']);
    gulp.watch('src/assets/fabricator/styles/**/*.scss', ['styles:fabricator:watch']);

    gulp.task('styles:toolkit:watch', ['styles:toolkit']);
    gulp.watch('src/assets/toolkit/styles/**/*.css', ['styles:toolkit:watch']);

    gulp.task('scripts:watch', ['scripts'], reload);
    gulp.watch('src/assets/{fabricator,toolkit}/scripts/**/*.js', ['scripts:watch']).on('change', webpackCache);

    gulp.task('images:watch', ['images'], reload);
    gulp.watch(config.src.images, ['images:watch']);

    gulp.task('fonts:watch', ['fonts'], reload);
    gulp.watch(config.src.fonts, ['fonts:watch']);

});


gulp.task('deploy', function() {
  return gulp.src('./dist/**/*')
    .pipe(ghPages());
});


// default build task
gulp.task('default', ['clean'], function () {

    // define build tasks
    var tasks = [
        'styles',
        'scripts',
        'images',
        'fonts',
        'assemble'
    ];

    // run build
    runSequence(tasks, function () {
        if (config.dev) {
            gulp.start('serve');
        }
    });

});
