# avagordon01s' dotfiles

```
sudo pacman -Syu git
cd $HOME
git clone https://github.com/avagordon01/.dotfiles
cd .dotfiles
sudo pacman -Syu $(cat pkglist.txt)
stow */
```
