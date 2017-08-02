/* This file is generated, do not edit! */
package theano.misc.strutil;
@:pythonImport("theano.misc.strutil") extern class Strutil_Module {
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
	static public function pretty_format(string:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		string: a string, containing formatting instructions
		sub: a dictionary containing keys and values to substitute for
		    them.
		
		returns: string % sub
		
		The only difference between this function and the % operator
		is that it raises an exception with a more informative error
		message than the % operator does.
	**/
	static public function render_string(string:Dynamic, sub:Dynamic):Dynamic;
	static public function strip_leading_white_space(line:Dynamic):Dynamic;
}