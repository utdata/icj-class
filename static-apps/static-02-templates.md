# Templates and blocks

We're going to rebuild the framework of the Pirate Cove site you built in the Bootstrap assignment using this new structure to improve code efficiency and site maintainability. We'll build the index and three blog entries.

Here are some screen casts of the finished product you are working toward. I'm showing only the index and one entry page, but you will make three entry pages.

- [Index page](https://drive.google.com/open?id=1VVL4bHhFsalq-mj2Yy14C1U62lUqOFgi)
- [Entry page example](https://drive.google.com/open?id=1gOk9bUFAmtR82MmAobNK8jovrVnIW_z_)

## Install the assets

We need to add the image files in [pirate-photos.zip](pirate-photos.zip) to our `src/img` folder in the app.

- Download [pirate-photos.zip](pirate-photos.zip) file.
- Expand the folder and take the images inside and put them inside your `src/img/` folder.
- Restart `gulp dev` after installing the photos.

## Copy and rename the index

To keep us from getting bogged down in the advanced features of the projects template, let's rename our current index (so we can keep it for reference later) and make a new one.

- rename the files `index.njk` to `index-example.njk`
- create a new file `index.njk` in the same `njk` folder and insert the following code:

```html
{% extends '_layouts/base.njk' %}

{% block content %}
<div class="container">
  <p>Content goes here</p>
</div>
{% endblock %}
```

Your browserSyncReload should've kicked off as you renamed and added files. If you look at your index page now it just has the navigation, footer and the text "Content goes here". If that isn't happening, run `gulp dev`.

## Nunjucks template inheritance and blocks

When we reviewed the templates in class (or on video), we likely talked about the code inside the `src/njk/_layouts/base.njk` file, and how every page on our site uses this file.

We'll make a some changes there so you can see how it carries over to our index page.

- First, take a look at the title of your page in your browser. Note it says "Default title":

![Default title](../images/static-default-title.png)

- Now open the file `src/njk/_layouts/base.njk`

- Take a look at the `<title>` tag here:

```html
<title>{% block page_title %}Default title{% endblock %}</title>
```

This is an example of the Nunjucks _block_ tag, and this one is called "page_title". Some notes about this:

- Nunjucks block tags start with `{% block tag_name %}` and end with `{% endblock %}`.
- The content inside the tag will display UNLESS you override it later with a new block tag of the same name.

> You can also call the tag and append code to it using [super](https://mozilla.github.io/nunjucks/templating.html#super), but we aren't doing that here.

We want our site name to be on every page of our site, but then we want to override the title of each page with it's own title.

Now we'll update the `{% block page_title %}` on our index page so we can give it a unique title. In doing this we are _replacing_ the text that is in the default block in `base.njk`.

- In your `src/njk/index.njk` file, in the 3rd line of the file (after the "extends" code), add the following:

```html
{% block page_title %}Capt. McGillicutty's Ship's Log{% endblock %}
```

A little important aside on that "extends" code. That first line is telling this page to use all the code in in `base.njk` (which is the framework of our site), and then anything that follows is being _inserted_ into that framework.

Now your title looks like this:

![Default title edited](../images/static-default-title-edit.png)

So, we have "Pirate Cove | " on every page, and on this specific page we have replaced "Default title" with new title text in the `{% block page_title %}` block.

This concept will repeat again and again. We reserve space in a template (or layout), sometimes adding default content, and then we override it later when "extending" that template.

## Using Nunjucks includes

Includes are bits of project code that we break off into it's own file because we are reusing it or for organizational purposes.

If we look in our `base.njk` layout at about line 13, we'll see this code: `{% include "_includes/nav.njk" %}`. What an include does is when the browser renders the page, it takes all the code inside that \ file and inserts it into that location in the layout/page. It's sorta like a "block" but dumber. We can't overwrite it. But it is really handy to break up your code into logical files so you can find code later when your website gets complex.

Our example here is the navigation for the website, which we've saved in `src/njk/_includes/nav.njk`. In maintaining a website, you'll often go into the navigaition and make changes, so it makes sense to put it separate where we can easily find it.

Let's update the Brand and the links to point to three Ship's Log entries we will add later.

- Open `src/njk/_includes/nav.njk`.
- Find the `navbar-brand` segment and update the text "Navbar" to "Pirate Cove".
- AFTER the line that has <ul class="navbar-nav"> (about line 7), add the following:

```html
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Ship's log
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="2019-10-18.html">Oct. 18</a>
          <a class="dropdown-item" href="2019-10-19.html">Oct. 19</a>
          <a class="dropdown-item" href="2019-10-20.html">Oct. 20</a>
        </div>
      </li>
```

You might have to fix in indenting of the first new line of code so it lines up with the closing `</li>`.

Now, if you look at your index in your browser, you'll see that a new navigation dropdown has been added with three links. Again, we'll create the new pages later.

## The jumbotron

### Add a new include

In our original Pirate Cove site, we had the cool header with a photo background. Let's add that to this site as an include, similar to the nav.

- Create a new file `src/njk/_includes/jumbotron.njk`.
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

If you look at your browser now you should see the beginnings of a jumbotron, though it doesn't quite look right with our photo and such as we haven't added CSS to make it so. That is next.

### Add a Sass partial

We'll need to create some styles to give our jumbotron the background image we want.

- Go into `src/scss/` and create a file called `_jumbotron.scss`.

We are creating this as a Sass partial to organize our code. We'll need to put our styles in here, then import them into `src/scss/main.scss`.

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

Now you have to add this partial Sass file to the `main.scss`.

- Open `src/scss/main.scss` and at the imports at the bottom of the page, add one for the "jumbotron" file like the existing one for "nav". Remember from our Sass lessons that on imports for partials, we don't need the underscore or extension here as Sass assumes them.

```scss
@import "jumbotron";
```

You should have a working nav and Jumbotron header for your site now. Next, we'll reinforce the layout concept by adding a new one and creating our blog posts.

----

Next: [Detail pages](static-03-detail.md)
