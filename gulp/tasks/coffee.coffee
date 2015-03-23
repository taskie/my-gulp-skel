gulp = require 'gulp'
coffee = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'
config = require('../config').coffee;

gulp.task 'coffee', ->
  gulp
    .src config.src
    .pipe sourcemaps.init()
    .pipe coffee()
    .pipe sourcemaps.write('.')
    .pipe gulp.dest(config.dest)
