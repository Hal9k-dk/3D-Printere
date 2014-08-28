#!/bin/bash
user=$(whoami)
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "[Desktop Entry]
Name=Repetier-Host
Exec=mono RepetierHost.exe -home $dir&
Type=Application
StartupNotify=true
Comment=Repetier-Host 3d printer host software
Path=$dir
Icon=$dir/repetier-logo.png
Comment[en_US.UTF-8]=Repetier Host
Name[en_US]=Repetier-Host
" >> $dir/Repetier-Host.desktop
chmod +x $dir/Repetier-Host.desktop
echo "This folder now contains a Repetier-Host.desktop file"
echo "Copy it to your desktop to get a launch icon there"
