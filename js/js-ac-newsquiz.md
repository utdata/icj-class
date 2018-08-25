# Let's make a news quiz

Today you're going to make a news quiz with jQuery. You're going to use:
- HTML forms to provide form inputs for users to enter their answers into
- jQuery events to react to user input
- `if`/`else if`/`else` conditional statements to grade the quiz

Here are some reminders about syntax/usage to help you along the way:
1. You can use `on` to "listen" for events and respond by firing a function:
    ```js
    $('#my-element').on('click', function() {
        alert('Someone clicked my element!!');
    });
    ```

2. You can use `val()` to access or change the value inside an `<input>` element:
    ```html
    <input id="an-element" type="text />
    <script>
      // Get the value of an input
      var inputsVal = $('#an-element').val();
      // Set the value of an input
      $('#an-element').val('New value');
    </script>
    ```

3. You can use `addClass()` and `removeClass()` to add and remove classes from an element. Just pass the name of the class you want to add or remove:
    ```js
    $('#my-element').addClass('new-class');
    ```

4. You can use `if`, `else if` and `else` to make your code respond to variables differently based on their value:
    ```js
    if (aVariable == 'something') {
       alert('Variable was "something"');
    } else {
       alert('Variable was not "something"');
    }
    ```

## Instructions

1. Start with the below HTML and an empty Github repository:
    ```html
    <!doctype html>
    <html>
      <head>
        <meta charset="utf-8">
        <title>News quiz for April 9, 2018</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
      </head>
      <body>
        <div class="container">
          <h1>News quiz for April 9, 2018</h1>

          <div id="question-1" class="form-group">
            <label class="control-label">Put your question here</label>
            <input type="text" class="form-control" />
          </div>

          <div id="question-2" class="form-group">
            <label class="control-label">Put your question here</label>
            <select class="form-control">
              <option value="answer-1">Answer 1</option>
              <option value="answer-2">Answer 2</option>
            </select>
          </div>

          <div class="form-group">
            <input id="grade-it" type="button" value="Grade my quiz" class="btn btn-primary" />
          </div>
        </div>

        <script>
          /* Your JavaScript code goes here */
        </script>
      </body>
    </html>
    ```
2. Update the questions on the page to questions of your own. On the second question, be sure to populate the `<option>` tags with potential answers for the question you entered.

3. Use jQuery to listen to the `click` event on the button at the bottom of the quiz. When the button is clicked, run a function that gets the answer for the first question using an `if`/`else if`/`else` conditional statement. If the answer is correct, use jQuery's `addClass` method to add the class `has-success` to the `<div>` surrounding the question. If the answer is wrong, use the same method to add `has-error` to the `<div>`. You should now be able to:
    - enter an answer in question 1
    - click the button
    - see the box for question 1 turn green or red depending on if the answer is correct

4. Once you have the above working, repeat the process for question 2. You should add the new logic to the function you started above. When it is working, commit your changes to Github.

5. Add a new question of your own, adding the required JavaScript to let the user know if they provided a correct answer, just like above. You can use either `<select>`s or `<input>`s, depending on the type of question you want to ask. Commit your changes to Github.

6. You may notice that when you repeat the quiz the feedback may be erratic if you continue to change the answers and click the button at the bottom. At the top of your function above, use jQuery's `removeClass` to remove all of the `has-success` and `has-error` classes before you set new ones. You should now be able to repeatedly tweak the answers to the quiz, click the grade button and get accurate feedback. Commit your changes to Github.

7. Lastly, let's give our users a way to figure out what the right answers are. Add a new button to the bottom of the page with a value of "Show me the answers". Using the pattern above, use jQuery to listen for a click event on the button. When the button is clicked, use `val` to set each of the questions to the correct answer. Commit your changes to Github.

8. Submit the link to your repository to Canvas.