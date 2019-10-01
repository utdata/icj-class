# Using DataTables

For this lesson, you're going to use the DataTables jQuery plug-in to take an HTML table and make it interactive. The HTML page below has a table on it that you can use as a starting point.

jQuery is a framework that makes it easier to use JavaScript. It's particularly useful for simply traversing the DOM in an HTML page. Because of this, there are a number of tools and plug-ins written in jQuery.

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

### #1: "Zero configuration"

- Create a new file in your javascript folder called `datatable.html` and add the basic HTML5 boilerplate.
- Go to the DataTables home page (https://www.datatables.net/) and click the link for "Examples".
- On the Examples page, choose the "Zero configuration" example under "Basic initialisation".
- On the page with the example you'll see tabs below the table for "JavaScript", "HTML" and "CSS" with the code you need. However, there are some assumptions in the instructions, so listen up:
    + Start with the **HTML** box. Take the contents of that box and put it in your HTML page between the `<body>` tags. Go ahead and look at your page so you will see how it changes later.
    + Go back to the **JavaScript** box. The contents of that box should go inside a `<script></script>` tag at the bottom of your HTML page before the close of the `</body>` tag.
    + The links that are displayed below the JavaScript box are src URLs that should go in `<script src=""></script>` tags in the `<head>` of your page. Make them both.
    + On the CSS box, that is the src link that should go in a `<link rel="stylesheet" href="">` tag, also in the `<head>` tag of your page.

To recap, there will be three new lines in your `<head>` tag, something like this:

```html
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
```

Then you'll have all the table code inside your `<body>` tag.

Then you'll have a script tag at the bottom to call Datatables:

```html
  <script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
  </script>
```

That's it! You should be able to open that page in your browser and see an interactive table. Commit the file to your Github repository.

### #2: "Scroll Vertical"

1. Create a copy of the HTML file you created above and call it `scrolling.html`. 
2. Go to the "Scroll Vertical" example: https://www.datatables.net/examples/basic_init/scroll_y.html. Replace your JavaScript in the new HTML file you just created (_scrolling.html_) with the JavaScript on the "Scroll Vertical" example page.
3. You should now have a table that isn't paginated and instead can be scrolled through, just like the example on the DataTables website.
3. That's it! Commit the new file to your repository and publish the repository on Github.

Post the link to your repository on Canvas.