# The static app framework

Through this semester we've been building your coding skills, adding a new language or tool at each step. For each of the three core technologies, HTML, CSS and JavaScript, we've enhanced the language with tools or systems to make them easier to use.

- For our skeleton, we used HTML. We made it easier/quicker with Bootstrap.
- For our skin, we used CSS. We made it better with Sass.
- For our muscles, we used JavaScript. We made it easier with jQuery and other libraries.
- Along the way, we introduced Node.js and npm to so we could use some of these tools.

Using a "body" as our metaphor, we first made an "individual" with HTML, CSS and JavaScript. We made it easier with our tools layer.

Now it's time to make an army. `<deep_voice>`Woo haaa haaa`</deep_voice>`.

## Static-generator apps

When you built your bootstrap project, you had to copy/paste or rewrite code for each page. That's too labor intensive in the age of computers. With this lesson we'll introduce a system that allows you to create a template framework that can be used to generate a number of pages with minimal extra effort.

Static-gen sites mostly mean the end-result pages can be served just on a web server without need for a database or other complicated hardware.

There are [lots of ways](https://www.staticgen.com/) to build static sites using a myriad of programming languages. Some of them have support for themes and other significant customization. Many are built to serve as blogs, but usually they can be coerced into other purposes.

For our class, I have provided a project framework in a repo that uses Node and Nunjucks create a template environment.

### Nunjucks

[Nunjucks](https://mozilla.github.io/nunjucks/templating.html) is a JavaScript-based template language that allow us to so this magic. ~~It's not the only solution for this type of work, but it is based on Python-based [Jinja](http://jinja.pocoo.org/docs/2.10/), so it ports across languages, in a way.~~

For this lesson, we'll introduce Nunjucks and a couple of other tools. We'll take the bootstrap project that you built previously, and "extrapolate" it so you can build similar projects with more pages much faster in the future.

### Goals for this lesson

We will:

- Learn about the structure of a static-generator site
- We'll use the code we built in our Bootstrap in-class lesson to rebuild as a static gen site.
  - As such, we'll have two types of pages: an index, and then entry pages.
- We'll introduce a "data" element to repeat code in a loop.

### Start with our template repo

#### Download the repo

- Go to https://github.com/utdata/icj-project-template and DOWNLOAD the repo.
- Unzip the file.
- Rename the folder to `yourname-staticgen-inclass`
- Move the entire folder into your `Documents/icj` folder.

#### Create your Github repo

- Go to Github and create a new repo of the same name: `yourname-staticgen-inclass`.
- DO NOT INCLUDE THE README WHEN YOU CREATE THE REPO.
- The result should give you a series of instructions to perform in your own repo locally. We'll change them slightly, so use the commands below instead (with noted updates).

#### Connect the repos

- Go back into VS Code and open your new local project.
- Go through the following Git cycle, but note you NEED TO COPY THE URL OF YOUR REPO IN THE `git remote add origin` line.

```bash
git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:critmcdonald/christian-staticgen-inclass.git
git push origin master
```

> AGAIN: Make sure you use your git@ url instead of mine!!

- Go to your Github repo and refresh it to make sure your code got pushed online.

### npm install and gulp dev

- run `npm install` to install all the Node software
- run `gulp dev` to process all the files and start the server.

### Understand the project structure

The easiest way is to [read the README online](https://github.com/utdata/icj-project-template). We'll go over this in class.

### Install the Nunjucks Template extension

While this isn't required, it is super helpful to install a Nunjucks syntax extension to when you look at templates you variable and such will have correct color, called "Syntax highlighting". You should only have to do this once ever on your machine.

- In VS Code, on the far left there are five icons. The bottom one looks like a funky square. Click on that.
- In the search box, type in `Nunjucks template`. Click on the return for Nunjucks Template.
- Click the Install button.
- After it is done, click on the "Reload to activate" button.

Now, when you look at files with the `.njk` extension, the code will be colored properly.

###


## Notes

- explain we'll skip active page highlight.