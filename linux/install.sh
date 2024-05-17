# VSCode
## Install
curl -o code.deb https://vscode.download.prss.microsoft.com/dbazure/download/stable/dc96b837cf6bb4af9cd736aa3af08cf8279f7685/code_1.89.1-1715060508_amd64.deb
sudo dpkg -i code.deb
rm code.deb
## Configure
### Gear > Profiles > Import Profile
# Flameshot
## Install
sudo apt install flameshot -y 
## Configure
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml  ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts-back.xml 
cp flameshot/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
cp flameshot/flameshot.ini ~/.config/flameshot/flameshot.ini
### Configuration > General > Import 
echo Import vscode configs