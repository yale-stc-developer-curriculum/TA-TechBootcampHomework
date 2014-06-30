'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var del = require('del');
var runSequence = require('run-sequence');
var browserSync = require('browser-sync');
var mocha = require('gulp-mocha');
var reload = browserSync.reload;

// Link JavaScript
gulp.task('jshint', function () {
  return gulp.src('src/js/**/*.js')
    .pipe(reload({stream: true, once: true}))
    .pipe($.jshint())
    .pipe($.jshint.reporter('jshint-stylish'))
    .pipe($.if(!browserSync.active, $.jshint.reporter('fail')));
});

gulp.task('reload', function(cb) {
  reload();
  cb(null);
});

gulp.task('clean', del.bind(null, ['.tmp', 'dist']));

gulp.task('serve', function() {
  browserSync({
    notify: false,
    server: {
      baseDir: ['.tmp', 'app', 'test']
    }
  });

  gulp.watch(['app/**/*.html'], reload);
  gulp.watch(['app/styles/**/*.css'], reload);
  gulp.watch(['app/scripts/**/*.js'], ['jshint', 'reload']);
  gulp.watch(['test/**/*.js'], reload);
});

gulp.task('default', ['clean'], function (cb) {
  runSequence(['jshint']);
});






