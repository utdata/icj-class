# The static app framework

## Goals for this lesson

We will:

- Learn about static site generators and the template we will use.
- We'll rebuild our Ship's Log site with two types of pages: an index, and then multiple entry pages.
- We'll introduce a "data" element to repeat code in a loop.

## Building up to the static-generator app

Through this semester we've been building your coding skills, adding a new language or tool at each week. For each of the three core technologies, HTML, CSS and JavaScript, we've enhanced the base language with tools or systems to make them more efficient to use.

When you built your Bootstrap practice project, you had to completely finish one page before you copied it to create your second page, which means you had lots of duplicate code. If you needed to change something in the Jumbotron, you had to change it on two pages. Imagine if your site had hundreds of pages. That's too labor intensive in the age of computers. With this lesson we'll introduce a system that allows you to create a template framework that can be used to generate a number of pages with minimal extra effort.

Static Site Generators are an approach to web development that allow you to build a powerful, server-based website locally on your computer, but then compile the pages into a single directory that can be used published with a web server without the need of a live database.

There are [many tools](https://www.staticgen.com/) to build static sites using a myriad of programming languages. Some of them have support for themes and other significant customization. Many are built to serve as blogs, but usually they can be coerced into other purposes.

For our class, I have provided you a project framework in a repo that uses Node.js and Nunjucks create a template environment.

### Nunjucks

For this lesson, we'll introduce the JavaScript template language [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) and a couple of other tools. We'll take the Bootstrap project that you built previously, and "extrapolate" it so you can build similar projects with more pages much faster.

## Set up development

The best way to set up your project template is to use [degit](https://www.npmjs.com/package/degit) to download the template from the `icj-project-template` repo.

- Create your project folder, called `yourname-staticapp`.
- Open VS Code into that folder and open the Terminal.
- Run `degit utdata/icj-project-template`.
- Create your Github repo and connect them.
- run `npm install` to install all the Node software
- run `gulp dev` to process all the files and start the server.

## Understand the project structure

The easiest way to understand how this template works is to go study the README.md in the project template. **DON'T SKIP THIS PART**. While the README file is in your project, you might find it easier [to read the README online](https://github.com/utdata/icj-project-template). We will also go over it in class. If you are doing this on your own, READ THE README!

----

Next: [Editing templates](static-02-templates.md)
