gulp = require 'gulp'
webpack = require 'gulp-webpack'
config = require('../config').webpack

gulp.task 'webpack', ->
  gulp
    .src config.webpack.entry
    .pipe webpack(config.webpack)
    .pipe gulp.dest(config.dest)
