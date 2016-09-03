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
	static public var _index_shared_docs : Dynamic;
	static public function _make_index(length:Dynamic, indices:Dynamic, kind:Dynamic):Dynamic;
	/**
		try to convert to dense 
	**/
	static public function _maybe_to_dense(obj:Dynamic):Dynamic;
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	/**
		return an ndarray for our input,
		in a platform independent manner
	**/
	static public function _sanitize_values(arr:Dynamic):Dynamic;
	static public var _sparray_doc_kwargs : Dynamic;
	static public function _sparse_array_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic):Dynamic;
	/**
		wrap op result to have correct dtype 
	**/
	static public function _wrap_result(name:Dynamic, data:Dynamic, sparse_index:Dynamic, fill_value:Dynamic):Dynamic;
	static public var division : Dynamic;
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