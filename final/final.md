# Your final project

Your goal with this final project is to create a multi-page website using the [icj-project-template](https://github.com/utdata/icj-project-template) that has an index and multiple detail pages. It will be published through Github Pages.

I am supplying you with the idea (a band website for Queen) and assets (images and data). You may add additional images or material, as long as it is public domain material (like from Wikipedia).

## Requirements

The the index should have:
- A short description of the band. You can get this from Wikipedia or other public sources with credit given.
- A listing of all their studio albums. Use the Bootstrap Media Object to display the album cover, title and year of release. You should use a Nunjucks "for" loop from the data provided, similar to the lesson we used in class.
- A list of the original members with links to their detail pages. Again, use a Nunjucks loop using the data provided. Use the Bootstrap [Cards]() object with their image, name and url.

The detail pages should extend a detail layout. The layout should have:
- Two columns, set so they stack on mobile, but become two columns at `sm` and wider.
- Use one column for photo of the band member
- In the other column, include a headline of their name and include other bio information (birthdate, etc.) from the data provided.
- Narrative information from the data provided.
- More information about the member from the data provided.

See the **very important note below** about how to filter data to use just one row of an array.

The project structure should include:

- A base layout that is extended throughout the project.
- A detail layout that is then extended to additional detail pages.
- At least one Nunjucks partial that is included into another layout template. (A good coder would use several.)
- The project must use the following Bootstrap components and concepts:
  - [Responsive images](https://getbootstrap.com/docs/4.1/content/images/)
  - A [Jumbotron](https://getbootstrap.com/docs/4.1/components/jumbotron/) for a header
  - A [Navbar/Navs](https://getbootstrap.com/docs/4.1/components/navbar/) that links to each member
  - The [Media object](https://getbootstrap.com/docs/4.1/layout/media-object/) for the discography.
- You must use at least one scss partial with your Sass code. (A good coder would have several.)
- You must use at least one [Google Font](https://fonts.google.com/).
- This should all be in its own repo, published through Github Pages.

Everything should look beautiful and be functional. Content can be pulled from Wikipedia, but source it properly (i.e. give credit and link back).

## Assets available

To save you time, I've collected a series of images and JSON data about the band members and discography. I've supplied more images than necessary so you can choose ones you like.

Available for you to use:

- A [data.json]() file with a "members" array about band members, and a "discography" array for the list of albums. NEEDS LINK.
- A collection photos divided into three parts. Band photos, band members, and album covers. NEEDS LINK.
- You can harvest (and credit) other information from Wikipedia or other public domain sources.

An original [spreadsheet](https://drive.google.com/open?id=1rT71c8CXtx3x2ak6nawjpAGukLNLo1lrbLuvjvZ9zFE) of member information and discography was used to create the JSON using the [csv2json](https://www.csvjson.com/csv2json) site.

## Deadlines

Canvas is the final word on deadlines, but in general there are in this order:

- A sketch of your index and detail layouts
- Working HTML templates
- Functioning data; start on CSS changes
- In-class presentation of progress on last day
- Final deadline
