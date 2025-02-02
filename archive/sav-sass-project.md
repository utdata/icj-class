

For this project, we are starting from a template saved in a repo. We'll use a special npm package called [degit](https://www.npmjs.com/package/degit) to start our project. You should have already installed it globally when we did our computer setup.

As such, we won't need to create a README or .gitignore file because they will be part of the template. But you will need to create a project folder:

1. Create a new project folder called `yourname-sass` inside your `icj` folder.
1. Open that folder in VS Code and open your terminal.
1. In your terminal, run `degit utdata/icj-sass-template`. This should download all the template files into your folder.
1. Run `npm install`. This will install all the packages we need from the npm "app store". It will take a couple of minutes.

::: callout-important
When running `npm install` or when viewing your project on Github, you will see warnings about outdated packages and dependencies. **These will not affect our work on this project**.
:::
    
5. Run `gulp dev`.