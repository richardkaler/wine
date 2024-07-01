#!/bin/bash -e 

attempt() {
sudo mkdir -pm755 /etc/apt/keyrings || echo "failed to create directory" && 
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && 
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources && 
sudo apt-get update -y && sudo apt-get upgrade -y  && 
sudo apt install --install-recommends winehq-stable -y && 
echo "Done! Successfully installed all packages...";  
}
attempt || echo "install attempt failed - try something else" 
