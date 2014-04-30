#
#  Keyboard scrolling plugin for gedit
#  Copyright (C) 2014 Todor Ganchovsky
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

from gi.repository import GObject, Gdk, Gedit

class KeyboardScrolling(GObject.Object, Gedit.ViewActivatable):
    __gtype_name__ = "KeyboardScrolling"
    view = GObject.property(type=Gedit.View)

    def __init__(self):
        GObject.Object.__init__(self)

    def do_activate(self):
        self.doc = self.view.get_buffer()
        self.handler = self.view.connect('key-press-event', self.on_key_press_event)

    def do_deactivate(self):
        self.view.disconnect(self.handler)

    def on_key_press_event(self, view, event):
        if event.state & (Gdk.ModifierType.CONTROL_MASK) and event.keyval in (Gdk.KEY_Up, Gdk.KEY_Down):
            rect = self.view.get_visible_rect()
            if event.keyval == Gdk.KEY_Down:
                iter = self.view.get_line_at_y(rect.y + rect.height - 1)[0]
                iter.forward_line()
            else:
                iter = self.view.get_line_at_y(rect.y)[0]
                iter.backward_line()
            self.view.scroll_to_iter(iter, 0.0, False, 0.0, 0.0)
            return True
        return False

