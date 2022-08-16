#!/usr/bin/env bash 
git clone https://github.com/BlobDeveloper/i3wm
cd i3wm
cp -R .config ~/                                            
chmod -R +x ~/.config/i3/scripts
cp .nanorc ~/
dbus-launch dconf load / < ~/xed.dconf
sed -i 's|\(exec --no-startup-id ~/set_once.sh\)|# \1|' ~/.config/i3/config
wget https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-packages-lists/master/i3
sudo pacman -S --needed - < i3
cd ..
rm -rf i3wm