/* This file is generated, do not edit! */
package scipy.sparse.linalg._onenormest;
@:pythonImport("scipy.sparse.linalg._onenormest") extern class _Onenormest_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This is Algorithm 2.2.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can produce matrix products.
		AT : ndarray or other linear operator
		    The transpose of A.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		
		Returns
		-------
		g : sequence
		    A non-negative decreasing vector
		    such that g[j] is a lower bound for the 1-norm
		    of the column of A of jth largest 1-norm.
		    The first entry of this vector is therefore a lower bound
		    on the 1-norm of the linear operator A.
		    This sequence has length t.
		ind : sequence
		    The ith entry of ind is the index of the column A whose 1-norm
		    is given by g[i].
		    This sequence of indices has length t, and its entries are
		    chosen from range(n), possibly with repetition,
		    where n is the order of the operator A.
		
		Notes
		-----
		This algorithm is mainly for testing.
		It uses the 'ind' array in a way that is similar to
		its usage in algorithm 2.4.  This algorithm 2.2 may be easier to test,
		so it gives a chance of uncovering bugs related to indexing
		which could have propagated less noticeably to algorithm 2.4.
	**/
	static public function _algorithm_2_2(A:Dynamic, AT:Dynamic, t:Dynamic):Dynamic;
	/**
		Decorator for an elementwise function, to apply it blockwise along
		first dimension, to avoid excessive memory usage in temporaries.
	**/
	static public function _blocked_elementwise(func:Dynamic):Dynamic;
	static public function _max_abs_axis1(x:Dynamic):Dynamic;
	/**
		Compute a lower bound of the 1-norm of a sparse matrix.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can produce matrix products.
		AT : ndarray or other linear operator
		    The transpose of A.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		itmax : int, optional
		    Use at most this many iterations.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
		nmults : int, optional
		    The number of matrix products that were computed.
		nresamples : int, optional
		    The number of times a parallel column was observed,
		    necessitating a re-randomization of the column.
		
		Notes
		-----
		This is algorithm 2.4.
	**/
	static public function _onenormest_core(A:Dynamic, AT:Dynamic, t:Dynamic, itmax:Dynamic):Dynamic;
	static public function _sum_abs_axis0(X:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Examples
		--------
		>>> from scipy import matrix
		>>> M = matrix( [[1,2,3],[4,5,6]], dtype='int32' )
		>>> aslinearoperator( M )
		<2x3 LinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	static public function column_needs_resampling(i:Dynamic, X:Dynamic, ?Y:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function elementary_vector(n:Dynamic, i:Dynamic):Dynamic;
	static public function every_col_of_X_is_parallel_to_a_col_of_Y(X:Dynamic, Y:Dynamic):Dynamic;
	static public function less_than_or_close(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute a lower bound of the 1-norm of a sparse matrix.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can be transposed and that can
		    produce matrix products.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
		
		Notes
		-----
		This is algorithm 2.4 of [1].
		
		In [2] it is described as follows.
		"This algorithm typically requires the evaluation of
		about 4t matrix-vector products and almost invariably
		produces a norm estimate (which is, in fact, a lower
		bound on the norm) correct to within a factor 3."
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Nicholas J. Higham and Francoise Tisseur (2000),
		       "A Block Algorithm for Matrix 1-Norm Estimation,
		       with an Application to 1-Norm Pseudospectra."
		       SIAM J. Matrix Anal. Appl. Vol. 21, No. 4, pp. 1185-1201.
		
		.. [2] Awad H. Al-Mohy and Nicholas J. Higham (2009),
		       "A new scaling and squaring algorithm for the matrix exponential."
		       SIAM J. Matrix Anal. Appl. Vol. 31, No. 3, pp. 970-989.
	**/
	static public function onenormest(A:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function resample_column(i:Dynamic, X:Dynamic):Dynamic;
	static public function sign_round_up(x:Dynamic):Dynamic;
	static public function vectors_are_parallel(v:Dynamic, w:Dynamic):Dynamic;
}