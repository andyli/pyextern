/* This file is generated, do not edit! */
package matplotlib.backends.backend_qtagg;
@:pythonImport("matplotlib.backends.backend_qtagg") extern class Backend_qtagg_Module {
	static public var QT_API : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _enum(name:Dynamic):Dynamic;
	/**
		Call obj.setDevicePixelRatio(val) with graceful fallback for older Qt.
		
		This can be replaced by the direct call when we require Qt>=5.6.
	**/
	static public function _setDevicePixelRatio(obj:Dynamic, val:Dynamic):Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
}