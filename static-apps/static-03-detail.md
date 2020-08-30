# Detail pages

For our Pirate Cove blog we will have a number of entries that are all the same except for the story content.

## Review the detail layout and pages

Using a "layout" allows us to build a structure for a page once, but then use that structure on as many pages as we like without rewriting the code. Our "Shipping News" page example is just one book among a whole library of pages. Think of this like the Amazon shopping site. Every item you search for has the same basic structure, but the content is different for each item.

Our blogs entries will be similar. We'll have the same page structure: a photo of Capt. McGillicutty in a column on the left, and the blog text in a column on the right.

> The library books example in the project template is a similar detail page, but it uses the "bake" feature to build out pages automatically from data. This "bake" feature is an optional enhancement we'll talk about later. For now, with our Pirate Cove blog, we'll just build our pages manually while still using a "layout" template.

## Building the blog post template

Our goal with building our blog post pages is to use (or extend) the overall site structure from the `base.njk` template, but then to add a new structure for our blog posts inside the "content" block that we can use for each of our blog posts.

### Create an entry layout

In order to understand how this works, we have to create both the "entry" layout and a page that uses it. So bear with me a bit here.

- Create a new file in `src/njk/_layouts` with the name `entry.njk`.
- Add this code to the file and save it:

```html
{% extends '_layouts/base.njk' %}

{% block page_title %}Detail page title{% endblock %}

{% block page_description %}Meta description for detail page.{% endblock %}

{% block content %}
<article class="container">
  <div class="row">
    <div class="col-sm-3">
    <!-- left column -->
    <div class="col-sm-4 left-rail">
      <img src="img/pirate.jpg" alt="pirate character" class="img-fluid">
      <p class="byline">By Crit McGillicutty<br>
      <span>Island Breeze Tribune</span></p>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-9">
      <!-- right column -->
      {% block entry %}Entry content.{% endblock %}
    </div>
  </div>
</article>
{% endblock %}
```

Now we will create a new blog entry page that uses our new layout:

- Create a new file as `src/njk/2019-10-18.njk` and place the following inside it:

```html
{% extends '_layouts/detail-entry.njk' %}
```

- Save the file and then go to the page in your web browser. It should be [http://localhost:3000/2019-10-18.html](http://localhost:3000/2019-10-18.html). (Your number after `localhost` might be different. Just add `2019-10-18.html` after your hostname.)

It should look like this:

![detail page](../images/static-detail-layout-begin.png)

Let's chat a bit about this.

We know we want Capt. McGillicutty's photo and byline on every page, so that is part of the `entry.njk` layout. But in the right-hand column we will want different content in for each blog post, so we have a Nunjucks "block" to reserve the space: `{% block entry %}Entry content.{% endblock %}`. Right now this block shows the text "Entry content.", but this is just default text. In each of our blog pages, we'll replace that replace that entry block with our blog entry content. Let's do that now.

- Add the following code to your `2019-10-18.njk` file:

```html
{% block entry %}
<h1>It was a dark and stormy night</h1>
<p>Interloper crimp spanker Barbary Coast splice the main brace bilged on her anchor black spot chandler trysail salmagundi. Brigantine fire ship scallywag log squiffy bowsprit lateen sail American Main cog smartly. Dance the hempen jig bilge log galleon pirate yard list Barbary Coast Corsair run a rig.</p>
<p>Broadside yard bilge rat coxswain ye lugsail dance the hempen jig bilged on her anchor sheet spyglass. Capstan chase guns Privateer maroon haul wind Nelsons folly rum starboard shrouds killick. Weigh anchor quarterdeck ahoy mizzen killick grog driver spike list Nelsons folly.</p>
{% endblock %}
```

Now look at your block entry page, where you should have a headline and a couple of paragraphs of text where the blog entry should go.

Let's review what we've done here:

Our blog entry `2019-10-18.njk` starts with one line of code, the _extends_ Nunjucks tag that calls our `detail.njk` layout that defines the middle of our page. That `detail.njk` in turn extends the base layout that has the navigation, jumbotron and footer. (It's [Inception](https://media.giphy.com/media/3GuP496Wrkos8/source.gif).

Our `detail.njk` layout reserves space for the blog content using the `{% block entry %}` tag. In our `2019-10-18.njk` file, we have replaced the default text there with our new content.




>> this is where I stopped.



## Create your other detail pages

Now, let's create a pages for our other blog entries.

- Inside the `src/njk` folder, create a new files for: `2018-10-19.njk` and =`2018-10-20.njk`. (If you'll recall, this is similar to the file name we used in our navigation except for the extension. Each `filename.njk` file added inside `src/njk/` will become a new HTML page of the same name at `docs/filename.html`.)
- Inside these files, add the same entry code as you did for the first page.

Think about this for a second: You added a new pages to your website with just those few lines of code, compared to when you did this with the Bootstrap Homework assignment, when you had to copy the whole page, likely getting them out of sync. Now you can change the framework of the site without editing individual pages.

## Edit the detail layout

If you remember on our Pirate Cove "blog" pages, we have the same content in the left rail all the time.

![static blog example](../images/static-blog-example.png)

As cute as the kitten is, what we need on all the entry pages is the picture of Capt. McGillicutty and his byline, etc. The photo and byline on the left will always be the same. Because of this, we can update the detail-entry layout to use the correct picture and it will update on all three entry pages.

- Open the detail layout `src/njk/_layouts/detail-entry.njk`.
- Replace the code between `{% block info %}` and `{% endblock %}` with this:

```html
{% block info %}
  <img src="img/pirate.jpg" alt="pirate character" class="img-fluid">
  <p class="byline">By Crit McGillicutty<br>
  <span>Island Breeze Tribune</span></p>
{% endblock %}
```

This will put the "Crit McGillicutty" byline and photo on every detail entry page, but also allow us to override or add to the block if we needed to.

## Using entries data in the detail page

As you may recall, our `data.json` file has three key values for each entry: date, url and title. We can use that data in this detail page, but we need to tell the page _which_ of the three entries in our data to use. The template can grab the data by its order, but it's weird that it starts counting at `0` instead of at the number 1.

- Open your page `src/njk/2018-10-18.njk`.
- After the _extends_ line, add this:

```html
{% set entry = data.entries[0] %}
```

- Now, in your `<h1>` tag, replace the text there with this: `{{ entry.title }}`
- On the next line for the data, replace the text "Oct. XX, 2018" with this: `{{ entry.date }}`
- Save your page and go look at it.

Now your text should look like this:

![blog entry 0](../images/static-blog-entry-0.png)

Update your other two entries in a similar way:

- Add the `set entry` code after the extends line, but change the number to `1` for the 19th and `2` for the 20th.
- Update the _page\_title_ block use use `{{ entry.title}}`.
- Update the _page\_description_ block to say, essentially: "Blog entry for _date_, _title_" but use the proper data tags.

## Check your pages

You should now have a site where the dropdown nav links go to three good story pages and the links from the home page content should also work. Check them now. If they are broken, then compare the filenames used in the navigation with the file names of your pages. The only difference should be `.njk` vs `.html`.

---

NEXT: [Clean up and publishing](static-05-publish.md)
