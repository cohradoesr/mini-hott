process.chdir('blog');

const gulp        = require('gulp');
var browserSync   = require('browser-sync').create();
const reload      = browserSync.reload;
const sass        = require('gulp-sass');
const concat      = require('gulp-concat');
const plumber     = require('gulp-plumber');

const cssnano     = require('gulp-cssnano');
const uglify      = require('gulp-uglify');
const imagemin    = require('gulp-imagemin');

const child       = require('child_process');
const gutil       = require('gulp-util');
gutil.log         = gutil.noop;

const watch       = require('gulp-watch');
var Vinyl         = require('vinyl');

const scriptFiles = '_js/**/*.js';


var messages = {
  jekyllDev  : 'Running: $ jekyll build for dev',
  jekyllProd : 'Running: $ jekyll build for prod'
};

gulp.task('jekyll-dev', function (done) {
  browserSync.notify(messages.jekyllDev);
  const jekyll = child.spawn( 'jekyll'
                            , ['build', '--incremental']
                            , {stdio: 'inherit'}
                            )
                      .on('close', done);
});

gulp.task('jekyll-rebuild', ['jekyll-dev'], function () {
  browserSync.reload();
});

gulp.task('sass', function(){
  return gulp.src(['_sass/main.scss'])
             .pipe(plumber())
             .pipe(sass({onError: browserSync.notify}))
             .pipe(concat('main.css'))
             .pipe(plumber.stop())
             .pipe(gulp.dest('docs/assets'))
             .pipe(browserSync.reload({stream:true, message: "Sass updated!"}))
             .pipe(gulp.dest('docs/assets'));
});

gulp.task('scripts', function() {
  return gulp.src(scriptFiles)
             .pipe(plumber())
             .pipe(concat('main.js'))
             .pipe(plumber.stop())
             .pipe(gulp.dest('_site/assets'))
             .pipe(browserSync.reload({stream:true}))
             .pipe(gulp.dest('assets'));
});

gulp.task('ipe-images', () => function(){
	return gulp.src('docs/assets/ipe-images/*.png')
          	 .pipe(imagemin())
             .pipe(gulp.dest('docs/assets/ipe-images'))
             .pipe(browserSync.reload())
});

gulp.task('png-images', () => function(){
	return gulp.src('docs/assets/png-images/*.png')
          	 .pipe(imagemin())
          	 .pipe(gulp.dest('docs/assets/png-images'))
});

gulp.task('reload', () => function(){
  return gulp.pipe(browserSync.reload())
});


gulp.task('browser-sync', ['sass', 'scripts', 'jekyll-dev'], function() {
  browserSync.init({ browser: 'chrome'
                   , open: false
                   , files: [ 'docs/**']
                   , server: { baseDir: "./docs" }
                   , port: 4000
                  });

  gulp.watch(['_sass/**/*.scss','_sass/*.scss'], ['sass']);
  gulp.watch(['_js/**/*.js'], ['scripts']);
  gulp.watch(['images/*'], ['ipe-images']);
  gulp.watch(['**/*.md', '_layouts/*.html', '_posts/*'
             , '_includes/*.html', '_drafts/*', '**/*.html'
            ], ['jekyll-rebuild']);

  });

// Production

gulp.task('jekyll-prod', function (done) {
  browserSync.notify(messages.jekyllProd);
  return child.spawn('jekyll', ['build'], {stdio: 'inherit'})
              .on('close', done);
});


gulp.task('sass-prod', () => {
  return gulp.src(['_sass/main.scss'])
             .pipe(plumber())
             .pipe(sass({onError: browserSync.notify}))
             .pipe(concat('main.css'))
             .pipe(cssnano())
             .pipe(plumber.stop())
             .pipe(gulp.dest('docs/assets'))
             .pipe(browserSync.reload({stream:true}))
             .pipe(gulp.dest('docs/assets'));
});

gulp.task('scripts-prod', function() {
  return gulp.src(scriptFiles)
             .pipe(plumber())
             .pipe(concat('main.js'))
             .pipe(uglify())
             .pipe(plumber.stop())
             .pipe(gulp.dest('docs/assets'))
             .pipe(browserSync.reload({stream:true}))
             .pipe(gulp.dest('docs/assets'));
});

// DEFAULT
gulp.task('default', ['sass'
                     , 'jekyll-dev'
                     , 'browser-sync'
                     ]);

gulp.task('build', ['scripts-prod'
                   , 'sass-prod'
                   , 'jekyll-prod'
                   , 'ipe-images'
                   , 'png-images'
                   ]);
