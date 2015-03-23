gulp = require 'gulp'
typescript = require 'gulp-typescript'
sourcemaps = require 'gulp-sourcemaps'
config = require('../config').ts

gulp.task 'ts', ->
  gulp
    .src config.src
    .pipe sourcemaps.init()
    .pipe typescript(config.options)
    .js
    .pipe sourcemaps.write('.')
    .pipe gulp.dest(config.dest)
