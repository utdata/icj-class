# Before Sass, let's talk Node.js

We will be learning about Sass through refactoring existing CSS into Sassy CSS. We are also introducing the Node.js development environment and because of this we need to take a detour to talk about it.

**Node.js** is an open-source programming framework built using JavaScript. Many programmers like it because it allows them to write JavaScript not just in for “front-end” browser tasks, but also for server-based or “back-end” tasks.

For our purposes, Node is a development environment and ecosystem to use a bunch of mini-programs. Developers will create these mini-programs — known as packages — and share them through Node Package Manager, or **npm** for short. Think of npm as an App Store for these mini-programs. When someone creates a package to do something — say a photo slide-show for the web — we don't have to reinvent that wheel. The task to convert Sass SCSS to CSS is one of these server-based tasks we'll need from Node.

## Downloading, running our project

For this project, we are starting from a template saved in a repo. We'll use a special npm package called [degit](https://www.npmjs.com/package/degit) to start our project. You should already have installed it globally when we did our Node setup.

- Create a new project folder called `yourname-sass` inside your `icj` folder.
- Open that folder in VS Code and open your terminal.
- Run `degit utdata/icj-sass-template`. This should download all the files into your folder.
- Run `npm install` to install all the dependencies.
- Run `gulp dev`.

When you run `$ gulp dev` from your Terminal, two things happen:

- A task compiles all the SCSS files into CSS files your browser can read.
- A program called Browsersync launches and displays your web page in a browser window. It also watches your HTML and SCSS for any future changes and then reruns the Sass task and refreshes your browser so you can see your changes.

(Sometimes errors in your SCSS might crash Gulp. Sometimes the error message will help you find and fix the problem, and then you can re-run `$ gulp dev`.)

## The structure of the project

The Node.js development environment for this project is already defined. If your computer is properly set up, the installations directions should give you a working project. That's one of the benefits of the Node ecosystem.

Let's talk about how the folder system is structured:

### docs

The `docs` folder is our publishing folder, where our site lives. These are the files that will be published to the web as a working website. Everything outside the `docs` folder just supports what is inside it. (The folder is called `docs` to take advantage of a special feature in Github that will give us free publishing to the Internet.) 

Inside of `docs` are our two HTML files, and then folders for our published CSS and our media files.

```
docs
├── css
│   ├── new-styles.css
│   ├── old-styles.css
├── media
│   ├── harvey-dale.jpg
index.html
shows.html
```

- The `old-styles.css` file is our "traditional" CSS file we will work from.
- The `new-styles.css` file will be the one created by Sass.
- The `media` folder is just a place to store our photos and other assets.
- The `index.html` and `shows.html` files are our web pages.

### src

The `src` folder contains files that contribute to the files in the `docs` folder. These will not be "published", but they are required for their production.

```
src
  ├──scss
     ├── new-styles.scss
```

- Since this is a very simple site, our only source file is the SCSS file that will be used to build our complied CSS file.

### Configurations files

The remaining files and folders in the root folder are part of the development ecosystem.

- `.gitignore` tells Git which files to ignore sending to Github.
- `README.md` describes what the repo is about. It has our installation instructions.
- `.gulpfile.js` is the file that controls our task manager. This is where we tell the program **Gulp** where to find our Sass SCSS files and then where to place the compiled new CSS files. We won't dive too much into this file, but know it is necessary.
- `package.json` is the file that tells the Node.js ecosystem which packages we will use with this project. It is pre-configured for you.
- `package-lock.json` is created by npm based on the `package.json` file. It contains a bunch of details about dependencies that we don't need to worry much about. Again, it is created by npm.
- A `node_modules` folder is generated from `package.json` when you run `$ npm install`. It will contain all the mini-programs, and it will NOT be pushed to Github 'cause it is huge.

----

Next: [Finally, Sass](sass-02.md)
