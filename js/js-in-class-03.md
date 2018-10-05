# Functions with flow control

Now that we have a handle on how functions can work, we're going to have our functions make decisions based on values we've given it.

Let's take our `makeName` function we made before and make it mo betta.

As you recall, our function would take three names and put them together and return a full name. What if our user only gave us their middle initial? Then we would have returns like Arthur C Clarke.

How might we test if the middle name is an initial? And then what might we do if that test is true, and what if it is false?

## Refactor makeName to makeBetterName

- Add a console.log with the text "Making better name function:".
- Make a new function called `makeBetterName` that takes three arguments, `firstName`, `middleName` and `lastName`.

### Make the test

The first thing we need do with our new, better function is test if our `middleName` object is only a single letter. We can do that by testing its `.length` property. You might [look up the length property](https://www.google.com/search?q=javascript+length+property&oq=javascript+length+prop).

We'll use an `if/else` to do this test. Let's talk about how those work in JavaScript. Written in one line, the logic works like this:

`if (perform the test) {do this if true} else {do that if false}`

1. For our (do the test), we want to check if the length of middleName is one character.
2. For our {do this if true} we will just `return true;`, which will write the word "true" to the Console.
3. For out {do this if false} we will just `return false;`, which will write the word "false" to the console.

- Add the if statement below to your `makeBetterName` function.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    return true;
} else {
    return false;
  }
}
```

OK, now that we have a test, we need to test it. And we need test for both true and false conditions, so we really need two tests.

- Add these tests after your function.

```js
console.log(makeBetterName("Joan", "Marie", "Larkin"));
console.log(makeBetterName("Donald", "F", "Trump"));
```

- Save your files and test in your browser to make sure you are getting `true` and `false` in the right order for your tests.

### Return if true

Now let's update our true statement to build the name we want. Let's outline the logic of what we need to do:

1. Add a period to the end of our `middleName` variable.
2. Create a fullName that is the combination of the other names.

So the first thing we need to do is modify our `middleName`. That's easy enough with string concatenation. Because `middleName` is an argument for our function, it is already instantiated as a variable, and it is only available inside the function. So, we can just modify it and then return the value out of the function.

- In the "true" part of the function, add a line to modify `middleName` to add the period. Code is shown below.
- Update the return statement to return `middleName`.
- Save and refresh your browser to check it. You should be getting back the middle initial and period if true, and "false" if false.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    // adding and updating here
    middleName = middleName + ".";
    return middleName;
} else {
    return false;
  }
}
```

OK, now let's build the `fullName` field. This is just like we did with our `makeName` function. We don't have a variable called `fullName` available yet, so we'll instantiate it using `let`.

- After the line modifying `middleName`, add a new line that creates a new variable `fullName`, and assigns it the values all the names, etc.
- Update the return string to return the `fullName` variable.
- Save it and test it. Code is shown below.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    middleName = middleName + ".";
    // adding and updating:
    let fullName = firstName + " " + middleName + " " + lastName;
    return fullName;
} else {
    return false;
  }
}
```

OK, the hard part is done. Now we just have to write the false part, which is to just build the `fullName` based on the existing arguments.

One weird thing here ... it might look like we are instantiating the `fullName` variable again with `let` because it is in the "true" part of the code, but remember that part is NOT RUN IF IT IS FALSE, so we really are doing `let fullName` for the first time.

- Update the `else` part of the function to create a `fullName` variable, and assign it the name parts.
- return `fullName`. Finished code is below.
- Test it!

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    middleName = middleName + ".";
    let fullName = firstName + " " + middleName + " " + lastName;
    return fullName;
} else {
    // modifications here
    let fullName = firstName + " " + middleName + " " + lastName;
    return fullName;
  }
}
```

## Flow control functions on your own

1. Write a function that takes two scores - `home` and `away` - and logs a message to the console saying either **"The home team won"** or **"The away team won"**
2. In your code, call it twice to make sure it's working - once for a time when when the home wins and once for when it loses
3. What if it's a tie? Refactor you code to use `else if` to handle ties and call it again to make sure it works.

