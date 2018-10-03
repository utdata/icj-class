
# Functions in JavaScript

Functions allow you to reuse code and be more efficient in your programming.

If you know you'll be doing the same math over and over, you can build that into a function, and then pass in the numbers that you want calculated and return the result.

Let's look at an example:

```js
/*
If you had a function that took two arguments and returned their difference ...
*/
function yourFunction(argument1, argument2) {
  let newValue = argument1 - argument2;
  return newValue;
}

/*
You would call it in your code by passing it the required arguments.
If you used "return" in your function, then the "difference"
 variable below should be set to the value you "return"ed in your function
*/
let difference = yourFunction(5, 3);

/* You can the log the function's value by logging the variable ... */
console.log(difference);

/* Or, you can log the "return"ed value directly: */
console.log(yourFunction(5, 3));
```


## Let's do it

You can use the same repo and files for this lesson that that we used for our first JavaScript lesson. We'll just keep writing in the same script tag.

Let's write a function that takes a single argument - a number - and squares it, then uses `return` to give us back the squared number.

- Add a console.log with the text "Using functions:".
- Add a comment with the intent of your function `// function to make square numbers`. You should always comment a function with its purpose so others and your future self will know what it does.
- Create a new function called `makeSquare` with one argument called `theNumb`:

```js
console.log("Using functions:");

// function to make square numbers
function makeSquare(theNumb) {

}
```

OK, we want our function to do two things:

1. Square our passed-in number and store it in a new variable. To square a number, you multiply it times itself.
2. Return the value of the new variable.

So, inside your function:

- Create a variable (name it what you want) and assign it "theNumb * theNumb".
- return your new variable.

```js
function makeSquare(theNumb) {
  let squared = theNumb * theNumb;
  return squared;
}
```

- In your code, call your function to make sure its works, logging the returned value to the console. For example:

```js
  let try01 = makeSquare(3);
  console.log(try01);
```

- Call the function two more times with a different value, but for one of these call the function directly in the console log, like in our first example function above.

BONUS: Update your function to use [JavaScript's Math Object](https://www.w3schools.com/Js/js_math.asp) to perform the squaring.

### OK, so a wee bit on scope

One thing of note ... the variable that was declared inside the function, `squared`, cannot be referenced outside the scope of the function. If we try to add `console.log(squared)` outside the function, we would get an error. Again, [read more about variables and scope here](https://wesbos.com/javascript-scoping/).

### Functions on your own

- Write another function that takes three arguments -- `first`, `middle` and `last` -- and uses the `+` operator to combine the three arguments to form a full name.
- In your code, call the function with three different sets of names to make sure it works and log the returned value to the console each time.
- For one of those names, I want you to use Robert "Beto" O'Rourke, including the double-quotes around "Beto".
- Commit your changes using the Github app.
