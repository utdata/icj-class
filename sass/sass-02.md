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

We'll walk through the [Sass guide](https://sass-lang.com/guide) and talk about the features in class. If you are doing this on your own, resist the urge to install Sass, because we'll handle that later.

## Overview and goals for this lesson

We will start with a web project that is a two-page website for a band. It has been coded rather simply with regular, vanilla CSS. It works just fine, but as the site grows and there are more changes, having "Sassy CSS" will help with maintainability. So, our goals here are to:

- Understand how the Sass structure works from a technical level:
  - What is Node.js and how it is structured.
  - How Node.js compiles our Sass SCSS into regular CSS the browser understands.
- Rework the CSS into SCSS to:
  - Improve readability of our styles through nesting.
  - Use variables for increase flexibility of our styles.
  - Rewrite style rules for efficiency and reusability.
- We'll write new style rules in the Sassy way.

----

Next: [Refactor existing CSS](sass-03.md)