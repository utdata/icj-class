# Bootstrap homework assignment

You are going to build a two-page Bootstrap project from scratch, based on Bootstrap documentation code and styles.

## Resources

You'll want to use the Bootstrap documentation for your code and styles.

- Go to [Bootstrap site)(https://getbootstrap.com/) and click on the **Documentation** link. Most of what you need is under **Components** on the left-hand navigation. **Utilities** has some useful information as well.
- You may also find W3 Schools' [Bootstrap 4 Tutorial](https://www.w3schools.com/bootstrap4/) useful.
- You can also review the [Learn Bootstrap screencasts](https://scrimba.com/g/gbootstrap4) you had as prework.

Start with  the [utdata/icj-bootstrap-template](https://github.com/utdata/icj-bootstrap-template) repo just like we did in class. Create your folder, then use `degit utdata/icj-bootstrap-template` to get the files.

## Strategy

- Build the framework of a single page first. Get the main components in and figure out your content columns before you worry about any styling.
- Then move onto styles and other details.
- Don't create the second page until you've finished the first. (That way you limit the number of adjustments on two pages.)

## The components

You project should have the following structural components:

- A navbar with a brand (Pirate Cove) and two links: the index and one story page.
- A jumbotron with a project name and readout (see example).
- A two-column layout for the content, inside a container. The columns should stack on mobile, but be side-by-side at the sm size and larger.
- A footer with your name in the text.
- I have images for you to use, but you have to set them a specific way for them to work in the development environment:
  - Download these images: [pirate-photos.zip](pirate-photos.zip).
  - In your `src` directory, create a folder called `img`. (The name is important.) Put your photos inside that folder.
  - Quit your `gulp dev` process and restart it so the photos will be copied into `docs`.
- You will also need to pick and use a Google font in your project. More on that below.

## Details and styling

Once you have the structure in place, you can work on styling and details.

### Navbar styles

- The nav links should have an underline on hover only. You'll need to write CSS to make this happen.
- The nav link for the active page (i.e., the one you are viewing) should be bold. There is a special class for this that you can find in the Bootstrap documentation in the Navbar section.

### Jumbotron styles

- The jumbotron should have a background image that works at all sizes. This is configured in SCSS, and the [background shorthand property](https://www.w3schools.com/css/css_background.asp) will help here, as will another style "background-size: cover;".
- For the background image for the jumbotron, you'll have to reference it from the scss file. The path for this has to be relative from the compiled css file to the image, so it will be `url(../img/filename.jpg)`. Note the beginning `../` on that path is different than when you call images directly into the `index.html` page.
- Set the main text in the jumbotron to use a Google font style of your choice.

### Story content

- While you need two "story" pages (the index and one new page), you should finish ALL of the index before creating the second one. That way you can duplicate it and then make your text changes.
- The story content should have two columns at the "sm" size and larger.  The columns should stack when viewed on a phone.
- The column on the left should have the pirate mugshot photo (search for "responsive images" in the Bootstrap docs to see how to make it fit the width of the column).
- The Byline name and source should be different in style or font.
- The right column should have a headline and "story" text (which can be [pirate ipsum](https://pirateipsum.me/)).
- You must introduce at least one Google Font to the content. Like a headline font.

### The footer

- The footer should go all the way across the bottom of the page.
- It should have a different color background with enough padding that the text looks good.
- The text "A class project by Your Name" is fine. 

## Second page

- Your second page needs to have an additional Bootstrap Carousel of three photos. (Examples in Bootstrap docs.) The sizing of the photos should be responsive, which is a special class you can look up in the documentation.

## Extra credit

- FOR EXTRA CREDIT: Pick one other Bootstrap component to add to the site somewhere that makes sense. This is your chance to explore Bootstrap and be creative. When you turn this in, tell me your component-of-choice so I don't have to guess.

## Publishing

Publish your site using Github pages using the "master branch /docs folder" method.

## Examples

Here is generally what the page should look like:

![bs-assignment-p1.jpg](../images/bs-assignment-p1.jpg)
![bs-assignment-p2.jpg](../images/bs-assignment-p2.jpg)
