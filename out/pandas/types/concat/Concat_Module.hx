/* This file is generated, do not edit! */
package pandas.types.concat;
@:pythonImport("pandas.types.concat") extern class Concat_Module {
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
}