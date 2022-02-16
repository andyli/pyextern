/* This file is generated, do not edit! */
package pandas.core.array_algos.putmask;
@:pythonImport("pandas.core.array_algos.putmask") extern class Putmask_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Can we do an inplace setitem with this element in an array with this dtype?
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		element : Any
		
		Returns
		-------
		bool
	**/
	static public function can_hold_element(arr:Dynamic, element:Dynamic):Dynamic;
	/**
		Convert datetimelike scalar if we are setting into a datetime64
		or timedelta64 ndarray.
		
		Parameters
		----------
		scalar : scalar
		dtype : np.dtype
		
		Returns
		-------
		scalar
	**/
	static public function convert_scalar_for_putitemlike(scalar:Dynamic, dtype:Dynamic):Dynamic;
	/**
		If we have a SparseArray or BooleanArray, convert it to ndarray[bool].
	**/
	static public function extract_bool_array(mask:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Interpret the dtype from a scalar or array.
		
		Parameters
		----------
		val : object
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar/array belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var npt : Dynamic;
	/**
		ExtensionArray-compatible implementation of np.putmask.  The main
		difference is we do not handle repeating or truncating like numpy.
		
		Parameters
		----------
		values: np.ndarray or ExtensionArray
		mask : np.ndarray[bool]
		    We assume extract_bool_array has already been called.
		value : Any
	**/
	static public function putmask_inplace(values:Dynamic, mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Return a new ndarray, try to preserve dtype if possible.
		
		Parameters
		----------
		values : np.ndarray
		    `values`, updated in-place.
		mask : np.ndarray[bool]
		    Applies to both sides (array like).
		new : listlike `new values` aligned with `values`
		
		Returns
		-------
		values : ndarray with updated values
		    this *may* be a copy of the original
		
		See Also
		--------
		np.putmask
	**/
	static public function putmask_smart(values:Dynamic, mask:Dynamic, _new:Dynamic):Dynamic;
	/**
		np.putmask will truncate or repeat if `new` is a listlike with
		len(new) != len(values).  We require an exact match.
		
		Parameters
		----------
		values : np.ndarray
		mask : np.ndarray[bool]
		new : Any
	**/
	static public function putmask_without_repeat(values:Dynamic, mask:Dynamic, _new:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : np.ndarray
		num_set : int
		    For putmask, this is mask.sum()
		other : Any
	**/
	static public function setitem_datetimelike_compat(values:Dynamic, num_set:Dynamic, other:Dynamic):Dynamic;
	/**
		Validate mask and check if this putmask operation is a no-op.
	**/
	static public function validate_putmask(values:Dynamic, mask:Dynamic):Dynamic;
}