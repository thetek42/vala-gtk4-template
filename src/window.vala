namespace ValaGtkTemplate {

    [GtkTemplate (ui = "/vala-gtk-template/window.ui")]
    class Window : Adw.ApplicationWindow {

        public Window (Adw.Application app) {
            Object (
                application: app,
                title: "Vala & GTK Template"
            );
        }

    }

}
