from gi.repository import GObject, Gedit

class SmartHomePlugin(GObject.Object, Gedit.ViewActivatable):
  __gtype_name__ = "SmartHomePlugin"

  view = GObject.property(type=Gedit.View)
  
  def __init__(self):
    GObject.Object.__init__(self)

  def do_activate(self):
    self.view.set_smart_home_end(True)
    pass

  def do_deactivate(self):
    self.view.set_smart_home_end(False)
    pass

  def do_update_state(self):
    pass
