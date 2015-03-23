gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'default', (cb) ->
  runSequence(
    ['js', 'ts', 'coffee', 'styl', 'data'],
    'webpack',
    cb
  )
