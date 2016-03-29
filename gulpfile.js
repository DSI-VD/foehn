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
var classPrfx = require('postcss-class-prefix');
var reporter = require("postcss-reporter");
var webpack = require('webpack');
var ghPages = require('gulp-gh-pages');

// configuration
var config = {
    dev: gutil.env.dev,
    src: {
        scripts: {
            fabricator: './src/assets/fabricator/scripts/fabricator.js',
            foehn: './src/assets/foehn/scripts/foehn.js'
        },
        styles: {
            fabricator: 'src/assets/fabricator/styles/fabricator.scss',
            foehn: 'src/assets/foehn/styles/foehn.css'
        },
        images: 'src/assets/foehn/images/**/*',
        fonts: 'src/assets/foehn/fonts/**/*',
        views: 'src/foehn/views/*.html'
    },
    dest: 'dist',
    browsers: ['last 2 version', '> 5% in CH', 'IE >= 11', 'Firefox >= 38', 'Firefox ESR']
};


// webpack
var webpackConfig = require('./webpack.config')(config);
var webpackCompiler = webpack(webpackConfig);


// clean
gulp.task('clean', function () {
	return del([config.dest]);
});


// styles
gulp.task('styles:fabricator', function () {
    var processors = [
        require('autoprefixer')({browsers: config.browsers})
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
    return gulp.src("src/assets/foehn/styles/*.css")
    .pipe(postcss([
        stylelint(),
        reporter({
            clearMessages: true,
        }),
    ]));
});

gulp.task('styles:foehn', ["lint-styles"], function () {
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
        require('postcss-hidden'),
        require('lost'),
        require('postcss-calc'),
        require('pixrem')({html: false}),
        require('postcss-color-rgba-fallback'),
        require('autoprefixer')({browsers: config.browsers}),
        require('postcss-class-prefix')('vd-', {
            ignore: [
                /wf-/ // ignore webfontloader classes
            ]
        }),
        require('perfectionist')
    ]
    return gulp.src(config.src.styles.foehn)
        // If we are in dev, start sourcemaps
        .pipe(gulpif(config.dev, sourcemaps.init()))
        // We always want PostCSS to run
        .pipe( postcss(processors) )
        // If we are on dev, don't minify the styles
        .pipe( gulpif(!config.dev, nano()) )
        // If we are in dev, write sourcemaps
        .pipe( gulpif(config.dev, sourcemaps.write()) )
        // Set the destination for the CSS file
        .pipe( gulp.dest(config.dest + '/assets/foehn/styles') )
        // If we are in dev, reload the browser
        .pipe( gulpif(config.dev, reload({stream:true})) );
});

gulp.task('styles', ['styles:fabricator', 'styles:foehn']);


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
        .pipe(gulp.dest(config.dest + '/assets/foehn/images'));
});

gulp.task('favicon', function () {
    return gulp.src('./src/favicon.ico')
        .pipe(gulp.dest(config.dest));
});


// fonts
gulp.task('fonts', function () {
    return gulp.src(config.src.fonts)
        .pipe(gulp.dest(config.dest + '/assets/foehn/fonts'));
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

    gulp.task('styles:foehn:watch', ['styles:foehn']);
    gulp.watch('src/assets/foehn/styles/**/*.css', ['styles:foehn:watch']);

    gulp.task('scripts:watch', ['scripts'], reload);
    gulp.watch('src/assets/{fabricator,foehn}/scripts/**/*.js', ['scripts:watch']).on('change', webpackCache);

    gulp.task('images:watch', ['images'], reload);
    gulp.watch(config.src.images, ['images:watch']);

    gulp.task('fonts:watch', ['fonts'], reload);
    gulp.watch(config.src.fonts, ['fonts:watch']);

});


gulp.task('deploy', function() {
  return gulp.src(config.dest + '/**/*')
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
