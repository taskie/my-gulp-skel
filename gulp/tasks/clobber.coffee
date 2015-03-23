gulp = require 'gulp'
del = require 'del'
config = require('../config').clobber

gulp.task 'clobber', (cb) ->
  del config.src, cb
