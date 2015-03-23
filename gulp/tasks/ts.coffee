gulp = require 'gulp'
typescript = require 'gulp-typescript'
plumber = require 'gulp-plumber'
sourcemaps = require 'gulp-sourcemaps'
config = require('../config').ts

gulp.task 'ts', ->
  gulp
    .src config.src
    .pipe plumber()
    .pipe sourcemaps.init()
    .pipe typescript(config.options)
    .js
    .pipe sourcemaps.write('.')
    .pipe gulp.dest(config.dest)
