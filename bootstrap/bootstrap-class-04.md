# Publishing to Github

Github has a way that we can publish static web pages to the web, for free, using [Github Pages](https://pages.github.com/). While it is not intended for commercial use, it is sufficient and appropriate for our class. There is a _soft_ 100GB limit per month. If you exceed that, you'll get a polite email from Github suggesting better ways to handle your traffic. Consider that a lovely problem to have because 100GB is quite a lot.

There are [Github tutorials](https://docs.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site) on setting up Github pages. We'll go through one of the many methods here.

## Publishing through the /docs/ folder

When this lesson was written, Github restricted publishing to just a few folders, but there is now a beta feature that allows users to choose any folder as their distribution folder. We'll stick with `/docs` for now, but know most development environments will name this folder `dist` (for distribution) or `public`.

- Go to your Github repo for this project and select **Settings**.
- Go down the page there until you find **Github Pages**.
- Where is has the dropdown for **Source**:
  - Choose the **master** branch.
  - For the next dropdown, choose `/docs`.
  - Click the **Save** button.

Your page will refresh and after a few minutes, your website will be available on the web at a url based on your username and project repo name:

`https://{githubusername}.github.io/{project-name}/`

Please take that URL and add it to your Github repo in the About section like this:

![bs-save-url.gif](../images/bs-save-url.gif)

## More Github pages

There are other ways to publish [Github Pages](https://docs.github.com/en/github/working-with-github-pages/about-github-pages), depending on your needs.

---

**Next**: We'll [create a detail page](bootstrap-class-05.md).
