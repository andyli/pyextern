/* This file is generated, do not edit! */
package pandas.util.clipboard;
@:pythonImport("pandas.util.clipboard") extern class Clipboard_Module {
	static public var PIPE : Dynamic;
	static public var PY2 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _copyCygwin(text:Dynamic):Dynamic;
	static public function _copyGtk(text:Dynamic):Dynamic;
	static public function _copyKlipper(text:Dynamic):Dynamic;
	static public function _copyOSX(text:Dynamic):Dynamic;
	static public function _copyQt(text:Dynamic):Dynamic;
	static public function _copyWindows(text:Dynamic):Dynamic;
	static public function _copyXclip(text:Dynamic):Dynamic;
	static public function _copyXsel(text:Dynamic):Dynamic;
	static public var _functions : Dynamic;
	static public function _pasteCygwin():Dynamic;
	static public function _pasteGtk():Dynamic;
	static public function _pasteKlipper():Dynamic;
	static public function _pasteOSX():Dynamic;
	static public function _pasteQt():Dynamic;
	static public function _pasteWindows():Dynamic;
	static public function _pasteXclip():Dynamic;
	static public function _pasteXsel():Dynamic;
	static public var app : Dynamic;
	/**
		Run command with arguments.  Wait for command to complete or
		timeout, then return the returncode attribute.
		
		The arguments are the same as for the Popen constructor.  Example:
		
		retcode = call(["ls", "-l"])
	**/
	static public function call(?popenargs:python.VarArgs<Dynamic>, ?timeout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var cb : Dynamic;
	static public function clipboard_get():Dynamic;
	static public function clipboard_set(text:Dynamic):Dynamic;
	static public function copy(text:Dynamic):Dynamic;
	static public var gtkInstalled : Dynamic;
	static public function paste():Dynamic;
	static public var qtBindingInstalled : Dynamic;
	static public var xclipExists : Dynamic;
	static public var xklipperExists : Dynamic;
	static public var xselExists : Dynamic;
}