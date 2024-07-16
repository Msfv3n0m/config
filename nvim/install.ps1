# Install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install neovim -y
# install nerdfont
curl.exe https://webi.ms/nerdfont | powershell
# install ripgrep
choco install ripgrep -y
# install mingw
choco install mingw -y
# install gnuwin32
choco install gnuwin32-coreutils.install -y
# install git 
choco install git.install -y
# install nvchad
git clone https://github.com/NvChad/starter $ENV:USERPROFILE/AppData/Local/nvim 
# Install python
# choco install python -y
# Install python dependencies
pip install python-lsp-server pynvim
# Copy custom configs
cp lspconfig.lua $ENV:USERPROFILE\AppData\Local\nvim\lua\configs
cp init.lua $ENV:USERPROFILE\AppData\Local\nvim\lua\plugins
# Additional configuration
write-host "add this to path" -ForegroundColor yellow
python -c "import sys; print(sys.exec_prefix)"
sysdm.cpl
## configure nerdfont (Droid SANS Mono NF): https://medium.com/nerd-for-tech/neovim-but-its-in-windows-f39f181afaf9
write-host "configure nerdfont (Droid SANS Mono NF): https://medium.com/nerd-for-tech/neovim-but-its-in-windows-f39f181afaf9" -ForegroundColor yellow