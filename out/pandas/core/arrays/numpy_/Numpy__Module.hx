/* This file is generated, do not edit! */
package pandas.core.arrays.numpy_;
@:pythonImport("pandas.core.arrays.numpy_") extern class Numpy__Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function backfill_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	static public function pad_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Validate the keyword arguments to 'fillna'.
		
		This checks that exactly one of 'value' and 'method' is specified.
		If 'method' is specified, this validates that it's a valid method.
		
		Parameters
		----------
		value, method : object
		    The 'value' and 'method' keyword arguments for 'fillna'.
		validate_scalar_dict_value : bool, default True
		    Whether to validate that 'value' is a scalar or dict. Specifically,
		    validate that it is not a list or tuple.
		
		Returns
		-------
		value, method : object
	**/
	static public function validate_fillna_kwargs(value:Dynamic, method:Dynamic, ?validate_scalar_dict_value:Dynamic):Dynamic;
}