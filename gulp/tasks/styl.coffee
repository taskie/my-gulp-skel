gulp = require 'gulp'
gulpif = require 'gulp-if'
plumber = require 'gulp-plumber'
stylus = require 'gulp-stylus'
concat = require 'gulp-concat'
autoprefixer = require 'gulp-autoprefixer'
minify = require 'gulp-minify-css'
sourcemaps = require 'gulp-sourcemaps'
config = require('../config').styl

gulp.task 'styl', ->
  gulp
    .src config.src
    .pipe plumber()
    .pipe sourcemaps.init()
    .pipe stylus()
    .pipe concat(config.output)
    .pipe autoprefixer(config.autoprefixer)
    .pipe gulpif(config.minify, minify())
    .pipe sourcemaps.write('.')
    .pipe gulp.dest(config.dest)
