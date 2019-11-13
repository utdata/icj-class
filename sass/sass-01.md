# Before Sass, let's talk Node.js

We will be learning about Sass through refactoring existing CSS into Sassy CSS. We are also introducing the Node.js development environment and because of this we need to take a detour to talk about it.

**Node.js** is an open-source programming framework built using JavaScript. Many programmers like it because it allows them to write JavaScript not just for “front-end” browser tasks, but also for server-based or “back-end” tasks.

For our purposes, consider Node as a development environment and ecosystem to use a bunch of mini-programs. Developers will create these mini-programs — known as packages — and share them through Node Package Manager, or **npm** for short. Think of npm as the App Store for these mini-programs. When we need something on our side like a photo slideshow, we don't have to reinvent the wheel because someone else already has, and they published it to the npm "app store".

We need a number of these apps to convert Sass SCSS to CSS for our websitex .

## Downloading, running our project

For this project, we are starting from a template saved in a repo. We'll use a special npm package called [degit](https://www.npmjs.com/package/degit) to start our project. You should already have installed it globally when we did our Node setup.

- Create a new project folder called `yourname-sass` inside your `icj` folder.
- Open that folder in VS Code and open your terminal.
- Run `degit utdata/icj-sass-template`. This should download all the files into your folder.
- Run `npm install` to install all the dependencies.
- Run `gulp dev`.

When you run `$ gulp dev` from your Terminal, the following things happen:

- A task compiles all the SCSS files into CSS files your browser can read.
- HTML and image files are copied from the `src` directory to the `docs` directory, which is our publishable code.
- A program called Browsersync launches and displays your web page in a browser window. It also watches your HTML and SCSS for any future changes and then reruns tasks and refreshes your browser so you can see your changes.

(Sometimes errors in your SCSS might crash Gulp. Sometimes the error message will help you find and fix the problem, and then you can re-run `$ gulp dev`.)

## The structure of the project

The Node.js development environment for this project is already defined. If your computer is properly set up, the installations directions should give you a working project. That's one of the benefits of the Node ecosystem.

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

The `docs` folder is our publishing folder, where our website lives. These are the files that will be published to the web as a working website. Everything outside the `docs` folder just supports the creation of the files in `docs`. DON'T EDIT ANY FILES IN THE `docs` FOLDER. (We use a publishing folder called `docs` to take advantage of a special feature in Github that will give us free publishing to the Internet.)

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

As mentioned, files from the `src` folder get processed into `docs`. However, some files end up in different places, which you'll need to keep straight.

The `docs` folder ends up being the "root" or base level of our site. All other files need to need to be referenced relative to where they live inside `docs`.

- Files in the `src/html` get moved to the root level of `docs`. These are our website pages.
- Files in the `src/scss` folder get compiled into `docs/css`. This means if you have an HTML file that lives at the root of `docs`, but want to link to a compiled css file of the same name, but with a `.css` extension, The link will be `href="css/filename.css"`
- Files in the `src/img` folder are moved into `docs/img`. This means since your `index.html` file ends up in `docs`, then your img link needs to be `img src="img/filename.jpg"`.

### Configurations files

The remaining files and folders in the root folder are part of the development ecosystem.

- `.gitignore` tells Git which files to ignore sending to Github.
- `README.md` describes what the repo is about. It has our installation instructions.
- `.gulpfile.js` is the file that controls our task manager. This is where we tell the **Gulp** program where to find our Sass SCSS files and then where to place the compiled new CSS files. We won't dive too much into this file, but know it is necessary.
- `tasks` is a the workhorse of Gulp. Like the gulpfile, we won't get into how they work. Just know this is the guts of the development ecosystem.
- `package.json` is the file that tells the Node.js ecosystem which packages (i.e. programs) we will use with this project. It is pre-configured for you.
- `package-lock.json` is created by npm based on the `package.json` file. It contains a bunch of details about dependencies that we don't need to worry much about. Again, it is created by npm.
- A `node_modules` folder is generated from `package.json` when you run `$ npm install`. It will contain all the mini-programs, and it will NOT be pushed to Github 'cause it is huge.

----

Next: [Finally, Sass](sass-02.md)
