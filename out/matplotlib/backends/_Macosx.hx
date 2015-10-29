/* This file is generated, do not edit! */
package matplotlib.backends;
@:pythonImport("matplotlib.backends._macosx") extern class _Macosx {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Closes the window.
	**/
	static public function choose_save_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sets the active cursor.
	**/
	static public function set_cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Show all the figures and enter the main loop.
		This function does not return until all Matplotlib windows are closed,
		and is normally not needed in interactive sessions.
	**/
	static public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
}