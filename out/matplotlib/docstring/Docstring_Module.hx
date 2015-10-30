/* This file is generated, do not edit! */
package matplotlib.docstring;
@:pythonImport("matplotlib.docstring") extern class Docstring_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Copy a docstring from another source function (if present)
	**/
	static public function copy(source:Dynamic):Dynamic;
	/**
		A decorator that will copy the docstring from the source and
		then dedent it
	**/
	static public function copy_dedent(source:Dynamic):Dynamic;
	/**
		Dedent a docstring (if present)
	**/
	static public function dedent(func:Dynamic):Dynamic;
	/**
		A special case of the interpd that first performs a dedent on
		the incoming docstring
	**/
	static public function dedent_interpd(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function interpd(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}