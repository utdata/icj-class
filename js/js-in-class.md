# JavaScript in-class

JavaScript is the programming language of the browser. We're going to practice using JavaScript by manipulating numbers, strings and making functions and seeing the result in our browser Console.

I'll be using Chrome in class, so it might be helpful to do so yourself. Safari, Firefox and Edge do work and have all the tools necessary, but it might be easier to follow along if you use Chrome.

## Get set up

- Set up a new, Github repository (with a README.md file) called "yourname-javascript" for today's assignment. Clone it to your local machine inside your `/icj/` folder.
- You'll need to create a new HTML file (call it js-practice.html) with the HTML5 boilerplate, and the [W3's](https://www.w3schools.com/html/html5_intro.asp) file will suffice.

We will be typing all our code between a `<script>` tag inside the body of that page. Mark the answers for each question using JavaScript's comment syntax:

```html
<script>

// This is a comment
var somecode = 'this code';

/*
FYI that this is a comment, too
but it can be on more then one line
*/

</script>
```

You'll test all of our code by opening this page with a browser window and then looking at the Inspector's Console window. The Console is one way we can interact with JavaScript in a browser, and vise versa.

Let's log some text to the Console so you can see it work.

- Between the script tags, on a line by itself:

```js
console.log("Let's do math:");
```

- Save your `js-practice.html` file.
- Open that page in your browser. It should be blank.
- Open your Inspector. Easiest way in Chrome is to Control-click on the blank page and choose Inspector in the contextual menu.
- Click on the Console tab. It should look like this:

![console](../images/js-show-console.png)

Note we used double-quotes to signify our string. Just so you know, we could use single quotes if we are consistent, but then we would've needed to escape the single quote in the text as `Let\'s`.

## Writing to the console

- Use `let` to create a new variable `x` and set it to `5`. Log `x`'s value to the console.

```js
let x = 5;
console.log(x);
```

- Save your html page, then refresh your browser and you should see your console update to include the "5" in the log.

The browser will act on all our code written in JavaScript, in the order that we write it. You don't actually see it happen, unless there is some result for you to see. We are using `console.log` to see that result.

We could actually type those commands into the browser Console, but anything we do would not be saved when the browser is refreshed.

### var vs. let vs. const

Variables are the placeholders ... containers that hold information. Their purpose is to label and store data that can then be used in your program. By providing a variable with a descriptive name, our programs can be understood more clearly by others and our future selves.

Remember how the Codecademy lesson showed you two ways to declare variables in JavaScript: `let` and `const`? Well, those are relatively new ways of declaring variables, introduced in in 2015 with ES6, a version of Javascript mostly-but-not-yet-fully implemented in browsers. Before ES6, we used `var` to declare variables, and the method is still part of ES6, but it wasn't fully explained in Codecademy.

Here are the very simplified differences between these three ways of declaring a variable:

- If you declare a variable with `var`, you can re-declare it later and doing so will change its value.
- If you declare a variable with `let`, you can change it's value later, but you can't re-declare it. If you try, you will get an error. This is usually good, because it tells you the variable was already in use.
- If you declare a variable with `const`, you can't change its value later or re-declare later.

You can also declare a variable without using any of those, but by just assigning a value to term. `x = 5`. DON'T DO IT. It is not good practice, as you can overwrite global variables already in play, no matter where it is called. This is "scope" and there is a lot more to it. You can [read more about calling variables in scope](https://wesbos.com/javascript-scoping/), but I don't want to get bogged down with it here.

In our example above, we used `let` to declare a variable that we called "x", and then we assigned that variable to the value "5".

When we used `console.log` to print log our variable "x" to the screen, it returned our value: 5.

We're going to use `var` to declare variables for the rest of this lesson.

## Let's do some math in JavaScript

- Use `var` to create a new variable `y` and set it to `3`. Log `y`'s value to the console.

```js
var y = 3;
console.log(y);
```

- Save your file and refresh your browser to make sure it worked.

- Create a new variable `z` and set it to `x` multiplied `y`, using the `x` and `y` variables (don't just use the numbers 3 and 5). Log `z`'s value to the Console. The character `*` is our your multiplication tool.

```js
var z = x * y;
console.log(z);
```

### Math on your own

- Add a JavaScript comment called "Math on my own".
- Repeat that last steps, but use addition (`+`), subtraction (`-`) and division (`/`) using **new** variable names (not `z`) and values. These are three different new things, each logged to the Console.
- Make sure they worked in your browser.
- Commit your changes to Github.

## Working with strings

- Add a new console log with the text "Working with strings:".
- Create separate variables for your first, middle and last name. Log each of them to the console.

(You can call the variables whatever you want, but note that convention is if your variable is more than one name, you should use camelCase, meaning the first letter of the variable name is lowercase, but you would uppercase the first character of other words in the variable name.)

```js
console.log("Working with strings:");

var firstName = 'Christian';
var middleName = 'Clay';
var lastName = 'McDonald';
```

- Use string concatenation (`+`) to join the variables you just created into a new variable called `name`. Make sure to include spaces between each name part. Log it to the console.

```js
var name = firstName + " " + middleName + " " + lastName;
console.log(name)
```

OK, we now have created a variable that has your entire name, built from other variables.

### Strings on your own

- Add a JavaScript comment with the text "Strings on my own".
- Join `name` together with the string `'My name is'` into a new variable, `greeting`, so its new value is *my name is YOUR NAME*. Log that new value to the console.
- Commit your changes to Github.
