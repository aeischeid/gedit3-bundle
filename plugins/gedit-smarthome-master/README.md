gedit-smarthome
===============

A simple plugin for [gEdit](https://wiki.gnome.org/Apps/Gedit) to move the cursor to the first non-whitespace character when pressing on the "home" button.

* When you press the "home" button, then the cursor moves to the first non-whitespace character on the first press and to the beginning of the line on the second press.
* When you press the "end" button, then the cursor moves to the last non-whitespace character on the first press and to the end of the line on the second press.

This is very usefull. Sadly, gEdit does not offer this option by default.

How to install
======

Very easy, just create a folder called "smarthome" in the `~/.local/share/gedit/plugins` and copy "`smarthome.plugin`" and "`smarthome.py`" in it. Then restart gEdit and go to `edit>settings>plugins` and enable the "SmartHome" plugin.
