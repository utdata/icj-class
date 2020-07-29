# Sass and SCSS

Sass is system that helps make writing CSS easier. SCSS (Sassy CSS) is the syntax we use, and it has to be processed (or "compiled" in tech speak) into regular CSS before the browser can understand it. That process is usually handled in the background with some task service. We are using Node.js and Gulp, and introducing that ecosystem is a learning experience in itself. I'll get to that, but let's talk about Sass first.

Some of the benefits/features of Sass/SCSS are:

- Nesting and shorthand styles allows you to write more understandable and efficient code that is easier to maintain.
- Variables allow you to reuse styles and make a single change to affect values all through your code.
- Partials and importing allow you to organize your style files into smaller, more manageable chunks.
- Sass allows you to do standard math operations within your SCSS.
- "Mixins" let you make groups of CSS declarations that you can reuse throughout your site. You can even pass in values to make your mixin more flexible.

The Bootstrap framework that we will use later in this class takes advantage of all of these features. Sass is a required part of Bootstrap.

^ There are two different ways to write Sass, but we will use the SCSS version.

## Sass features

We'll walk through the [Sass guide](https://sass-lang.com/guide) and talk about the features in class. If you are doing this on your own, resist the urge to install Sass, because we've already done that with our project template.

----

Next: [Refactor existing CSS](sass-03.md)