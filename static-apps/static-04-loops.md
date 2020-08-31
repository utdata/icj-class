# Data and loops

If you look at the content on our example index page, you'll notice the main headline, some text, and then a list of books and authors.

![index content block](../images/static-index-content.png)

We're going to update our index page to look more like a blog index page, and we'll use a Nunjucks loop and data to create a series of links to our Ship's Log entries.

Open up the `src/njk/index.njk` and take a look at it.

- The first line `{% extends '_layouts/base.njk' %}` _extends_ the "base" layout. This gives us all the header, footer, etc for the page, but allows us to insert content into the reserved _blocks_.
- The next bit `{% block page_title %}` is _block_ that allows us to replace the default title, which we should do. Update the contents of that block with "The Ship's Log". When this page is built, the text "The Ship's Log" will replace the text "Default title" in the base template.
- Next we have `{% block page_description %}` which is a _block_ for a unique search description for this page. Update that with "A daily blog from Capt. Crit McGillicutty." This updates the meta description on the base template.
- Next, we have `{% block content %}`, which is the guts of our page. It sets up a container div to give margins for all our content. Inside that is headline and a row and column for content, etc. This is standard Bootstrap rows and columns.

As you get further into the code there is a bit about `library.books`, which prints out a series of books from a data file:

```html
<ul>
  {% for book in library.books %}
    <li>{{ book.title }}, {{ book.author }}</li>
  {% endfor %}
</ul>
```

Does this look vaguely familiar? Like from our JavaScript classes? It is indeed ... the [Nunjucks](https://mozilla.github.io/nunjucks/templating.html) template language uses the same concepts and the functions are executed using pre-written JavaScript we installed witn `npm install`.

Our "for loop" repeats the `<li>` line of code as long as the condition is true. In our case Nunjucks will repeat the code for each new "book" in the "books" collection. We could have an _else_ condition here to display code if there are no books in our data, but they are optional depending on your logic needs.

The `endfor` tells Nunjucks to end the looping code.

But where is this collection of "books" collection coming from? The icj-project-template is set up so you can store data collections as JSON files in the `src/njk/_data/` folder. Look there and you'll find a file called `library.json`. Open that up and you'll see a more extensive version similar to this:

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

## Review the Bookstores list

If you go further down the index page you'll see a new Bootstrap and row and column and then a new loop that prints out a list of bookstores. Before we modify it, study the loop and look at the data that drives it so you can see how it works.

Your next task will be to add new data for our blog entries and modify that loop to pull from it.

## Get the data from our blog entries

We want to print out a list of all our blog entries, but first we need the data. We will create a new .json file and restart `gulp dev`.

- Create a new file at `src/njk/_data/shiplog.json` file.
- Add then add following code:

```json
{
  "entries": [
    {
      "date": "October 18, 2018",
      "url": "2018-10-18.html",
      "title": "It was a dark and stormy night",
      "photo": "kraken01.jpg"
    },
    {
      "date": "October 19, 2018",
      "url": "2018-10-19.html",
      "title": "Fear the Kraken",
      "photo": "kraken02.jpg"
    },
    {
      "date": "October 20, 2018",
      "url": "2018-10-20.html",
      "title": "Call me Ishmael",
      "photo": "kraken03.jpg"
    }
  ]
}
```

- Kill your BrowserSync server (Control-c in your Terminal) and restart it with `gulp dev`. Data is imported during the Gulp startup sequence, so we have to restart that each time we add or edit data.

## Modify your loops to use new data

- Remove the books loop and the `<ul>` tags around them. We won't use that anymore.
- Go down to the bookstores part of the page.
- In the bookstores loop, you'll replace the references to the bookstores data with references to your blog entry data.
  - in the "for loop" call, replace `store` with `entry`
  - Also in "for loop", replace `bookstores.stores` with `shipslog.entires`
  - replace `store.url` with `entry.url`
  - replace `store.name` with `entry.title`
  - replace `store.address` with `entry.date`

Save your file and check your page to see if everything worked and make it so before moving on.

We changed what the loop was looking for: `for entry in shiplog.entries`. The "shiplog.entries" comes from the name fo the file the "shiplog" in `shiplog.json`) and the name of the array inside the file ("entries"). The "entry" term is what we are calling a single pass through the data within the loop. While we could use whatever term we want there as long as we are consistent, it is good practice to use a variable name that is a singlar term for whatever your collection is.

Now, in our `<h3>` tag we are accessing the values in the data through their keys: `{{ entry.title }}`. The **entry** part of that term comes from what we defined it in the loop (for _entry_ in shiplog.entries). And **title** part is the "key" that matches the value we want from that row of the data.

This might seem like overkill for just three lines of data, but you'll see as we progress that we can turn our data into a content management system of sorts.

### Tools to make JSON data

If you have a spreadsheet of data that you need in JSON format, [CSVJSON](https://www.csvjson.com/) is a tool that can help with that. You'll learn an even better way using Google Drive when we get to the final project.

It should look something like this:

![headline stack](../images/static-headline-stack.png)

> Note: Your hrefs won't actually work yet because we haven't created those pages yet. That is next!

---

Next: [Detail pages](static-04-detail.md)