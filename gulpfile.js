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
import {deleteAsync} from 'del';

const {dest, parallel, series, src} = gulp;
const pkg = JSON.parse(readFileSync('./package.json'));
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const minify = composer(uglifyjs, console);
const processors = [autoprefixer, cssnano];

const PATHS = {
    build: path.join(__dirname, '/dist'),
    src: path.join(__dirname, '/src')
};
const BANNER = [
    '/**',
    ' * <%= pkg.name %> - <%= pkg.description %>',
    ' * @version v<%= pkg.version %>',
    ' */',
    ''
].join('\n');

const clean = () => deleteAsync([
    PATHS.build
]);

const styles = () => src([PATHS.src + '/assets/styles/main.scss'])
    .pipe(sourcemaps.init())
    .pipe(scss({
        silenceDeprecations: ['color-functions', 'global-builtin', 'if-function', 'import', 'legacy-js-api']
    }))
    .pipe(postcss(processors))
    .pipe(header(BANNER, {pkg}))
    .pipe(sourcemaps.write('./'))
    .pipe(dest(PATHS.build + '/assets/styles'));

const scriptsVendors = () => src([
    'node_modules/jquery/dist/jquery.slim.min.*',
    'node_modules/popper.js/dist/umd/popper.min.*',
    'node_modules/bootstrap/dist/js/bootstrap.min.*'
])
    .pipe(dest(PATHS.build + '/assets/scripts/'));

const scriptsFooter = () => src([PATHS.src + '/assets/scripts/**.js'])
    .pipe(sourcemaps.init())
    .pipe(concat('foehn-scripts--footer.js'))
    .pipe(minify())
    .pipe(sourcemaps.write('./'))
    .pipe(dest(PATHS.build + '/assets/scripts/'));

const svg = () => src(PATHS.src + '/assets/svg/**/*.svg')
    .pipe(dest(PATHS.build + '/assets/svg'));

const images = () => src(PATHS.src + '/assets/img/**/*.*')
    .pipe(dest(PATHS.build + '/assets/img'));

const fonts = () => src(PATHS.src + '/assets/fonts/**/*.*')
    .pipe(dest(PATHS.build + '/assets/fonts'));

const manifests = () => src(PATHS.src + '/assets/manifest/**/*.*')
    .pipe(dest(PATHS.build + '/assets/manifest'));

const xmls = () => src(PATHS.src + '/assets/xml/**/*.*')
    .pipe(dest(PATHS.build + '/assets/xml'));

const compile = series(
    parallel(
        styles,
        scriptsVendors,
        scriptsFooter,
        svg,
        images,
        fonts,
        manifests,
        xmls
    )
);

export const build = series(clean, compile);
export const dev = series(compile);
