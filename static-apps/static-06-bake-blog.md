# Building our Ship's log blog

- Have them make a copy of the pirate blog
- add the new doc to the config and fetch
- add a new bake layout
- add a config to bake
- add a loop to the nav or the index.
- add a new entry, fetch and bake

OK, now we are going to apply this "baking" concept to our Ship's Log blog pages. We'll automagically create a new page for each blog entry that has been written in a Google Doc.

Remember we need three things: The data, the layout, and a config to marry them.

## The blog data

- Open this [Pirate blog doc](https://docs.google.com/document/d/18XALhwT3zGnY6XHy1z1Z_7zfakvRSp-wlnlrTgFO3QQ/copy#). As you do so, it will make a copy of my document so you have your own version.
- Click on the Share button and make the document "viewable" to "Anyone with the link". This has to be done to download the data into our project.
- Look at the structure of the data, where there are three blog entries. The only difference from the books example is the part for `[.+post]` at the beginning of the blog text, which also has the ending `[]`. This structure allows us to have cleaner paragraphs of text in our blog entries.

## Config the data

- Open your `project.config.json` file.
- In the `files` array, we need to add a new value. You can copy/paste one of the other ones, but make sure you include the comma that separates each entry.
  - Update the `fileID` with the ID of your new Google Doc. It's the part of the URL just before `/edit/`.
  - Set the `type` as "doc".
  - Set the `name` as "blog".
- Save the file.
- In your Terminal, quit browsersync with Control-c.
- Run `gulp fetch`.

It should now download **four** files, and "blog" should be one of them. If it doesn't work, read the error. If it says something about "Unexpected token" or "parse error", then it's likely your `project.config.json` file is not configured properly. If it says something like "The caller does not have permission", then you haven't set your Google Doc to be "viewable" to "Anyone with the link".

## Create the bake-blog layout

Now that we have data, we need to create our layout. Because baking layouts are a bit special, like to name them with the word "bake-" do I know what they are being used for.

- Create a new file in `src/njk/_layouts/` called `bake-blog.njk`.
- Put the following code inside the template and save it. I'll explain it after.

```html
{% extends '_layouts/base.njk' %}
{% set relative_path = "../" %}
{% from '_macros/prose.njk' import prose %}

{% block page_title %}{{ title }}{% endblock %}

{% block page_description %}{{ title }} by {{ author }}{% endblock %}

{% block content %}
  <article class="container">
    <div class="row">
      <div class="col-sm-4">
        <img src="../img/pirate.jpg" alt="pirate character" class="img-fluid">
        <p class="byline">By Crit McGillicutty<br>
        <span>Island Breeze Tribune</span></p>
        <hr class="d-sm-none">
      </div>
      <div class="col-sm-8">
        <img src="../img/{{ image }}" alt="" class="img-fluid mb-4">
        <h1>{{ headline }}</h1>
        {{ prose(post) }}
      </div>
    </div>
  </article>
{% endblock %}
```

This code is very similar to the `bake-books.njk` layout with these exceptions:

1. `{% from '_macros/prose.njk' import prose %}` near the top of the file is something we need to process our multi-paragraph blog post.
2. `{{ prose(post) }}` is the variable to pull that post data. We are wrapping that "post" data in the `prose` macro to create a new `<p>` tag for each paragraph.

All that code was pre-written because this is a common thing we have to do in projects. All you need to do is to remember that when you use multiple paragraphs you have to format your original Google Doc correctly (with the `[.+tag_name]` thingy), to include the macro, and to wrap the item in `prose(tag_name)`.

## Marry the data to the layout

Now it's time to match these two things in our our config file.

- Open the `project.config.json` file.
- In the `to_bake` array, add another item like the existing one, making sure that you have a comma between them.

```json
    {
      "layout": "bake-blog",
      "data": "blog",
      "array": "blogs",
      "slug": "slug",
      "path": "blog"
    }
```

Note the differences in the key values. Review these key values and compare them to the books one that was there before. All the values are new (though we used the term "slug" in both data sets).

With this configuration, we will create new page inside a folder called "blog", and each page will be named using the slug value -- which is formatted like a date in our data -- so the pages will end up something like `blog/2019-10-18.html`.

## Let's bake

OK, now it's magic time. We have to restart our dev environment to get everything baking.

- In your Terminal, quit browsersync.
- Run `gulp dev`.
- If you look in your `docs/` folder, you should see a new `blogs/`folder with two pages inside.
- In your browser, you should be able to add `blog/2019-10-18.html` to the end of the existing URL and get to the first page.

## Add a blog loop to the index

Now it's time to include a list of our blog entries on the index page. You'll use what you've learned about loops when you did the pirate ships and then apply them here. I'll guide you _a little_, but I want to you to think a bit about it on your own.

I'd like you to build a list of blog entries on the home page, and include the date of the entry, the headline and link to the blog entry. Here are some hints and things to think about.

1. You have the blog data in context to use in a "for" loop. You are pulling `from blog.blogs`.
2. You can build the HTML within the loop and use the data variables to get the headline, date and slug. The slug can be used to build the href to the blog entry. Just think about the path of where the blogs posts are relative to the index. The pages end in `.html`.
3. If you build the loop in the same row/col as your intro text, then it will be the same width as that and look pretty decent.

The "look" of these are up to you. You might keep it simple.

## Add a new blog entry

Once you have your index blog post loop going, I want you to add another blog to your Google Doc and fetch it into your project. Some thoughts on that:

1. There is a template at the top of the Doc. You can copy/paste that below the `:endskip` and fill it out.
2. Set the slug as `2019-10-20`.
3. Use the `kraken03.jpg` photo.
4. Add your own [pirate ipsum](https://pirateipsum.me/) or write something yourself, but use multiple paragraphs.
5. You'll need to quit your browsersync and use `gulp fetch` to get the updates. Once you run gulp dev again you should see the new entries.

## Clean up and republish to Github

Let's finish this out.

- Clean up `_includes/nav.njk` to remove the bits about the example index and the Library books, since we aren't using those. You might peruse that books list, as it another example of using loops.
- Commit everything and push it again to Github. Make sure your site works well on the published link, as sometimes issues arise in publishing that are not apparent in your dev environment.
- Turn in your Github repo link to the Canvas assignment.

---

Your done!
