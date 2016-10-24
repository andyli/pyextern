/* This file is generated, do not edit! */
package pandas.indexes.range;
@:pythonImport("pandas.indexes.range") extern class Range_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _index_shared_docs : Dynamic;
	/**
		getsizeof(object, default) -> int
		
		Return the size of object in bytes.
	**/
	static public function getsizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}