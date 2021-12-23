# Functions with flow control

Now that we have a handle on how functions can work, we're going to have our functions make decisions based on values we've given it.

## Conditional statements

With JavaScript we can perform tests and make decisions based on the results of the test. There are [three types](https://www.w3schools.com/js/js_if_else.asp), in order of complexity:

- An `if` statement allows us to perform an action if the test is true.
- An `else` statement allows us to add an action if the test is false.
- An `else if` statement allow us to perform a new test if the first `if` is false.

There is also `switch`, but we're not going to cover that here.

## Let's create a better name function

Let's take our `makeName` function we made before and make it mo betta.

As you recall, our previous function would take three names and put them together and return a full name. What if our user only gave us their middle initial? Then we would have returns like "Arthur C Clarke".

How might we test if the middle name is an initial? And then what might we do if that test is true?

Well, we know we can find out how long a string is with the property `.length`. If our middle name is only one character, then it would be an initial, right?

We'll start by building our base function, then we'll build on it to make it better.

1. Add a console.log with the text "Making better name function:". This is just so we can see where this code starts working on our console.
1. Make a new function called `makeBetterName` that takes three arguments, `firstName`, `middleName` and `lastName`.
1. Inside that function we create a variable called `fullName` and take our inputs to make our name.
1. Return `fullName` out of the function.

```js
// Just a log to show in our Console
console.log("Making a better name function:");

// A better name function to fix middle initials
function makeBetterName(firstName, middleName, lastName) {
  let fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}
```

So we've made yet another name machine like your last homework. It's OK if you've already used these variable names in your other code because these are only used _inside_ of this function, another example of Scope.

OK, now we need to use the function so we can see the return. We need test for both true and false conditions, so we really need two tests. This time we're going to call the `makeBetterName` function right inside of some `console.log`s instead of creating variables first.

1. After your function closes (the last `}`), add these console.log tests:

```js
console.log(makeBetterName("Joan", "Marie", "Larkin"));
console.log(makeBetterName("John", "F", "Kennedy"));
```

1. Save your code and refresh your page so you can see the name. "John F Kennedy" needs the period after the initial, which we'll tackle with an `if` statement.

### Make middle initial test

To figure out if our `middleName` object is a single letter we can test its `.length` property. You might [look up the length property](https://www.google.com/search?q=javascript+length+property&oq=javascript+length+prop) to get a further explanation of it, but basically it counts the characters of the object.

We'll use an `if` to do this test. Let's talk about how those work in JavaScript. Written in one line, the logic works like this:

`if (perform the test) {do this if true}`

- For our (perform the test), we want to check if the length of middleName is one character.
- For our {do this if true} we will just `return true;`, which will write the word "true" to the Console for how.

1. Update your `makeBetterName` function to add the `if` statement below to your  function and include the `return false;` after the if statement.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    return true;
  }
  let fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}
```

Note the test here: `middleName.length === 1)`. We checking the **length** of `middleName` and testing if the value is "1", which would indicate a middle initial. Note that we use three equal signs `===` to test for truthiness.

1. Save your files and test in your browser to make sure you are getting Joan's name or a `true` value for John's "F".

### Add period if true

Now let's update our true statement to fix our middle name. Here is conceptually what we need to do: If our `middleName`is one character, then add a period to the end.

If your `middleName` is one character we can use string concatenation reset the `middleName` to itself plus the period. Because `middleName` is an argument for our function, it is already instantiated as a variable, and it is only available inside this function. So, we can just modify it and then return the value out of the function.

1. In the `if` part of the function, replace the `return true` with a line that modifies the `middleName` variable to add the period. Code is shown below.
1. Update the return statement to return `middleName`.
1. Save and refresh your browser to check it. You should be getting back the middle initial and period if true, and "false" if false.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  if (middleName.length === 1) {
    // adding and updating here
    middleName = middleName + ".";
  }
  let fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}
```

Add another console.log with another name that uses a middle initial and make sure that works, too.

## Using else and if else

Using a single `if` conditional is pretty straight-forward, but what if you want to perform a different action if the test fails? That's what we'll tackle next.

I'm going to give you a function that tests which of two scores is higher and returns text with the answer. It has both an `if` and an `else`. I'll explain it, then give you a challenge to improve it.

1. Add this code to your script tag, save and refresh your browser to see the console results. 

```js
  console.log("scoreCompare function");
  function scoreCompare(home, away) {
    if (home > away) {
      return "Home team wins!";
    } else {
      return "Away team wins :("
    }
  }
  console.log(scoreCompare(5,3));
  console.log(scoreCompare(3,5));
```

Let's walk through this line by line:

- The first line is just a console log so you can see it in your browser.
- The next line sets up the function called `scoreCompare` and it takes two arguments: `home` and `away`.
- The `if` statement compares the home and away values, and if the home value is higher it returns the text "Home team wins!?
- If the `if` statement is false, then the `else` kicks in and the function returns the text "Away team wins :(".
- The two console logs at the bottom call the function with differing values.

That is all well and good if the game doesn't end in a tie, but I'm a soccer fan and games often end in a tie. So here is your charge:

1. Review the W3Schools tutorial on [if, else and else if](https://www.w3schools.com/js/js_if_else.asp) or any other source you like and improve the function above to handle ties. Make it print "It was a tie" if the home and away scores are the same. Your big hint here is you have to do two tests, so you need to add an `else if` to the function.
2. Make sure you add a new console log with the same home/away values to test your work.

## Commit your work to Github

Go ahead and save and commit your work and push it to Github so I can see your progress at this point.

---

[Part 5: Bringing it together](js-class-05.md)
