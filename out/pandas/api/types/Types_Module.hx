/* This file is generated, do not edit! */
package pandas.api.types;
@:pythonImport("pandas.api.types") extern class Types_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function is_any_int_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a categorical possibility 
	**/
	static public function is_categorical(array:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a datetime with tz array 
	**/
	static public function is_datetimetz(array:Dynamic):Dynamic;
	static public function is_dict_like(arg:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		if we are a klass that is preserved by the internals
		these are internal klasses that we represent (and don't use a np.array)
	**/
	static public function is_extension_type(value:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_floating_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_iterator(obj:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_named_tuple(arg:Dynamic):Dynamic;
	static public function is_number(obj:Dynamic):Dynamic;
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a period array 
	**/
	static public function is_period(array:Dynamic):Dynamic;
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		return if we are a sparse array 
	**/
	static public function is_sparse(array:Dynamic):Dynamic;
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
}