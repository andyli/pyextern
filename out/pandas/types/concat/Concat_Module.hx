/* This file is generated, do not edit! */
package pandas.types.concat;
@:pythonImport("pandas.types.concat") extern class Concat_Module {
	static public var _NS_DTYPE : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate an object/categorical array of arrays, each of which is a
		single dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : int
		    Axis to provide concatenation in the current implementation this is
		    always 0, e.g. we only have 1D categoricals
		
		Returns
		-------
		Categorical
		    A single array, preserving the combined dtypes
	**/
	static public function _concat_categorical(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_compat(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		provide concatenation of an datetimelike array of arrays each of which is a
		single M8[ns], datetimet64[ns, tz] or m8[ns] dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		typs : set of to_concat dtypes
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_datetime(to_concat:Dynamic, ?axis:Dynamic, ?typs:Dynamic):Dynamic;
	/**
		concat DatetimeIndex with the same tz
		all inputs must be DatetimeIndex
		it is used in DatetimeIndex.append also
	**/
	static public function _concat_datetimetz(to_concat:Dynamic, ?name:Dynamic):Dynamic;
	/**
		concat all inputs as object. DatetimeIndex, TimedeltaIndex and
		PeriodIndex are converted to object dtype before concatenation
	**/
	static public function _concat_index_asobject(to_concat:Dynamic, ?name:Dynamic):Dynamic;
	/**
		provide concatenation of an sparse/dense array of arrays each of which is a
		single dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		typs : set of to_concat dtypes
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_sparse(to_concat:Dynamic, ?axis:Dynamic, ?typs:Dynamic):Dynamic;
	/**
		return appropriate class of DataFrame-like concat
		if any block is SparseBlock, return SparseDataFrame
		otherwise, return 1st obj
	**/
	static public function _get_frame_result_type(result:Dynamic, objs:Dynamic):Dynamic;
	/**
		return appropriate class of Series concat
		input is either dict or array-like
	**/
	static public function _get_series_result_type(result:Dynamic):Dynamic;
	/**
		Parameters
		----------
		l : list of arrays
		
		Returns
		-------
		a set of kinds that exist in this list of arrays
	**/
	static public function get_dtype_kinds(l:Dynamic):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a datetime with tz array 
	**/
	static public function is_datetimetz(array:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a sparse array 
	**/
	static public function is_sparse(array:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		Parameters
		----------
		arr : ndarray
		    Input array
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indicies are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Combine list-like of Categorical-like, unioning categories. All
		categories must have the same dtype.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		to_union : list-like of Categorical, CategoricalIndex,
		           or Series with dtype='category'
		sort_categories : boolean, default False
		    If true, resulting categories will be lexsorted, otherwise
		    they will be ordered as they appear in the data.
		
		Returns
		-------
		result : Categorical
		
		Raises
		------
		TypeError
		    - all inputs do not have the same dtype
		    - all inputs do not have the same ordered property
		    - all inputs are ordered and their categories are not identical
		    - sort_categories=True and Categoricals are ordered
		ValueError
		    Emmpty list of categoricals passed
	**/
	static public function union_categoricals(to_union:Dynamic, ?sort_categories:Dynamic):pandas.Categorical;
}