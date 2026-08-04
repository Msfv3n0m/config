mkdir -p $HOME/.local/bin/
curl https://github.com/jtroo/kanata/releases/download/v1.12.0/linux-binaries-x64.zip -O kanata.zip
unzip kanata.zip $HOME/.local/bin/
mv $(pwd)/kanata.kbd $HOME/.local/bin/
# TODO
# Create systemd service
# Install it