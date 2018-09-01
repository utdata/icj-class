# Using Bootstrap 4

We used [Bootstrap 4](https://getbootstrap.com/docs/4.1/getting-started/introduction/) in our First Graphics App lesson but we didn't really get into the details of it. Bootstrap is a HTML/CSS/Javascript framework that allows developers to use pre-determined configurations for common web items, like grids, buttons, navigation and such. It is far from the only framework, but it is very popular. It is a "mobile-first, responsive design" framework that allows you to make websites that look great on a phone, but on tablets and desktop, too.

## Goals

We'll use Bootstrap to:

- Learn about the benefits of mobile-first development
- Use a grid-system to create responsive websites
- Add pre-built components like buttons, navigation, etc.
- We'll also introduce Sass for customization

This lesson is cribbed from:

- [Learn Bootstrap 4 Final in 2018 by Gary Simon](https://coursetro.com/posts/code/130/Learn-Bootstrap-4-Final-in-2018-with-our-Free-Crash-Course).


### Resources

Throughout this lesson, we will refer to:

- [Bootstrap 4 documentation](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
- [Learn Bootstrap screencasts](https://scrimba.com/g/gbootstrap4)

## Setup

### Create your repo and push to Github

This is the same cycle we've use in other lessons to create a new repo.

- Go to Github.com and create a new repo. Call it `bootstrap-class`. Include the README.md.
- Copy the clone URL
- In a Terminal, cd into your code folder: `cd ~/Documents/code/`
- do `git clone [yoururl]`
- cd into the folder
- open in VS code with: `code ./`

### Use npm to install all our tools

There are two common ways to include Bootstrap in your project, and they both have their pros and cons. For the First Graphics App, we included links to the entire Bootstrap CSS and JavaScript libraries. They are large files and customization is difficult.

You've done that already, so we'll use the second method, which is to install using npm. The advantage to this method is we can then include only the pieces of Bootstrap that we'll need, and we can customize it. It will be good practice for later.

Since we already have Node and npm installed globally from previous work, we can initialize a project and install what we need.

- Using your Integrated Terminal in VS Code, initialize a project:

```bash
npm init -y
```

The `-y` flag allows us skip some answers and accept some defaults. This process creates a file called 

Next, we'll install some "development dependencies" with the `--save-dev` flag. The way we install these, we are telling npm that we only need these tools when we are in development, and they do not need to be included in any final products. The tools are are installing are some of the same ones that we used with yeogurt and the First Graphics App. I'll explain the individual pieces later when we use them.

```bash
npm install gulp gulp-sass browser-sync --save-dev
```

You might see some "vulnerability" warnings after install. We'll ignore these for now.

Next, we'll install more tools that we will need included in our final product. Bootstrap is our framework, and it requires the two javascript libraries, JQuery and Popper.js, so we include those, too. The `--save` flag says to save them in our package.json file.

```bash
npm install bootstrap jquery popper.js --save
```

You'll notice after you are done that a `node_modules` folder has been created. It includes all the code that we installed into our project. It's a boatload of files that we don't need to save in github, so we need to create a `.gitignore` files.

- In your Integrated Terminal, create a new file with `touch .gitignore` and then open it in the code editor.
- Go to [Gitignore.io](https://www.gitignore.io) and type in "Node" and your operating system and hit OK to the the code, which you'll then copy 'n' paste into the `.gitignore` file.

### The git cycle

This would be a good time to save and push our code to Github. You can use the [VS Code Explorer](https://code.visualstudio.com/docs/editor/versioncontrol#_git-support) or your Integrated Terminal with the regular cycle:

```bash
git add .
git commit -m "framework installed"
git push origin master
```

### Build our folder structure

Next, we'll use the Code Explorer to create a series of folders we need.

- A folder called "src"
- Inside of "src", create four new folders: "css", "js" and "scss".

```
/src
  /css
  /js
  /scss
```

Using the Explorer can be tricky to create new folders. Make sure you click on the parent folder each time before you create the child.


