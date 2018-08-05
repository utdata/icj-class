# HTML in-class assignment

The goal of this assignment is to:

- Create a repo to keep code under version control.
- Create a basic web page structure and content.

While this will be assignment will be worked on in class, you should have _already_ completed the Codecademy assignments for HTML.

## Resources

You have the internet at your disposal for help. Here are some resources you might find userful.

- You can review steps in the [Codecademy Learn HTML](https://www.codecademy.com/learn/learn-html) course.
- You can look up specific resources in the [W3 Schools HTML](https://www.w3schools.com/html/default.asp) documentation. [Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTML) also has good docs.
- Google it.

## Create a repo in Bitbucket

- There are a couple of ways to approach this and it does not matter which path you choose.
  - You can create the repo in Bitbucket with a README file and then clone it to your own `/code/` folder. This is probably the easiest if you are starting fresh.
  - Or, you can create the folder on your computer and initilize the git repo, then create the the repo in Bitbucket and connect it with the `git remote add origin` command.

## Build a recipe

We're going to build the HTML structure for a recipe.

- Create a new HTML document called recipe.html
- Insert the basic elements required for an HTML 5 document: `<doctype>`, `<html>`, `<head>` and `<body>` tags. Include the `<meta charset="UTF-8">` to ensure the proper character encoding. [W3 School](https://www.w3schools.com/html/html5_intro.asp) has a bare bones template.
- Now to save time, we'll get the unstyled text for our document. Got to the [html-in-class-text](https://bitbucket.org/utdata/intro-coding-class/src/master/html/html-in-class-text.txt) file in the Bitbucket repo and copy/paste the contents inbetween the `<body>` tag of your document.
- Copy the first line of text "Grilled Chicken Salad with Romesco Sauce" into a `<title>` tag in the head of the document.
- Put the open and close `<h1>` tags around that line in the body.
- Below the `<h1>` tag, add an image tag with the src using this url:
>https://assets.epicurious.com/photos/5b565307a41af20b8c167e18/6:4/w_620%2Ch_413/Grilled-Chicken-Salad-with-Romesco-recipe-120720-jpg
- Put a `<p>` tag around the text that starts with "Source".
- Add an `<a href>` tag around the word Epicurious.com and add this url: `https://www.epicurious.com/recipes/food/views/grilled-chicken-salad-with-romesco-sauce`
- Add add a `target` attribute to open the link into a new window.
- Put `<p>` tags around the introductory paragraph that starts with "Purée".
- Create a `<div>` with an `id` attribute of "yield".
- Create a [description list](https://www.w3schools.com/html/html_lists.asp) for the following set of information, with the text before the colon used as the `<dt>` term and text after the colon as the `<dd>` description.
> Yield: 4 servings \
> Active Time: 45 minutes \
> Total Time: 1 hour
- Create a new `<div>` with and `id` attribute of "ingredients".
- Before we build the `<h2>` tag around the "Ingredients" headline, let's learn a cool trick in VS Code to help us with that, called [Emmet](https://docs.emmet.io/). Emmet is a shorthand syntax and tool for web developers to help write code blocks, and it is baked into VS Code. You won't be wowed at this example, but the next one will bring both shock and awe.
- Highlight the introductory pragraph. Do **command-shift p** to bring up the Command Palette. (Control-shift-p for Windows.) Begin typing in the text "Emmet: Wrap" and you'll see the list of command filter down. Use your arrow keys to select **Emmet: Wrap with Abbreviation** and hit return. That list will go away and you'll be able to add in a new command. Type in the text `h2` and hit return. This wil wrap your text in both the beginning and ending `<h2>` tags.

![emmet h2](../images/emmet-h2.gif)

- Use the same method to wrap the heading "For the chicken:" with an `<h3>` tag.
- Now let's really rock some Emmet for the unordered list. Highlight the next five lines from "skinless chicken" to "vegtable oil". Do your **Command-shift-p** for the Command Palette and this time we want a little different command: **Emmet: Wrap Individual LInes with Abbreviation**. Now, type in the ext below then hit return:

> ul>li*

- Wasn't that bad ass? Here is an [Emmet Cheat Sheet](https://docs.emmet.io/cheat-sheet/) for other commands. We'll use a few more. Before we're done.

STOPPED HERE

You might need to look up the [Description List]()

Learn [Emmet Wrap with abbreviation](https://docs.emmet.io/actions/wrap-with-abbreviation/).