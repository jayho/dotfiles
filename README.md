# Jens’s dotfiles

Shamelessly cloned from https://github.com/mathiasbynens/dotfiles and accomodated for my personal needs. See his README.md for more details.

## Installation

You can clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jayho/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```
### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# PATH additions
export PATH="~/bin:$PATH"

# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Mathias Bynens"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="mathias@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

See Mathias' answer on stack exchange for information on how to obtain these settings:
http://apple.stackexchange.com/a/45389/25513 

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):

```bash
./.brew
```
