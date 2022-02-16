/* This file is generated, do not edit! */
package pandas.core.window.common;
@:pythonImport("pandas.core.window.common") extern class Common_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function flex_binary_moment(arg1:Dynamic, arg2:Dynamic, f:Dynamic, ?pairwise:Dynamic):Dynamic;
	static public function prep_binary(arg1:Dynamic, arg2:Dynamic):Dynamic;
	static public function zsqrt(x:Dynamic):Dynamic;
}