> beginning of section

Before we look at the code that makes the detail page, let's look at take a look at the example included with the project. There is screenshot below or you can click on "link to a book page example" from our index.

![static page example](../images/static-detail-page-example.png)

This is a detail page made from our detail layout at `src/njk/_layouts/book-bake.njk`.

- Open up the `src/njk/_layouts/detail.njk` file and look at it. This is the content:

```html
{% extends '_layouts/base.njk' %}

{% block page_title %}{{ book.title }}{% endblock %}

{% block page_description %}{{ book.title }} by {{ book.author }}{% endblock %}

{% block content %}
<article class="container">
  <div class="row">
    <div class="col-sm-3">
      {% block info %}
        <img src="img/{{ book.img }}" alt="" class="img-fluid">
        <p>{{ book.author }}</p>
      {% endblock %}
    </div>
    <div class="col-sm-9">
      {% block blurb %}
        <h1>{{ book.title }}</h1>
        <p>{{ book.blurb | safe}}</p>
      {% endblock %}
    </div>
  </div>
</article>
{% endblock %}
```

Let's explain these:

- The first line _extends_ the base layout so that all the HTML framework for the entire site is included. We don't have to rewrite or copy that.
- Next we have two _blocks_ for the _page_title_ and _page_description_. Everything between the blocks will be rendered to its reserved space in the base template.
- Next we have the _block content_. This is the guts of out layout, and it is being inserted into the middle of the base template.
- Within our content block we have bootstrap HTML for a two-column layout. And, inside of each column we have new _blocks_ for "info" and "blurb".

But what is all this `{{ book.title }}` and `{{ book.img}}` and stuff?

This layout was built assuming there is data to feed into it. In this case it is looking one instance (or `book`) in the `library.books` array. This is the same data that is in `src/njk/_data/library.json`, but we will tell the page later which row of data we want.

Open the page `src/njk/detail-shipping-news.njk` and you'll see an example of the detail page where it extends the template, then  one other line to set which row of the data we want. In this case the second row, or `library.books[1]` because the counting starts at zero. That's the number in the square brackets ... which row of the data, counting from zero.
