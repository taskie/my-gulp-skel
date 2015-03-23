gulp = require 'gulp'
webpack = require 'gulp-webpack'
plumber = require 'gulp-plumber'
config = require('../config').webpack

gulp.task 'webpack', ->
  gulp
    .src config.webpack.entry
    .pipe plumber()
    .pipe webpack(config.webpack)
    .pipe gulp.dest(config.dest)
