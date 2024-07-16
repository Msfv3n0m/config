# Install nvim
wget https://github.com/neovim/neovim/releases/download/v10.0/nvim.appimage 
chmod u+x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim
# install nerdfont
curl -sS https://webi.sh/nerdfont | sh
# install ripgrep
sudo apt install ripgrep -y
# install git 
sudo apt install git -y
# install nvchad
git clone https://github.com/NvChad/starter ~/.config/nvim 
# Install python
# sudo apt install python -y
# Install python dependencies
pip install python-lsp-server pynvim
# Copy custom configs
cp lspconfig.lua ~/.config/nvim/lua/configs
cp init.lua ~/.config/nvim/lua/plugins
# Additional configuration
# echo "add this to path"
# python -c "import sys; print(sys.exec_prefix)"
# sysdm.cpl
## configure nerdfont (Droid SANS Mono NF): https://medium.com/nerd-for-tech/neovim-but-its-in-windows-f39f181afaf9
echo "configure nerdfont (Droid SANS Mono NF): https://medium.com/nerd-for-tech/neovim-but-its-in-windows-f39f181afaf9"