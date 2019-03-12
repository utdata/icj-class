# Bootstrap homework assignment

You are going to build a two-page Bootstrap project from scratch. You'll need to use the Resources links and steps outlined in our in-class Bootstrap project to build your development framework. The project should have the following things (which you should read before you start coding):

- A development framework where a /docs/ folder holds your published files and you have a /src/scss/ folder to hold all your scss partials and files. Build this from the utdata/icj-bootstrap-template repo.
- Your project should include the following.
- A nav bar
  - The nav should have a site name and two links, one for each page (the index and one other).
  - The nav links should have an underline on hover only. You'll need to write CSS to make this happen.
  - The nav link for the active page (i.e., the one you are viewing) should be bold. There is a special class for this that you'll have to find in the Bootstrap docs.
- A jumbotron section for the site header.
  - The jumbotron should have a background image that works at all sizes. The [background shorthand property](https://www.w3schools.com/css/css_background.asp) will help here, as will another style "background-size: cover;". See the note below about how to reference a photo from the css file.
- There should be two "story" type pages (the index and one other). How do you create the second one? Finish the first one, then duplicate it as a new file with a new name. Then make you changes.
- Each page should have two columns at the "sm" size and larger, with the one on the left having a byline and responsive-sized photo, and the right side should have the "story". They should stack when viewed on a phone.
- The Byline name and source should be different in style or font.
- One of the pages needs to have a [carousel](https://getbootstrap.com/docs/4.1/components/carousel/) of three photos. The sizing of the photos should be responsive, which is a special class you can look up in the documentation.
- You must introduce at least one Google Font to both the pages. Like a headline font.
- There should be a footer that goes across the bottom of the page that has the text "A class project by Your Name."
- Publish your site using Github pages using the /docs/ folder.
- FOR EXTRA CREDIT: Pick one other Bootstrap component to add to the site somewhere that makes sense.This is your chance to explore Bootstrap and be creative. When you turn this in, tell me which is your component-of-choice so I don't have to guess.
- Should you want some photos so you don't have to search online for them, you can download these: [pirate-photos.zip](pirate-photos.zip). To make these files work for you, create a /docs/media/ folder and put them inside there. Then on pages you can reference them at `<img src="media/filename.jpg">`.
  - For the background image for the jumbotron, you'll have to reference it from the css file, so it will be `url(/media/filename.jpg)`.

Here is generally what the page should look like:

![bs-assignment-p1.jpg](../images/bs-assignment-p1.jpg)
![bs-assignment-p2.jpg](../images/bs-assignment-p2.jpg)
