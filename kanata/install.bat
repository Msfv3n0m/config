curl.exe https://github.com/jtroo/kanata/releases/download/v1.12.0/windows-binaries-x64.zip -O "C:\Users\%username%\Documents\kanata.zip"
move "%cd$%\kanata.kbd" "C:\Users\%username%\Documents\kanata\"
schtasks /Create /IT /TN "Kanata" /SC ONLOGON /RL HIGHEST /TR "C:\Users\%username%\Documents\kanata\kanata_windows_gui_winIOv2_x64.exe --cfg C:\Users\%username%\Documents\kanata\kanata.kbd" /F 
schtasks /Run /TN "Kanata"