/* globals process, Buffer, require */

import gulp from 'gulp';
import yargs from 'yargs';
import config from '../gulp_config.json';
import autoprefixer from 'autoprefixer';

import loadPlugins from 'gulp-load-plugins';
const $ = loadPlugins();

import path from 'path';
import markdown from 'metalsmith-markdown';
import permalinks from 'metalsmith-permalinks';
import layouts from 'metalsmith-layouts';
import define from 'metalsmith-define';
import collections from 'metalsmith-collections';

import * as filters from './filters';

let metadatas = [];



function errorAlert(error){
  if (!yargs.argv.production) {
    $.notify.onError({title: 'Metalsmith Error', message: 'Check your terminal', sound: 'Sosumi'})(error);
    $.util.log(error);
  }
  this.emit('end');
}

/*
* Styleguide CSS Vendors
*/
export const metalsmithStyles = () => {
  return gulp.src(`${config.assets}sass/styleguide.scss`)
  .pipe($.sass({
    errLogToConsole: true
  }))
  .pipe($.postcss([
    autoprefixer({
      browsers: config.browsers,
      options: {
        map: true
      }
    })
  ]))
  .pipe($.concat('styleguide.css'))
  .pipe($.size({title: 'STYLEGUIDE CSS VENDORS', showFiles: true}))
  .pipe(gulp.dest(`${config.build}css`))
  .pipe(gulp.dest(`${config.metalsmith.dist}/build/css`));
};

/*
* Styleguide JS Vendors
*/
export const metalsmithScripts = () => {
  return gulp.src(`${config.metalsmith.assets}scripts/fabricator.js`)
  .pipe($.browserify({
    insertGlobals : true
  }))
  .pipe($.concat('styleguide.min.js'))
  .pipe($.uglify())
  .pipe($.size({title: 'STYLEGUIDE JS VENDORS', showFiles: true}))
  .pipe(gulp.dest(`${config.build}js`))
  .pipe(gulp.dest(`${config.metalsmith.dist}/build/js`));
};

/*
 * Generate styleguide doc
 */
export const metalsmithDocs = () => {
  return gulp.src([
    `${config.assets}components/**/*.swig`,
    `${config.assets}docs/**/*.md`,
    `${config.assets}data/**/*.json`
  ])
    .pipe($.plumber({errorHandler: errorAlert}))
    .pipe($.metalsmith({
      use: [
        markdown({ langPrefix: 'language-' }),
        collections(config.metalsmith.plugins.collections),
        function(files, metalsmith, done){
          for (let file in files) {
            if (files[file].collection == 'atoms' || files[file].collection == 'molecules' || files[file].collection == 'organisms') {
              delete files[file];
            }
            if (path.extname(file) === '.json') {
              const key = path.basename(file, '.json');
              metadatas[key] = JSON.parse(files[file].contents.toString());
              delete files[file];
            }
          }
          metadatas['path'] = yargs.argv.ghpages ? config.metalsmith.url : '/';
          metadatas['scriptsPath'] = yargs.argv.production  ? `${metadatas['path']}build/js/` : metadatas['path'];
          done();
        },
        define({
          data: metadatas
        }),
        layouts(config.metalsmith.plugins.layouts),
        permalinks(config.metalsmith.plugins.permalinks)
      ]
    }))
    .pipe(gulp.dest(config.metalsmith.dist));
};

export const metalsmithAssets = () => {
  return gulp.src(`${config.build}**/*`)
    .pipe(gulp.dest(`${config.metalsmith.dist}/build`));
};

/*
 * Build metalsmith
 */
export const metalsmith = gulp.series(metalsmithStyles, metalsmithScripts, metalsmithAssets, metalsmithDocs);
