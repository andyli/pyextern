/* This file is generated, do not edit! */
package scipy.sparse.compressed;
@:pythonImport("scipy.sparse.compressed") extern class Compressed_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements: the indices of the input array
		that give the unique values, the indices of the unique array that
		reconstruct the input array, and the number of times each unique value
		comes up in the input array.
		
		Parameters
		----------
		ar : array_like
		    Input array. This will be flattened if it is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` that result in the unique
		    array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array that can be used
		    to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique value comes up
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    (flattened) original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the (flattened) original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'],
		       dtype='|S1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'],
		       dtype='|S1')
		
		Reconstruct the input array from the unique values:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
	**/
	static public function _compat_unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Down-cast index array to np.intp dtype if it is of a larger dtype.
		
		Raise an error if the array contains a value that is too large for
		intp.
	**/
	static public function downcast_intp_index(arr:Dynamic):Dynamic;
	/**
		Based on input (integer) arrays `a`, determine a suitable index data
		type that can hold the data in the arrays.
		
		Parameters
		----------
		arrays : tuple of array_like
		    Input arrays whose types/contents to check
		maxval : float, optional
		    Maximum value needed
		check_contents : bool, optional
		    Whether to check the values in the arrays and not just their types.
		    Default: False (check only the types)
		
		Returns
		-------
		dtype : dtype
		    Suitable index data type (int32 or int64)
	**/
	static public function get_index_dtype(?arrays:Dynamic, ?maxval:Dynamic, ?check_contents:Dynamic):Dynamic;
	/**
		Function used to simplify argument processing.  If 'dtype' is not
		specified (is None), returns a.dtype; otherwise returns a np.dtype
		object created from the specified dtype argument.  If 'dtype' and 'a'
		are both None, construct a data type out of the 'default' parameter.
		Furthermore, 'dtype' must be in 'allowed' set.
	**/
	static public function getdtype(dtype:Dynamic, ?a:Dynamic, ?_default:Dynamic):Dynamic;
	static public function isdense(x:Dynamic):Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		    
	**/
	static public function isshape(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function to_native(A:Dynamic):Dynamic;
	/**
		Returns the nearest supported sparse dtype for the
		combination of one or more types.
		
		upcast(t0, t1, ..., tn) -> T  where T is a supported dtype
		
		Examples
		--------
		
		>>> upcast('int32')
		<type 'numpy.int32'>
		>>> upcast('bool')
		<type 'numpy.bool_'>
		>>> upcast('int32','float32')
		<type 'numpy.float64'>
		>>> upcast('bool',complex,float)
		<type 'numpy.complex128'>
	**/
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Same as `upcast` but taking dtype.char as input (faster).
	**/
	static public function upcast_char(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}