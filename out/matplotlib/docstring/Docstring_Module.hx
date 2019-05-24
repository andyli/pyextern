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
	/**
		Copy a docstring from another source function (if present)
	**/
	static public function copy(source:Dynamic):Dynamic;
	/**
		[*Deprecated*] A decorator that will copy the docstring from the source and
		then dedent it
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function copy_dedent(source:Dynamic):Dynamic;
	/**
		[*Deprecated*] Dedent a docstring (if present)
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function dedent(func:Dynamic):Dynamic;
	/**
		Dedent *func*'s docstring, then interpolate it with ``interpd``.
	**/
	static public function dedent_interpd(func:Dynamic):Dynamic;
	static public function interpd(func:Dynamic):Dynamic;
}