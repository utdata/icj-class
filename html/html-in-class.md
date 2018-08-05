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

1. Create a new HTML document called recipe.html
2. Insert the basic elements required for an HTML 5 document: `<doctype>`, `<html>`, `<head>` and `<body>` tags. Include the `<meta charset="UTF-8">` to ensure the proper character encoding. [W3 School](https://www.w3schools.com/html/html5_intro.asp) has a bare bones template. 
3. Set the `<title>` of the document as "Grilled Chicken Salad with Romesco Sauce".
4. Use the same for the `<h1>` tag.
5. Below the `<h1>` tage, add an image tag with the src using this url:

> https://assets.epicurious.com/photos/5b565307a41af20b8c167e18/6:4/w_620%2Ch_413/Grilled-Chicken-Salad-with-Romesco-recipe-12072018.jpg
6. Below the photo, add a paragraph tag with the following text:
> Source: Epicurious.com
7. Add an `<a href>` tag around the word Epicurious.com and add this url:
> https://www.epicurious.com/recipes/food/views/grilled-chicken-salad-with-romesco-sauce
8. Add add a `target` attribute to open the link into a new window.
9. Add a new paragraph for the recipe introduction, with this text:
> Purée grilled bell peppers, almond butter, sherry vinegar, and garlic into an irresistibly smoky-sweet sauce that's great served with a crunchy grilled chicken salad.
10. Create a `<div>` with an `id` attribute of "yield".
11. Create a [description list](https://www.w3schools.com/html/html_lists.asp) for the following set of information, with the first be used as the `<dt>` term and the second bit as the `<dd>` description.
> Yield: 4 servings \
> Active Time: 45 minutes \
> Total Time: 1 hour
12. Create a new `<div>` with and `id` attribute of "ingredients".



You might need to look up the [Description List]()

Learn [Emmet Wrap with abbreviation](https://docs.emmet.io/actions/wrap-with-abbreviation/).