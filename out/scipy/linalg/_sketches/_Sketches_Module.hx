/* This file is generated, do not edit! */
package scipy.linalg._sketches;
@:pythonImport("scipy.linalg._sketches") extern class _Sketches_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Turn seed into a np.random.RandomState instance
		
		If seed is None (or np.random), return the RandomState singleton used
		by np.random.
		If seed is an int, return a new RandomState instance seeded with seed.
		If seed is already a RandomState instance, return it.
		Otherwise raise ValueError.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	/**
		"
		Find low-rank matrix approximation via the Clarkson-Woodruff Transform.
		
		Given an input_matrix ``A`` of size ``(n, d)``, compute a matrix ``A'`` of
		size (sketch_size, d) which holds:
		
		.. math:: ||Ax|| = (1 \pm \epsilon)||A'x||
		
		with high probability.
		
		The error is related to the number of rows of the sketch and it is bounded
		
		.. math:: poly(r(\epsilon^{-1}))
		
		Parameters
		----------
		input_matrix: array_like
		    Input matrix, of shape ``(n, d)``.
		sketch_size: int
		    Number of rows for the sketch.
		seed : None or int or `numpy.random.RandomState` instance, optional
		    This parameter defines the ``RandomState`` object to use for drawing
		    random variates.
		    If None (or ``np.random``), the global ``np.random`` state is used.
		    If integer, it is used to seed the local ``RandomState`` instance.
		    Default is None.
		
		Returns
		-------
		A' : array_like
		    Sketch of the input matrix ``A``, of size ``(sketch_size, d)``.
		
		Notes
		-----
		This is an implementation of the Clarkson-Woodruff Transform (CountSketch).
		``A'`` can be computed in principle in ``O(nnz(A))`` (with ``nnz`` meaning
		the number of nonzero entries), however we don't take advantage of sparse
		matrices in this implementation.
		
		Examples
		--------
		Given a big dense matrix ``A``:
		
		>>> from scipy import linalg
		>>> n_rows, n_columns, sketch_n_rows = (2000, 100, 100)
		>>> threshold = 0.1
		>>> tmp = np.random.normal(0, 0.1, n_rows*n_columns)
		>>> A = np.reshape(tmp, (n_rows, n_columns))
		>>> sketch = linalg.clarkson_woodruff_transform(A, sketch_n_rows)
		>>> sketch.shape
		(100, 100)
		>>> normA = linalg.norm(A)
		>>> norm_sketch = linalg.norm(sketch)
		
		Now with high probability, the condition ``abs(normA-normSketch) <
		threshold`` holds.
		
		References
		----------
		.. [1] Kenneth L. Clarkson and David P. Woodruff. Low rank approximation and
		       regression in input sparsity time. In STOC, 2013.
	**/
	static public function clarkson_woodruff_transform(input_matrix:Dynamic, sketch_size:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		"
		Generate a matrix S for the Clarkson-Woodruff sketch.
		
		Given the desired size of matrix, the method returns a matrix S of size
		(n_rows, n_columns) where each column has all the entries set to 0 less one
		position which has been randomly set to +1 or -1 with equal probability.
		
		Parameters
		----------
		n_rows: int
		    Number of rows of S
		n_columns: int
		    Number of columns of S
		seed : None or int or `numpy.random.RandomState` instance, optional
		    This parameter defines the ``RandomState`` object to use for drawing
		    random variates.
		    If None (or ``np.random``), the global ``np.random`` state is used.
		    If integer, it is used to seed the local ``RandomState`` instance.
		    Default is None.
		
		Returns
		-------
		S : (n_rows, n_columns) array_like
		
		Notes
		-----
		Given a matrix A, with probability at least 9/10,
		.. math:: ||SA|| == (1 \pm \epsilon)||A||
		Where epsilon is related to the size of S
	**/
	static public function cwt_matrix(n_rows:Dynamic, n_columns:Dynamic, ?seed:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}