# Before Sass, let's talk Node.js

> Before starting this lesson, make sure you've done [part two of setting up](https://github.com/utdata/icj-setting-up/blob/main/README.md).

**Sass** is a method of writing more efficient CSS code and we'll learn about it through refactoring some existing CSS into Sassy CSS.

But, we are also introducing the Node.js development environment and because of this we need to take a detour to talk about it.

**Node.js** is an open-source server environment built using JavaScript. Many programmers like it because it allows them to write JavaScript not just for “front-end” browser tasks, but also for server-based or “back-end” tasks.

For our purposes, consider Node as a development environment and ecosystem that allows us to use code written both other people so we don't have to write it ourselves. Developers will create mini-programs — known as packages — and share them through Node Package Manager, or **npm** for short. Think of npm as the App Store for Node.js. When we need to do something like convert a Google Spreadsheet into data usable in our project, we don't have to write the code ourselves because someone else has already done so and published it to the npm "app store".

We need a number of these apps to convert our fancy Sass SCSS into vanilla CSS our browser will understand.

## Downloading, running our project

For this project, we are starting from a template saved in a repo. We'll use a special npm package called [degit](https://www.npmjs.com/package/degit) to start our project. You should already have installed it globally when we did our Node setup.

As such, we won't need to create a README or .gitignore file because they will be part of the template. But you will need to create a project folder:

1. Create a new project folder called `yourname-sass` inside your `icj` folder.
1. Open that folder in VS Code and open your terminal.
1. In your terminal, run `degit utdata/icj-sass-template`. This should download all the template files into your folder.
1. Run `npm install`. This will download all the packages we need from the npm "app store". It will take a couple of minutes.
1. Run `gulp dev`.

When you run `gulp dev` from your Terminal, a _bunch of cool stuff happens_. The process creates our "development environment":

- All HTML and image files are copied from the `src` directory to the `docs` directory, which is where our publishable code will live.
- A task compiles all the fancy SCSS files into regular CSS files that your browser can read.
- A program called Browsersync launches a web browser window and displays your web page                              .
- Browsersync also watches your HTML and SCSS file for any future changes and then reruns tasks and refreshes your browser so you can see your changes.

(Sometimes errors in your SCSS might crash Gulp. Sometimes the error message will help you find and fix the problem, and then you can re-run `$ gulp dev`.)

## The structure of the project

The template you pulled already as the Node.js development environment defined with a specific (and common) folder structure.

Let's talk about how the folder system is structured:

### src

You will only work with the files in the `src` folder. There are a series of "tasks" in the development system that will process and move files to the `docs` folder, which is our "publishable" website.

```
src
├── html (files here are moved to the root of `docs`.)
│   ├── index.html
│   ├── shows.css
├── scss (files here get complied into a folder called `docs/css`.)
│   ├── new-styles.css
│   ├── old-styles.css
├── img (files here are moved into a similar folder called `docs/img`.)
│   ├── harvey-dale.jpg
```

### docs

The `docs` folder is our publishing folder, where our website lives. These are the files that will be published to the web as a working website. Everything outside the `docs` folder just supports the creation of the files inside `docs`. DON'T EDIT ANY FILES IN THE `docs` FOLDER. If you do, the changes will just be overwritten.

> We use the `docs` folder for our publishable code to take advantage of a special feature in Github that will give us free publishing to the Internet. Other common folder names for publishing you might come across are `dist` and `public`.

```
docs (don't edit anything in here)
├── css
│   ├── (files from `src/scss` end up here)
├── img
│   ├── (files from `src/img` end up here)
├── index.html
├── shows.html

```

## How development environment works

As mentioned, files from the `src` folder get processed into `docs`. However, the published structure isn't exactly the same as `src` so pay attention.

The `docs` folder ends up being the "root" or base level of our site. All other files in the project need to need to be referenced relative to where they live inside `docs`.

- Files in the `src/html` get moved to the root level of `docs`. **It's important to realize where these files get published in relation to your `css` and `img` folders.**
- Sass files in the `src/scss` folder get compiled/rewritten into the `docs/css` folder. **There are two important implications of this:**
  - While the filename you edit ends in `.scss`, the compiled file in `docs/css` a `.css` extension.
  - This means your HTML files that end up at the root of `docs` will need to link to a compiled css file of the same name, but inside the css folder and with a `.css` extension, like `href="css/filename.css"`.
- Files in the `src/img` folder are moved into `docs/img`. Since your `index.html` file ends up in `docs`, then your img link needs to be `img src="img/filename.jpg"`.

### Configurations files

The remaining files and folders in the root folder are part of the development ecosystem. We don't mess with this files much in our lessons, but here is a description of what they do:

- `.gitignore` tells Git which files to ignore sending to Github.
- `README.md` describes what the repo is about. It has our installation instructions.
- `.gulpfile.js` is the file that controls our task manager. This is where we tell the **Gulp** program where to find our Sass SCSS files and then where to place the compiled new CSS files. We won't edit this file, but know it is necessary.
- The files inside `tasks` are the workhorse of Gulp. Like the gulpfile, we won't get into how they work. Just know this is the guts of the development ecosystem.
- `package.json` is the file that tells the Node.js ecosystem which packages to download from npm. It is pre-configured for you.
- `package-lock.json` is created by the `npm install` command based on the `package.json` file. It contains a bunch of details about dependencies that we don't need to worry much about. Again, it is created by npm.
- A `node_modules` folder is generated from `package.json` when you run `$ npm install`. It will contain all the mini-programs, and it will NOT be pushed to Github 'cause it is huge.

----

Next: [Finally, Sass](sass-02.md)
