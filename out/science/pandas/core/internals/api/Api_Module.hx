/* This file is generated, do not edit! */
package pandas.core.internals.api;
@:pythonImport("pandas.core.internals.api") extern class Api_Module {
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		ndim inference and validation.
		
		Validates that values.ndim and ndim are consistent.
		Validates that len(values) and len(placement) are consistent.
		
		Parameters
		----------
		values : array-like
		placement : BlockPlacement
		ndim : int
		
		Raises
		------
		ValueError : the number of dimensions do not match
	**/
	static public function check_ndim(values:Dynamic, placement:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Reshape if possible to have values.ndim == ndim.
	**/
	static public function ensure_block_shape(values:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		Ensure that we don't allow PandasArray / PandasDtype in internals.
	**/
	static public function extract_pandas_array(values:Dynamic, dtype:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Find the appropriate Block subclass to use for the given values and dtype.
		
		Parameters
		----------
		dtype : numpy or pandas dtype
		
		Returns
		-------
		cls : class, subclass of Block
	**/
	static public function get_block_type(dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		This is a pseudo-public analogue to blocks.new_block.
		
		We ask that downstream libraries use this rather than any fully-internal
		APIs, including but not limited to:
		
		- core.internals.blocks.make_block
		- Block.make_block
		- Block.make_block_same_class
		- Block.__init__
	**/
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Input validation for values passed to __init__. Ensure that
		any datetime64/timedelta64 dtypes are in nanoseconds.  Ensure
		that we do not have string dtypes.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		
		Returns
		-------
		values : np.ndarray or ExtensionArray
	**/
	static public function maybe_coerce_values(values:Dynamic):Dynamic;
	/**
		If `ndim` is not provided, infer it from placment and values.
	**/
	static public function maybe_infer_ndim(values:Dynamic, placement:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Convert input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
}