# Using DataTables

For this lesson, you're going to use the DataTables jQuery plug-in to take an HTML table and make it interactive. The HTML page below has a table on it that you can use as a starting point. You need to:

jQuery is a framework to help make writing in javascript easier. It's particularly useful for simply traversing the DOM in an HTML page. Because of this, there are a number of tools and plug-ins written in jQuery.

The purpose of this exercise is to show that you can use many of the tools quickly with just a little JavaScript knowledge.

## Let's talk about tables

Before we jump into this, let's take some time to look at [HTML Tables](https://www.w3schools.com/html/html_tables.asp) by comparing the [first "Try it" example](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table) on the W3 Tutorial site to [this "Try it" example](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_headings_left).

Like other elements we have dealt with there is an HTML structure that is the skeleton of the table, and then the display of that element can be enhanced using CSS.

Tables are great for displaying tabular data (hence the word table). But often those tables can get really long, and we can help make them more useful to readers by adding JavaScript to make them sortable and filterable, sort of like a spreadsheet.

## Goals of this lesson

1. Add the required DataTables files to an HTML page (there's a CSS file and a JavaScript file, which we'll handle in the first problem below.)
2. Call DataTables on your table using the example JavaScript provided on the DataTables website

## The steps

The steps below will walk you through using the DataTables plug-in to make an interactive table. If at any point you get an error in your Console, stop before moving on to the next step. Each step is dependent on the step before.

Start with a new Github repository called _yourname-datatable_.

### #1: "Zero configuration"

1. Create a new file in your repository called `my-table.html` and add the basic HTML5 boilerplate.

2. Go to the DataTables home page (https://www.datatables.net/) and click the link for "Examples".

3. On the Examples page, choose the "Zero configuration" example under "Basic initialisation".

4. On the page for the example (https://www.datatables.net/examples/basic_init/zero_configuration.html) you'll see tabs below the table for "JavaScript", "HTML" and "CSS". Add the DataTables JavaScript file listed under "JavaScript library files" to your page using a `<script>` tag:

```html
<script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
```

5. On the "CSS" tab copy the link to the DataTables CSS file and add it to your page in a `<link>` tag in the `<head>`:

  ```html
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
  ```

6. Finally, copy the JavaScript from the "JavaScript" tab into a `<script>` tag on your page anywhere below the other `<script>` tags added in earlier steps.

7. That's it! You should be able to open that page in your browser and see an interactive table. Commit the file to your Github repository.

### #2: "Scroll Vertical"

1. Create a copy of the HTML file you created above and call it _scrolling.html_. 
2. Go to the "Scroll Vertical" example: https://www.datatables.net/examples/basic_init/scroll_y.html. Replace your JavaScript in the new HTML file you just created (_scrolling.html_) with the JavaScript on the "Scroll Vertical" example page.
3. You should now have a table that isn't paginated and instead can be scrolled through, just like the example on the DataTables website.
3. That's it! Commit the new file to your repository and publish the repository on Github.

Post the link to your repository on Canvas.