# HTML in-class assignment

The goal of this assignment is to:

- Create a repo to keep code under version control.
- Create a basic web page structure and content.
- Use proper HTML syntax and indenting practices.

While this assignment will be worked on in class, you should have _already_ completed the Codecademy assignments for HTML.

## Resources

You have the internet at your disposal for help. Here are some resources you might find userful.

- You can review steps in the [Codecademy Learn HTML](https://www.codecademy.com/learn/learn-html) course.
- You can look up specific resources in the [W3 Schools HTML](https://www.w3schools.com/html/default.asp) documentation. [Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTML) also has good docs.
- Google it.

## Create a repo in Github

- There are a couple of ways to approach this and it does not matter which path you choose.
  - The easiest way (and what I recommend) is that you create the repo in Github with a README file and then clone it to your own `/icj/` folder. This is probably the easiest if you are starting new project. **Don't forget to `cd` into the new folder before launching VS Code.
  - Or, you can create the folder on your computer and initialize the git repo, then create the the repo in Github and connect it with the `git remote add origin {link}` command.

Name the repo `firstname-html-css`, but use you real first name ;-).

## Build a recipe web page

We're going to build the HTML structure for a recipe. You might open [the recipe](https://www.epicurious.com/recipes/food/views/grilled-chicken-salad-with-romesco-sauce) in another window for reference.

- Create and save a new HTML document called recipe.html
- Insert the basic elements required for an HTML 5 document: `<doctype>`, `<html>`, `<head>` and `<body>` tags. Include the `<meta charset="UTF-8">` to ensure the proper character encoding. [W3 School](https://www.w3schools.com/html/html5_intro.asp) has a bare bones template.
- Now to save time, we'll get the unstyled text for our document. Go to the [html-in-class-text.txt file](html-in-class-text.txt) in this Github repo and copy/paste the contents in between the `<body>` tag of your document.
- Copy the first line of text "Grilled Chicken Salad with Romesco Sauce" into a `<title>` tag in the head of the document.
- Put the open and close `<h1>` tags around that same line in the body.
- Below the `<h1>` tag, add an image tag with the src using the url below. Note that you can use some [tab completion](https://code.visualstudio.com/docs/editor/intellisense) to fill out parts of the tags.

`https://assets.epicurious.com/photos/5b565307a41af20b8c167e18/6:4/w_620%2Ch_413/Grilled-Chicken-Salad-with-Romesco-recipe-120720-jpg`

- Put a `<p>` tag around the text that starts with "Source".
- Add an `<a href>` tag around the word Epicurious.com and add this url:

`https://www.epicurious.com/recipes/food/views/grilled-chicken-salad-with-romesco-sauce`

- Add a `target` attribute to open the link into a new window.
- Put `<p>` tags around the introductory paragraph that starts with "Purée".
- For the section about Yield (about 6 lines), create a `<div>` with an `id` attribute of "yield".
- Create a [description list](https://www.w3schools.com/html/html_lists.asp) for the following set of information, with the text before the colon used as the `<dt>` term and text after the colon as the `<dd>` description.

``` text
Yield: 4 servings
Active Time: 45 minutes
Total Time: 1 hour
```

- Create a new `<div>` with and `id` attribute of "ingredients".
- Before we build the `<h2>` tag around the "Ingredients" headline, let's learn a cool trick in VS Code to help us with that, called [Emmet](https://docs.emmet.io/). Emmet is a shorthand syntax and tool for programmers to help write code blocks, and it is [baked into VS Code](https://code.visualstudio.com/docs/editor/emmet). You won't be wowed at this example, but the next one will bring both shock and awe.
- Highlight the introductory pragraph. Do **command-shift-p** to bring up the Command Palette. (Control-shift-p for Windows.) Begin typing in the text "Emmet: Wrap" and you'll see the list of commands filter down. Use your arrow keys to select **Emmet: Wrap with Abbreviation** and hit return. That list will go away but the box will remain so you cantype in the next command. Type in the text `h2` and hit return. This wil wrap your text in both the beginning and ending `<h2>` tags.

![emmet h2](../images/emmet-h2.gif)

- Use the same method to wrap the heading "For the chicken:" with an `<h3>` tag.
- Now let's really rock some Emmet for the unordered list. Highlight the next five lines from "skinless chicken" to "vegtable oil". Do your **Command-shift-p** for the Command Palette and this time we want a little different command: **Emmet: Wrap Individual Lines with Abbreviation**. Now, type in the text below then hit return:

`ul>li*`

- All the lines of code should've been wraped in a `<ul>` and `<li>` tags. Wasn't that bad ass? Here is an [Emmet Cheat Sheet](https://docs.emmet.io/cheat-sheet/) for other commands. We'll use a few more before we're done.
- Now repeat the process for the `<h3>`'s and unordered lists for the rest of the ingredients section.
- For the Preparation section, you'll want to wrap the entire section in a `<div>` with an `id` attribute called "preparation".
- Wrap each internal headline there in an `<h3>` tag.
- For each set of steps in the different preparation sections, turn them into ordered lists. Use the **Emmet: Wrap Individual Lines with Abbreviations** again, but change the list style to this:

`ol>li*`

* Code up the Nutrition section in a similar way by creating  a `<div>` with an `id` of "nutrition", and set the items as an unordered list.

## Using gitignore

If you do a `git status` on your folder now, you might see files that you didn't remember creating. On a Mac you might see a file called `.DS_Store`, which is a hidden file the Mac finder creates when you view a folder. On Windows, you might see `Thumbs.db`, which is a record of images saved in a folder. Different applications save hidden files and other stuff that you don't need to commit to your repo, so we use another hidden [.gitignore](https://help.github.com/articles/ignoring-files/) file to tell git what to ignore. An easy way to create one is to use the website [gitignore.io](https://www.gitignore.io/).

- Let's create a blank `.gitignore` file first. Creating hidden files can sometimes be tricky, but one easy way is to do it in a terminal window. Open your the Integrated Terminal in VS Code (Control ~ on a Mac) and then type the command `touch .gitignore`. There is not file extention for this file. It should now show up in your list of files on the left-hand screen. Go ahead and open it.
- Go to [gitignore.io](https://www.gitignore.io/) in a browser. Type in "macOS" and add it, then "Windows" and add it to the list. (If you were using other programs like MicrosoftOffice or languages like Python, you would add those as well.) Click the **Create** button.
- Copy all the code there and put it into your `.gitignore` file and save it. 

## Commit and push your code

Save, add, commit and the push your code to your repo in Github. To review, the steps are:

- Use `git status` to check the status of your files. You probably have two untracked files.
- Use `git add .` to add all the untracked files files. (If you didn't want all of them, would would specify them: `git add {file/path} {file/path}`.)
- Use `git commit -m "your message here"` to commit your changes.
- Use `git push origin master` to push them to Github.

## Turn in your work

Turn in a link to your repo in the assignment in canvas. If your repo is private, be sure to add the user `critmcdonald` as a contributor, but it is easier just to keep it public.

