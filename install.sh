#!/bin/sh
# Kill all runing instances if exists
# killall gedit

gtksourceview="gtksourceview-3.0"
localPlugins="~/.local/share/gedit/plugins/"

echo "copying lang-specs and register mime types..."
# Copy language definitions
sudo cp lang-specs/*.lang /usr/share/$gtksourceview/language-specs/
# Register MIME-types
sudo cp mime/*.xml /usr/share/mime/packages
sudo update-mime-database /usr/share/mime

# Copy Styles
echo "copying themes..."
sudo cp styles/* /usr/share/$gtksourceview/styles/

# If local plugin dir doesn't exist create it
if [ ! -d $localPlugins ]; then
	echo "$localPlugins doesn't exist. Creating..."
	sudo mkdir -p $localPlugins
fi

echo "Install succesfull!\r\n" 
