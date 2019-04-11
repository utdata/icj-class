# Detail pages

For this website, we are going to have a number of detail pages that are all the same except for the the content.

## Review the detail layout and pages

- Open up the `src/njk/_layouts/detail.njk` file and look at it. This is the content:

```html
{% extends '_layouts/base.njk' %}

{% block content %}
<article class="container">
  <div class="row">
    <div class="col-sm-4 left-rail">
      {% block info %}{% endblock %}
    </div>
    <div class="col-sm-8">
      {% block story %}{% endblock %}
    </div>
  </div>
</article>
{% endblock %}
```

Let's explain these:

- The first line _extends_ the base layout so that all the HTML framework for the entire site is included. We don't have to rewrite or copy that.
- Next we have the _block content_. This is the guts of the page, and it is being inserted into the rest of the framework.
- Within that block we have the basic HTML for a two-column layout. And, inside of each column we have new _blocks_ for "info" and "story".

This means when we create a file for each story, we only need to include the content within each column. Open up the example file `src/detail-page.html` and you'll see this:

```html
{% extends '_layouts/detail.njk' %}

{% block info %}
  <p>Left column content</p>
{% endblock %}

{% block story %}
  <h2>Undead: Right column content</h2>
  <p>Zombie ipsum brains reversus ab cerebellum viral inferno, thalamus nam rick mend grimes malum cerveau cerebro.</p>
{% endblock %}
```

- At the top, we _extend_ the detail layout (which in turn extends the base layout. It's [Inception](https://giphy.com/gifs/cheezburger-mindwarp-inception-3GuP496Wrkos8)).
- Next, we have the _block info_ with some example content.
- Then the _block story_ with example content.

The only thing we have to add to build a new story is the left and right content. Heck, for that matter, all we need is the _block story_ content, since we have the same author on all our entries. Let's fix it up that way!

## Edit the detail layout

- Open the detail layout `src/njk/_layouts/detail.njk`.
- Replace the line with `{% block info %}{% endblock %}` with this:

```html
{% block info %}
  <img src="img/pirate.jpg" alt="pirate character" class="img-fluid">
  <p class="byline">By Crit McGillicutty<br>
  <span>Island Breeze Tribune</span></p>
{% endblock %}
```

This will put the "Crit McGillicutty" byline and photo on every detail page, but also allow us to override the block if we needed to.

We'll leave the _block info_ tag the way it is.

## Create your detail pages

Now, let's create a new page for our first detail entry.

- Inside the `src/njk` folder, create a new file: `2018-10-18.njk`. (If you'll recall, this is similar to the file name we used in our navigation except for the extension. Each `filename.njk` file added inside `src/njk/` will become a new HTML page of the same name at `docs/filename.html`.)
- Inside this file, add the following code:

```html
{% extends '_layouts/detail.njk' %}

{% block story %}
  <h2>It was a dark and stormy night</h2>
  <h5>Captain's log, Oct. 18, 2018</h5>
  <p>Interloper crimp spanker Barbary Coast splice the main brace bilged on her anchor black spot chandler trysail salmagundi. Brigantine fire ship scallywag log squiffy bowsprit lateen sail American Main cog smartly. Dance the hempen jig bilge log galleon pirate yard list Barbary Coast Corsair run a rig.</p>
{% endblock %}
```

Think about this for a second: You added a new page to your website with just those few lines of code, compared to when you did this with the Bootstrap Homework assignment, when you had to copy the whole page, likely getting them out of sync.

## Make two more pages

- Create two more new pages: `2018-10-19.njk` and `2018-10-20.njk`.
- Fill them with the same code block as above, but change the headlines and dates.
- Go to the front-end of your site and make sure that all of the links work by using the nav.

Congrats ... you are set up to add new detail pages. Next up is to create our index page and learn about data and loops.

---

NEXT: [Data and loops](static-04.md)
