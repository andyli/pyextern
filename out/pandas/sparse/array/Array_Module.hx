/* This file is generated, do not edit! */
package pandas.sparse.array;
@:pythonImport("pandas.sparse.array") extern class Array_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a view if copy is False, but
		need to be very careful as the result shape could change! 
	**/
	static public function _astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find a common data type among the given dtypes.
	**/
	static public function _find_common_type(types:Dynamic):Dynamic;
	static public function _get_fill(arr:Dynamic):Dynamic;
	static public var _index_shared_docs : Dynamic;
	static public function _make_index(length:Dynamic, indices:Dynamic, kind:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		try to convert to dense 
	**/
	static public function _maybe_to_dense(obj:Dynamic):Dynamic;
	/**
		array must be SparseSeries or SparseArray 
	**/
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here 
	**/
	static public function _possibly_convert_platform(values:Dynamic):Dynamic;
	/**
		return an ndarray for our input,
		in a platform independent manner
	**/
	static public function _sanitize_values(arr:Dynamic):Dynamic;
	static public var _sparray_doc_kwargs : Dynamic;
	static public function _sparse_array_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic, ?series:Dynamic):Dynamic;
	/**
		wrap op result to have correct dtype 
	**/
	static public function _wrap_result(name:Dynamic, data:Dynamic, sparse_index:Dynamic, fill_value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
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
		Convert ndarray to sparse format
		
		Parameters
		----------
		arr : ndarray
		kind : {'block', 'integer'}
		fill_value : NaN or another value
		
		Returns
		-------
		(sparse_values, index) : (ndarray, SparseIndex)
	**/
	static public function make_sparse(arr:Dynamic, ?kind:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function na_value_for_dtype(dtype:Dynamic):Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
}