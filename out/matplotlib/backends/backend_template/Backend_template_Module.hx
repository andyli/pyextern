/* This file is generated, do not edit! */
package matplotlib.backends.backend_template;
@:pythonImport("matplotlib.backends.backend_template") extern class Backend_template_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		For image backends - is not required.
		For GUI backends - this should be overridden if drawing should be done in
		interactive python mode.
	**/
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?FigureClass:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		For image backends - is not required.
		For GUI backends - show() is usually the last line of a pyplot script and
		tells the backend that it is time to draw.  In interactive mode, this
		should do nothing.
	**/
	static public function show(?block:Dynamic):Dynamic;
}