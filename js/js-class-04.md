# Bringing HTML, JavaScript together

As we have worked on JavaScript in class, it has been a bit academic ... there has been no action on our web page. Let's change that, and marry our JavaScript to our HTML and make our our page do something.

## The Document Object Model

JavaScript is aware of all the HTML on your web page, and they all become JavaScript **objects**. This process, called the Document Object Model -- or DOM, for short -- is a standard for how to get, change, add, or delete HTML elements using JavaScript.

The DOM allows us to connect our JavaScript functions to HTML or CSS on the page.

## Our goals

We are making a form that allows a use to enter their first, middle and last name, and when they press a button it will display the full name on the page. And overview of steps:

1. Create a new html page
2. Add some basic form elements and a button.
3. Copy our `makeBetterName` function from our previous exercise
4. Modify that function and connect it to our forms elements and buttons.

Now let's get down to the detail.

## Create our page

- Inside the same repo we have been working, create a new file called `form.html` and open it in VS Code.
- Enter the HTML5 boilerplate code. Remember that you an use Emmet to create this by typing `html` and then use the dropdown to choose `html:5`.
- Into the body of the document, add the following HTML code. I'll explain afterward:

```html
<form id="nameForm">
  <p>First name: <input type="text" name="first" value="Aragorn"></p>
  <p>Middle name: <input type="text" name="middle" value="Elessar"></p>
  <p>Last name: <input type="text" name="last" value="Telcontar"></p>
  <input type="button" value="Make name">
</form> 

<h3 id="name">Name will go here</h3>
```

- Save your file and open your page in a browser.

We've introduced several new HTML elements here that we haven't used before.

- [Forms](https://www.w3schools.com/html/html_form_elements.asp) provide a way for HTML pages to collect collect user input. We've given our form and id of `nameForm` so we can target it later.
- [Input](https://www.w3schools.com/html/html_form_input_types.asp) it defines how we can provide the input. We have three inputs with `type="text"`, which gives us a text box. We have given each a `name` attribute, which we can access as a "property" of the form element with JavaScript. We also defined a default `value` to display text until we type something else in.
- Lastly, we have a `type="button"` input, which we will use to fire our JavaScript function. (If you click on the button now, it doesn't do anything. Yet.)

## Copy our function

- Create a new script tag under the HTML we added, but just before the closing `</body>` tag.
- Let's add a copy of our `makeBetterName` function into `form.html` inside the script tag.

It script should look like this:

```html
<script>
function makeBetterName (fName, mName, lName) {
  if (mName.length === 1) {
    let fullName = fName + " " + mName + ". " + lName;
    return fullName;
  } else {
    let fullName = fName + " " + mName + " " + lName;
    return fullName;
  }
}
</script>
```

## Modify our function

There are couple of logic changes we need to make to our function to work with our form.

- Instead of us sending name values into the function with console.log, we need the function to grab the values from our text inputs in the form.
- Instead of returning our fullName value to the console.log, we want to replace the text in our `<h3>` tag so we can see it happen on the page.

### getElementById

Using the [Document Object Model](https://www.w3schools.com/js/js_htmldom_elements.asp), we can find any named element on our HTML page. Once we "have" that object, we can find it's various properties, like how long it is, or the contents of the tag, etc.

The easiest way to do this is with `document.getElementByID("id_name_here")`. Once we have "have" the element, we can access its properties and methods. Using this, we can "get" the contents of the forms and put them into variables in our function.

(If time: It might be worth showing in class how to use the Console to test how to access the DOM using `document.getElementByID().`)

- In our `makeBetterName()` function, remove the three arguments inside the parenthesis.
- Add the following three lines before the IF in your `makeBetterName` function:

```js
let fName = document.getElementById("nameForm").first.value;
let mName = document.getElementById("nameForm").middle.value;
let lName = document.getElementById("nameForm").last.value;
```

What we are doing here is instead of feeding our names into the function through arguments, we are using `document.getElementByID` to find and get the "nameForm" element, and then we are accessing each input by its "name" property (i.e. `.first`). The property `.value` gives us the text of that is inside that input.

- Now, after the function, add a console.log that calls the function, but don't feed it names like we did before:

```js
console.log(makeBetterName());
```

You should be able to save your file, refresh your browser and see King Aragorn's name in the Console.

OK, we've solved our first challenge of pulling the names from our fields. Now let's update our `<h3 id="name">` from our fuction.

### innerHTML

We can not only pluck the value of a filed with `getElementByID`, but we can also change existing text by using the [`.innerHTML` property](https://www.w3schools.com/js/js_htmldom_html.asp).

- In the "ELSE" part of our `makeBetterName` function, replace the "return fullName" line with this:

```js
document.getElementById("name").innerHTML = fullName;
```

- Save your file and refresh yor page, and now the `<h3>` tag (which had `id="name"`) that used to say  "Name will go here" should now have our default form text: "Aragorn Elessar Telcontar".

We used the same DOM property `getElementByID` to identify the HTML element we wanted, but this time we used the `.innterHMTL` property by assigning to it the contents of our `fullName` variable.

- Go ahead and replace the `return fullName` line in the IF portion of the function with the same innerHTML line above, so it will work later when we have a single-letter middle name.

### Hooking up the button

Our function is working like we want, but it's being called each time we refresh the page, and not when we click the button, so let's fix that. We do so by removing our console.log line, and then adding an "onclick" attribute to our button.

- Remove the `console.log(makeBetterName())` line that we added earlier to test the function.
- In form in the HTML body, update the input button to the following:

```html
<input type="button" value="Make name" onclick="makeBetterName()">
```

- Save your file and refresh the page.
- Click the "Make name" button and it should update the `<h3>` tag.
- Put your own names into the text boxes and hit the button and it should change the headline.
- Now that the form is working, you might remove the default values for King Aragorn in the names.

---

[Part 5](js-class-05.md)
