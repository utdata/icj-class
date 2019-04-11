# Templates and blocks

We're going to rebuild the framework of our Pirate Cove site in a way that we have a index and then a new page for each entry in the Ship's Log.

## Review the base file

When we reviewed the template, we should've talked about the code inside the `src/njk/_layouts/base.njk` file, and how every page on our site uses this file.

We'll make a minor change here so you can see that it does affect our index page.

- Take a look at the `<title>` tag here:

```html
<title>{% block page_title %}Default title{% endblock %}</title>
```

Inside here is an example of the Nunjucks _block_ tag, and this one is called "page_title". Some notes about this:

- Nunjucks block tags start with `{% block tag_name %}` and end with `{% endblock %}`.
- The content inside the tag will display UNLESS you override it later with a new block tag of the same name.
- You can also call the tag and append to it using [super](https://mozilla.github.io/nunjucks/templating.html#super), but we aren't doing that here.

We want our site name to be on every page of our site, but then we want to override the title of each page with it's own title, so let's update our title to do this:

```html
<title>Pirate Cove | {% block page_title %}Default title{% endblock %}</title>
```

Save and then look at your index in your browser, and it will start with "Pirate Cove | " now.

The next block in the `base.njk` file is the `{% block description %}` tag, which is fine. We'll leave that as-is.

## Update _partial/nav.njk

We finally get to our body tag and find our first _include_ file. These are bits of code that we write separately in different files just to keep our code organized. In this case it is our navigation code.

Let's update the Brand and the links to point to three Ship's Log entries we will add later.

- Open `src/njk/_partial/nav.njk`.
- Find the `navbar-brand` segment and update the text "Navbar" to "Pirate Cove".
- Set the href there to `index.html`.
- Find the dropdown part of the nav and change the name of the dropdown to "Ship's Log"
- Update the three links there to these urls, which we will add later:

```html
<a class="dropdown-item" href="2018-10-18.html">Oct. 18</a>
<a class="dropdown-item" href="2018-10-19.html">Oct. 19</a>
<a class="dropdown-item" href="2018-10-20.html">Oct. 20</a>
```

Now, if you look at your index in your browser, you'll see that these links have been updated. Again, we'll create the new pages later.

## The jumbotron

### Add a Nunjucks partial

In our original Pirate Cove site, we had the cool header with photo background. Let's add that to this site as a partial, similar to the nav. We do this as a partial as a way to organize our code, making it easier to find and update later.

- Create a new file `src/njk/_partials/jumbotron.njk`.
- Insert into it the following code

```html
<div class="jumbotron banner text-center">
  <h1>The Ship's Log</h1>
  <p>A diary by Capt. Crit McGillicutty</p> 
</div>
```

Now that we have the partial built, we can add it to the `base.njk` file right after the nav:

```html
  {% include "_partials/jumbotron.njk" %}
```

### Add a Sass partial

If you look at your page now, the Jumbotron should be showing. We'll need to create some styles to give our jumbotron the background image we want..

- Go into `src/scss/` and create a file called `_jumbotron.scss`. We are creating this as a Sass partial to organize our code. We'll need to put our styles in here, then import them into `src/scss/main.scss`.
- Add this to your `_jumbotron.scss` file:

```scss
.jumbotron.banner {
  background: url(../img/pirate-ship.jpg) no-repeat center;
  background-size: cover;
  color: white;
  padding-top: 12rem
}

.jumbotron {
  margin-bottom: 30px;
}
```

Now you have to add the partial to `main.scss`.

- Open `src/scss/main.scss` and at the imports at the bottom of the page, add one for the "jumbotron" file like the existing one for "nav". Remember from our Sass lessons that on imports for partials, we don't need the underscore or extension. Sass assumes them.

```scss
@import "jumbotron";
```

You should have a working nav and Jumbotron header for your site now. Next, we'll work on the detail pages before we come back to the index.

----

Next: [Detail pages](static-03.md)
