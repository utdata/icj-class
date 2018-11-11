# Your final project

Your goal with this final project is to create a multi-page website using the [icj-project-template](https://github.com/utdata/icj-project-template) that has an index and multiple detail pages. It will be published through Github Pages.

I am supplying you with the idea (a band website for Queen) and assets (images and data). You may add additional content and images, as long as they are public domain material (like from Wikipedia).

## Requirements

### Index page

The the index should have:

- A short description of the band. You can get this from Wikipedia or other public sources, but please source it properly.
- A listing of all their studio albums from the data/images provided. Use the Bootstrap [Media List](https://getbootstrap.com/docs/4.1/layout/media-object/#media-list) object to display the album cover, title and year of release. You should use a Nunjucks "for" loop from the data provided, similar to the lesson we used in class.
- A list of the original members with links to their detail pages. Again, use a Nunjucks loop using the data provided. Use the Bootstrap [Cards]() object with their image, name and url.

### Detail pages

Each band member page should extend a detail layout.

Be sure to read the **very important note below** about how to filter data to use just one row of an array.

The layout should have:

- Create two columns, set so they stack on mobile but become two columns at `sm` and wider.
- In those two columns, you should have (all from data provided):
  - Photo of the band member
  - Headline of their name
  - Bio information (birthdate, etc.)
  - Narrative about the member

You can design or organize the above however you wish.

## Project structure and helper notes

The project structure should include:

- A base layout that is extended throughout the project.
- A detail layout that is then extended to additional detail pages.
- At least one Nunjucks partial that is included into another layout template. (A good coder would use several.)
- The project must use the following Bootstrap components and concepts:
  - [Responsive images](https://getbootstrap.com/docs/4.1/content/images/)
  - A [Jumbotron](https://getbootstrap.com/docs/4.1/components/jumbotron/) for a header
  - A [Navbar/Navs](https://getbootstrap.com/docs/4.1/components/navbar/) that links to each member
  - The [Media list object](https://getbootstrap.com/docs/4.1/layout/media-object/#media-list) for the discography.
- You must use at least one scss partial with your Sass code. (A good coder would have several.)
- You must use at least one [Google Font](https://fonts.google.com/) somewhere.
- This should all be in its own repo, published through Github Pages.

Everything should look beautiful and be functional. Content can be pulled from Wikipedia, but source it properly (i.e. give credit and link back).

## Assets available

To save you time, I've collected a series of images and JSON data about the band members and discography. I've supplied more images than necessary so you can choose ones you like.

Available for you to use:

- A [data.json](data.json) file with: A "members" array about band members and A "discography" array for the list of albums. Put this in `src/njk/data`.
- A [collection photos](img.zip) divided into three parts. Band photos, band members, and album covers. Put this folder inside `src/assets/`.
- You can harvest (and credit) other information from Wikipedia or other public domain sources.

To create the `data.json` file, I organized the information in a [Google spreadsheet](https://drive.google.com/open?id=1rT71c8CXtx3x2ak6nawjpAGukLNLo1lrbLuvjvZ9zFE) and then used this [csvjson](https://www.csvjson.com/csv2json) site to convert to JSON.

## Important notes about using data

There are two "collections" of data in the `data.json` file provided: "members" and "discography". On you index, you should use a Nunjucks `{% for member in members %}` loop like the books example to create your list of members and studio albums.

You can (and should) also use the "members" collection for your band member detail pages and save a lot of extra coding. It works like this:

On your `detail.njk` layout you can build your template to use properties from the "members" collection. You can code the whole page in the layout, and use placeholders for the data like this example:

```html
<h1>{{ members.name }}</h1>
```

Then on the page for a specific band member, you can extend the `detail.njk` template then use the Nunjucks [set](https://mozilla.github.io/nunjucks/templating.html#set) tag to filter the data to just a single "row" based on its order in the data. Here is the weird thing, it counts starting at zero. so if you want to use Freddie Mercury's data, and he appears first in the data, you access it using `members[0]`.

Filename `freddie-mercury.html` would have the following content:

```html
{% extends '_layouts/detail.njk' %}
{% set members = members[0] %}
```

Given the above, now the `{{ members.name }}` placeholder carried over from `detail.njk` will display "Freddie Mercury" on his page.

Brian May appears second in the data, but we count from zero so he is position `1`. Create a page `brian-may.html`, extend the `detail.njk` layout, set members to `members[1]` and you'll get "Brian May" for the `{{ members.name }}` placeholder.

## Deadlines

Canvas is the final word on deadlines, but in general they are in this order:

- A sketch of your index and detail layouts
- Working HTML templates with data
- CSS check-in
- In-class presentation of progress on last day
- Final deadline
