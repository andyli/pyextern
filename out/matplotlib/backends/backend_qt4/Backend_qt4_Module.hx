/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt4;
@:pythonImport("matplotlib.backends.backend_qt4") extern class Backend_qt4_Module {
	static public var ALT : Dynamic;
	static public var CTRL : Dynamic;
	static public var DEBUG : Dynamic;
	static public var MODIFIER_KEYS : Dynamic;
	static public var SHIFT : Dynamic;
	static public var SPECIAL_KEYS : Dynamic;
	static public var SUPER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Only one qApp can exist at a time, so check before creating one.
	**/
	static public function _create_qApp():Dynamic;
	/**
		getSaveFileName(parent: QWidget = None, caption: str = '', directory: str = '', filter: str = '', initialFilter: str = '', options: Union[QFileDialog.Options, QFileDialog.Option] = 0) -> Tuple[str, str]
	**/
	static public function _getSaveFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var backend_version : Dynamic;
	static public var cursord : Dynamic;
	static public var cursors : Dynamic;
	static public var division : Dynamic;
	/**
		Is called after every pylab drawing command
	**/
	static public function draw_if_interactive():Dynamic;
	static public function error_msg_qt(msg:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Handle uncaught exceptions
		It does not catch SystemExit
	**/
	static public function exception_handler(type:Dynamic, value:Dynamic, tb:Dynamic):Dynamic;
	static public function fn_name():Dynamic;
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
	static public function show(?block:Dynamic):Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}