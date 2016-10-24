/* This file is generated, do not edit! */
package pandas.parser;
@:pythonImport("pandas.parser") extern class Parser_Module {
	static public var DEFAULT_CHUNKSIZE : Dynamic;
	static public var QUOTE_MINIMAL : Dynamic;
	static public var QUOTE_NONE : Dynamic;
	static public var QUOTE_NONNUMERIC : Dynamic;
	static public var _NA_VALUES : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _compute_na_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _concatenate_chunks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_encoded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_file_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _maybe_encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    
	**/
	static public function _maybe_upcast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _to_structured_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public var na_values : Dynamic;
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