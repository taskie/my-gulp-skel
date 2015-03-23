gulp = require 'gulp'
config = require('../config').js

gulp.task 'js', ->
  gulp
    .src config.src
    .pipe gulp.dest(config.dest)
