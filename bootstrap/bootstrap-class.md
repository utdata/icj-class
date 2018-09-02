# Using Bootstrap 4

We used [Bootstrap 4](https://getbootstrap.com/docs/4.1/getting-started/introduction/) in our First Graphics App lesson but we didn't really get into the details of it. Bootstrap is a HTML/CSS/Javascript framework that allows developers to use pre-determined configurations for common web items, like grids, buttons, navigation and such. It is far from the only framework, but it is very popular. It is a "mobile-first, responsive design" framework that allows you to make websites that look great on a phone, but on tablets and desktop, too.

NOTE: Before doing this lesson in class, you should have watched all the lessons in the [Learn Bootstrap 4 screencasts](https://scrimba.com/g/gbootstrap4) to get an idea of how Bootstrap 4 works.

## Goals

We'll use Bootstrap to:

- Learn about the benefits of mobile-first development
- Use a grid-system to create responsive websites
- Add pre-built components like buttons, navigation, etc.
- We'll also introduce Sass for customization

This lesson is cribbed from:

- [Learn Bootstrap 4 Final in 2018 by Gary Simon](https://coursetro.com/posts/code/130/Learn-Bootstrap-4-Final-in-2018-with-our-Free-Crash-Course).


### Resources

Throughout this lesson, we will refer to:

- [Bootstrap 4 documentation](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
- The [Learn Bootstrap screencasts](https://scrimba.com/g/gbootstrap4) you had as prework.

## Setup

### Create your Github repo and clone

This is the same cycle we've use in other lessons to create a new repo.

- Go to Github.com and create a new repo. Call it `bootstrap-class`. Include the README.md.
- Copy the clone URL
- In a Terminal, cd into your code folder: `cd ~/Documents/code/`
- do `git clone [yoururl]`
- cd into the folder
- open in VS code with: `code ./`

### Use npm to install all our tools

When we did the First Graphics app, we used the yeogurt-generator to "scaffold" the project, which created a bunch of folders and installed a bunch of software. We don't need the complexity of that full project, but we do need to install software and create folders and files manually. The process will make you appreciate yeogurt so much more ;-).

There are two common ways to include Bootstrap in your project, and they both have their pros and cons. For the First Graphics App, the base index.html file included links to the entire Bootstrap CSS and JavaScript libraries. They are large files and customization is difficult.

You've done that already, so we'll use the second method here, which is to install Bootstrap using npm. The advantage to this is we can then include only the pieces of Bootstrap that we need, and we can customize it more easily. It will be good practice for later.

Since we already have Node and npm installed globally from previous work, we can initialize a project and install what we need.

- Using your Integrated Terminal in VS Code, initialize a project:

```bash
npm init -y
```

The `-y` flag allows us skip some answers and accept some defaults. This process creates a file called `package.json` that keeps track of all our npm software needs.

Next, we'll install some "development dependencies" with the `--save-dev` flag. That flag tells npm (and other developers) that we only need these tools when we are in development, and they do not need to be included in any final products. The tools are are installing are some of the same ones that we used with the First Graphics App. I'll explain the individual pieces later when we use them.

```bash
npm install gulp gulp-sass browser-sync --save-dev
```

You might see some "vulnerability" warnings after install. We'll ignore these for now.

Next, we'll install more tools that we will need included in our final product. Bootstrap is our framework, and it requires the two javascript libraries, JQuery and Popper.js, so we include those, too. The `--save` flag says to save them in our package.json file.

```bash
npm install bootstrap jquery popper.js --save
```

In class, we may take a minute to tour the `package.json` and `package-lock.json` files.

You'll notice after you are done with all the installs that a `node_modules` folder has been created. It includes all the code that we installed into our project. It's a boatload of files that we don't need to save in github, so we need to create a `.gitignore` files.

- In your Integrated Terminal, create a new file with `touch .gitignore` and then open it in the code editor.
- Go to [Gitignore.io](https://www.gitignore.io) and type in "Node" and your operating system and hit OK to the the code, which you'll then copy 'n' paste into the `.gitignore` file.

### The git cycle

This would be a good time to save and push our code to Github. You can use the [VS Code Explorer](https://code.visualstudio.com/docs/editor/versioncontrol#_git-support) or your Integrated Terminal with the regular cycle:

```bash
git add .
git commit -m "framework installed"
git push origin master
```

### Build our folder structure

We need to create a series of folders that look like this:

```
/docs
  /css
  /js
/src
  /scss
```

Everything inside of our `docs` folder will be our published product. Everything in our `src` folder will only be used for development.

You could use the VS Code Explorer to create each of those folders, but it's kind of tricky. We can actually create them all in one command using the Integrated T  erminal:

```bash
mkdir docs docs/css docs/js src src/scss
```

### Create our index file

Create a new file inside the `/src` folder called `index.html`, and insert this code:

```html
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
      <title>Bootstrap 4 Layout</title>
      <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="/css/bootstrap.css">
      <link rel="stylesheet" href="/css/styles.css">
    </head>

    <body>
      <!-- Content starts here -->

      <!-- Closing scripts here -->
      <script src="/js/jquery.min.js"></script>
      <script src="/js/popper.min.js"></script>
      <script src="/js/bootstrap.min.js"></script>
    </body>
</html>
```

There are several things going on here with this file beyond the base HTML. We are pulling in css files in the head that don't exist yet, and javascript files at the bottom that don't exist yet. And we don't have any content. Yet. It's coming.

### Create our styles overrides file

Next, we're going to create our styles overrides files and insert some code that will later tell us everything is hooked up properly.

- Inside the `src/scss` folder, create a new file called `styles.scss`. Note that "scss" extension, as it is important.
- Paste the following test code inside the file:

```scss
$bg-color: red; 

body {
    background: $bg-color;
}
```

### Set up our gulp tasks

OK, this is the most technical part of this whole setup, and we are getting into _JavaScript_. Once we set it up, I'll explain the pieces.

- In the root of your project folder, create a new file called `gulpfile.js`.
- Paste this inside.

```js
var gulp        = require('gulp');
var browserSync = require('browser-sync').create();
var sass        = require('gulp-sass');

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', function() {
    return gulp.src(['node_modules/bootstrap/scss/bootstrap.scss', 'src/scss/*.scss'])
        .pipe(sass())
        .pipe(gulp.dest("docs/css"))
        .pipe(browserSync.stream());
});

// Move the javascript files into our /src/js folder
gulp.task('js', function() {
    return gulp.src(['node_modules/bootstrap/dist/js/bootstrap.min.js', 'node_modules/jquery/dist/jquery.min.js', 'node_modules/popper.js/dist/umd/popper.min.js'])
        .pipe(gulp.dest("docs/js"))
        .pipe(browserSync.stream());
});

// Static Server + watching scss/html files
gulp.task('serve', ['sass'], function() {

    browserSync.init({
        server: "./docs"  
    });

    gulp.watch(['node_modules/bootstrap/scss/bootstrap.scss', 'src/scss/*.scss'], ['sass']);
    gulp.watch("docs/*.html").on('change', browserSync.reload);
});

gulp.task('default', ['js','serve']);
```

Now for the explanations:

- The first three lines that start with `var` are variables to designate the three programs we are using in this file: gulp, gulp-sass and browser-sync. Remember, these are the three "--save-dev" files we installed. Our [gulp](https://www.npmjs.com/package/gulp) taskrunner build system needs to know about these, including its own self.
- The next three sections are JavaScript functions (remember those!) with names ('sass', 'js' and 'serve'), and each of those does things ... mostly copying files around, which you will see. We can run each of those individually in the terminal like this: `gulp sass`, and that will fire off that task.
- The last line the default gulp task (when we just run `gulp` by itself) and it happens to just invoke the other tasks we've already defined.

Let's run it and see if it works. In your VS Code Terminal, do this:

```bash
gulp
```

With any luck, http://localhost:3000 will load up in the browser and your background will be bright stinking red! This means everything should be good to go.

In class, we should take a quick tour of the `docs/` folder to see all the files created and moved by gulp so we can better understand those tasks.

Lastly, let's delete the contents of `src/styles.scss` now we know our gulp setup works.

## Bootstrap (finally!)

### The grid

The first thing that Bootstrap brings us is a [12-column grid setup](https://getbootstrap.com/docs/4.0/layout/grid/) to "layout" your page. It allows you to define differing column widths for different viewport widths through a series of class names. It uses a core CSS feature called "flexbox" to do this. (FYI you may read about a newer core CSS feature called CSS Grid that still lags a little in browser adoption, so we'll stick with Boostrap for now.)

We are going to start with a `.container` div. A container centers content in the middle of the page and adjusts the outside margin depending on the viewport width. (`.container-fluid` would go 100% of the page.)

Add this to the body of `index.html`:

```html
      <div class="container">
        test
      </div>
```

> Note: You may have to adjust the indents of some rows as you copy 'n' paste or type in new code. Make your indents so your code is nice and pretty and shows properly the parent-child relationships of items. You'll thank me later when you are trying to figure out what goes with what.

As you view your page, you'll notice the word "test" is a bit in the middle of the page and not on the left edge.

#### Rows and columns

Let's add these rows and columns _inside_ our container so we can talk about how they work:

```html
        <div class="row">
          <div class="col bg-danger">
            One of three columns
          </div>
          <div class="col bg-warning">
            One of three columns
          </div>
          <div class="col bg-success">
            One of three columns
          </div>
        </div>
```

Take a look at your page and you'll see a Rasta party of boxes in red, yellow and green.

Each of the colored sections are "column" divs, hence the class name of `col`. They are surrounded by a `row` div. Columns always have to be a child of a row div, or the Bootstrap grid won't work right.

`bg-danger` and the other bg-classes are [Bootstrap color classes](https://getbootstrap.com/docs/4.0/utilities/colors/) I'm using as a convenience here to show the three different boxes.

These three columns are evenly distributed and space across the container space. Adjust your browser width smaller and wider and you'll see they stay that way at every width.

Typically, we would want content like that to stack on top of each other at small window widths like a phone. We can adjust our code to do this.

- Change all the `col` classes to instead be `col-sm`.

Now adjust your screen width and see what happens at the extra small width.

#### The sizes

