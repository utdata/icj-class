# Bringing HTML, JavaScript together

As we have worked on JavaScript in class, it has been a bit academic ... there has been no action on our web page. Let's change that, and marry our JavaScript to our HTML and make our our page do something.

## The Document Object Model

JavaScript is aware of all the HTML on your web page, and they all become JavaScript **objects**. This process, called the Document Object Model -- or DOM, for short -- is a standard for how to get, change, add, or delete HTML elements using JavaScript.

The DOM allows us to connect our JavaScript functions to HTML or CSS on the page.

## Our goals

We are making a form that allows a use to enter their first, middle and last name, and when they press a button it will display that name on the page. And overview of steps:

1. Create a new html page
2. Add some basic form elements and a button.
3. Copy our `makeBetterName` function from our previous exercise
4. Modify that function and connect it to our forms elements and buttons.

Now we'll explain them in detail.

## Create our page

- Inside the same repo we have been working, create a new file called `form.html` and open it in VS Code.
- Enter the HTML5 boilerplate code. Remember that you an use Emmet to create this by typing `html` and then use the dropdown to choose `html:5`.
- In the body of the document, add the following HTML code. I'll explain afterward:

```html
  <form id="nameForm">
    <p>First name: <input type="text" name="fname"></p>
    <p>Middle name: <input type="text" name="mname"></p>
    <p>Last name: <input type="text" name="lname"></p>
    <input type="button" value="Make name">
  </form> 

  <h3 id="name">Name will go here</h3>
```

- Save your file and open your page in a browser.

We've introduced several new HTML elements here that we haven't used before.

- [Forms](https://www.w3schools.com/html/html_form_elements.asp) provide a what for HTML pages to collect collect user input. We named our form `nameForm` so we can target it later.
- [Input type](https://www.w3schools.com/html/html_form_elements.asp) defines how we can provide the input. The default is a text box, and we have three of those we have named so we can find them later. We also have a `button`, which we will fire our JavaScript function later. (If you click on the button now, it doesn't do anything. Yet.)

## Copy our function

- Create a new script tag under our HTML but before the close of the `</body>` tag.
- Go to your previous lesson file and find your `makeBetterName` function and copy it into `form.html` inside the script tag.

```js
function makeBetterName (fName, mName, lName) {
  if (mName.length === 1) {
    let fullName = fName + ' ' + mName + '. ' + lName;
    return fullName;
  } else {
    let fullName = fName + ' ' + mName + ' ' + lName;
    return fullName;
  }
}
```

## Modify our function

There are couple of logic changes we need to make to our function to work with our form.

- Instead of us sending name values into the function with console.log, we need the function to grab the values from our text inputs in the form.
- Instead of printing to return value to the console.log, we want to replace the text in our `<h3>` tag so we can see it on the page.