/* This file is generated, do not edit! */
package scipy.sparse.sputils;
@:pythonImport("scipy.sparse.sputils") extern class Sputils_Module {
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Unpack keyword arguments for reshape function.
		
		This is useful because keyword arguments after star arguments are not
		allowed in Python 2, but star keyword arguments are. This function unpacks
		'order' and 'copy' from the star keyword arguments (with defaults) and
		throws an error for any remaining.
	**/
	static public function check_reshape_kwargs(kwargs:Dynamic):Dynamic;
	/**
		Imitate numpy.matrix handling of shape arguments
	**/
	static public function check_shape(args:Dynamic, ?current_shape:Dynamic):Dynamic;
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
		Mimic numpy's casting for np.sum
	**/
	static public function get_sum_dtype(dtype:Dynamic):Dynamic;
	/**
		This is a wrapper of `np.array(obj, dtype=dtype, copy=copy)`
		that will generate a warning if the result is an object array.
	**/
	static public function getdata(obj:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Function used to simplify argument processing. If 'dtype' is not
		specified (is None), returns a.dtype; otherwise returns a np.dtype
		object created from the specified dtype argument. If 'dtype' and 'a'
		are both None, construct a data type out of the 'default' parameter.
		Furthermore, 'dtype' must be in 'allowed' set.
	**/
	static public function getdtype(dtype:Dynamic, ?a:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Check whether object is pydata/sparse matrix, avoiding importing the module.
	**/
	static public function is_pydata_spmatrix(m:Dynamic):Dynamic;
	static public function isdense(x:Dynamic):Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	static public function ismatrix(t:Dynamic):Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	static public function issequence(t:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		
		If nonneg, also checks that the dimensions are non-negative.
	**/
	static public function isshape(x:Dynamic, ?nonneg:Dynamic):Dynamic;
	static public function matrix(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Product of a sequence of numbers.
		
		Faster than np.prod for short lists like array shapes, and does
		not overflow if using Python integers.
	**/
	static public function prod(iterable:Dynamic):Dynamic;
	static public var supported_dtypes : Dynamic;
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
		Determine data type for binary operation between an array of
		type `dtype` and a scalar.
	**/
	static public function upcast_scalar(dtype:Dynamic, scalar:Dynamic):Dynamic;
	static public function validateaxis(axis:Dynamic):Dynamic;
}