# Using Bootstrap 4: Setup

## Goals

We will:

- Download and discuss using a Node development environment.
- Discuss the benefits of using a mobile-first framework.
- Use Bootstrap's grid-system to create a responsive website.
- Add pre-built components like navigation, jumbotron displays, etc.
- Introduce Sass/SCSS for customization.

**NOTE**: Before doing this lesson in class, you should have watched all the lessons in the [Learn Bootstrap 4 screencasts](https://scrimba.com/g/gbootstrap4) to get an idea of how Bootstrap 4 works.

**ALSO NOTE**: Before starting this lesson, you should have Node and npm installed, as covered in [Part 2: Node setup](https://github.com/utdata/setting-up) and have tested that it works.

**FINAL NOTE**: There is a screencast of this lesson with explanations in Canvas under Panopto Video. Look for **Bootstrap in-class lesson**.

This lesson is cribbed from:

- [Learn Bootstrap 4 Final in 2018 by Gary Simon](https://coursetro.com/posts/code/130/Learn-Bootstrap-4-Final-in-2018-with-our-Free-Crash-Course), which is already out of date.

## About Bootstrap

[Bootstrap 4](https://getbootstrap.com/docs/4.1/getting-started/introduction/) is a HTML/CSS/Javascript framework for designing websites and web applications. Using Bootstrap saves time and effort because common parts of a web site -- navigation, buttons, colors, boxes, grids -- are all pre-built, but also customizable. It is far from the only framework, but it is very popular. It is a "mobile-first, responsive design" framework that allows you to make websites or web applications that look great on a phone, tablet or desktop.

Throughout this lesson, we will refer to:

- [Bootstrap 4 documentation](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
- W3 Schools' [Bootstrap 4 Tutorial](https://www.w3schools.com/bootstrap4/).
- The [Learn Bootstrap screencasts](https://scrimba.com/g/gbootstrap4) you had as prework.

## Create your project and Github repo

We'll create our project and get all our files, then get into the lesson.

- Create a new folder in your `icj/` folder called `yourname-bootstrap`.
- In VS Code, open a new window and open your new folder.
- Open the Integrated Terminal.
- Run `$ degit utdata/icj-bootstrap-template` to download the files.
- Run `$ npm install` to install the node packages.
- Run `$ git init` to intilize git.
- Run `$ git add .` to add the files.
- Run `$ git commit -m "first commit"` to commit the files.
- Go to Github and create a repository of the same name.
- Use the `git remote add` command provided there to sync the repos.
- Run `$ git push origin master` to push the code to Github.

The project already has README.md and .gitignore files. Edit the README file by adding a new section at the top with your name and the date you started the project.

> When running `npm install` or when viewing your project on Github, you will see warnings about outdated packages and dependencies. These will not affect our work on this project.

### A quick note about Node.js and npm

**Node.js** is an open-source programming framework built using JavaScript. Many programmers like it because it allows them to write JavaScript not just in their browser for “front-end” tasks, but also in the terminal or on a server for “back-end” tasks.

For our purposes, Node is really an ecosystem to use a bunch of mini-programs built in JavaScript. Developers will create these mini-programs -- known as packages -- in that ecosystem and then share them with the world through **npm**. Node Package Manager, or npm for short, is like the iTunes Store for these packages. When someone creates a package to do something -- say a photo slide-show for the web -- and then shares it on npm, then we don't have to reinvent that wheel.

Bootstrap is available through npm, and the project template we are using has been configured to utilize it. While this method is a bit more complicated than just including the Bootstrap CSS and Javascript links in an HTML page, it is also infinitely more powerful, as you will see in future lessons.

## Let's review the project files

### The docs folder

The `docs/` folder is where all our finished site files go. It is the folder that will be read by the web server.

> WE DON'T EDIT FILES HERE!!

Most web apps like this will use a different folder name, like `dist/` or `public/`, but we are using `docs/` to take advantage of some free web serving services offered by Github.

Inside our docs folder, you will eventually see the following:

- A `css/` folder with all our compiled css. We won't edit these files, because we will be using Sass and editing from the `src/scss/` folder.
- A `js/` folder. There are some Node.js server tasks that will copy files here for us.
- An `index.html` file. This is the HTML page we will be building, but we will will be editing it from the `src/` folder.

### The src folder

This is where we edit our files. Any change we make here gets compiled or copied into the `docs/` folder by our Node.js server.

- The `html` folder has `index.html` file that we will be adding all our HTML code.
- The `scss` folder has `styles.scss` file were we will add all our Sassy css.

As you'll soon see, when our server is running, each time we save a file in either of these folders, the scss will be compiled and our HTML copied into the `docs/` folder.

#### Inspect the html file

While we are in our src folder, let's look at our HTML.

- Open `src/html/index.html` and take a look at it.

There are several things going on here with this file beyond the base HTML. In the `<head>` we are pulling in css files that will be generated through Sass, including for the Bootstrap framework. At the bottom we are pulling in the JavaScript files that we need for Bootstrap, which will also be copied there by our server.

#### Inspect the scss file

If we open the `src/scss/styles.scss` file, we'll see the `@import` that pulls in all the Bootstrap css from our `node_modules` folder that we downloaded when we ran `npm install`. You don't see the result yet on our index page, but you will soon.

### Inspect the configuration files

The remaining files in the root level of the project are configuration files that help make this development ecosystem run.

- The `.gitignore` file. It's configured for a Node.js based web app.
- The `README.md` file explains how to get started with this template.
- The `gulpfile.js` is our magic task runner. More on that below.
- The `package.json` and `package-lock.json` files keep track of all the npm packages we are using. When you run `$ npm install`, it downloads all the software into the `node_modules` folder, which is _NOT_ saved into Github because it contains thousands of files.

#### More about the gulpfile

[Gulp](https://www.npmjs.com/package/gulp) is our task runner that creates our server, compiles our CSS and copies files where we need them. The `gulpfile.js` is the main controller file works works with a series of files in the `tasks` folder.

Each task file does a single thing, like clean out folders, copy files to different directories, or run the Sass CSS compiler. Each task uses one or more node packages to do its work, and the names of the file indicates more or less what that is. We might review some of these in class and you are free to poke around there, but I'd be careful in editing these files at this point.

This setup gives us the two commands that we will use the most:

- `gulp` will compile our CSS and copy all our files into the `docs/` folder.
- `gulp dev` will do all of the above, plus start our web server so we can see our page.

I can tell you, I did not write all this JavaScript from scratch. I found examples on the web that were close to what I needed and I used those, along with documentation, to configure them for my needs.

## Launch

Let's run it and see if it works. In your VS Code Terminal, do this:

```bash
gulp dev
```

With any luck, http://localhost:3000 will load up in the browser and you'll see some testing text on your screen. This means everything should be good to go.

Congrats! You are now ready to get down to business and build a website.

-----

**Next**: We actually get started with Bootstrap in [part 2](bootstrap-class-02.md).