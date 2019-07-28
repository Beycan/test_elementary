public class MyApp : Gtk.Application {
	public MyApp () {
		Object(application_id: "testing.my.application",
				flags: ApplicationFlags.FLAGS_NONE);
	}

	protected override void activate () {
		// Create the window of this application and show it
		Gtk.ApplicationWindow window = new Gtk.ApplicationWindow (this);
		window.set_default_size (400, 400);
		window.title = "My first App";
		/* Gtk.Label label = new Gtk.Label ("Hello, GTK");
		window.add (label); */

        var lblTest=new Gtk.Label("Hello World-againA!");

        window.add(lblTest);
		window.show_all ();
	}

	public static int main (string[] args) {
		MyApp app = new MyApp ();
		return app.run (args);
	}
}
