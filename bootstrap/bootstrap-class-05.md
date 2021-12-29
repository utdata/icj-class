# Customizing Bootstrap

> This is a continuation of the Bootstrap tutorial.

If you look at [Customize](https://getbootstrap.com/docs/5.1/customize/overview/) section of the Bootstrap documentation, you can see there a bunch of different ways you can customize your site, including:

- Modifying Bootstrap Sass variable settings
- Choosing different Bootstrap styles
- Modifying existing Bootstrap styles
- Creating new styles

Since this is a Sass-based system, we'll make all our CSS changes in our `src/styles.scss` file.

## Modifying Bootstrap Sass variables

Most default styles in Bootstrap are built upon a set of variables to take advantage of that Sass feature. We can quickly make changes across our site based on resetting these variables.

You'll need to read the [Customize Sass](https://getbootstrap.com/docs/5.1/customize/sass/) documentation for a full explanation, but we'll show the power of this here by changing our primary color and background color variables.

1. Open your `src/scss/styles.scss` file and look through the comments at the top of the file that explain it. Some things have to be in a specific order.
1. After the variable examples shown there and before the `@import` example, add the following and then save the file:

```scss
$primary: #bf5700;
$body-bg: #ededed;
```

If you look at your page, all the blue stuff should now be burnt orange and the background should be grey. (#hookem).

## Choosing different Bootstrap classes

OK, but now our Jumbotron header is kinda dark. Let's change the background to white and the text to black by choosing different Bootstrap styles there.

1. Find your header div in your index code.
2. In the class, change `bg-secondary text-white` to just `bg-white`. Leave the spacing and border classes.

This changes the header background to white and returns the text to its default black. Using the utility styles can allow quick display changes.

## Updating an existing Bootstrap class

Within our highlight section we coded our first paragraph to have a `lead` [typography class](https://getbootstrap.com/docs/5.1/content/typography/#lead), and it is the same `lead` class earlier in the header. We can also change or build upon that style, which we will do next.

1. In your `src/styles.scss` file near the bottom, after the comment about custom styles, add this and then save and view the result:

```css
// highlight lead
.highlight {
  .lead {
    font-weight: lighter;    
  }
}
```

This style made the lead paragraph a lighter color than the default `lead` style. Bootstrap supports Sass, so the style was nested so the change to `lead` only happens when it is inside something also classed with `highlight`, which our container is. This way we only changed the lead there and NOT in the header or anywhere else we might use it on the site outside of a highlight div. (This is why we added the `highlight` class to the div!)

### Write a new style

Next we'll create our own style in CSS just like any normal HTML page.

1. In the highlight column that has the photo, update the `<p>` tag to give it a class of `caption`.
1. Go into your `styles.scss` file and add a style rule for `.caption` that sets the font-weight to bold and the font-style to italic. This is just like writing any css style to a class, so I'll let you figure it out.

Unlike the `lead` class, this `.caption` class does not pre-exist in Bootstrap. We just created our own style and used it, and we can reuse it on other pages that use this stylesheet, if we want.

## Add a footer

Lastly, I want you to add a footer element with the following specs (which you can visualize below). There are a number of ways you can do this, and I want you to choose how. Here are the specs:

- It should be built from the footer symantic element `<footer>`.
- The text should be centered with some spacing around the words to give them air.
- The background should be white.

## And we're done, almost

We are done with our site and it should look like this:

![bs-class-index](../images/bs-class-index.png)

---

**Next**: We'll [publish to the web]().

---
