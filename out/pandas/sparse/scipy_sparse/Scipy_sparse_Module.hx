/* This file is generated, do not edit! */
package pandas.sparse.scipy_sparse;
@:pythonImport("pandas.sparse.scipy_sparse") extern class Scipy_sparse_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_is_partition(parts:Dynamic, whole:Dynamic):Dynamic;
	/**
		Convert a scipy.sparse.coo_matrix to a SparseSeries.
		Use the defaults given in the SparseSeries constructor. 
	**/
	static public function _coo_to_sparse_series(A:Dynamic, ?dense_index:Dynamic):Dynamic;
	/**
		Convert a SparseSeries to a scipy.sparse.coo_matrix using index
		levels row_levels, column_levels as the row and column
		labels respectively. Returns the sparse_matrix, row and column labels. 
	**/
	static public function _sparse_series_to_coo(ss:Dynamic, ?row_levels:Dynamic, ?column_levels:Dynamic, ?sort_labels:Dynamic):Dynamic;
	/**
		For arbitrary (MultiIndexed) SparseSeries return
		(v, i, j, ilabels, jlabels) where (v, (i, j)) is suitable for
		passing to scipy.sparse.coo constructor. 
	**/
	static public function _to_ijv(ss:Dynamic, ?row_levels:Dynamic, ?column_levels:Dynamic, ?sort_labels:Dynamic):Dynamic;
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
}