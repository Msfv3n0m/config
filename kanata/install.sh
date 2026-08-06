mkdir -p /usr/bin/kanata
curl https://github.com/jtroo/kanata/releases/download/v1.12.0/linux-binaries-x64.zip -O kanata.zip
unzip kanata.zip 
mv $(pwd)/kanata_linux_x64 /usr/bin/kanata/
mv $(pwd)/kanata.kbd /usr/bin/kanata/
cp $(pwd)/kanata.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable kanata
systemctl start kanata