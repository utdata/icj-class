
# Configure VS Code to deal with Nunjucks

Visual Studio Code is not set up by default to deal with the Nunjucks template language. There are two things we can do to make our future development easier. You only need to do these once and they will be set for future projects.

## Install the Nunjucks Template extension

While this isn't required, it is super helpful to install a Nunjucks syntax extension so when you look at templates your variables and code are in color, called "Syntax highlighting". You should only have to do this once.

- In VS Code, on the far left there are five icons. The bottom one looks like a funky square. Click on that.
- In the search box, type in `Nunjucks template`. Click on the return for Nunjucks Template.
- Click the Install button.
- After it is done, click on the "Reload to activate" button.

Now, when you look at files with the `.njk` extension, the code will be colored properly.

## Fix Emmet for Nunjucks

Because we are using `.njk` extensions on our Nunjucks files, Emmet doesn't work because it doesn't know we are still using HTML. We can update our User Prefences to do this:

- Go to the Code > Preferences > Settings.
- On the space with the sames "User settings" and "Workspace settings", there is a triple dot `...` to the right. Click on that and choose `open settings.json`.
- You'll get two windows. On the left are all the default settings. You can search for different settings, and then copy them into the JavaScript array on the right and then override them.

Add the following inside the curly braces. If you already have items there, make sure this new one is set off with a comma.

```javascript
{
  "emmet.includeLanguages": {
      "nunjucks": "html",
      "njk": "html"
  }
}
```

I have a series of other settings you might find useful: Setting indents to two spaces, removing the minimap by default, wrapping text by default. [You can find them here](https://github.com/utdata/setting-up/blob/master/vscode-goodies.md).

----

Next: [Editing templates](static-02.md)
