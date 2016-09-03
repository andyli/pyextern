/* This file is generated, do not edit! */
package scipy.sparse.linalg.matfuncs;
@:pythonImport("scipy.sparse.linalg.matfuncs") extern class Matfuncs_Module {
	static public var UPPER_TRIANGULAR : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _count_nonzero(A:Dynamic):Dynamic;
	/**
		A helper function for expm_2009.
		
		Parameters
		----------
		A : linear operator
		    A linear operator whose norm of power we care about.
		m : int
		    The power of the linear operator
		
		Returns
		-------
		value : int
		    A value related to a bound.
	**/
	static public function _ell(A:Dynamic, m:Dynamic):Int;
	/**
		Equation (10.42) of Functions of Matrices: Theory and Computation.
		
		Notes
		-----
		This is a helper function for _fragment_2_1 of expm_2009.
		Equation (10.42) is on page 251 in the section on Schur algorithms.
		In particular, section 10.4.3 explains the Schur-Parlett algorithm.
		expm([[lam_1, t_12], [0, lam_1])
		=
		[[exp(lam_1), t_12*exp((lam_1 + lam_2)/2)*sinch((lam_1 - lam_2)/2)],
		[0, exp(lam_2)]
	**/
	static public function _eq_10_42(lam_1:Dynamic, lam_2:Dynamic, t_12:Dynamic):Dynamic;
	static public function _expm(A:Dynamic, use_exact_onenorm:Dynamic):Dynamic;
	/**
		A helper function for expm_2009.
		
		Notes
		-----
		The argument X is modified in-place, but this modification is not the same
		as the returned value of the function.
		This function also takes pains to do things in ways that are compatible
		with sparse matrices, for example by avoiding fancy indexing
		and by using methods of the matrices whenever possible instead of
		using functions of the numpy or scipy libraries themselves.
	**/
	static public function _fragment_2_1(X:Dynamic, T:Dynamic, s:Dynamic):Dynamic;
	static public function _ident_like(A:Dynamic):Dynamic;
	static public function _is_upper_triangular(A:Dynamic):Dynamic;
	static public function _onenorm(A:Dynamic):Dynamic;
	/**
		Compute the 1-norm of a non-negative integer power of a non-negative matrix.
		
		Parameters
		----------
		A : a square ndarray or matrix or sparse matrix
		    Input matrix with non-negative entries.
		p : non-negative integer
		    The power to which the matrix is to be raised.
		
		Returns
		-------
		out : float
		    The 1-norm of the matrix power p of A.
	**/
	static public function _onenorm_matrix_power_nnm(A:Dynamic, p:Dynamic):Float;
	/**
		Efficiently estimate the 1-norm of A^p.
		
		Parameters
		----------
		A : ndarray
		    Matrix whose 1-norm of a power is to be computed.
		p : int
		    Non-negative integer power.
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
	**/
	static public function _onenormest_matrix_power(A:Dynamic, p:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic, ?structure:Dynamic):Float;
	/**
		Efficiently estimate the 1-norm of the matrix product of the args.
		
		Parameters
		----------
		operator_seq : linear operator sequence
		    Matrices whose 1-norm of product is to be computed.
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
		structure : str, optional
		    A string describing the structure of all operators.
		    Only `upper_triangular` is currently supported.
		
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
	**/
	static public function _onenormest_product(operator_seq:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic, ?structure:Dynamic):Float;
	/**
		Stably evaluate sinch.
		
		Notes
		-----
		The strategy of falling back to a sixth order Taylor expansion
		was suggested by the Spallation Neutron Source docs
		which was found on the internet by google search.
		http://www.ornl.gov/~t6p/resources/xal/javadoc/gov/sns/tools/math/ElementaryFunction.html
		The details of the cutoff point and the Horner-like evaluation
		was picked without reference to anything in particular.
		
		Note that sinch is not currently implemented in scipy.special,
		whereas the "engineer's" definition of sinc is implemented.
		The implementation of sinc involves a scaling factor of pi
		that distinguishes it from the "mathematician's" version of sinc.
	**/
	static public function _sinch(x:Dynamic):Dynamic;
	/**
		A matrix product that knows about sparse and structured matrices.
		
		Parameters
		----------
		A : 2d ndarray
		    First matrix.
		B : 2d ndarray
		    Second matrix.
		alpha : float
		    The matrix product will be scaled by this constant.
		structure : str, optional
		    A string describing the structure of both matrices `A` and `B`.
		    Only `upper_triangular` is currently supported.
		
		Returns
		-------
		M : 2d ndarray
		    Matrix product of A and B.
	**/
	static public function _smart_matrix_product(A:Dynamic, B:Dynamic, ?alpha:Dynamic, ?structure:Dynamic):Dynamic;
	/**
		A helper function for expm_2009.
		
		Parameters
		----------
		U : ndarray
		    Pade numerator.
		V : ndarray
		    Pade denominator.
		structure : str, optional
		    A string describing the structure of both matrices `U` and `V`.
		    Only `upper_triangular` is currently supported.
		
		Notes
		-----
		The `structure` argument is inspired by similar args
		for theano and cvxopt functions.
	**/
	static public function _solve_P_Q(U:Dynamic, V:Dynamic, ?structure:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Compute the matrix exponential using Pade approximation.
		
		Parameters
		----------
		A : (M,M) array_like or sparse matrix
		    2D Array or Matrix (sparse or dense) to be exponentiated
		
		Returns
		-------
		expA : (M,M) ndarray
		    Matrix exponential of `A`
		
		Notes
		-----
		This is algorithm (6.1) which is a simplification of algorithm (5.1).
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       "A New Scaling and Squaring Algorithm for the Matrix Exponential."
		       SIAM Journal on Matrix Analysis and Applications.
		       31 (3). pp. 970-989. ISSN 1095-7162
	**/
	static public function expm(A:Dynamic):Dynamic;
	/**
		Compute the inverse of a sparse matrix
		
		Parameters
		----------
		A : (M,M) ndarray or sparse matrix
		    square matrix to be inverted
		
		Returns
		-------
		Ainv : (M,M) ndarray or sparse matrix
		    inverse of `A`
		
		Notes
		-----
		This computes the sparse inverse of `A`.  If the inverse of `A` is expected
		to be non-sparse, it will likely be faster to convert `A` to dense and use
		scipy.linalg.inv.
		
		.. versionadded:: 0.12.0
	**/
	static public function inv(A:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Solve the equation ``a x = b`` for ``x``.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``a x = b``.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite.
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`, if `sym_pos` is
		    true.  Default is to use upper triangle.
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``a x = b``.  Shape of the return matches the
		    shape of `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		ValueError
		    If `a` is not square
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the equation `a x = b` for `x`, assuming a is a triangular matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A triangular matrix
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in `a x = b`
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`.
		    Default is to use upper triangle.
		trans : {0, 1, 2, 'N', 'T', 'C'}, optional
		    Type of system to solve:
		
		    ========  =========
		    trans     system
		    ========  =========
		    0 or 'N'  a x  = b
		    1 or 'T'  a^T x = b
		    2 or 'C'  a^H x = b
		    ========  =========
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and
		    will not be referenced.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system `a x = b`.  Shape of return matches `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular
		
		Notes
		-----
		.. versionadded:: 0.9.0
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		<3x3 sparse matrix of type '<type 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function speye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Solve the sparse linear system Ax=b, where b may be a vector or a matrix.
		
		Parameters
		----------
		A : ndarray or sparse matrix
		    The square matrix A will be converted into CSC or CSR form
		b : ndarray or sparse matrix
		    The matrix or vector representing the right hand side of the equation.
		    If a vector, b.shape must be (n,) or (n, 1).
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		use_umfpack : bool, optional
		    if True (default) then use umfpack for the solution.  This is
		    only referenced if b is a vector and ``scikit-umfpack`` is installed.
		
		Returns
		-------
		x : ndarray or sparse matrix
		    the solution of the sparse linear equation.
		    If b is a vector, then x is a vector of size A.shape[1]
		    If b is a matrix, then x is a matrix of size (A.shape[1], b.shape[1])
		
		Notes
		-----
		For solving the matrix expression AX = B, this solver assumes the resulting
		matrix X is sparse, as is often the case for very sparse inputs.  If the
		resulting X is dense, the construction of this sparse result will be
		relatively expensive.  In that case, consider converting A to a dense
		matrix and using scipy.linalg.solve or its variants.
	**/
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic, ?use_umfpack:Dynamic):Dynamic;
}