namespace ValaGtkTemplate {

    int main (string[] args) {
        var app = new App ();
        return app.run (args);
    }
    
    class App : Adw.Application {

        public App () {
            Object (
                application_id: "de.thetek.vala-gtk-template",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            var window = new Window (this);
            window.present ();
        }

    }

}
