# HTML class assignment

The goal of this assignment is to:

- Create git repo on your local machine to keep code under version control.
- Create a public Github repo and create a connection to it with your local repo.
- Create a basic web page structure and content.
- Use proper HTML syntax and indenting practices.

While this assignment will be worked on in class, you should have _already_ completed the Codecademy assignments for HTML.

## Resources

You have the internet at your disposal for help. Here are some resources you might find useful.

- You can review steps in the [Codecademy Learn HTML](https://www.codecademy.com/learn/learn-html) course.
- You can look up specific resources in the [W3 Schools HTML](https://www.w3schools.com/html/default.asp) documentation. [Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTML) also has good docs.
- Google it.

## Project setup

This is the same project set up did in our git/Github intro, but [here are the steps](https://github.com/utdata/icj-class/blob/master/start_a_project.md) if you need a refresher. This is something you should learn to do without having to look it up.

## Build a recipe web page

We're going to build the HTML structure for a recipe. You might open [the recipe](https://www.epicurious.com/recipes/food/views/grilled-chicken-salad-with-romesco-sauce) in another window for reference.

- Create and save a new HTML document called `recipe.html`.

Next we need the basic elements required for an HTML 5 document. There is a super easy way to do this thanks to a special thing in VS Code called [Emmet](https://code.visualstudio.com/docs/editor/emmet).

- At the top of the file, type `html` and you'll see some selections come up. Use the arrow key on your keyboard to choose the one `html:5` and hit return. You _should_ get all the boilerplate elements you need for an HTML page.

![html-boilerplate.gif](../images/html-boilerplate.gif)

If all that fails and we can't figure it out, you can go to [W3 School](https://www.w3schools.com/html/html5_intro.asp) and copy/paste the template.

Now to save time, we'll get the unstyled text for our document.

- Go to the [html-class-text.txt file](https://raw.githubusercontent.com/utdata/icj-class/master/html/html-class-text.txt) in this Github repo and copy/paste the contents in between the `<body>` tag of your document.
- **Copy** the first line of text "Grilled Chicken Salad with Romesco Sauce" into a `<title>` tag in the head of the document. The `<title>` tag are the words that show on the tab of your browser.
- Go back to the body of the tet and put open and close `<h1>` tags around that same line to make a main headline.
- Below the `<h1>` tag, add an `<img>` tag with the `src=""` going to the url below. Note that you can just type `img` in your editor and then use some [tab completion](https://code.visualstudio.com/docs/editor/intellisense) to fill out the required elements of the tag.

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
- Before we build the `<h2>` tag around the "Ingredients" headline, let's learn more about [Emmet](https://docs.emmet.io/) and how it can help us. Emmet is a shorthand syntax and tool for programmers to help write code blocks, and it is [baked into VS Code](https://code.visualstudio.com/docs/editor/emmet). You won't be wowed at this example, but the next one will bring both shock and awe.
- Highlight the introductory paragraph. Do **command-shift-p** to bring up the Command Palette. (Control-shift-p for Windows.) Begin typing in the text "Emmet: Wrap" and you'll see the list of commands filter down. Use your arrow keys to select **Emmet: Wrap with Abbreviation** and hit return. That list will go away but the box will remain so you cantype in the next command. Type in the text `h2` and hit return. This wil wrap your text in both the beginning and ending `<h2>` tags.

![emmet h2](../images/emmet-h2.gif)

- Use the same method to wrap the heading "For the chicken:" with an `<h3>` tag.
- Now let's really rock some Emmet for the unordered list. Highlight the next five lines from "skinless chicken" to "vegetable oil". Do your **Command-shift-p** for the Command Palette and this time we want a little different command: **Emmet: Wrap Individual Lines with Abbreviation**. Now, type in the text below then hit return:

`ul>li*`

- All the lines of code should've been wraped in a `<ul>` and `<li>` tags. Wasn't that bad ass? Here is an [Emmet Cheat Sheet](https://docs.emmet.io/cheat-sheet/) for other commands. We'll use a few more before we're done.
- Now repeat the process for the `<h3>`'s and unordered lists for the rest of the ingredients section.
- For the Preparation section, you'll want to wrap the entire section in a `<div>` with an `id` attribute called "preparation".
- Wrap each internal headline there in an `<h3>` tag.
- For each set of steps in the different preparation sections, turn them into ordered lists. Use the **Emmet: Wrap Individual Lines with Abbreviations** again, but change the list style to this:

`ol>li*`

- On the lines that say "Do ahead", put a `<strong>` tag around that label.
- Code up the Nutrition section in a similar way by putting the whole section in a `<div>` with an `id` of "nutrition", and then set the items as an unordered list.

## Commit and push your code

Save, add, commit and the push your code to your repo in Github. To review, the steps are:

- Use `git status` to check the status of your files. You probably have two untracked files.
- Use `git add .` to add all the untracked files files. (If you didn't want all of them, would would specify them: `git add {file/path} {file/path}`.)
- Use `git commit -m "your message here"` to commit your changes. Write your own message that explains what you have done with this commit.
- Use `git push origin master` to push them to Github.

## Turn in your work

Turn in a link to your repo in the assignment in canvas.
