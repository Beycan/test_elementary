/*
* Copyright (c) 2011-2018 Your Organization (https://yourwebsite.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Author <beimercampos.123@gmail.com>
*/
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
