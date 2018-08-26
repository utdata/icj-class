# Using DataTables

For this assignment, you're going to use the DataTables jQuery plug-in to take an HTML table and make it interactive. The HTML page below has a table on it that you can use as a starting point. You need to:

1. Add the required DataTables files to the page (there's a CSS file and a JavaScript file, which we'll handle in the first problem below)
2. Call DataTables on your table using the example JavaScript provided on the DataTables website

The steps below will take you through step-by-step how to use DataTables. If at any point you get an error in your console, stop before moving on to the next step. Each step is dependent on the step before.

All of the steps below will be uploaded as a fresh Github repository.

### #1: "Zero configuration"

1. Create a new file in your repository called _zero-configuration.html_.

2. Go to the DataTables home page (https://www.datatables.net/) and click the link for "Examples".

3. On the Examples page, choose the "Zero configuration" example under "Basic initialisation".

4. On the page for the example (https://www.datatables.net/examples/basic_init/zero_configuration.html) you'll see tabs below the table for "JavaScript", "HTML" and "CSS". Add the DataTables JavaScript file listed under "JavaScript library files" to your page using a `<script>` tag:

  ```html
  <script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
  ```

5. On the "CSS" tab copy the link to the DataTables CSS file and add it to your page in a `<link>` tag (just like we do with Bootstrap) in the `<head>`:

  ```html
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
  ```

6. Finally, copy the JavaScript from the "JavaScript" tab into a `<script>` tag on your page anywhere below the other `<script>` tags added in earlier steps.

7. That's it! You should have an interactive table. Commit the file to your Github repository.

### #2: "Scroll Vertical"

1. Create a copy of the HTML file you created above and call it _scrolling.html_. 
2. Go to the "Scroll Vertical" example: https://www.datatables.net/examples/basic_init/scroll_y.html. Replace your JavaScript in the new HTML file you just created (_scrolling.html_) with the JavaScript on the "Scroll Vertical" example page.
3. You should now have a table that isn't paginated and instead can be scrolled through, just like the example on the DataTables website.
3. That's it! Commit the new file to your repository and publish the repository on Github.

Post the link to your repository on Canvas.