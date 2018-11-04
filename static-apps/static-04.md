# Data and loops

We're going to update our `index.html` file to look more like blog landing page, and we'll use a loop of data to create links to our Ship's Log entries.

Open up the `src/njk/index.html` and take a look at it.

- The first line _extends_ the "base" layout. This is fine, since this is the only page we'll have like this.
- The next bit is _block page\_title_, which allows us to replace the default title, which we should do. Update the contents of that block with "The Ship's Log".
- Next, we have the _block content_, which is the guts of our page.

If we look at the part of the page with the authors, you'll see a series of _for_ loops, _ifs_ and use of _variables_. This is a more complicated set up that is here as an example, but **we'll skip it** and go to the more simple version further down the page. Just know that the data for this part is stored in `project.config.json`, one of two places we can pull data from.

Instead, let's look at the list further below that shows a series of books:

```html
<ul> 
  {% for book in books %}
    <li>{{ book.title }}, {{ book.author }}</li>
  {% else %}
    <li>This would display if the 'books' collection were empty</li>
  {% endfor %}
</ul>
```

A "for loop" in programming will repeat a series of code for as long as the condition is true. In our case Nunjucks will repeat the code for each new "book" in a "books" collection. This is a prime example of [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) programming, or DON'T REPEAT YOURSELF.

If there are no "books", then our _else_ condition displays, which is text noting the collection is empty. (Else conditions help keep your page from breaking).

Where is this "books" collection? This project-template is set up so the user can store data collections in a special file `src/njk/data/data.json`. Open that up and you'll see this:

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

This is a typical example of JSON data, the format preferred by JavaScript. Here we define the "books" collection first, then set it to an "array" of key-value pairs ... "title" and "author". Think of each of those sets as a row of data in a spreadsheet.

Nunjucks can access the data from the current row through the key: `{{ book.title }}` gets the value "The Clown" on it's first pass.

When we started Gulp, this "books" data collection was loaded into the Nunjucks "context", meaning it was made available to it. This was all set up in the Gulp tasks by the developer (me). All you have to do to add new data for the templates to use define is in the `data.json` file and restart Gulp.

## Add a list of our blog entries

If we wanted to add a new collection to this file, we could do so by adding a comma after the last square bracket `]` and then defining our new array. Let's add data about our blog entries so we can create links to them on our index.

- Add a comma after the last `]`.
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

- Kill your BrowserSync server and restart it with `gulp dev`. The data is imported during the Gulp startup sequence, so we have to restart that each time we add or edit data.
- Now replace the entire for loop structure with this:

```html
{% for entry in entries %}
  <li>{{ entry.title }}, {{ entry.date }}</li>
{% endfor %}
```

We changed what the loop was looking for: `for entry in entries`. The 
"entries" part of that is important, because that is the name of the collection in our data. The "entry" term is what we call a single instance in the loop. We can use whatever term we want (as long as we are consistent), but it is best to use variable names that make sense.

Now, in our `<li>` code we are accessing the values of each pass as variables: `{{ entry.title }}`. The first part of that we are using "entry" because that is what we defined in the loop. And "title" comes from the data, because that is the value we want from that row of the data.

This might seem like overkill for three lines of data, but you can imagine how powerful this can be with lots of data, or how we can add new rows to data without editing our pages.

### Rewrite our loop code to be more awesome



## Notes

- Have them add page_title blocks.
