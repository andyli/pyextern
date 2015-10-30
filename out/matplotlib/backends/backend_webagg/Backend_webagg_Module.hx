/* This file is generated, do not edit! */
package matplotlib.backends.backend_webagg;
@:pythonImport("matplotlib.backends.backend_webagg") extern class Backend_webagg_Module {
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
		Is called after every pylab drawing command
	**/
	static public function draw_if_interactive():Dynamic;
	static public function ipython_inline_display(figure:Dynamic):Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public function show():Dynamic;
	static public var unicode_literals : Dynamic;
	static public var webagg_server_thread : Dynamic;
}