/* This file is generated, do not edit! */
package pandas.core.indexing;
@:pythonImport("pandas.core.indexing") extern class Indexing_Module {
	static public var IndexSlice : Dynamic;
	static public var _NS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _asarray_tuplesafe(values:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _eps : Dynamic;
	/**
		infer the fill value for the nan/NaT from the provided
		scalar/ndarray/list-like if we are a NaT, return the correct dtyped
		element to provide proper block construction
	**/
	static public function _infer_fill_value(val:Dynamic):Dynamic;
	/**
		want nice defaults for background_gradient that don't break
		with non-numeric data. But if slice_ is passed go with that.
	**/
	static public function _maybe_numeric_slice(df:Dynamic, slice_:Dynamic, ?include_bool:Dynamic):Dynamic;
	/**
		Ensurse that a slice doesn't reduce to a Series or Scalar.
		
		Any user-paseed `subset` should have this called on it
		to make sure we're always working with DataFrames.
	**/
	static public function _non_reducing_slice(slice_:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function check_bool_indexer(ax:Dynamic, key:Dynamic):Dynamic;
	/**
		create a filtered indexer that doesn't have any missing indexers 
	**/
	static public function convert_from_missing_indexer_tuple(indexer:Dynamic, axes:Dynamic):Dynamic;
	/**
		reverse convert a missing indexer, which is a dict
		return the scalar indexer and a boolean indicating if we converted
	**/
	static public function convert_missing_indexer(indexer:Dynamic):Dynamic;
	/**
		if we are index sliceable, then return my slicer, otherwise return None
		    
	**/
	static public function convert_to_index_sliceable(obj:Dynamic, key:Dynamic):Dynamic;
	static public function get_indexers_list():Dynamic;
	static public function is_bool_indexer(key:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		we have a full length slice 
	**/
	static public function is_full_slice(obj:Dynamic, l:Dynamic):Dynamic;
	static public function is_index_slice(obj:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_label_like(key:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_list_like_indexer(key:Dynamic):Dynamic;
	static public function is_nested_tuple(tup:Dynamic, labels:Dynamic):Dynamic;
	/**
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
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
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		return the length of a single non-tuple indexer which could be a slice
		    
	**/
	static public function length_of_indexer(indexer:Dynamic, ?target:Dynamic):Dynamic;
	/**
		if we have negative indicies, translate to postive here
		if have indicies that are out-of-bounds, raise an IndexError
	**/
	static public function maybe_convert_indices(indices:Dynamic, n:Dynamic):Dynamic;
	/**
		We likely want to take the cross-product
	**/
	static public function maybe_convert_ix(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function maybe_droplevels(index:Dynamic, key:Dynamic):Dynamic;
	static public function need_slice(obj:Dynamic):Dynamic;
}