#!/bin/sh
# Kill all runing instances if exists
# killall gedit

version3="`gedit --version | grep '\s3\.'`"

if [ $(id -u) = "0" ]; then
    sudo="yes"
else
    sudo="no"
fi

# Copy language definitions
if [ "$(echo $version3)" ]; then
    gtksourceview="gtksourceview-3.0"
else
    gtksourceview="gtksourceview-2.0"
fi
if [ $sudo = "yes" ]; then
    sudo cp lang-specs/*.lang /usr/share/$gtksourceview/language-specs/
else
    mkdir -p ~/.local/share/$gtksourceview/language-specs
    cp lang-specs/* ~/.local/share/$gtksourceview/language-specs/
fi

# Copy Styles
if [ $sudo = "yes" ]; then
    sudo cp styles/* /usr/share/$gtksourceview/styles/
else
    if [ "$(echo $version3)" ]; then
        if [ ! -d $HOME/.local/share/$gtksourceview/styles ]; then
            mkdir -p ~/.local/share/$gtksourceview/styles
        fi
        cp styles/* ~/.local/share/$gtksourceview/else
    styles
        if [ ! -d $HOME/.gnome2/gedit/styles ]; then
            mkdir -p ~/.gnome2/gedit/styles
        fi
        cp styles/* ~/.gnome2/gedit/styles
    fi
fi

# Register MIME-types
if [ $sudo = "yes" ]; then
    sudo cp mime/*.xml /usr/share/mime/packages
    sudo update-mime-database /usr/share/mime
else
    mkdir -p ~/.local/share/mime/packages
    cp mime/*.xml ~/.local/share/mime/packages
    update-mime-database ~/.local/share/mime
fi

if [ "$(echo $version3)" ]; then
    geditdir="gedit"
else
    geditdir="gedit-2"
fi

