/* This file is generated, do not edit! */
package matplotlib.backends.backend_tkagg;
@:pythonImport("matplotlib.backends.backend_tkagg") extern class Backend_tkagg_Module {
	static public var PIXELS_PER_INCH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var backend_version : Dynamic;
	static public var cursord : Dynamic;
	static public var cursors : Dynamic;
	static public var division : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public function error_msg_tkpaint(msg:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		msg is a return arg from a raise.  Join with new lines
	**/
	static public function raise_msg_to_str(msg:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function round(x:Dynamic):Dynamic;
	static public function show(?block:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
}