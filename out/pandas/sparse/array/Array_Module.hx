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
		provide concatenation of an sparse/dense array of arrays each of which is a single dtype
		
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
		try to convert to dense 
	**/
	static public function _maybe_to_dense(obj:Dynamic):Dynamic;
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	static public function _sparse_array_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic):Dynamic;
	static public function _sparse_fillop(_this:Dynamic, other:Dynamic, name:Dynamic):Dynamic;
	static public function _sparse_nanop(_this:Dynamic, other:Dynamic, name:Dynamic):Dynamic;
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