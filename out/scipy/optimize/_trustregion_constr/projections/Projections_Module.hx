/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.projections;
@:pythonImport("scipy.optimize._trustregion_constr.projections") extern class Projections_Module {
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
		Return linear operators for matrix A - ``AugmentedSystem``.
	**/
	static public function augmented_system_projections(A:Dynamic, m:Dynamic, n:Dynamic, orth_tol:Dynamic, max_refin:Dynamic, tol:Dynamic):Dynamic;
	/**
		Build a sparse matrix from sparse sub-blocks
		
		Parameters
		----------
		blocks : array_like
		    Grid of sparse matrices with compatible shapes.
		    An entry of None implies an all-zero matrix.
		format : {'bsr', 'coo', 'csc', 'csr', 'dia', 'dok', 'lil'}, optional
		    The sparse format of the result (e.g. "csr").  By default an
		    appropriate sparse matrix format is returned.
		    This choice is subject to change.
		dtype : dtype, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		Returns
		-------
		bmat : sparse matrix
		
		See Also
		--------
		block_diag, diags
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, bmat
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5], [6]])
		>>> C = coo_matrix([[7]])
		>>> bmat([[A, B], [None, C]]).toarray()
		array([[1, 2, 5],
		       [3, 4, 6],
		       [0, 0, 7]])
		
		>>> bmat([[A, None], [None, C]]).toarray()
		array([[1, 2, 0],
		       [3, 4, 0],
		       [0, 0, 7]])
	**/
	static public function bmat(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Sparse matrix with ones on diagonal
		
		Returns a sparse (m x n) matrix where the k-th diagonal
		is all ones and everything else is zeros.
		
		Parameters
		----------
		m : int
		    Number of rows in the matrix.
		n : int, optional
		    Number of columns. Default: `m`.
		k : int, optional
		    Diagonal to place ones on. Default: 0 (main diagonal).
		dtype : dtype, optional
		    Data type of the matrix.
		format : str, optional
		    Sparse format of the result, e.g. format="csr", etc.
		
		Examples
		--------
		>>> from scipy import sparse
		>>> sparse.eye(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> sparse.eye(3, dtype=np.int8)
		<3x3 sparse matrix of type '<class 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function eye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
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
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Return linear operators for matrix A using ``NormalEquation`` approach.
		    
	**/
	static public function normal_equation_projections(A:Dynamic, m:Dynamic, n:Dynamic, orth_tol:Dynamic, max_refin:Dynamic, tol:Dynamic):Dynamic;
	/**
		Measure orthogonality between a vector and the null space of a matrix.
		
		Compute a measure of orthogonality between the null space
		of the (possibly sparse) matrix ``A`` and a given vector ``g``.
		
		The formula is a simplified (and cheaper) version of formula (3.13)
		from [1]_.
		``orth =  norm(A g, ord=2)/(norm(A, ord='fro')*norm(g, ord=2))``.
		
		References
		----------
		.. [1] Gould, Nicholas IM, Mary E. Hribar, and Jorge Nocedal.
		       "On the solution of equality constrained quadratic
		        programming problems arising in optimization."
		        SIAM Journal on Scientific Computing 23.4 (2001): 1376-1395.
	**/
	static public function orthogonality(A:Dynamic, g:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return three linear operators related with a given matrix A.
		
		Parameters
		----------
		A : sparse matrix (or ndarray), shape (m, n)
		    Matrix ``A`` used in the projection.
		method : string, optional
		    Method used for compute the given linear
		    operators. Should be one of:
		
		        - 'NormalEquation': The operators
		           will be computed using the
		           so-called normal equation approach
		           explained in [1]_. In order to do
		           so the Cholesky factorization of
		           ``(A A.T)`` is computed. Exclusive
		           for sparse matrices.
		        - 'AugmentedSystem': The operators
		           will be computed using the
		           so-called augmented system approach
		           explained in [1]_. Exclusive
		           for sparse matrices.
		        - 'QRFactorization': Compute projections
		           using QR factorization. Exclusive for
		           dense matrices.
		        - 'SVDFactorization': Compute projections
		           using SVD factorization. Exclusive for
		           dense matrices.
		
		orth_tol : float, optional
		    Tolerance for iterative refinements.
		max_refin : int, optional
		    Maximum number of iterative refinements
		tol : float, optional
		    Tolerance for singular values
		
		Returns
		-------
		Z : LinearOperator, shape (n, n)
		    Null-space operator. For a given vector ``x``,
		    the null space operator is equivalent to apply
		    a projection matrix ``P = I - A.T inv(A A.T) A``
		    to the vector. It can be shown that this is
		    equivalent to project ``x`` into the null space
		    of A.
		LS : LinearOperator, shape (m, n)
		    Least-Square operator. For a given vector ``x``,
		    the least-square operator is equivalent to apply a
		    pseudoinverse matrix ``pinv(A.T) = inv(A A.T) A``
		    to the vector. It can be shown that this vector
		    ``pinv(A.T) x`` is the least_square solution to
		    ``A.T y = x``.
		Y : LinearOperator, shape (n, m)
		    Row-space operator. For a given vector ``x``,
		    the row-space operator is equivalent to apply a
		    projection matrix ``Q = A.T inv(A A.T)``
		    to the vector.  It can be shown that this
		    vector ``y = Q x``  the minimum norm solution
		    of ``A y = x``.
		
		Notes
		-----
		Uses iterative refinements described in [1]
		during the computation of ``Z`` in order to
		cope with the possibility of large roundoff errors.
		
		References
		----------
		.. [1] Gould, Nicholas IM, Mary E. Hribar, and Jorge Nocedal.
		    "On the solution of equality constrained quadratic
		    programming problems arising in optimization."
		    SIAM Journal on Scientific Computing 23.4 (2001): 1376-1395.
	**/
	static public function projections(A:Dynamic, ?method:Dynamic, ?orth_tol:Dynamic, ?max_refin:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Return linear operators for matrix A using ``QRFactorization`` approach.
		    
	**/
	static public function qr_factorization_projections(A:Dynamic, m:Dynamic, n:Dynamic, orth_tol:Dynamic, max_refin:Dynamic, tol:Dynamic):Dynamic;
	static public var sksparse_available : Dynamic;
	/**
		Return linear operators for matrix A using ``SVDFactorization`` approach.
		    
	**/
	static public function svd_factorization_projections(A:Dynamic, m:Dynamic, n:Dynamic, orth_tol:Dynamic, max_refin:Dynamic, tol:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}