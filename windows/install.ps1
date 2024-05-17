# VSCode
## Install
winget install vscode --accept-source-agreements
## Configure
### Gear > Profiles > Import Profile
# PowerToys
## Install
winget install -e --id Microsoft.PowerToys --accept-source-agreements
## Configure
### General > Restore
# Flameshot
reg add "HKCU\Control Panel\Keyboard" /v PrintScreenKeyForSnippingEnabled /t REG_DWORD /d 0 /f
mkdir \users\$env:username\appdata\roaming\flameshot
## Install
winget install flameshot --accept-source-agreements
## Configure
cp flameshot\flameshot.ini \users\$env:username\appdata\roaming\flameshot\flameshot.ini
### Configuration > General > Import 
Write-Host -Foregroundcolor Yellow "Import configs for vscode and powertoys"