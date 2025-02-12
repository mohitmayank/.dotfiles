#\\wsl$\Ubuntu\home\mohit

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

cd C:\
md Apps
md Games

choco install -y notepadplusplus googlechrome firefox 7zip vlc libreoffice-still javaruntime sumatrapdf telegram transmission whatsapp tor-browser popcorn-time slack
choco install -y meld vscode calibre tightvnc skype
choco install -y opera insomnia-rest-api-client inkscape gimp zeal
choco install -y font-nerd-dejavusansmono firanf microsoft-windows-terminal terminus
choco install -y chromium

#choco install -y shotcut
#choco install -y thunderbird

#choco install -y geforce-experience steam loot 
#install wrye bash

#https://www.nerdfonts.com/font-downloads
