/* This file is generated, do not edit! */
package matplotlib.backends;
@:pythonImport("matplotlib.backends.backend_macosx") extern class Backend_macosx {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var colorConverter : Dynamic;
	static public var division : Dynamic;
	/**
		For performance reasons, we don't want to redraw the figure after
		each draw command. Instead, we mark the figure as invalid, so that
		it will be redrawn as soon as the event loop resumes via PyOS_InputHook.
		This function should be called after each draw event, even if
		matplotlib is not running interactively.
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
	static public var rcParams : Dynamic;
	static public function show(?block:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}