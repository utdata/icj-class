# Introducing Grids

This is a continuation from ?????.

We'll be introducing Bootstrap documentation and the grid system.

## The grid

> REWRITE THIS TO COME AFTER THE NAVIGATION
> MAYBE ALSO START FROM DOCS

The first thing that Bootstrap brings us is a [12-column grid setup](https://getbootstrap.com/docs/4.6/layout/grid/) to "layout" your page. It allows you to define differing column widths for different viewport widths through a series of class names. It uses a core CSS feature called "flexbox" to do this. (FYI you may read about a newer core CSS feature called CSS Grid that still lags a little in browser adoption, so we'll stick with Bootstrap for now.)

We are going to start with a `container` div. A container div in Bootstrap centers content in the middle of the page and adjusts the outside margin depending on the viewport width. (`.container-fluid` would go 100% of the page.)

1. In our `src/html/index.html` file, replace the paragraph of testing text with this:

```html
<div class="container">
  <p>Our new testing text</p>
</div>
```

> Note: In your index.html file, you may have to adjust the indents of some rows as you copy 'n' paste or type in new code. Make your indents so your code is nice and pretty and shows properly the parent-child relationships of items. You'll thank me later when you are trying to figure out what goes with what. That, **and it is part of your grade**, because I want to build good habits.

As you view your page, you'll notice our text has moved from the far left edge to a bit toward the middle of the page. That's the container div working.

### Rows and columns

1. In the same `src/html/index.html` file, replace the `<p>Testing</p>` text with this (You should still have the container divs and this should be inside it.):

```html
<div class="row">
  <div class="col bg-danger">
    One of three columns
  </div>
  <div class="col bg-warning">
    Two of three columns
  </div>
  <div class="col bg-success">
    Three of three columns
  </div>
</div>
```

Take a look at localhost page and you'll see a Rasta party of boxes in red, yellow and green.

Here we are introducing the **[Bootstrap Grid](https://getbootstrap.com/docs/5.1/layout/grid/) system**, where we have a "row" with a number of "columns" inside it. Bootstrap’s grid system uses a series of containers, rows, and columns to layout and align content.

Each of the colored sections are "column" divs, hence the class name of `col`. They are all surrounded by a `row` div. Columns always have to be a child of a row, or the Bootstrap grid won't work right.

We also introduce our first **Utility classes** where we can use pre-defined classes for color, borders, spacing and more. The `bg-danger` and the other bg-classes are [Background-color classes](https://getbootstrap.com/docs/5.1/utilities/background/) that I'm using as a convenience here to show the three different boxes.

These three columns are evenly distributed across the container space. Adjust your browser width smaller and wider (or use the Inspect DevTool) and you'll see they stay that way at every width.

Typically, we would want content like that to stack on top of each other at small window widths, like on a phone. We can adjust our code to do this.

1. Change all the `col` classes to instead be `col-sm`.
1. Now adjust your browser width and see what when you change it to the extra small width.

Now that you've added a "small" breakpoint, the divs stack on top of each other at the "extra small" breakpoint, as they are supposed to.

### The sizes

There are five "breakpoints" for Bootstrap, meaning changes can happen at 5 different widths: default (extra small), sm, md, lg, xl and xxl. They _kinda_ work out like this:

- the default col is for a vertical phone
- sm is for a horizontal phone to a vertical tablet
- md is for a horizontal tablet to laptop
- lg is for a laptop to desktop screen
- xl is for a large desktop screen
- xxl is for an even wider desktop screens

Every phone and computer screen is different, so that list above is really approximate. (There are actual pixel widths deep within the Bootstrap and they are adjustable, but we aren't going there.)

Bootstrap works from smallest to largest, so once you set a grid width for `col-sm`, they will stay that way for wider widths unless you set another one. You can set the same div to a different number of columns at different widths. **However, within a row, the columns need to add up to increments of 12 for each breakpoint** if you want them to work properly.

1. Adjust the three columns to be `col-sm-3`, `col-sm-6` and `col-sm-3`, respectively.

This makes the middle column wider when viewed at the "small" breakpoint or wider, but they each still show over all 12 columns when at the extra-small default breakpoint. **Note that those column numbers add up to 12**. If the total is greater than 12, it breaks into a new column.

Now we will make these columns all the same for the medium breakpoint, without changing the small one.

1. After the col-sm designations in the class, add a space and then this designation for the medium breakpoint: `col-md-4`. Do this for all three columns.

Now adjust your browser width and see them change between the three breakpoints. Again, note that the **column numbers for each size add to a factor of 12 for each breakpoint**. i.e, the `sm` numbers total to 12, and then the `md` numbers total to 12.

### Remove our grid examples

Now that we've learned a little about columns, let's delete everything **inside** the container div so we can start anew.

1. Highlight all the lines from the `<div class="row">` to the matching closing div.
1. Delete that code.
1. Make some blank lines under it so we can add more stuff.

Again, make sure the opening and closing <div class="container"> is still there inside your `<body>` tag.

---

**Next**: [Bootstrap cards] ()

---

> IGNORE THIS


Let's add another "section" after our cards section.

```html
<section>
  <div class="row mt-sm-4 mt-md-0">
    <div class="col-sm-12 col-md-8">
        <h3>An important message</h3>
        <p class="lead">Always be yourself, unless you can be a pirate. Then always be a pirate.</p>

        <p>Prow scuttle parrel provost Sail ho shrouds spirits boom mizzenmast yardarm. Pinnace holystone mizzenmast quarter crow's nest nipperkin grog yardarm hempen halter furl. Swab barque interloper chantey doubloon starboard grog black jack gangway rutters.</p>
        <p>Deadlights jack lad schooner scallywag dance the hempen jig carouser broadside cable strike colors. Bring a spring upon her cable holystone blow the man down spanker Shiver me timbers to go on account lookout wherry doubloon chase. Belay yo-ho-ho keelhaul squiffy black spot yardarm spyglass sheet transom heave to.</p>
      </div>

      <div class="col-sm-12 col-md-4">
      ..vertical navigation shortly..
    </div>
  </div>
</section>
```

As a bit of an aside ... the `<section>` tag above is another [semantic html element](https://www.w3schools.com/html/html5_semantic_elements.asp) -- like the `<article>` we used earlier in the semester -- that helps define what content is in that part of the web page. It doesn't _display_ anything differently by default, but you can leverage it to apply CSS styles. `<nav>` is another.

This row/col combination we've added uses eight columns for text, and then the remaining four for a vertical navigation item we'll add next.

Bootstrap 4 has a [Typography section](https://getbootstrap.com/docs/4.6/content/typography/) that will provide you with all of the type-based helper classes. It's fairly straightforward. We're using `.lead` to place emphasis on a subheading underneath our `<h3>` element.

There is also a [Text utilities](https://getbootstrap.com/docs/4.6/utilities/text/) documentation that provides you with text alignment options, transform, italics and font weights.

On small viewports, let's say that we want our type to be centered instead of the default behavior, which is left aligned.

We would modify that column div class to the following:

```html
<div class="col-sm-12 col-md-8 text-center text-md-left">
```

This will result in the text contained within the div to be centered until viewed on medium viewports and larger.