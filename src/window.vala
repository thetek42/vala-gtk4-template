namespace ValaGtkTemplate {
    [GtkTemplate (ui = "/de/thetek/vala-gtk-template/ui/window.ui")]
    public class Window : Adw.ApplicationWindow {
        public Window (Gtk.Application app) {
            Object (application: app);
        }
    }
}
