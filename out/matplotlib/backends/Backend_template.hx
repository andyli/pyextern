/* This file is generated, do not edit! */
package matplotlib.backends;
@:pythonImport("matplotlib.backends.backend_template") extern class Backend_template {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		For image backends - is not required
		For GUI backends - this should be overriden if drawing should be done in
		interactive python mode
	**/
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		For image backends - is not required
		For GUI backends - show() is usually the last line of a pylab script and
		tells the backend that it is time to draw.  In interactive mode, this may
		be a do nothing func.  See the GTK backend for an example of how to handle
		interactive versus batch mode
	**/
	static public function show():Dynamic;
	static public var unicode_literals : Dynamic;
}