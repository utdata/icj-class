# Data and loops

If you look at the content on our example index page, you'll notice the main headline, some text, and then a list of books and authors.

![index content block](../images/static-index-content.png)

We're going to update our index page to look more like a blog index page, and we'll use a Nunjucks loop and data to create a series of links to our Ship's Log entries.

Open up the `src/njk/index.njk` and take a look at it.

- The first line `{% extends '_layouts/base.njk' %}` _extends_ the "base" layout. This gives us all the header, footer, etc for the page, but allows us to insert content into the reserved _blocks_.
- The next bit `{% block page_title %}` is _block_ that allows us to replace the default title, which we should do. Update the contents of that block with "The Ship's Log". When this page is built, the text "The Ship's Log" will replace the text "Default title" in the base template.
- Next we have `{% block page_description %}` which is a _block_ for a unique search description for this page. Update that with "A daily blog from Capt. Crit McGillicutty." This updates the meta description on the base template.
- Next, we have `{% block content %}`, which is the guts of our page. It sets up a container div to give margins for all our content. Inside that is headline and a row and column for content, etc. This is standard Bootstrap rows and columns.

As you get further into the code there is a bit about `data.books`, which prints out a series of books from a data file:

```html
<ul>
  {% for book in data.books %}
    <li>{{ book.title }}, {{ book.author }}</li>
  {% endfor %}
</ul>
```

Does this look vaguely familiar? Like from our JavaScript classes? It is indeed ... the [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) template language uses the same concepts and the functions are executed using pre-written JavaScript we installed witn `npm install`.

Our "for loop" repeats the `<li>` line of code as long as the condition is true. In our case Nunjucks will repeat the code for each new "book" in the "books" collection. We could have an _else_ condition here to display code if there are no books in our data, but they are optional depending on your logic needs.

The `endfor` tells Nunjucks to end the looping code.

But where is this collection of "books" collection coming from? The icj-project-template is set up so you can store data collections as JSON files in the `src/njk/_data/` folder. Look there and you'll find a file called `data.json`. Open that up and you'll see something similar to this:

```json
{
  "books": [
    {
      "title": "The Clown",
      "author": "Heinrich Böll"
    },
    {
      "title": "The Shipping News",
      "author": "Annie Proulx"
    },
    {
      "title": "The Hearing Trumpet",
      "author": "Leonora Carrington"
    }
  ]
}
```

This is a typical example of JSON, the data format for JavaScript. Here we define the "books" collection first, then set it to an **array** of key-value pairs ... "title" and "author". Think of each of those sets as a row of data in a spreadsheet.

Nunjucks can access the data from the current row through the key: `{{ book.title }}` gets the value "The Clown" on it's first pass through the data.

When we started Gulp with `gulp dev`, this "books" data collection was loaded into the Nunjucks "context", meaning it was made available to it. This was all set up in the Gulp tasks by the developer (me).

## Add our blog entries to the data

On our index, we want to print out a list of all our blog entries. To add new data for our templates, we can add either add it in a new file or build a new array in our our `data.json` and restart Gulp.

We'll just add our array to `data.json` so we can loop through it.

- In the `src/njk/data/data.json` file, add a comma after the last `]`.
- Add the following code:

```json
"entries": [
  {
    "date": "October 18, 2018",
    "url": "2018-10-18.html",
    "title": "It was a dark and stormy night"
  },
  {
    "date": "October 19, 2018",
    "url": "2018-10-19.html",
    "title": "Fear the Kraken"
  },
  {
    "date": "October 20, 2018",
    "url": "2018-10-20.html",
    "title": "Call me Ishmael"
  }
]
```

- Kill your BrowserSync server (Control-c in your Terminal) and restart it with `gulp dev`. Data is imported during the Gulp startup sequence, so we have to restart that each time we add or edit data. Make sure that `gulp dev` worked without errors. A missed comma in the `.json` file will make it fail.
- Replace the loop on our page with this loop instead:

```html
{% for entry in data.entries %}
  <li>{{ entry.title }}, {{ entry.date }}, {{ entry.url}}</li>
{% endfor %}
```

We changed what the loop was looking for: `for entry in data.entries`. The "data.entries" part of that is important, because that is first the name of the file (the "data" in `data.json`), then the name of our array that we want from that file ("entries"). The "entry" term is what we are calling a single pass through the data within the loop. While we could use whatever term we want there as long as we are consistent, it is good practice to use a variable name that makes sense ... a singlar term for whatever your collection is.

Now, in our `<li>` tag we are accessing the values in the data through their keys: `{{ entry.title }}`. The "entry" part of that term comes from what we defined it in the loop (for _entry_ in data.entries). And "title" is the "key" that matches the "value" we want from that row of the data.

This might seem like overkill for just three lines of data, but you can imagine how powerful this can be with lots of data, or how we can add new rows to data without editing our pages.

### Tools to make JSON data

If you have a spreadsheet of data that you need in JSON format, [CSVJSON](https://www.csvjson.com/) is a tool that can help with that. It's what I use to create such files.

## Rewrite our loop code to be more awesome

Now that we know how to access the data in our templates, we can change up our HTML/Bootstrap markup to make them look a little nicer.

Instead of a bullet list, let's use headlines and such.

- Replace the entire "for loop" structure (**including the `<ul>` tag just before and the `</ul>` after the loop**) with this:

```html
{% for entry in data.entries %}
  <h3 class="entry-headline"><a href="{{ entry.url }}">{{ entry.title }}</a></h3>
  <p class="entry-date">{{ entry.date }}</p>
  <hr>
{% endfor %}
```

It should look something like this:

![healdine stack](../images/static-headline-stack.png)

> Note: Your hrefs won't actually work yet because we haven't created those pages yet.

---

Next: [Detail pages](static-04-detail.md)