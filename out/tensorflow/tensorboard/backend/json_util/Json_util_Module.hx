/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.json_util;
@:pythonImport("tensorflow.tensorboard.backend.json_util") extern class Json_util_Module {
	/**
		Makes Python object appropriate for JSON serialization.
		
		- Replaces instances of Infinity/-Infinity/NaN with strings.
		- Turns byte strings into unicode strings.
		- Turns sets into sorted lists.
		- Turns tuples into lists.
		
		Args:
		  obj: Python data structure.
		  encoding: Charset used to decode byte strings.
		
		Returns:
		  Unicode JSON data structure.
	**/
	static public function Cleanse(obj:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var _INFINITY : Dynamic;
	static public var _NEGATIVE_INFINITY : Dynamic;
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
	static public var print_function : Dynamic;
}