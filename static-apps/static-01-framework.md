# The static app framework

## Goals for this lesson

We will learn the features of this project rig in steps:

### Templates

- We'll learn about static-site generators and templates.
- We'll build a new page using the base template.

### Loops and Google Sheets data

- We'll learn about using Google Sheets to manage data in our project.
- We'll introduce loops to process data on our pages.

### Google Docs, ArchieML and baking pages

- We'll learn about using Google Docs/ArchieML for content.
- We'll learn about the bake command in the project.
- We'll create blog pages based on Google Doc source.
- We'll update our index page to build links to the blog pages.

## Building up to the static-generator app

Throughout this semester we've been building your coding skills, adding a new language or tool each week. For each of the three core technologies, HTML, CSS and JavaScript, we've enhanced the base language with tools or systems to make them more efficient to use.

When you built your Bootstrap practice project, you had to completely finish one page before you copied it to create your second page, which means you had lots of duplicate code. If you needed to change something in the Jumbotron, you had to change it on every page. Imagine if your site had hundreds of pages. That's too labor intensive in the age of computers. With this lesson we'll introduce a system that allows you to create a template framework that can be used to generate a number of pages with minimal extra effort.

Static-Site Generators are an approach to web development that allow you to build a powerful, server-based website locally on your computer, but then compile the pages into a single directory that can be published to a web server without the need of a live database.

There are [many tools](https://www.staticgen.com/) to build static sites using a myriad of programming languages. Some of them have support for themes and other significant customization. Many are built to serve as blogs, but usually they can be coerced into other purposes.

For our class, I have provided you a project framework in a repo that uses Node.js and Nunjucks create a static-app environment.

### Nunjucks

For this lesson, we'll introduce the JavaScript template language [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) and a couple of other tools. We'll take the "Pirate Cove" Bootstrap project that you built previously, and "extrapolate" it so you can build similar projects with more pages much faster.

## Set up development

The best way to set up your project template is to use [degit](https://www.npmjs.com/package/degit) to download the template from the `icj-project-rig` repo.

- Create your project folder, called `yourname-staticapp`.
- Open VS Code into that folder and open the Terminal.
- Run `degit utdata/icj-project-rig`.
- Create your Github repo and connect them.
- run `npm install` to install all the Node software
- run `gulp dev` to process all the files and start the server.

## Review the example site

Before we talk about how the project architecture is structured, let's tour the example pages that are included. As we do so, we'll just touch on how the example code applies to specific project features.

- All the pages on the site have a Bootstrap Navbar and a footer. Each page gets this from a single template, so we don't have to duplicate code for each new page.
- The index also has a bookstores list down the page a bit, which is a loop over some data. As we explore the code later you'll see there is only code for one entry, but we repeat that code for every row in data file. In this case the data was downloaded from a Google Sheets spreadsheet, an optional feature of the project. Sometimes having a structured data source like a spreadsheet is helpful.
- The index also has a listing of three books. This is also built within a "loop" that allows us to repeat the same code over and over. In this case our book data was downloaded from a Google Docs file written in a special structure called ArchieML, developed by The New York Times.
- Lastly, there are individual pages for each book listed, which serve as an example of detail pages built from the same template. Only the text and image content is different for each page, but the structure for each page comes from the same template.
- These specific book pages were created using another feature of the project where we can "bake" pages from data. Instead of a human creating a new file for each library book, they were generated automagically based on data from the Google Doc. If there were 100 books in the data, it would've built 100 pages.

Storing our content in Google Docs and Sheets might seem overcomplicated at at first, but it allows us to use Google as a content management system of sorts where many people can collaborate on the content and stay our of our code. It's super powerful, and used by newsrooms like NYT, NPR and The Texas Tribune.

## Understand the project structure

The README.md in the project template has details about how different features work. **READ THE README**. While the README file is in your project, you might find it easier [to read the README online](https://github.com/utdata/icj-project-rig). We will also go over it in class (or through video).

----

Next: [Templates](static-02-templates.md)
