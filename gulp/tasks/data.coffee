gulp = require 'gulp'
config = require('../config').data

gulp.task 'data', ->
  gulp
    .src config.src
    .pipe gulp.dest(config.dest)
