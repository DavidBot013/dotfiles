**deprecated**
Inicialmente: 
```
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no

config add .file
config commit -m "new confs"
config push
```

Para replicar en un nuevo pc
```
git clone --separate-git-dir=$HOME/.dotfiles /path/to/repo $HOME/.dotfiles-tmp

rm -r ~/.dotfiles-tmp
alias config='...'
```


