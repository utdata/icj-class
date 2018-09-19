## Make a new branch

Hopefully when you finished and turned in your HTML lesson code, you had what we could call bug-free code. It works. It is our "production" branch, known as `master`.

Well now you are going to make it a whole lot worse before you make it better, and that is the essence of a feature. So we are going to create a feature branch so you can work without fear that you will irrevocably f'd up your code.

- In VS Code, open the folder for your HTML in-class project. We'll be building off that one.
- Open the Integrated Terminal and create a new branch called `csswork`:

```bash
git checkout -b csswork
```

You've checked out a new branch and named it `csswork` at the same time. If you do `git status` you should see that, and if you have git-bash-prompt install, your command prompt will show it.