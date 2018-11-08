# The static app framework

## Goals for this lesson

We will:

- Learn about the structure of a static-generator site.
- We'll rebuild our Ship's Log site with two types of pages: an index, and then multiple entry pages.
- We'll introduce a "data" element to repeat code in a loop.

## Building up to the static-generator app

Through this semester we've been building your coding skills, adding a new language or tool at each step. For each of the three core technologies, HTML, CSS and JavaScript, we've enhanced the language with tools or systems to make them easier to use.

When you built your Bootstrap project, you had to copy/paste or rewrite code for each page. That's too labor intensive in the age of computers. With this lesson we'll introduce a system that allows you to create a template framework that can be used to generate a number of pages with minimal extra effort.

Static-gen sites mostly mean the end-result pages can be served just on a web server without need for a database or other complicated hardware.

There are [lots of ways](https://www.staticgen.com/) to build static sites using a myriad of programming languages. Some of them have support for themes and other significant customization. Many are built to serve as blogs, but usually they can be coerced into other purposes.

For our class, I have provided you a project framework in a repo that uses Node.js and Nunjucks create a template environment.

### Nunjucks

For this lesson, we'll introduce the JavaScript template language [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) and a couple of other tools. We'll take the Bootstrap project that you built previously, and "extrapolate" it so you can build similar projects with more pages much faster.

## Set up development

### Download the repo

- Go to https://github.com/utdata/icj-project-template and DOWNLOAD the repo.
- Unzip the file.
- Rename the folder to `yourname-staticgen-inclass`
- Move the entire folder into your `Documents/icj` folder.

### Create your Github repo

- Go to Github and create a new repo of the same name: `yourname-staticgen-inclass`. DO NOT INCLUDE THE README.
- The result should give you a series of instructions to perform in your own repo locally. We'll change them slightly, so use the commands below instead (with noted updates).

### Connect the repos

- Go back into VS Code and open your new local project.
- Go through the following Git cycle, but note **you need to copy the URL OF YOUR REPO** in the `git remote add origin` line.

```bash
git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:yourrepo/yourname-staticgen-inclass.git
git push origin master
```

> AGAIN: Make sure you use your git@ url instead of mine!!

- Go to your Github repo and refresh it to make sure your code got pushed online.

### npm install and gulp dev

- run `npm install` to install all the Node software
- run `gulp dev` to process all the files and start the server.

### Understand the project structure

The easiest way to understand how this template works is to [read the README online](https://github.com/utdata/icj-project-template). DON'T SKIP THIS PART. We will also go over it in class.

------

NEXT: [Editing templates](static-02.md)

OPTIONAL: [Configure VS Code for Nunjucks](static-01p2.md)