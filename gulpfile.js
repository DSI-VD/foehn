'use strict';

import gulp from 'gulp';
import postcss from 'gulp-postcss';
import concat from 'gulp-concat';
import gulpSass from 'gulp-sass';
import * as nodeSass from 'sass';
import stylelint from 'gulp-stylelint';
import xo from 'gulp-xo';
import jsonlint from 'gulp-jsonlint';
import path from 'path';
import {deleteSync} from 'del';
import {fileURLToPath} from 'url';
import sourcemaps from 'gulp-sourcemaps';
import uglifyjs from 'uglify-es';
import composer from 'gulp-uglify/composer.js';
import autoprefixer from 'autoprefixer';
import cssnano from 'cssnano';
import header from 'gulp-header';
import {readFileSync} from 'fs';
const pkg = JSON.parse(readFileSync('./package.json'));
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const sass = gulpSass(nodeSass);
const minify = composer(uglifyjs, console);
const processors = [autoprefixer, cssnano];
const paths = {
    build: path.join(__dirname, '/dist'),
    src: path.join(__dirname, '/src')
};
const banner = [
    '/**',
    ' * <%= pkg.name %> - <%= pkg.description %>',
    ' * @version v<%= pkg.version %>',
    ' */',
    ''
].join('\n');

/*
 * Clean
 */
function clean() {
    const deleted = deleteSync([`${paths.build}`]);
    return Promise.resolve(deleted);
}

/*
 * Styles
 */
function styles() {
    return gulp
        .src([
            `${paths.src}/assets/styles/main.scss`
        ])
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(postcss(processors))
        .pipe(header(banner, {pkg}))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest(`${paths.build}/assets/styles`));
}

/*
 * Style linting
 */
function lintstyles() {
    return gulp
        .src([
            `${paths.src}/assets/styles/**/*.s+(a|c)ss`,
            `!${paths.src}/assets/styles/_bs-variables.scss`
        ])
        .pipe(
            stylelint({
                failAfterError: false,
                reporters: [
                    {
                        formatter: 'string',
                        console: true
                    }
                ]
            })
        );
}

/*
 * Scripts Vendors
 */
function scriptsVendors() {
    return gulp
        .src([
            'node_modules/jquery/dist/jquery.slim.min.*',
            'node_modules/popper.js/dist/umd/popper.min.*',
            'node_modules/bootstrap/dist/js/bootstrap.min.*'
        ])
        .pipe(gulp.dest(`${paths.build}/assets/scripts/`));
}

/*
 * Scripts footer
 *
 * the scripts that are placed in the footer of the document
 */
function scriptsFooter() {
    return gulp
        .src([`${paths.src}/assets/scripts/**.js`])
        .pipe(sourcemaps.init())
        .pipe(concat('foehn-scripts--footer.js'))
        .pipe(minify())
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest(`${paths.build}/assets/scripts/`));
}

/*
 * SVG
 *
 * Make sure to minify the original SVGs
 * We do not minify during the build to speed up the process
 */
function svg() {
    return gulp
        .src(`${paths.src}/assets/svg/**/*.svg`)
        .pipe(gulp.dest(`${paths.build}/assets/svg`));
}

/*
 * Image
 *
 * Make sure to minify the original images
 * We do not minify during the build to speed up the process
 */
function images() {
    return gulp
        .src(`${paths.src}/assets/img/**/*.*`)
        .pipe(gulp.dest(`${paths.build}/assets/img`));
}

/*
 * Fonts
 */
function fonts() {
    return gulp
        .src(`${paths.src}/assets/fonts/**/*.*`)
        .pipe(gulp.dest(`${paths.build}/assets/fonts`));
}

/*
 * Manifest
 */
function manifests() {
    return gulp
        .src(`${paths.src}/assets/manifest/**/*.*`)
        .pipe(gulp.dest(`${paths.build}/assets/manifest`));
}

/*
 * XML
 */
function xmls() {
    return gulp
        .src(`${paths.src}/assets/xml/**/*.*`)
        .pipe(gulp.dest(`${paths.build}/assets/xml`));
}

/*
 * Lint Scripts
 */
function lintscripts() {
    return gulp
        .src([`${paths.src}/**/*.js`, './*.js', '!node_modules/**'])
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
    return gulp
        .src([
            '*.json',
            `${paths.src}/**/*.json`,
            `${paths.build}/**/*.css.map`, // [1]
            `${paths.build}/**/*.js.map` // [2]
        ])
        .pipe(jsonlint())
        .pipe(jsonlint.reporter());
}

/*
 * Task set
 */
const compile = gulp.series(
    gulp.parallel(
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
gulp.task('dev', gulp.series(compile));
