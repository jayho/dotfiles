# Jens’s dotfiles

Shamelessly cloned from https://github.com/mathiasbynens/dotfiles and accomodated for my personal needs. See his README.md for more details.

## Installation

```bash
git clone https://github.com/jayho/dotfiles.git && cd dotfiles && make install
```

## Update

To update, `cd` into your local `dotfiles` repository and then:

```bash
make
```

### Sensible OS X defaults

```bash
~/init/.osx
```

### Install [Homebrew](http://brew.sh/) formulae

```bash
brew bundle ~/init/brew
```

### Install native apps with [`brew cask`](https://github.com/phinze/homebrew-cask)

```bash
brew bundle ~/init/cask
```
