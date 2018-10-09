# Refactoring CSS to SCSS

We will be practicing more with Sass through refactoring existing CSS into Sassy CSS. 

## Overview and goals

What we have with this web project is a two-page website for a band. It has been coded rather simply with regular, vanilla CSS. It works just fine, but as the site grows and there are more changes, having "Sassy CSS" will help with maintainability. So, our goals here are to:

- Understand how Sass structure works from a technical level.
- Rework the CSS into SCSS to:
  - improve readability through nesting
  - to use variables for flexibility
  - to rewrite rules for efficiency
- To write new rules in the Sassy way

## Downloading, running our project

We are working for a template repo, which means you will NOT CLONE it, but instead download it and use it to create your own repo.

- Go to the [icj-sass-refactor-template](https://github.com/utdata/icj-sass-refactor-template) repo.
- Follow the installation instructions in the README there, then return here for further instruction.

## Structure of the project

Let's talk about how this project works.

THIS IS WHERE I STOPPED.

The `docs` folder is our publishing folder, where our site lives. Inside of it are our two HTML files, and then folders for our published CSS and our media files.

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

> need more notes here.

```
src
  ├──scss
     ├── new-styles.scss
```

## Ways we will refactor

- Create variables for colors
- nest .nav and .main inside .container
- nest children of .nav and .main inside them
- Extrapolate padding-left in .main as a direct child descendant for allfv: `> * {padding-left: 30px;}`

## Make new styles

note them here
