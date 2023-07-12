# Editing the Bash profile

There is a hidden file on your computer that is the profile for your bash terminal. If you have VS Code installed and configured as your text editor, you can open it with this:

`$ code ~/.bash_profile`

We'll be adding lines to that file and then saving it. So see the changes reflected in your terminal, you have to exit and open a new one.

## Shorten your terminal name

My prompt line in my terminal is really long. It looks like this:

`CHRISTIANs-MacBook-Air-2:~ christian$`

You can shorten it to just your login name by adding this line to your `.bash_profile` file, which is found in your home directory: `code ~/.bash_profile` should open it in VS Code so you can edit it.

```text
# shortens prompt name
PS1='\u:\W\$ '
```

Now close your Terminal window and open a new one, and the prompt should be shorter, with just your username.

## Hide the zsh message

Adding this to your bash_profile hides the message about changing to zsh.

```text
# hides zsh prompt
export BASH_SILENCE_DEPRECATION_WARNING=1
```

## List all long including hidden

When I want to see everything in a directory, including all the hidden files and the other details like size, date, etc., then the command is `ls -al`. But I put in a alias so all I have to type is `ll` to get that long list. Add this to your `.bash_profile`:

`alias ll="ls -al"`
