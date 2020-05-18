# Filter for member pages

You can (and should) also use the "members" collection for your band member detail pages to save a lot of extra coding. It works like this:

On your `detail.njk` layout you can build your template to use properties from the "members" collection. You can code the whole page in the layout, and use placeholders for the data like this example:

```html
<h1>{{ members.name }}</h1>
```

`members` is the collection. `.name` is the key value you are using from the array.

Then on the page for a specific band member, you can extend the `detail.njk` layout and then use the Nunjucks [set](https://mozilla.github.io/nunjucks/templating.html#set) tag to filter the data to a single "row" based on its order in the data. Here is the weird thing, the order count starts at zero. So, if you want to use Freddie Mercury's data, and he appears first in the data, you access it using `members[0]`.

Filename `freddie-mercury.njk` would have the following content:

```html
{% extends '_layouts/detail.njk' %}
{% set members = queen.members[0] %}
```

Given the above, now the `{{ members.name }}` value carried over from `detail.njk` will display the text "Freddie Mercury" on his page.

Brian May appears second in the data, but since we count from zero he is position `1`. Create a page `brian-may.njk`, extend the `detail.njk` layout, set members to `queen.members[1]` and you'll get "Brian May" for the `{{ members.name }}` value.

## Extra credit

### Billboard hits chart

For extra credit, you can add a bar chart of Queen's Billboard Hits to your project through [Datawrapper](https://www.datawrapper.de/).

- Click "Start Creating".
- Copy and paste this [csv data](queen-billboard-weeks.csv?raw=true) into Datawrapper.
- Double check that the chart matches the csv data.
- Make a bar chart and customize it. Make sure the chart has a title.
- When it's finished, copy the embed code (make sure it's responsive iframe), and paste the code into your html where you want the chart to appear on your page.

### Tour dates table

Another option is to make a [responsive table](https://www.w3schools.com/bootstrap/bootstrap_tables.asp) or a [data table](https://datatables.net/) of Queen's 2020 tour dates.

- Save the file [tour.json](tour.json?raw=true) into your `src/njk/data/` folder and restart gulp so the data is available.
- Use this data to make a table with Queen's 2020 tour dates, cities and venues. Refer to [loops](#loops) for help.

## Extra credit

### Austin murals map

For extra credit, you can add a map of notable murals in Austin to your project through [BatchGeo](https://batchgeo.com/).

- Download this [csv data](AustinMurals.csv?raw=true) by saving the page as a csv file, go back to BatchGeo and drag the CSV file into the box.
- Press "Map Now" and set a title for your map. Enter your email address into the box, and select "Unlisted". 
- Once you click "Save Map", BatchGeo will send you an email with an embed code. Copy that HTML code and paste it wherever you want it to appear on your webpage– you may want it to show up at the bottom of your index page (so paste it in `index.njk`), or you could create a new detail page and put it there.

 

### Activities table

Another extra credit option is to make a [responsive table](https://www.w3schools.com/bootstrap/bootstrap_tables.asp) or a [data table](https://datatables.net/) of fun things to do in the city.

- Save the file [austinactivities.json](austinactivities.json?raw=true) into your `src/njk/data/` folder and restart gulp so the data is available.
- Use this data to make a table with names, dates and addresses of activities to do in Austin. Refer to [loops](#loops) for help. You probably need need to add a "safe" filter (`{{ activity.text | safe }}`) in one of your loops to convert the HTML and make your hyperlinks in the text work.
