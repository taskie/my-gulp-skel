gulp = require 'gulp'
watch = require 'gulp-watch'
config = require('../config').watch;

gulp.task 'watch', ['default'], ->
  for key, source of config
    watch source, ((k) -> (-> gulp.start [k]))(key)
