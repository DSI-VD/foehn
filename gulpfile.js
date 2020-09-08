'use strict';

const gulp = require('gulp');
const del = require('del');
const ghPages = require('gulp-gh-pages');
const postcss = require('gulp-postcss');
const prefixwrap = require('postcss-prefixwrap');
const sass = require('gulp-sass');
const stylelint = require('gulp-stylelint');
const rename = require('gulp-rename');
const replace = require('gulp-replace');
const xo = require('gulp-xo');
const jsonlint = require('gulp-jsonlint');

/* Gulp-uglify must use uglify-es module becaus we use ESlint
 * see https://www.npmjs.com/package/gulp-uglify#using-a-different-uglifyjs
 *     https://github.com/gruntjs/grunt-contrib-uglify/issues/477#issuecomment-305329757
 */
const sourcemaps = require('gulp-sourcemaps');
const uglifyjs = require('uglify-es');
const composer = require('gulp-uglify/composer');

const minify = composer(uglifyjs, console);

const processors = [
    require('autoprefixer'),
    require('cssnano')
];

const wrapProcessors = [
    prefixwrap('.foehn-example')
];

const paths = {
    dest: `${__dirname}/dist`,
    src: `${__dirname}/src`
};

const header = require('gulp-header');
const pkg = require('./package.json');

const banner = ['/**',
    ' * <%= pkg.name %> - <%= pkg.description %>',
    ' * @version v<%= pkg.version %>',
    ' */',
    ''].join('\n');


/*
 * Clean
 */
function clean() {
    return del([`${paths.build}`]);
}

/*
 * Styles
 */
function styles() {
    return gulp.src([`${paths.src}/assets/styles/main.scss`, `${paths.src}/assets/styles/styleguide.scss`])
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(postcss(processors))
        .pipe(header(banner, {pkg}))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest(`${paths.dest}/assets/styles`));
}

/*
 * Style linting
 */
function lintstyles() {
    return gulp.src([
        `${paths.src}/assets/styles/**/*.s+(a|c)ss`,
        `!${paths.src}/assets/styles/bootstrap-variables.scss`
    ])
        .pipe(stylelint({
            failAfterError: false,
            reporters: [{
                formatter: 'string',
                console: true
            }]
        }));
}

/*
 * Scripts Vendors
 */
function scriptsVendors() {
    return gulp.src([
        'node_modules/jquery/dist/jquery.slim.min.*',
        'node_modules/popper.js/dist/umd/popper.min.*',
        'node_modules/bootstrap/dist/js/bootstrap.min.*'
    ])
        .pipe(gulp.dest(`${paths.dest}/assets/scripts/`));
}

/*
 * Scripts footer
 *
 * the scripts that are placed in the footer of the document
 */
function scriptsFooter() {
    return gulp.src([
        `${paths.src}/assets/scripts/nav-primary.js`
    ])
        .pipe(sourcemaps.init())
        .pipe(rename('foehn-scripts--footer.js'))
        .pipe(minify())
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest(`${paths.dest}/assets/scripts/`));
}

/*
 * SVG
 *
 * Make sure to minify the original SVGs
 * We do not minify during the build to speed up the process
 */
function svg() {
    return gulp.src(`${paths.src}/assets/svg/**/*.svg`)
        .pipe(gulp.dest(`${paths.dest}/assets/svg`));
}

/*
 * Image
 *
 * Make sure to minify the original images
 * We do not minify during the build to speed up the process
 */
function images() {
    return gulp.src(`${paths.src}/assets/img/**/*.*`)
        .pipe(gulp.dest(`${paths.dest}/assets/img`));
}

/*
 * Fonts
 */
function fonts() {
    return gulp.src(`${paths.src}/assets/fonts/**/*.*`)
        .pipe(gulp.dest(`${paths.dest}/assets/fonts`));
}

/*
 * Manifest
 */
function manifests() {
    return gulp.src(`${paths.src}/assets/manifest/**/*.*`)
        .pipe(gulp.dest(`${paths.dest}/assets/manifest`));
}

/*
 * XML
 */
function xmls() {
    return gulp.src(`${paths.src}/assets/xml/**/*.*`)
        .pipe(gulp.dest(`${paths.dest}/assets/xml`));
}

/*
 * Lint Scripts
 */
function lintscripts() {
    return gulp.src([
        `${paths.src}/**/*.js`,
        './*.js',
        '!node_modules/**'
    ])
        .pipe(xo())
        .pipe(xo.format());
}

/*
 * Lint JSON
 *
 * 1. Lint CSS source maps once they are generated. Be sure to run this function
 *    once source maps files are generated
 * 2. Lint JS source maps once they are generated. Be sure to run this function
 *    once source maps files are generated
 */
function lintjson() {
    return gulp.src([
        '*.json',
        `${paths.src}/**/*.json`,
        `${paths.dest}/**/*.css.map`, // [1]
        `${paths.dest}/**/*.js.map` // [2]
    ])
        .pipe(jsonlint())
        .pipe(jsonlint.reporter());
}

/*
 * Copy changelog in fractal
 *
 * Copy changelog to make it viewable in fractal doc.
 * Make links on components `@component` becomes
 * [`@component`](url/the/component).
 * Change markdown links to make them usable from fractal doc.
 *
 * Do not forget to put `src/docs/changelog.md` in `.gitignore`
 */
function copyChangelog() {
    return gulp.src('CHANGELOG.md')
        .pipe(replace(/`@(\S+)`/g, '[`@$1`](../components/detail/$1)'))
        .pipe(replace('](src/', '](../'))
        .pipe(rename('changelog.md'))
        .pipe(gulp.dest(`${paths.src}/docs/`));
}

/*
 * Watch
 */
function watch() {
    serve();
    gulp.watch(`${paths.src}/**/*.scss`, gulp.parallel(lintstyles, styles));
    gulp.watch([`${paths.src}/**/*.js`, './*.js'], gulp.parallel(lintscripts, scriptsFooter));
}

/*
 * Task set
 */
const compile = gulp.series(
    gulp.parallel(
        copyChangelog,
        styles,
        lintstyles,
        scriptsVendors,
        scriptsFooter,
        svg,
        images,
        fonts,
        manifests,
        xmls,
        lintscripts
    ),
    lintjson
);

gulp.task('build', gulp.series(clean, compile));
gulp.task('dev', gulp.series(compile, watch));
