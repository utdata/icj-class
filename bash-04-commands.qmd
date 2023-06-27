# Commands in bash

These are some common commands used in bash.

| To do this               | Mac   | Windows       | Notes |
|--------------------------|-------|---------------|-------|
| print working directory  | pwd   | pwd           |       |
| change directory         | cd    | cd            |       |
| list directory           | ls    | ls            |       |
| make directory           | mkdir | mkdir         |       |
| remove file              | rm    | rm            | 1     |
| remove directory         | rmdir |               | 2     |
| copy file or directory   | cp    | cp            |       |
| move or rename file      | mv    | mv            |       |
| page through a file      | less  | more          |       |
| print a file             | cat   | type          |       |
| find files               | find  | dir -r        |       |
| find things inside files | grep  | select-string |       |
| read the manual          | man   | help          |       |
| exit your shell          | exit  | exit          |       |
| become a super user      | sudo  | runas         | 3     |

1. rm works for both files and folders in windows.
2. rmdir works in Git Bash, but not in other Windows terminal programs.
3. You best know what you are doing before running as sudo or root.

## man

If you are unsure about how any of these terminal commands work, there are manual pages for each one already on your computer. Now, I'm not saying they are extremely well-written and intuitive, but they are there.

`$ man cd`

Will open the manual page for `cd` and tell you have to **change directory**.

But man pages, as they are called, are a special program themselves, and have a different commands to negotiate around them, as you'll discover quickly if you try to scroll to see more.

* hit `f` or `space` to advance one page through the file
* hit `j` to go down one line
* hit `k` to go up one line
* hit `g` to go the the top
* hit `q` to quit

Moving around the man pages is frustrating at first. There are [online versions](http://man.cx/) of these, but the `man` command doesn't need the internet. These files are already on your computer.

Man pages are useful to figure out the options or **flags** for commands, so you can learn that `ls -lt` will give you that long list sorted in order of time, most-recently modified at top.

## -h for help

Sometimes there isn't a man page for a command, but there is help file. If we wanted to look at a list of all the flags for the `curl` program, we would can get "help with the `-h` flag. I would type:

`$ curl -h`

This gives you a list of the flags and arguments for that command, along with other information.
