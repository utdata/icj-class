# Functions with flow control

NOT DONE YET!!!!!!!!

Now that we have a handle on how functions can work, we're going to have our functions make decisions based on values we've given it.

Let's take our `makeName` function we made before and make it mo betta.

As you recall, our function would take three names and put them together and return a full name. What if our user only gave us their middle initial? Then we would have returns like Arthur C Clarke.

How might we test if the middle name is an initial? And then what might we do if that test is true, and what if it is false?

## Refactoring our code

- Make a copy of our `makeName` function and then rename is `makeBetterName`
- Add a console.log with a new name combination and test it so you know it works.

```js
// Make a name with middle initial
function makeBetterName(firstName, middleName, lastName) {
  var fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}

console.log(makeBetterName("Joan", "Marie", "Larkin"));
```

Now, let's add some logic ....

IS STOPPED HERE.



<!-- **Bonus** using your function from earlier that joins names: can you write a function that knows to put a period after the middle name if it's only one character long? Hint: try testing the `.length` property using an `if` statement -->

### Flow control functions on your own

1. Write a function that takes two scores - `home` and `away` - and logs a message to the console saying either **"The home team won"** or **"The away team won"**
2. in your code, call it twice to make sure it's working - once for a time when when the home wins and once for when it loses
3. what if it's a tie? use `else if` to handle ties and call it again to make sure it works

