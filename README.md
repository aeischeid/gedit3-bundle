gedit3-bundle
=============

Collection of top themes, styles, extra language supports, and plugins that just work with most recent Ubuntu release

If you have issues with one of the plugins included please raise that with the plugin maintainer, if they can be found, and if it gets updated or fixed let me know.
This repo is merely a convenient place to gather pieces together and make it easy to install since gedit doesn't have really have a consistently central place to register this sort of stuff or a package manager built in like some text editors.

## Install

Use the install.sh to install language support, themes, and snippets.

1. download zip or `git clone https://github.com/aeischeid/gedit3-bundle.git'
1. navigate into directory
1. `sudo ./install.sh`

Adding plugins is up to you to do manually, but don't be intimidated. Simply move plugins you want into `~/.local/share/gedit/plugins`

-------------------

### Plugins

the official list of plugins is on [the gedit wiki](https://wiki.gnome.org/Apps/Gedit/ThirdPartyPlugins-v3.8)

* **Advanced Find/Replace** Search and replace in all files/documents/tabs.
* **[Acceel Editor](https://github.com/nacho/gedit-accel-editor)** provides a dialog to edit shortcuts
* **[Beyond](https://github.com/gcca/gedit-beyond)**  makes it possible to scroll past the end of the document
* **Line Tools** Comment toggle, duplicate, selection, add semi-colon.
* **[Keyboard scrolling](https://gitorious.org/keyboardscrolling)** scrolling documents using Ctrl+Up/Down keys without moving the cursor
* **Simple Folding** Collapse text based on indentation level.
* **Smart Highlight** Highlighing all occerences of the selected text.
* **[Smarthome](https://github.com/gdelhumeau/gedit-smarthome)** move the cursor to the first/last non-whitespace character using home/end
* **Snap Open** Quickly search by file name to open files.
* **Source Code Browser** A source code class and function browser.
* **Zen Coding** Tools for faster HTML/CSS coding using css selector like syntax


Refer to each plugin source code and readme file to get information about
specific plugin licensing and copyright.

### Languages

* Basic YAML
* CoffeeScript
* ColdFusion
* Cucumber
* Groovy/Grails/Gradle
* HAML
* Markdown
* reStructuredText
* rhtml/erb
* Ruby/Rails
* SASS and Stylus
* Jade and Eco templates
