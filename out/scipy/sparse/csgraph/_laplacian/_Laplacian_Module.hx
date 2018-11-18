/* This file is generated, do not edit! */
package scipy.sparse.csgraph._laplacian;
@:pythonImport("scipy.sparse.csgraph._laplacian") extern class _Laplacian_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _laplacian_dense(graph:Dynamic, ?normed:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _laplacian_sparse(graph:Dynamic, ?normed:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _setdiag_dense(A:Dynamic, d:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	/**
		Return the Laplacian matrix of a directed graph.
		
		Parameters
		----------
		csgraph : array_like or sparse matrix, 2 dimensions
		    compressed-sparse graph, with shape (N, N).
		normed : bool, optional
		    If True, then compute normalized Laplacian.
		return_diag : bool, optional
		    If True, then also return an array related to vertex degrees.
		use_out_degree : bool, optional
		    If True, then use out-degree instead of in-degree.
		    This distinction matters only if the graph is asymmetric.
		    Default: False.
		
		Returns
		-------
		lap : ndarray or sparse matrix
		    The N x N laplacian matrix of csgraph. It will be a numpy array (dense)
		    if the input was dense, or a sparse matrix otherwise.
		diag : ndarray, optional
		    The length-N diagonal of the Laplacian matrix.
		    For the normalized Laplacian, this is the array of square roots
		    of vertex degrees or 1 if the degree is zero.
		
		Notes
		-----
		The Laplacian matrix of a graph is sometimes referred to as the
		"Kirchoff matrix" or the "admittance matrix", and is useful in many
		parts of spectral graph theory.  In particular, the eigen-decomposition
		of the laplacian matrix can give insight into many properties of the graph.
		
		Examples
		--------
		>>> from scipy.sparse import csgraph
		>>> G = np.arange(5) * np.arange(5)[:, np.newaxis]
		>>> G
		array([[ 0,  0,  0,  0,  0],
		       [ 0,  1,  2,  3,  4],
		       [ 0,  2,  4,  6,  8],
		       [ 0,  3,  6,  9, 12],
		       [ 0,  4,  8, 12, 16]])
		>>> csgraph.laplacian(G, normed=False)
		array([[  0,   0,   0,   0,   0],
		       [  0,   9,  -2,  -3,  -4],
		       [  0,  -2,  16,  -6,  -8],
		       [  0,  -3,  -6,  21, -12],
		       [  0,  -4,  -8, -12,  24]])
	**/
	static public function laplacian(csgraph:Dynamic, ?normed:Dynamic, ?return_diag:Dynamic, ?use_out_degree:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}