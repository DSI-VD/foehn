import gulp from 'gulp';
import config from '../gulp_config.json';
import { build } from '../gulpfile.babel.js';

import loadPlugins from 'gulp-load-plugins';
const $ = loadPlugins();

/**
 * Deploy to GH pages
 */
export const deploy = () => {
  return gulp.src(`${config.app.ghpages}/**/*`)
    .pipe($.ghPages());
};
