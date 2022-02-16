/* This file is generated, do not edit! */
package pandas.core.internals.concat;
@:pythonImport("pandas.core.internals.concat") extern class Concat_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Manager(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Combine multiple concatenation plans into one.
		
		existing_plan is updated in-place.
	**/
	static public function _combine_concat_plans(plans:Dynamic):Dynamic;
	/**
		concat_managers specialized to concat_axis=0, with reindexing already
		having been done in _maybe_reindex_columns_na_proxy.
	**/
	static public function _concat_managers_axis0(mgrs_indexers:Dynamic, axes:Dynamic, copy:Dynamic):Dynamic;
	/**
		Concatenate array managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (ArrayManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
		
		Returns
		-------
		ArrayManager
	**/
	static public function _concatenate_array_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		Concatenate values from several join units along axis=1.
	**/
	static public function _concatenate_join_units(join_units:Dynamic, copy:Dynamic):Dynamic;
	/**
		Find the NA value to go with this dtype.
	**/
	static public function _dtype_to_na_value(dtype:Dynamic):Dynamic;
	/**
		Return dtype and N/A values to use when concatenating specified units.
		
		Returned N/A value may be None which means there was no casting involved.
		
		Returns
		-------
		dtype
	**/
	static public function _get_empty_dtype(join_units:Dynamic):Dynamic;
	/**
		Construct concatenation plan for given block manager.
		
		Parameters
		----------
		mgr : BlockManager
		
		Returns
		-------
		plan : list of (BlockPlacement, JoinUnit) tuples
	**/
	static public function _get_mgr_concatenation_plan(mgr:Dynamic):Dynamic;
	/**
		Check if the join units consist of blocks of uniform type that can
		be concatenated using Block.concat_same_type instead of the generic
		_concatenate_join_units (which uses `concat_compat`).
	**/
	static public function _is_uniform_join_units(join_units:Dynamic):Dynamic;
	static public function _is_uniform_reindex(join_units:Dynamic):Dynamic;
	/**
		Reindex along columns so that all of the BlockManagers being concatenated
		have matching columns.
		
		Columns added in this reindexing have dtype=np.void, indicating they
		should be ignored when choosing a column's final dtype.
	**/
	static public function _maybe_reindex_columns_na_proxy(axes:Dynamic, mgrs_indexers:Dynamic):Dynamic;
	/**
		Reduce join_unit's shape along item axis to length.
		
		Extra items that didn't fit are returned as a separate block.
	**/
	static public function _trim_join_unit(join_unit:Dynamic, length:Dynamic):Dynamic;
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
	/**
		Helper function for `arr.astype(common_dtype)` but handling all special
		cases.
	**/
	static public function cast_to_common_type(arr:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Alternative for concat_compat but specialized for use in the ArrayManager.
		
		Differences: only deals with 1D arrays (no axis keyword), assumes
		ensure_wrapped_if_datetimelike and does not skip empty arrays to determine
		the dtype.
		In addition ensures that all NullArrayProxies get replaced with actual
		arrays.
		
		Parameters
		----------
		to_concat : list of arrays
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function concat_arrays(to_concat:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		ea_compat_axis : bool, default False
		    For ExtensionArray compat, behave as if axis == 1 when determining
		    whether to drop empty arrays.
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function concat_compat(to_concat:Dynamic, ?axis:Dynamic, ?ea_compat_axis:Dynamic):Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
		
		Returns
		-------
		BlockManager
	**/
	static public function concatenate_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		Reshape if possible to have values.ndim == ndim.
	**/
	static public function ensure_block_shape(values:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		If we have a dtype that cannot hold NA values, find the best match that can.
	**/
	static public function ensure_dtype_can_hold_na(dtype:Dynamic):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
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
		Analogue to is_extension_array_dtype but excluding DatetimeTZDtype.
	**/
	static public function is_1d_only_ea_dtype(dtype:Dynamic):Dynamic;
	/**
		ExtensionArray that does not support 2D, or more specifically that does
		not use HybridBlock.
	**/
	static public function is_1d_only_ea_obj(obj:Dynamic):Dynamic;
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
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Construct an np.ndarray or ExtensionArray of the given dtype and shape
		holding all-NA values.
	**/
	static public function make_na_array(dtype:Dynamic, shape:Dynamic):Dynamic;
	static public function new_block_2d(values:Dynamic, placement:Dynamic):Dynamic;
}