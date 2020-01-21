# My dotfiles

## Installation
```
cd ~
git clone --bare --single-branch --branch rwe_energy https://github.com/jchoffmann/dotfiles.git .dot
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
dot checkout
dot config --local status.showUntrackedFiles no
source .zshrc
```

See also: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

## Dotfile inspirations:
* https://github.com/mathiasbynens/dotfiles
* https://github.com/ahmetb/dotfiles

