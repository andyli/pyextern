/* This file is generated, do not edit! */
package pandas.sparse.series;
@:pythonImport("pandas.sparse.series") extern class Series_Module {
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
		
		str_rep, default_axis, fill_zeros and eval_kwargs are not used, but are
		present for compatibility.
	**/
	static public function _arith_method(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert a scipy.sparse.coo_matrix to a SparseSeries.
		Use the defaults given in the SparseSeries constructor.
	**/
	static public function _coo_to_sparse_series(A:Dynamic, ?dense_index:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _make_index(length:Dynamic, indices:Dynamic, kind:Dynamic):Dynamic;
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public function _sparse_array_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic):Dynamic;
	static public function _sparse_series_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic):Dynamic;
	/**
		Convert a SparseSeries to a scipy.sparse.coo_matrix using index
		levels row_levels, column_levels as the row and column
		labels respectively. Returns the sparse_matrix, row and column labels.
	**/
	static public function _sparse_series_to_coo(ss:Dynamic, ?row_levels:Dynamic, ?column_levels:Dynamic, ?sort_labels:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var nan : Dynamic;
}