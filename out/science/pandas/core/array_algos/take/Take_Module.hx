/* This file is generated, do not edit! */
package pandas.core.array_algos.take;
@:pythonImport("pandas.core.array_algos.take") extern class Take_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_wrapper(f:Dynamic, conv_dtype:Dynamic):Dynamic;
	/**
		Get the appropriate "take" implementation for the given dimension, axis
		and dtypes.
	**/
	static public function _get_take_nd_function(ndim:Dynamic, arr_dtype:Dynamic, out_dtype:Dynamic, ?axis:Dynamic, ?mask_info:Dynamic):Dynamic;
	/**
		Part of _get_take_nd_function below that doesn't need `mask_info` and thus
		can be cached (mask_info potentially contains a numpy ndarray which is not
		hashable and thus cannot be used as argument for cached function).
	**/
	static public function _get_take_nd_function_cached(ndim:Dynamic, arr_dtype:Dynamic, out_dtype:Dynamic, axis:Dynamic):Dynamic;
	static public var _take_1d_dict : Dynamic;
	static public var _take_2d_axis0_dict : Dynamic;
	static public var _take_2d_axis1_dict : Dynamic;
	static public var _take_2d_multi_dict : Dynamic;
	static public function _take_2d_multi_object(arr:Dynamic, indexer:Dynamic, out:Dynamic, fill_value:Dynamic, mask_info:Dynamic):Dynamic;
	static public function _take_nd_ndarray(arr:Dynamic, indexer:Dynamic, axis:Dynamic, fill_value:Dynamic, allow_fill:Dynamic):Dynamic;
	static public function _take_nd_object(arr:Dynamic, indexer:Dynamic, out:Dynamic, axis:Dynamic, fill_value:Dynamic, mask_info:Dynamic):Dynamic;
	static public function _take_preprocess_indexer_and_fill_value(arr:Dynamic, indexer:Dynamic, fill_value:Dynamic, allow_fill:Dynamic, ?mask:Dynamic):Dynamic;
	static public function _view_wrapper(f:Dynamic, ?arr_dtype:Dynamic, ?out_dtype:Dynamic, ?fill_wrap:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		ExtensionArray that does not support 2D, or more specifically that does
		not use HybridBlock.
	**/
	static public function is_1d_only_ea_obj(obj:Dynamic):Dynamic;
	/**
		Find the minimal dtype that can hold both the given dtype and fill_value.
		
		Parameters
		----------
		dtype : np.dtype
		fill_value : scalar, default np.nan
		
		Returns
		-------
		dtype
		    Upcasted from dtype argument if necessary.
		fill_value
		    Upcasted from fill_value argument if necessary.
		
		Raises
		------
		ValueError
		    If fill_value is a non-scalar and dtype is not object.
	**/
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : bool, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		numpy.datetime64('NaT')
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Specialized version for 1D arrays. Differences compared to `take_nd`:
		
		- Assumes input array has already been converted to numpy array / EA
		- Assumes indexer is already guaranteed to be intp dtype ndarray
		- Only works for 1D arrays
		
		To ensure the lowest possible overhead.
		
		Note: similarly to `take_nd`, this function assumes that the indexer is
		a valid(ated) indexer with no out of bound indices.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		    Input array.
		indexer : ndarray
		    1-D array of indices to take (validated indices, intp dtype).
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		allow_fill : bool, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask. Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		mask : np.ndarray, optional, default None
		    If `allow_fill` is True, and the mask (where indexer == -1) is already
		    known, it can be passed to avoid recomputation.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?fill_value:Dynamic, ?allow_fill:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass.
	**/
	static public function take_2d_multi(arr:Dynamic, indexer:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Note: this function assumes that the indexer is a valid(ated) indexer with
		no out of bound indices.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		allow_fill : bool, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : np.ndarray or ExtensionArray
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_nd(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic, ?allow_fill:Dynamic):Dynamic;
}