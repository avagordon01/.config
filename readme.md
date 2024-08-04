# .config

## setup
```
nmcli device wifi list
nmcli device wifi connect <ssid> password <password>
sudo archinstall \
    --config https://raw.githubusercontent.com/avagordon01/.config/master/archinstall/user_configuration.json \
    --creds https://raw.githubusercontent.com/avagordon01/.config/master/archinstall/user_credentials.json 

cd $HOME
git clone https://github.com/avagordon01/.config
cd .config
ln -s bash/.* ~
ln -s autoexec.cfg ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg
sudo cp backup/* /etc/systemd/system
sudo systemctl enable bluetooth.service jellyfin.service backup.timer
yay -S $(cat aurpkglist.txt)
```

## restore
```
./scripts/restore.sh
```
