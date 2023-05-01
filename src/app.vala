namespace ValaGtkTemplate {
    public class Application : Adw.Application {
        public Application () {
            Object (
                application_id: "de.thetek.vala-gtk-template",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        construct {
            ActionEntry[] action_entries = {
                { "about", this.on_about_action },
                { "preferences", this.on_preferences_action },
                { "quit", this.quit },
            };
            this.add_action_entries (action_entries, this);
            this.set_accels_for_action ("app.quit", { "<primary>q" });
        }

        public override void activate () {
            base.activate ();
            var win = this.active_window ?? new ValaGtkTemplate.Window (this);

            var css_provider = new Gtk.CssProvider ();
            css_provider.load_from_resource ("/de/thetek/vala-gtk-template/css/style.css");
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);

            win.present ();
        }

        private void on_about_action () {
            string[] developers = { "thetek" };
            var about = new Adw.AboutWindow () {
                transient_for = this.active_window,
                application_name = "vala-gtk-template",
                application_icon = "de.thetek.vala-gtk-template",
                developer_name = "thetek",
                version = "0.1.0",
                developers = developers,
                copyright = "© 2023 thetek",
            };

            about.present ();
        }

        private void on_preferences_action () {
            message ("app.preferences action activated");
        }
    }
}
