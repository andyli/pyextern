/* This file is generated, do not edit! */
package pandas.types.inference;
@:pythonImport("pandas.types.inference") extern class Inference_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _iterable_not_string(x:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_dict_like(arg:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if hash(arg) will succeed, False otherwise.
		
		Some types will pass a test against collections.Hashable but fail when they
		are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Examples
		--------
		>>> a = ([],)
		>>> isinstance(a, collections.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(arg:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_iterator(obj:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_named_tuple(arg:Dynamic):Dynamic;
	static public function is_number(obj:Dynamic):Dynamic;
	static public function is_re(obj:Dynamic):Dynamic;
	static public function is_re_compilable(obj:Dynamic):Dynamic;
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
	static public function is_sequence(x:Dynamic):Dynamic;
	static public function is_string_like(obj:Dynamic):Dynamic;
	static public var string_and_binary_types : Dynamic;
	static public var string_types : Dynamic;
}