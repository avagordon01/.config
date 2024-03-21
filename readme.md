# .config

```
sudo pacman -Syu git
cd $HOME
git clone --recurse-submodules https://github.com/avagordon01/.dotfiles .config
cd .dotfiles
sudo pacman -Syu $(cat pkglist.txt)
stow bash/
yay -S $(cat aurpkglist.txt)
```
