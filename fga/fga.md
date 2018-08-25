# First Graphics App notes

The [First Graphics App](http://www.firstgraphicsapp.org/) lesson taught at NICAR over the past couple of years is a great introduction into how modern newsroom construct online projects.

Our aim is to go through this lesson together in class, following along with the script, but also filling in some context as we go along. It will still go pretty fast, as we'll spend weeks following going into further detail on some of the technologies used.

What follows are some notes and thoughts about this project to go over as we move along the script.

## How the internet works?

A thought: Talk about enough of how the internet works to get into servers, so we can understand why static apps rock?

## Prerequisites

- If you have followed the directions in [setting-up](https://github.com/utdata/setting-up), you should already have everything you need and we'll end up skipping a lot.

## Node.js and npm

Many online newsroom projects are built from a combination of HTML, CSS, Javascript and content, and often that content is data. Think about it ... when you save a post in WordPress, each box you fill in ... the title, text, featured image, etc ... are data. They are a **records in the database**, and when that page is rendered on the internet, some server out there has to assemble all those pieces together and deliver them to your browser.

The downside of that is those servers are **expensive to build** and to run. That might be OK when it is your CMS, but when it is just an interactive graphic built from a data source, like a map of restaurants, that's a lot of server overkill.

One way around this is for newsroom developers to **use their own computers as the server**, and then to create each fully-built page already done. Now the publishing of that content is a lot easier as there no database calls or computations to be done. There are other ways to tackle these challenges, but this is the easiest for us.

We are using [NodeJS](https://nodejs.org/en/) as a server on our computer. As Ben says, this allows developers to write their back-end code in JavaScript.

There is also a huge ecosystem of tools already built to help solve common programming challenges, as you'll see. Many of these are managed through [npm](https://www.npmjs.com/), which stands for Node Package Manager. Think of it like the electronic public library and of JavaScript programs.

## The framework

Ben explains the framework well enough. In our case at the Statesman, we had a couple of different ways to handle the management and assemblage of data-driven projects, depending on the needs. (We can go down that rabbit hole a different day.)

After we run the `yo` command, let's actually look through the folders created and talk about some of them. There are a lot of configuration files for different things. We won't go over all of them, but some of interest:

- The `gulp/` folder holds a series of files that define automation tasks. Combine with a "watch" task, you'll see each time you save certain files, related tasks kick off in the background, saving you a bunch of time.
- `node_modules/` holds all the software for the javascript tools downloaded by npm. We rarely interact directly with these, and we don't save it to Github because a) are only needed in development; b) these are generated based the `package.json` file; c) it can be a lot of files.
- The `src/` folder is the most important ... it is where we actually build our templates and pages. Inside that folder, you'll also see folders that that start with an underscore, like `src/_layouts/`. This notation is important because those are part of the system, but not going to become an published web page when we are done. The `README.md` file there has some further directions for you.
- The `tmp/` folder is a temporary folder that holds all the generated files when you are running the development web server.
- The `build/` or `docs/` folder we create later will have our actual, finished website with everything needed to display on the web.
- Of the other files there, the one that matters most is `package.json`, which is a record of all the npm JavaScript libraries needed to run this project. By having this file, other developers can run `$ npm install` and have everything they need.

## Templates

Ben does a good job with this section, though we _might_ sub out the base template. I just want to make sure folks understand how the template extrapolation works.

## Working with data

A couple of thoughts here.

- How do I get data as JSON? If I am hand-managing data like you might with this homicides data, I'll often use Google Spreadsheets. There are npm packages that will pull down that spreadsheet and save it as JSON, but I'm just as likely to just use an online converter like [Mr. Data Converter](http://shancarter.github.io/mr-data-converter/).
- When we get to talking about the loop, let's take a short tour of the [Nunjucks docs](https://mozilla.github.io/nunjucks/templating.html#for).

## Cards and bootstrap

