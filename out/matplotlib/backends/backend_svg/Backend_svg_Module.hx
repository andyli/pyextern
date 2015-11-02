/* This file is generated, do not edit! */
package matplotlib.backends.backend_svg;
@:pythonImport("matplotlib.backends.backend_svg") extern class Backend_svg_Module {
	static public var KERNING_DEFAULT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _capstyle_d : Dynamic;
	static public var _escape_xml_comment : Dynamic;
	static public var absolute_import : Dynamic;
	static public var backend_version : Dynamic;
	static public var division : Dynamic;
	static public function escape_attrib(s:Dynamic):Dynamic;
	static public function escape_cdata(s:Dynamic):Dynamic;
	static public function escape_comment(s:Dynamic):Dynamic;
	/**
		Escape &, <, and > in a string of data.
		
		You can escape other strings of data by passing a dictionary as
		the optional entities parameter.  The keys and values must all be
		strings; each key will be replaced with its corresponding value.
	**/
	static public function escape_xml_text(data:Dynamic, ?entities:Dynamic):Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function generate_css(?attrib:Dynamic):Dynamic;
	static public function generate_transform(?transform_list:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		Returns a md5 hash object; optionally initialized with a string
	**/
	static public function md5(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		Given an rgb or rgba sequence of 0-1 floats, return the hex string
	**/
	static public function rgb2hex(rgb:Dynamic):Dynamic;
	static public var svgProlog : Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
}