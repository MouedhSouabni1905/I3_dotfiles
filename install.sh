#! /usr/bin/bash
mv i3conf $HOME/.config/i3/config
mv launch_polybar.sh $HOME/.config/polybar/launch.sh
mv polybar_config.ini $HOME/.config/polybar/config.ini
mv picom.conf $HOME/.config/picom/picom.conf
cd ../
rm -rf dotfiles
