wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/fee1edb8d6d72a0ddff41e5f71a671c23ed924b9/code_1.92.2-1723660989_amd64.deb
sudo dpkg -i code_1.92.2-1723660989_amd64.deb
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
sudo apt install xclip bacula-console-qt ripgrep -y
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
echo export PATH="/home/$USER/.local/bin:$PATH" | tee -a ~/*rc
chsh -s /bin/bash
sudo pkill -KILL -u $USER
