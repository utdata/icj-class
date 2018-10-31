# Fixes to our bootstrap dev environment

In the first running of this class, there were some learnings. We want to fix a couple of things in our development environment before moving on:

- Add a gulp-util package to log gulp errors instead of crashing.
- Rework Sass to pull in Bootstrap to our custom styles files.

## Add gulp-util

- Make sure you are in your project in VS Code and have your terminal open.
- Run the following command to install gulp-util.

```bash
npm install gulp-util --save-dev
```

- Open your `gulpfile.js` file.
- Add this line below the other vars:

```js
var gutil       = require('gulp-util');
```

- Now replace the first gulp task. This removes one of the sources and adds the command to log errors.

```js
gulp.task('sass', function() {
    return gulp.src(['src/scss/*.scss'])
        .pipe(sass())
        .on('error', gutil.log)
        .pipe(gulp.dest("docs/css"))
        .pipe(browserSync.stream());
});
```

## Rearrange Sass to pull in Bootstrap styles

Instead of pointing to the whole Bootstrap css, we need to instead include it in our `styles.scss` file so we can properly modify variables.

- Open your `src/scss/styles.scss` file.
- Add this line to the top of the file.

```scss
// Variable Overrides

// Bootstrap Sass Imports
@import "../../node_modules/bootstrap/scss/bootstrap";
```

- Go into `docs/css/` and delete the `bootstrap.css` file. Those are now added to our main styles file.
- Go into `index.html` and delete the line in the head that calls the `css/bootstrap.css` spreadsheet.
- Run `gulp` and it should recreate your `docs/css/styles.css` file with the bootstrap stuff inside it. It should also NOT create a `bootstrap.css` file.

-----

OK, now we can move on to [part 2](bootstrap-class-02.md)
