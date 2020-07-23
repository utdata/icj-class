# Functions in JavaScript

Functions allow you to reuse code and be more efficient in your programming.

If you know you'll be doing the same math over and over, you can build that into a function, and then pass in the numbers that you want calculated and return the result.

Let's look at an example:

```js
/*
If you had a function that took two arguments and returned their difference ...
*/
function subtractionMachine(argument1, argument2) {
  let newValue = argument1 - argument2;
  return newValue;
}

/*
We can create a variable "difference" and set it to the result or "return"
of the subtractionMachine function. In this case below, we are giving the
subractionMachine the "arguments" of 5 and 3.
*/
let difference = subtractionMachine(5, 3);

/*
You can the log the function's value by logging the variable ...
*/
console.log(difference);

/*
If I didn't want to create a variable firs, I can 
log the "return"ed value directly:
*/
console.log(subtractionMachine(5, 3));
```

## Let's do it

You can use the same `yourname-javascript` repo and files for this lesson that that we used for our first JavaScript lesson. We'll just keep writing in the same file and script tag.

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

- In your code, call your function to make sure it works, logging the returned value to the console. For example:

```js
  let try01 = makeSquare(3);
  console.log(try01);
```

- Call the function two more times with a different value.

BONUS: Update your function to use [JavaScript's Math Object](https://www.w3schools.com/Js/js_math.asp) to perform the squaring.

### OK, so a wee bit on scope

One thing of note ... the variable that was declared inside the function, `squared`, cannot be referenced outside the scope of the function. If we try to add `console.log(squared)` outside the function, we would get an error. Again, [read more about variables and scope here](https://wesbos.com/javascript-scoping/).

## Functions on your own

- Add a comment with the intent of your function `// Functions on my own`.
- Write another function (and name it anything you want, but I named mine `makeName`) that takes three arguments -- `firstName`, `middleName` and `lastName` -- and uses the `+` operator to combine the three arguments to form a full name. Make sure you add spaces (' ') in between the arguments so the returned value doesn't look like ChristianClayMcDonald, or whatever.
- In your code, call the function with three different sets of names to make sure it works and log the returned value to the console each time.
- For one of those names, I want you to use Robert "Beto" O'Rourke. Note that  his name has both a single quote and double quotes, so you will have to escape one or the other depending the quote style you used in your function.

## Save it

- Commit your changes to Github. It's important to commit and push to Github so I can see your changes at this point.

---

[Part 3: Objects](js-class-03.md)
