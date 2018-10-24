# Using Bootstrap 4: Setup

[Bootstrap 4](https://getbootstrap.com/docs/4.1/getting-started/introduction/) is a HTML/CSS/Javascript framework for designing websites and web applications. Using Bootstrap saves time and effort because common parts of a web site -- navigation, buttons, colors, boxes, grids -- are all pre-built, but also customizable. It is far from the only framework, but it is very popular. It is a "mobile-first, responsive design" framework that allows you to make websites or web applications that look great on a phone, tablet or desktop.

**NOTE**: Before doing this lesson in class, you should have watched all the lessons in the [Learn Bootstrap 4 screencasts](https://scrimba.com/g/gbootstrap4) to get an idea of how Bootstrap 4 works.

**ALSO NOTE**: Before starting this lesson, you should have Node and npm installed, as covered in [Part 2: Node setup](https://github.com/utdata/setting-up) and have tested that it works.

## Goals

- We'll set up a new Node/npm/gulp project environment.
- Discuss the benefits of using a mobile-first framework.
- Use Bootstrap's grid-system to create a responsive website.
- Add pre-built components like navigation, jumbotron displays, etc.
- Introduce Sass/SCSS for customization.

This lesson is cribbed from:

- [Learn Bootstrap 4 Final in 2018 by Gary Simon](https://coursetro.com/posts/code/130/Learn-Bootstrap-4-Final-in-2018-with-our-Free-Crash-Course).

## Resources

Throughout this lesson, we will refer to:

- [Bootstrap 4 documentation](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
- The [Learn Bootstrap screencasts](https://scrimba.com/g/gbootstrap4) you had as prework.
- W3 Schools' [Bootstrap 4 Tutorial](https://www.w3schools.com/bootstrap4/).

## Create your Github repo and clone

This is the same cycle we've use in other lessons to create a new repo.

- Go to Github.com and create a new repo. Call it `yourname-bootstrap`. Include the README.md and keep the repo public.
- Copy the clone URL
- In a Terminal, cd into your code folder: `cd ~/Documents/icj/`
- do `git clone [yoururl]`
- cd into the folder
- open in VS code with: `code ./`

## Set up .gitignore

When we later install packages using npm, it will create a folder called a `node_modules` that has the javascript code for MANY apps. We don't want those files saved to Github, so we will create a `.gitignore` file to exlude them (and other things we don't want saved to Github).

- In your Integrated Terminal, create a new file with `touch .gitignore` and then open it in the code editor.
- Go to [Gitignore.io](https://www.gitignore.io) and type in "Node", "macOS", "Windows" and "VisualStudioCode" and hit OK to get to the code, which you'll then copy 'n' paste into the `.gitignore` file.

## Set up our project environment

### A quick note about Node.js and npm

**Node.js** is an open-source programming framework built using JavaScript. Many programmers like it because it allows them to write JavaScript not just in their browser for “front-end” tasks, but also in the terminal or on a server for “back-end” tasks.

For our purposes, Node is really an ecosystem to use a bunch of mini-programs built in JavaScript. Developers will create these mini-programs -- known as packages -- in that ecosystem and then share them with the world through **npm**. Node Package Manager, or npm for short, is like the iTunes Store for these packages. When someone creates a package to do something -- say a photo slide-show for the web -- and then shares it on npm, then we don't have to reinvent that wheel.

Bootstrap is included in npm, and we will do this lesson as a Node-based project because that is how it is commonly in newsrooms. While this method is a bit more complicated than just including the Bootstrap CSS and Javascript links in an HTML page, it is also infinitely more powerful, as you will see in future lessons.

### The parts of the Node project

Just to outline what we will be doing next, with details to follow:

- Initialize our npm project
- Download the software we will need using npm
- Create the folders we need
- Create the files we need
- Test our little ecosystem to make sure it works.

Then we'll move on to learning Bootstrap.

### Initialize our project

- Launch VS Code (or start a new window), and use the **Go to folder** link to open your project in `Documents/icj/boostrap-yourname`.
- Open your Integrated Terminal in VS Code, and make sure (use `pwd`) that you are inside your project folder.
- Use this command to initialize your npm project:

```bash
npm init -y
```

The `-y` flag allows us skip some answers and accept some defaults. This process creates a file called `package.json` that keeps track of all our npm software needs.

### Download our software using npm

Next, we'll install some "development dependencies" packages with the `--save-dev` flag. That flag tells npm (and other developers) that we only need these tools when we are in development, and they do not need to be included in any final products. I'll explain the individual packages later when we use them.

```bash
npm install gulp gulp-sass browser-sync --save-dev
```

You might see some "vulnerability" warnings after the install. We'll ignore these for now. `¯\_(ツ)_/¯`

Next, we'll install more tools that we _will_ need to be included in our final product. Bootstrap is our framework, and it requires the two javascript libraries, JQuery and Popper.js, so we include those, too. The `--save` flag says to save them in our package.json file.

```bash
npm install bootstrap jquery popper.js --save
```

In class, we may take a minute to tour the `package.json` and `package-lock.json` files.


### The git cycle

This would be a good time to save and push our code to Github. You can use the [VS Code Explorer](https://code.visualstudio.com/docs/editor/versioncontrol#_git-support) or your Integrated Terminal with the regular cycle:

```bash
git add .
git commit -m "framework installed"
git push origin master
```

### Build our folder structure

Next, we need to create a series of folders that look like this. Let me explain them, then we will create them:

```
/docs
  /css
  /js
/src
  /scss
```

Everything inside of our `docs` folder will be our published product. Everything in our `src` folder will only be used for development.

You could use the VS Code Explorer to create each of those folders, but I've found that to be error-prone. We can quickly create them all in one command using the Integrated Terminal:

```bash
mkdir docs docs/css docs/js src src/scss
```

### Create our index file

Use `touch` to create a new file inside the `/docs` folder:

```bash
touch docs/index.html
```
Then open the file in VS Code and add this into it:

```html
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <title>Bootstrap 4 Layout</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/styles.css">
  </head>

  <body>
    <!-- Content starts here -->

    <!-- Closing scripts here -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
```

There are several things going on here with this file beyond the base HTML. In the `<head>` we are pulling in css files that don't exist yet, and at the bottom we are pulling in JavaScript files that don't exist yet. And we don't have any content. Yet. It's coming. Promise.

### Create our styles overrides file

Next, we're going to create our styles overrides files and insert some code that will later tell us everything is hooked up properly.

- Inside the `src/scss` folder, create a new file called `styles.scss`. Note that "scss" extension, as it is important. You could use `touch src/scss/styles.scss`.
- Open it and paste the following test code inside the file:

```scss
$bg-color: red;

body {
  background: $bg-color;
}
```

Any guesses what that might do?

### Set up our gulp tasks

OK, this is the most technical part of this whole setup, and we are getting into _JavaScript_. Once we set it up, I'll explain the pieces.

- In the root of your project folder, create a new file called `gulpfile.js`.
- Paste this inside:

```js
var gulp        = require('gulp');
var browserSync = require('browser-sync').create();
var sass        = require('gulp-sass');

// Compile sass into CSS and put into docs/css folder
gulp.task('sass', function() {
    return gulp.src(['node_modules/bootstrap/scss/bootstrap.scss', 'src/scss/*.scss'])
        .pipe(sass())
        .pipe(gulp.dest("docs/css"))
        .pipe(browserSync.stream());
});

// Move the javascript files into our docs/js folder
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

- The first three lines that start with `var` are variables to designate the three programs we are using in this file: gulp, gulp-sass and browser-sync. Remember, these are the three "--save-dev" files we installed.
- [Gulp](https://www.npmjs.com/package/gulp) is a task runner that we assign to do stuff for us.
- [gulp-sass](https://www.npmjs.com/package/gulp-sass) helps us with some CSS files.
- [browser-sync](https://browsersync.io/) is a web server that let's us see our work as we are building it.
- The next three sections are JavaScript functions (remember those!) with names ('sass', 'js' and 'serve'), and each of those does things ... mostly copying files around, which you will see. We can run each of those individually in the terminal like this: `gulp sass`, and that will fire off that task.
- The last line the default gulp task (when we just run `gulp` by itself) and it happens to just invoke the other tasks we've already defined.

Let's run it and see if it works. In your VS Code Terminal, do this:

```bash
gulp
```

With any luck, http://localhost:3000 will load up in the browser and your background will be bright stinking red! This means everything should be good to go.

In class, we should take a quick tour of the `docs/` folder to see all the files created and moved around by gulp so we can better understand those tasks.

I can tell you, I did not write all this JavaScript from scratch! There are examples in the [gulp](https://www.npmjs.com/package/gulp), [gulp-sass](https://www.npmjs.com/package/gulp-sass) and [browser-sync](https://www.npmjs.com/package/browser-sync) docs, but what I did was find an example on the web that was close to what I needed, and because I understood what it was doing (more or less), I adjusted it to my liking.

Lastly, let's delete the contents of `src/styles.scss` now we know our gulp setup works.

Congrats! You are now ready to get down to business and build a website.

-----

**Next**: We actually get started with Bootstrap in [part 2](bootstrap-class-02.md).