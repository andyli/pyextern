/* This file is generated, do not edit! */
package torch._six;
@:pythonImport("torch._six") extern class _Six_Module {
	static public var PY2 : Dynamic;
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
	static public function get_function_from_type(cls:Dynamic, name:Dynamic):Dynamic;
	static public var inf : Dynamic;
	static public var nan : Dynamic;
	static public function raise_from(value:Dynamic, from_value:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
	/**
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, ?bases:python.VarArgs<Dynamic>):Dynamic;
}