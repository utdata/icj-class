# Make it pretty and publish

## Base styles update

- There is a margin on the bottom of the nav that is pushing down the jumbotron. You can remove that.

## Index updates

- On the index, adjust the H1 and intro text, replacing it it with something creative you write that introduces this blog about a ship's travel.
- When viewed on a desktop, the display of the index is really wide and not very readable. Play with the column [grid](https://getbootstrap.com/docs/4.4/layout/grid/) on the index so that the content uses full width on mobile, but fewer columns at the `sm` and higher breakpoints. The content should be centered on the page, though, which you can do by applying an [offset](https://getbootstrap.com/docs/4.4/layout/grid/#offsetting-columns) to move the column over to the right.

## Detail page updates

- Add some content to all three detail pages so you can easily tell them apart when you view those pages. Like new headlines. The text can just be different lorem ipsum text.
- Add a different Kraken photo to each page, with an img-fluid class so it is responsive.

## Extra credit

This is optional and you don't have to do this, but you might notice that the entry pages all have the same code for the page title, page description, headline and date. It would be pretty simple to move the page title and description to the `detail-entry.njk` layout and remove them from the individual pages. You could still overwrite them in each entry if necessary, but you don't need to in this case because it is pulling from the data file.

A little more difficult is the headline and date. You might adjust the `detail-entry.njk` layout to have the headline and date in a new block you create, leaving just the entry text in the _story_ block. This way, your entry pages would just have three things: the `extend` template line, the `set` line and the story block with the blog entry text.

## Publish and check

- Push all your code to Github.
- Use Settings to set up Gihub Pages to use the `master/docs` directory.
- Add your published link to your Gitub repo at the top.
- Turn in your Github repo link to the Canvas assignment

---

You're done!
