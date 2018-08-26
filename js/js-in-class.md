# JavaScript homework 1

Setup a new, empty private Github repository for today's assignment. You'll need an HTML5 boilerplate, and the [W3's](https://www.w3schools.com/html/html5_intro.asp) file will suffice.

Place all of the code for the below steps in the same HTML file in a single `<script>` tag. Mark the answers for each question using JavaScript's comment syntax:

```js
// This is a comment
/* This is a comment, too */
var somecode = 'this code';
```

### Math exercises
1. Create a new variable `x` and set it to `5`. Log `x`'s value to the console.
2. Create a new variable `y` and set it to `3`. Log `y`'s value to the console.
3. Create a new variable `z` and set it to `x` multiplied `y`, using the `x` and `y` variables (don't just use the numbers 3 and 5). Log `z`'s value to the console.
5. Repeat steps 1 through 4 with addition (`+`), subtraction (`-`) and division (`/`) using **new** variable names and values.
8. Commit your changes to Github.

### Strings exercises
1. Create separate variables (call them whatever you want) for your first, middle and last name. Log each of them to the console.
2. Use string concatenation (`+`) to join the variables you just created into a new variable called `name`. Make sure to include spaces between each name part. Log it to the console.
3. Join `name` together with the string `'my name is'` into a new variable, `statement`, so its new value is *my name is YOUR NAME*. Log that new value to the console.
4. Use the `statement` variable from step 3 to create a new variable, `greeting`, that has the value *Hi, my name is YOUR NAME*. Log the greeting to the console.
5. Commit your changes to Github.

### Function exercises
1. Write a function that takes a single argument - a number - and squares it, then uses `return` to return the squared number. You can name the function whatever you want. Be sure to call it in the developer console to make sure it works.
2. In your code, call your function three times with three different numbers to make sure its works, logging the returned value to the console each time. For example:
    ```js
    /* If you had a function that took two arguments and returned their difference ... */
    function yourFunction(argument1, argument2) {
      var newValue = argument1 - argument2;
      return newValue;
    }

    /* You would call it in your code by passing it the required arguments.
    If you used "return" in your function, then the "difference" variable
    below should be set to the value you "return"ed in your function */
    var difference = yourFunction(5, 3);

    /* You can the log the function's value by logging the variable ... */
    console.log(difference);

    /* ... or you can log the "return"ed value directly: */
    console.log(yourFunction(5, 3));
    ```
3. Write another function that takes three arguments - `firstName`, `middleName` and `lastName` - and uses the `+` operator to combine the three arguments to form a full name.
4. In your code, call the function with three different sets of names to make sure it works and log the returned value to the console each time.
5. Commit your changes using the Github app.

<!--
### `if` exercises
1. write a function that takes two scores - `home` and `away` - and logs a message to the console saying either **"The home team won"** or **"The away team won"**
2. in your code, call it twice to make sure it's working - once for a time when when the home wins and once for when it loses
3. what if it's a tie? use `else if` to handle ties and call it again to make sure it works
4. **Bonus** using your function from earlier that joins names: can you write a function that knows to put a period after the middle name it it's only one character long? Hint: try testing the `.length` property using an `if` statement
-->