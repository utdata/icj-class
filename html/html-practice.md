# HTML practice assignment

For this practice assignment you are coding a story in HTML as indicated below. Points will be taken off for improper syntax and indentation. Make clean code.

There are some tasks as part of this assignment where we have NOT covered the specific HTML tag in class. That's on purpose. You will need to Google it, as that is part of the developer process.

## Getting started

- Inside your `icj` folder, you'll need to create a new project folder, called `yourname-html-css-practice`.
- Create a `README.md` file using proper Markdown with a title, the assignment name and the due date.
- Create a `.gitignore` file like we did in class. Make sure to go to gitignore.io and paste the code from there like we did in class. 
- Use the [git cycle](https://github.com/utdata/icj-class/blob/main/start_a_project.md) to add and commit the files.
- Create a new repo in Github with the same name as your local folder. Do NOT include the readme or gitignore.
- In the resulting directions, copy the `git remote add ...` and use that to connect your local repo to the Github repo.
- `git push` to the repo and make sure it works.

## The assignment requirements

- In your repo, create a new file named `practice-story.html`. Use Emmet to put the HTML5 code in that file, and make sure it has all the proper HTML5 tags like doctype, title, head, body, etc.
- Use [this text file](html-practice-text.txt) for the starting body text.
- Code the overline (the text "OPEN THREADS") as an `<h4>`.
- Code the main headline and the subhead with the proper hierarchy of header tags. (i.e., the main headline should be bigger than the subhead).
- Code the subhead that is in the story "Under the radar" with the proper hierarchy of header tags. 
- Put the byline in a `<p>` tag and properly link to the included Twitter handle.
- Put the date in a `<span>` tag.
- After the byline, add an image tag. Download [this image](https://github.com/utdata/icj-class/blob/main/html/spurs.jpg) and save it to your yourname-html-css-practice folder and then use it as the src in your image tag.
- Create a credit line with the text "Soobum Im / USA TODAY Sports" in a `<p>` tag with a class of "credit" under the image.
- Style all the text in `<p>` tags. Each paragraph of text should have it's own beginning `<p>` and ending `</p>` tag.
- There is a quoted text paragraph that starts with "Granted, not every starting ...". Put that in a `blockquote` tag. Don't know that one? Look it up.
- Add a hypertext link to the text "ranking the starting five line-ups" to [this url](https://bleacherreport.com/articles/2789035-ranking-every-nba-teams-projected-starting-5-after-free-agency#slide7), opening in a new window.
- Use an ORDERED list for the ranking list of teams in the middle of the story, but it should start with the Philadelphia 76ers as number 5. Don't know how to do that? Figure it out.
- The last two paragraphs are not really part of the article, but instead the opening for the comments section. Put the text within their own `<p>` tags and then wrap them both with a `<div>` with an `id="comment-notes"` attribute. That way you can style this section later.
