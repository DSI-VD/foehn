import path from 'node:path';
import {fileURLToPath} from 'node:url';
import {readFileSync} from 'node:fs';
import gulp from 'gulp';
import postcss from 'gulp-postcss';
import concat from 'gulp-concat';
import scss from 'gulp-dart-scss';
import sourcemaps from 'gulp-sourcemaps';
import uglifyjs from 'uglify-es';
import composer from 'gulp-uglify/composer.js';
import autoprefixer from 'autoprefixer';
import cssnano from 'cssnano';
import header from 'gulp-header';
import {deleteSync} from 'del';

const pkg = JSON.parse(readFileSync('./package.json'));
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const minify = composer(uglifyjs, console);
const processors = [autoprefixer, cssnano];

const paths = {
    build: path.join(__dirname, '/dist'),
    src: path.join(__dirname, '/src'),
};

const banner = [
    '/**',
    ' * <%= pkg.name %> - <%= pkg.description %>',
    ' * @version v<%= pkg.version %>',
    ' */',
    '',
].join('\n');

/*
 * Clean
 */
function clean() {
    deleteSync([paths.build]);
    return Promise.resolve();
}

/*
 * Styles
 */
function styles() {
    return gulp
        .src([`${paths.src}/assets/styles/main.scss`])
        .pipe(sourcemaps.init())
        .pipe(scss({
            quietDeps: true,
            silenceDeprecations: ['color-functions', 'global-builtin', 'if-function', 'import', 'legacy-js-api'],
        }))
        .pipe(postcss(processors))
        .pipe(header(banner, {pkg}))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest(`${paths.build}/assets/styles`));
}

/*
 * Scripts Vendors
 */
function scriptsVendors() {
    return gulp
        .src([
            'node_modules/jquery/dist/jquery.slim.min.*',
            'node_modules/popper.js/dist/umd/popper.min.*',
            'node_modules/bootstrap/dist/js/bootstrap.min.*',
        ])
        .pipe(gulp.dest(`${paths.build}/assets/scripts/`));
}

/*
 * Scripts footer
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
 */
function svg() {
    return gulp
        .src(`${paths.src}/assets/svg/**/*.svg`)
        .pipe(gulp.dest(`${paths.build}/assets/svg`));
}

/*
 * Images
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
 * Task set
 */
const compile = gulp.series(
    gulp.parallel(
        styles,
        scriptsVendors,
        scriptsFooter,
        svg,
        images,
        fonts,
        manifests,
        xmls,
    )
);

gulp.task('build', gulp.series(clean, compile));
gulp.task('dev', gulp.series(compile));
