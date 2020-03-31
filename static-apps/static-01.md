# The static app framework

## Goals for this lesson

We will:

- Learn about the structure of a static-generator site.
- We'll rebuild our Ship's Log site with two types of pages: an index, and then multiple entry pages.
- We'll introduce a "data" element to repeat code in a loop.

## Building up to the static-generator app

Through this semester we've been building your coding skills, adding a new language or tool at each step. For each of the three core technologies, HTML, CSS and JavaScript, we've enhanced the language with tools or systems to make them more efficient to use.

When you built your Bootstrap project, you had to completely finish one page before you copied it to create your second page, which means you had lots of duplicate code. If you need to change something in the Jumbotron, you had to change it on two pages. Imagine if your site had hundreds of pages. That's too labor intensive in the age of computers. With this lesson we'll introduce a system that allows you to create a template framework that can be used to generate a number of pages with minimal extra effort.

Static Site Generators are an approach to web development that allow you to build a powerful, server-based website locally on your computer but pre-builds the site into static files for deployment.

There are [lots of ways](https://www.staticgen.com/) to build static sites using a myriad of programming languages. Some of them have support for themes and other significant customization. Many are built to serve as blogs, but usually they can be coerced into other purposes.

For our class, I have provided you a project framework in a repo that uses Node.js and Nunjucks create a template environment.

### Nunjucks

For this lesson, we'll introduce the JavaScript template language [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) and a couple of other tools. We'll take the Bootstrap project that you built previously, and "extrapolate" it so you can build similar projects with more pages much faster.

## Set up development

The best way to set up your project template is to use [degit](https://www.npmjs.com/package/degit) to download the template from the `icj-project-template` repo.

- Create your project folder, called `yourname-staticapp`.
- Open VS Code into that folder and open the Terminal.
- Run `degit utdata/icj-project-template`.
- Create your Github repo and connect them.

### npm install and gulp dev

- run `npm install` to install all the Node software
- run `gulp dev` to process all the files and start the server.

## Understand the project structure

The easiest way to understand how this template works is to [read the README online](https://github.com/utdata/icj-project-template). DON'T SKIP THIS PART. We will also go over it in class. If you are doing this on your own, READ THE README!

## Configure VS Code to deal with Nunjucks

Visual Studio Code is not set up by default to deal with the Nunjucks template language. There are two things we can do to make our future development easier. You only need to do these once and they will be set for future projects.

> Note you _might_ have done these steps when you set up your computer at the beginning of the semester.

### Install the Nunjucks Template extension

While this isn't required, it is super helpful to install a Nunjucks syntax extension so your code is the proper "color" in your editor, called "Syntax highlighting". You should only have to do this once.

- In VS Code, on the far left there are five icons. The bottom one looks like a funky square. Click on that.
- In the search box, type in `Nunjucks template`. Click on the return for Nunjucks Template.
- Click the Install button.
- After it is done, click on the "Reload to activate" button.

Now, when you look at files with the `.njk` extension, the code will be colored properly.

### Fix Emmet for Nunjucks

Because we are using `.njk` extensions on our Nunjucks files, Emmet doesn't work because it doesn't know we are still using HTML. We can update our User Prefences to do this:

- Go to the Code > Preferences > Settings.
- On the Settings page at the top right, there is an icon that looks like a document with an arrow pointing to it. Click on it.
- That will open a file called `settings.json`.
- Look first to see if you already have the code below. If now, add the following inside the curly braces, but make sure the item above it has a comma at the end.

```javascript
{
  "emmet.includeLanguages": {
      "nunjucks": "html",
      "njk": "html"
  }
}
```

I have a series of other settings you might find useful: Setting indents to two spaces, removing the minimap by default, wrapping text by default. [You can find them here](https://github.com/utdata/setting-up/blob/master/vscode-goodies.md).

----

Next: [Editing templates](static-02.md)
