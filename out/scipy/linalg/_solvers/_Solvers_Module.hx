/* This file is generated, do not edit! */
package scipy.linalg._solvers;
@:pythonImport("scipy.linalg._solvers") extern class _Solvers_Module {
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
		A helper function to validate the arguments supplied to the
		Riccati equation solvers. Any discrepancy found in the input
		matrices leads to a ``ValueError`` exception.
		
		Essentially, it performs:
		
		    - a check whether the input is free of NaN and Infs.
		    - a pass for the data through ``numpy.atleast_2d()``
		    - squareness check of the relevant arrays,
		    - shape consistency check of the arrays,
		    - singularity check of the relevant arrays,
		    - symmetricity check of the relevant matrices,
		    - a check whether the regular or the generalized version is asked.
		
		This function is used by ``solve_continuous_are`` and
		``solve_discrete_are``.
		
		Parameters
		----------
		a, b, q, r, e, s : array_like
		    Input data
		eq_type : str
		    Accepted arguments are 'care' and 'dare'.
		
		Returns
		-------
		a, b, q, r, e, s : ndarray
		    Regularized input data
		m, n : int
		    shape of the problem
		r_or_c : type
		    Data type of the problem, returns float or complex
		gen_or_not : bool
		    Type of the equation, True for generalized and False for regular ARE.
	**/
	static public function _are_validate_args(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic, e:Dynamic, s:Dynamic, ?eq_type:Dynamic):Dynamic;
	/**
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation using a bilinear transformation.
		
		This function is called by the `solve_discrete_lyapunov` function with
		`method=bilinear`. It is not supposed to be called directly.
	**/
	static public function _solve_discrete_lyapunov_bilinear(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation directly.
		
		This function is called by the `solve_discrete_lyapunov` function with
		`method=direct`. It is not supposed to be called directly.
	**/
	static public function _solve_discrete_lyapunov_direct(a:Dynamic, q:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a block diagonal matrix from provided arrays.
		
		Given the inputs `A`, `B` and `C`, the output will have these
		arrays arranged on the diagonal::
		
		    [[A, 0, 0],
		     [0, B, 0],
		     [0, 0, C]]
		
		Parameters
		----------
		A, B, C, ... : array_like, up to 2-D
		    Input arrays.  A 1-D array or array_like sequence of length `n` is
		    treated as a 2-D array with shape ``(1,n)``.
		
		Returns
		-------
		D : ndarray
		    Array with `A`, `B`, `C`, ... on the diagonal.  `D` has the
		    same dtype as `A`.
		
		Notes
		-----
		If all the input arrays are square, the output is known as a
		block diagonal matrix.
		
		Empty sequences (i.e., array-likes of zero size) will not be ignored.
		Noteworthy, both [] and [[]] are treated as matrices with shape ``(1,0)``.
		
		Examples
		--------
		>>> from scipy.linalg import block_diag
		>>> A = [[1, 0],
		...      [0, 1]]
		>>> B = [[3, 4, 5],
		...      [6, 7, 8]]
		>>> C = [[7]]
		>>> P = np.zeros((2, 0), dtype='int32')
		>>> block_diag(A, B, C)
		array([[1, 0, 0, 0, 0, 0],
		       [0, 1, 0, 0, 0, 0],
		       [0, 0, 3, 4, 5, 0],
		       [0, 0, 6, 7, 8, 0],
		       [0, 0, 0, 0, 0, 7]])
		>>> block_diag(A, P, B, C)
		array([[1, 0, 0, 0, 0, 0],
		       [0, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 3, 4, 5, 0],
		       [0, 0, 6, 7, 8, 0],
		       [0, 0, 0, 0, 0, 7]])
		>>> block_diag(1.0, [2, 3], [[4, 5], [6, 7]])
		array([[ 1.,  0.,  0.,  0.,  0.],
		       [ 0.,  2.,  3.,  0.,  0.],
		       [ 0.,  0.,  0.,  4.,  5.],
		       [ 0.,  0.,  0.,  6.,  7.]])
	**/
	static public function block_diag(?arrs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compute the condition number of a matrix.
		
		This function is capable of returning the condition number using
		one of seven different norms, depending on the value of `p` (see
		Parameters below).
		
		Parameters
		----------
		x : (..., M, N) array_like
		    The matrix whose condition number is sought.
		p : {None, 1, -1, 2, -2, inf, -inf, 'fro'}, optional
		    Order of the norm:
		
		    =====  ============================
		    p      norm for matrices
		    =====  ============================
		    None   2-norm, computed directly using the ``SVD``
		    'fro'  Frobenius norm
		    inf    max(sum(abs(x), axis=1))
		    -inf   min(sum(abs(x), axis=1))
		    1      max(sum(abs(x), axis=0))
		    -1     min(sum(abs(x), axis=0))
		    2      2-norm (largest sing. value)
		    -2     smallest singular value
		    =====  ============================
		
		    inf means the numpy.inf object, and the Frobenius norm is
		    the root-of-sum-of-squares norm.
		
		Returns
		-------
		c : {float, inf}
		    The condition number of the matrix. May be infinite.
		
		See Also
		--------
		numpy.linalg.norm
		
		Notes
		-----
		The condition number of `x` is defined as the norm of `x` times the
		norm of the inverse of `x` [1]_; the norm can be the usual L2-norm
		(root-of-sum-of-squares) or one of a number of other matrix norms.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, Orlando, FL,
		       Academic Press, Inc., 1980, pg. 285.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, 0, -1], [0, 1, 0], [1, 0, 1]])
		>>> a
		array([[ 1,  0, -1],
		       [ 0,  1,  0],
		       [ 1,  0,  1]])
		>>> LA.cond(a)
		1.4142135623730951
		>>> LA.cond(a, 'fro')
		3.1622776601683795
		>>> LA.cond(a, np.inf)
		2.0
		>>> LA.cond(a, -np.inf)
		1.0
		>>> LA.cond(a, 1)
		2.0
		>>> LA.cond(a, -1)
		1.0
		>>> LA.cond(a, 2)
		1.4142135623730951
		>>> LA.cond(a, -2)
		0.70710678118654746
		>>> min(LA.svd(a, compute_uv=0))*min(LA.svd(LA.inv(a), compute_uv=0))
		0.70710678118654746
	**/
	static public function cond(x:Dynamic, ?p:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(1000,1000)
		>>> b = np.random.rand(1000,1)*1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		Compute the (multiplicative) inverse of a matrix.
		
		Given a square matrix `a`, return the matrix `ainv` satisfying
		``dot(a, ainv) = dot(ainv, a) = eye(a.shape[0])``.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be inverted.
		
		Returns
		-------
		ainv : (..., M, M) ndarray or matrix
		    (Multiplicative) inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is not square or inversion fails.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		Examples
		--------
		>>> from numpy.linalg import inv
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> ainv = inv(a)
		>>> np.allclose(np.dot(a, ainv), np.eye(2))
		True
		>>> np.allclose(np.dot(ainv, a), np.eye(2))
		True
		
		If a is a matrix object, then the return value is a matrix as well:
		
		>>> ainv = inv(np.matrix(a))
		>>> ainv
		matrix([[-2. ,  1. ],
		        [ 1.5, -0.5]])
		
		Inverses of several matrices can be computed at once:
		
		>>> a = np.array([[[1., 2.], [3., 4.]], [[1, 3], [3, 5]]])
		>>> inv(a)
		array([[[-2. ,  1. ],
		        [ 1.5, -0.5]],
		       [[-5. ,  2. ],
		        [ 3. , -1. ]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Kronecker product.
		
		The result is the block matrix::
		
		    a[0,0]*b    a[0,1]*b  ... a[0,-1]*b
		    a[1,0]*b    a[1,1]*b  ... a[1,-1]*b
		    ...
		    a[-1,0]*b   a[-1,1]*b ... a[-1,-1]*b
		
		Parameters
		----------
		a : (M, N) ndarray
		    Input array
		b : (P, Q) ndarray
		    Input array
		
		Returns
		-------
		A : (M*P, N*Q) ndarray
		    Kronecker product of `a` and `b`.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.linalg import kron
		>>> kron(array([[1,2],[3,4]]), array([[1,1,1]]))
		array([[1, 1, 1, 2, 2, 2],
		       [3, 3, 3, 4, 4, 4]])
	**/
	static public function kron(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Array to decompose
		permute_l : bool, optional
		    Perform the multiplication P*L  (Default: do not permute)
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		**(If permute_l == False)**
		
		p : (M, M) ndarray
		    Permutation matrix
		l : (M, K) ndarray
		    Lower triangular or trapezoidal matrix with unit diagonal.
		    K = min(M, N)
		u : (K, N) ndarray
		    Upper triangular or trapezoidal matrix
		
		**(If permute_l == True)**
		
		pl : (M, K) ndarray
		    Permuted L matrix.
		    K = min(M, N)
		u : (K, N) ndarray
		    Upper triangular or trapezoidal matrix
		
		Notes
		-----
		This is a LU factorization routine written for SciPy.
		
		Examples
		--------
		>>> from scipy.linalg import lu
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> p, l, u = lu(A)
		>>> np.allclose(A - p @ l @ u, np.zeros((4, 4)))
		True
	**/
	static public function lu(a:Dynamic, ?permute_l:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute a diagonal similarity transformation for row/column balancing.
		
		The balancing tries to equalize the row and column 1-norms by applying
		a similarity transformation such that the magnitude variation of the
		matrix entries is reflected to the scaling matrices.
		
		Moreover, if enabled, the matrix is first permuted to isolate the upper
		triangular parts of the matrix and, again if scaling is also enabled,
		only the remaining subblocks are subjected to scaling.
		
		The balanced matrix satisfies the following equality
		
		.. math::
		
		                    B = T^{-1} A T
		
		The scaling coefficients are approximated to the nearest power of 2
		to avoid round-off errors.
		
		Parameters
		----------
		A : (n, n) array_like
		    Square data matrix for the balancing.
		permute : bool, optional
		    The selector to define whether permutation of A is also performed
		    prior to scaling.
		scale : bool, optional
		    The selector to turn on and off the scaling. If False, the matrix
		    will not be scaled.
		separate : bool, optional
		    This switches from returning a full matrix of the transformation
		    to a tuple of two separate 1D permutation and scaling arrays.
		overwrite_a : bool, optional
		    This is passed to xGEBAL directly. Essentially, overwrites the result
		    to the data. It might increase the space efficiency. See LAPACK manual
		    for details. This is False by default.
		
		Returns
		-------
		B : (n, n) ndarray
		    Balanced matrix
		T : (n, n) ndarray
		    A possibly permuted diagonal matrix whose nonzero entries are
		    integer powers of 2 to avoid numerical truncation errors.
		scale, perm : (n,) ndarray
		    If ``separate`` keyword is set to True then instead of the array
		    ``T`` above, the scaling and the permutation vectors are given
		    separately as a tuple without allocating the full array ``T``.
		
		Notes
		-----
		
		This algorithm is particularly useful for eigenvalue and matrix
		decompositions and in many cases it is already called by various
		LAPACK routines.
		
		The algorithm is based on the well-known technique of [1]_ and has
		been modified to account for special cases. See [2]_ for details
		which have been implemented since LAPACK v3.5.0. Before this version
		there are corner cases where balancing can actually worsen the
		conditioning. See [3]_ for such examples.
		
		The code is a wrapper around LAPACK's xGEBAL routine family for matrix
		balancing.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy import linalg
		>>> x = np.array([[1,2,0], [9,1,0.01], [1,2,10*np.pi]])
		
		>>> y, permscale = linalg.matrix_balance(x)
		>>> np.abs(x).sum(axis=0) / np.abs(x).sum(axis=1)
		array([ 3.66666667,  0.4995005 ,  0.91312162])
		
		>>> np.abs(y).sum(axis=0) / np.abs(y).sum(axis=1)
		array([ 1.2       ,  1.27041742,  0.92658316])  # may vary
		
		>>> permscale  # only powers of 2 (0.5 == 2^(-1))
		array([[  0.5,   0. ,  0. ],  # may vary
		       [  0. ,   1. ,  0. ],
		       [  0. ,   0. ,  1. ]])
		
		References
		----------
		.. [1] : B.N. Parlett and C. Reinsch, "Balancing a Matrix for
		   Calculation of Eigenvalues and Eigenvectors", Numerische Mathematik,
		   Vol.13(4), 1969, DOI:10.1007/BF02165404
		
		.. [2] : R. James, J. Langou, B.R. Lowery, "On matrix balancing and
		   eigenvector computation", 2014, Available online:
		   https://arxiv.org/abs/1401.5766
		
		.. [3] :  D.S. Watkins. A case where balancing is harmful.
		   Electron. Trans. Numer. Anal, Vol.23, 2006.
	**/
	static public function matrix_balance(A:Dynamic, ?permute:Dynamic, ?scale:Dynamic, ?separate:Dynamic, ?overwrite_a:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		
		    .. versionadded:: 1.8.0
		
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		nan
		>>> LA.norm(b, -2)
		1.8570331885190563e-016
		>>> LA.norm(a, 3)
		5.8480354764257312
		>>> LA.norm(a, -3)
		nan
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		QZ decomposition for a pair of matrices with reordering.
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		A : (N, N) array_like
		    2d array to decompose
		B : (N, N) array_like
		    2d array to decompose
		sort : {callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted. A
		    callable may be passed that, given an ordered pair ``(alpha,
		    beta)`` representing the eigenvalue ``x = (alpha/beta)``,
		    returns a boolean denoting whether the eigenvalue should be
		    sorted to the top-left (True). For the real matrix pairs
		    ``beta`` is real while ``alpha`` can be complex, and for
		    complex matrix pairs both ``alpha`` and ``beta`` can be
		    complex. The callable must be able to accept a numpy
		    array. Alternatively, string parameters may be used:
		
		        - 'lhp'   Left-hand plane (x.real < 0.0)
		        - 'rhp'   Right-hand plane (x.real > 0.0)
		        - 'iuc'   Inside the unit circle (x*x.conjugate() < 1.0)
		        - 'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    With the predefined sorting functions, an infinite eigenvalue
		    (i.e. ``alpha != 0`` and ``beta = 0``) is considered to lie in
		    neither the left-hand nor the right-hand plane, but it is
		    considered to lie outside the unit circle. For the eigenvalue
		    ``(alpha, beta) = (0, 0)`` the predefined sorting functions
		    all return `False`.
		output : str {'real','complex'}, optional
		    Construct the real or complex QZ decomposition for real matrices.
		    Default is 'real'.
		overwrite_a : bool, optional
		    If True, the contents of A are overwritten.
		overwrite_b : bool, optional
		    If True, the contents of B are overwritten.
		check_finite : bool, optional
		    If true checks the elements of `A` and `B` are finite numbers. If
		    false does no checking and passes matrix through to
		    underlying algorithm.
		
		Returns
		-------
		AA : (N, N) ndarray
		    Generalized Schur form of A.
		BB : (N, N) ndarray
		    Generalized Schur form of B.
		alpha : (N,) ndarray
		    alpha = alphar + alphai * 1j. See notes.
		beta : (N,) ndarray
		    See notes.
		Q : (N, N) ndarray
		    The left Schur vectors.
		Z : (N, N) ndarray
		    The right Schur vectors.
		
		Notes
		-----
		On exit, ``(ALPHAR(j) + ALPHAI(j)*i)/BETA(j), j=1,...,N``, will be the
		generalized eigenvalues.  ``ALPHAR(j) + ALPHAI(j)*i`` and
		``BETA(j),j=1,...,N`` are the diagonals of the complex Schur form (S,T)
		that would result if the 2-by-2 diagonal blocks of the real generalized
		Schur form of (A,B) were further reduced to triangular form using complex
		unitary transformations. If ALPHAI(j) is zero, then the j-th eigenvalue is
		real; if positive, then the ``j``-th and ``(j+1)``-st eigenvalues are a
		complex conjugate pair, with ``ALPHAI(j+1)`` negative.
		
		See also
		--------
		qz
		
		Examples
		--------
		>>> from scipy.linalg import ordqz
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> B = np.array([[0, 6, 0, 0], [5, 0, 2, 1], [5, 2, 6, 6], [4, 7, 7, 7]])
		>>> AA, BB, alpha, beta, Q, Z = ordqz(A, B, sort='lhp')
		
		Since we have sorted for left half plane eigenvalues, negatives come first
		
		>>> (alpha/beta).real < 0
		array([ True,  True, False, False], dtype=bool)
	**/
	static public function ordqz(A:Dynamic, B:Dynamic, ?sort:Dynamic, ?output:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in SciPy 0.11) makes the function return two matrices
		    (Q, TAU) in the internal format used by LAPACK.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition. If pivoting, compute the decomposition
		    ``A P = Q R`` as above, but where P is chosen such that the diagonal
		    of R is non-increasing.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		Q : float or complex ndarray
		    Of shape (M, M), or (M, K) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``.  ``K = min(M, N)``.
		P : int ndarray
		    Of shape (N,) for ``pivoting=True``. Not returned if
		    ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, zungqr, dgeqp3, and zgeqp3.
		
		If ``mode=economic``, the shapes of Q and R are (M, K) and (K, N) instead
		of (M,M) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import random, linalg, dot, diag, all, allclose
		>>> a = random.randn(9, 6)
		
		>>> q, r = linalg.qr(a)
		>>> allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = abs(diag(r4))
		>>> all(d[1:] <= d[:-1])
		True
		>>> allclose(a[:, p4], dot(q4, r4))
		True
		>>> q4.shape, r4.shape, p4.shape
		((9, 9), (9, 6), (6,))
		
		>>> q5, r5, p5 = linalg.qr(a, mode='economic', pivoting=True)
		>>> q5.shape, r5.shape, p5.shape
		((9, 6), (6, 6), (6,))
	**/
	static public function qr(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute Schur decomposition of a matrix.
		
		The Schur decomposition is::
		
		    A = Z T Z^H
		
		where Z is unitary and T is either upper-triangular, or for real
		Schur decomposition (output='real'), quasi-upper triangular.  In
		the quasi-triangular form, 2x2 blocks describing complex-valued
		eigenvalue pairs may extrude from the diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex Schur decomposition (for real matrices).
		lwork : int, optional
		    Work array size. If None or -1, it is automatically computed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance).
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True).
		    Alternatively, string parameters may be used::
		
		        'lhp'   Left-hand plane (x.real < 0.0)
		        'rhp'   Right-hand plane (x.real > 0.0)
		        'iuc'   Inside the unit circle (x*x.conjugate() <= 1.0)
		        'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Schur form of A. It is real-valued for the real Schur decomposition.
		Z : (M, M) ndarray
		    An unitary Schur transformation matrix for A.
		    It is real-valued for the real Schur decomposition.
		sdim : int
		    If and only if sorting was requested, a third return value will
		    contain the number of eigenvalues satisfying the sort condition.
		
		Raises
		------
		LinAlgError
		    Error raised under three conditions:
		
		    1. The algorithm failed due to a failure of the QR algorithm to
		       compute all eigenvalues
		    2. If eigenvalue sorting was requested, the eigenvalues could not be
		       reordered due to a failure to separate eigenvalues, usually because
		       of poor conditioning
		    3. If eigenvalue sorting was requested, roundoff errors caused the
		       leading eigenvalues to no longer satisfy the sorting condition
		
		See also
		--------
		rsf2csf : Convert real Schur form to complex Schur form
		
		Examples
		--------
		>>> from scipy.linalg import schur, eigvals
		>>> A = np.array([[0, 2, 2], [0, 1, 2], [1, 0, 1]])
		>>> T, Z = schur(A)
		>>> T
		array([[ 2.65896708,  1.42440458, -1.92933439],
		       [ 0.        , -0.32948354, -0.49063704],
		       [ 0.        ,  1.31178921, -0.32948354]])
		>>> Z
		array([[0.72711591, -0.60156188, 0.33079564],
		       [0.52839428, 0.79801892, 0.28976765],
		       [0.43829436, 0.03590414, -0.89811411]])
		
		>>> T2, Z2 = schur(A, output='complex')
		>>> T2
		array([[ 2.65896708, -1.22839825+1.32378589j,  0.42590089+1.51937378j],
		       [ 0.        , -0.32948354+0.80225456j, -0.59877807+0.56192146j],
		       [ 0.        ,  0.                    , -0.32948354-0.80225456j]])
		>>> eigvals(T2)
		array([2.65896708, -0.32948354+0.80225456j, -0.32948354-0.80225456j])
		
		An arbitrary custom eig-sorting condition, having positive imaginary part, 
		which is satisfied by only one eigenvalue
		
		>>> T3, Z3, sdim = schur(A, output='complex', sort=lambda x: x.imag > 0)
		>>> sdim
		1
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solves the linear equation set ``a * x = b`` for the unknown ``x``
		for square ``a`` matrix.
		
		If the data matrix is known to be a particular type then supplying the
		corresponding string to ``assume_a`` key chooses the dedicated solver.
		The available options are
		
		===================  ========
		 generic matrix       'gen'
		 symmetric            'sym'
		 hermitian            'her'
		 positive definite    'pos'
		===================  ========
		
		If omitted, ``'gen'`` is the default structure.
		
		The datatype of the arrays define which solver is called regardless
		of the values. In other words, even when the complex array entries have
		precisely zero imaginary parts, the complex solver will be called based
		on the data type of the array.
		
		Parameters
		----------
		a : (N, N) array_like
		    Square input data
		b : (N, NRHS) array_like
		    Input data for the right hand side.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite. This key is deprecated
		    and assume_a = 'pos' keyword is recommended instead. The functionality
		    is the same. It will be removed in the future.
		lower : bool, optional
		    If True, only the data contained in the lower triangle of `a`. Default
		    is to use upper triangle. (ignored for ``'gen'``)
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
		assume_a : str, optional
		    Valid entries are explained above.
		transposed: bool, optional
		    If True, ``a^T x = b`` for real matrices, raises `NotImplementedError`
		    for complex matrices (only for True).
		
		Returns
		-------
		x : (N, NRHS) ndarray
		    The solution array.
		
		Raises
		------
		ValueError
		    If size mismatches detected or input a is not square.
		LinAlgError
		    If the matrix is singular.
		LinAlgWarning
		    If an ill-conditioned input a is detected.
		NotImplementedError
		    If transposed is True and input a is a complex matrix.
		
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
		
		Notes
		-----
		If the input b matrix is a 1D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1D array.
		
		The generic, symmetric, hermitian and positive definite solutions are
		obtained via calling ?GESV, ?SYSV, ?HESV, and ?POSV routines of
		LAPACK respectively.
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic, ?assume_a:Dynamic, ?transposed:Dynamic):Dynamic;
	/**
		Solves the continuous-time algebraic Riccati equation (CARE).
		
		The CARE is defined as
		
		.. math::
		
		      X A + A^H X - X B R^{-1} B^H X + Q = 0
		
		The limitations for a solution to exist are :
		
		    * All eigenvalues of :math:`A` on the right half plane, should be
		      controllable.
		
		    * The associated hamiltonian pencil (See Notes), should have
		      eigenvalues sufficiently away from the imaginary axis.
		
		Moreover, if ``e`` or ``s`` is not precisely ``None``, then the
		generalized version of CARE
		
		.. math::
		
		      E^HXA + A^HXE - (E^HXB + S) R^{-1} (B^HXE + S^H) + Q = 0
		
		is solved. When omitted, ``e`` is assumed to be the identity and ``s``
		is assumed to be the zero matrix with sizes compatible with ``a`` and
		``b`` respectively.
		
		Parameters
		----------
		a : (M, M) array_like
		    Square matrix
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Nonsingular square matrix
		e : (M, M) array_like, optional
		    Nonsingular square matrix
		s : (M, N) array_like, optional
		    Input
		balanced : bool, optional
		    The boolean that indicates whether a balancing step is performed
		    on the data. The default is set to True.
		
		Returns
		-------
		x : (M, M) ndarray
		    Solution to the continuous-time algebraic Riccati equation.
		
		Raises
		------
		LinAlgError
		    For cases where the stable subspace of the pencil could not be
		    isolated. See Notes section and the references for details.
		
		See Also
		--------
		solve_discrete_are : Solves the discrete-time algebraic Riccati equation
		
		Notes
		-----
		The equation is solved by forming the extended hamiltonian matrix pencil,
		as described in [1]_, :math:`H - \lambda J` given by the block matrices ::
		
		    [ A    0    B ]             [ E   0    0 ]
		    [-Q  -A^H  -S ] - \lambda * [ 0  E^H   0 ]
		    [ S^H B^H   R ]             [ 0   0    0 ]
		
		and using a QZ decomposition method.
		
		In this algorithm, the fail conditions are linked to the symmetry
		of the product :math:`U_2 U_1^{-1}` and condition number of
		:math:`U_1`. Here, :math:`U` is the 2m-by-m matrix that holds the
		eigenvectors spanning the stable subspace with 2m rows and partitioned
		into two m-row matrices. See [1]_ and [2]_ for more details.
		
		In order to improve the QZ decomposition accuracy, the pencil goes
		through a balancing step where the sum of absolute values of
		:math:`H` and :math:`J` entries (after removing the diagonal entries of
		the sum) is balanced following the recipe given in [3]_.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1]  P. van Dooren , "A Generalized Eigenvalue Approach For Solving
		   Riccati Equations.", SIAM Journal on Scientific and Statistical
		   Computing, Vol.2(2), DOI: 10.1137/0902010
		
		.. [2] A.J. Laub, "A Schur Method for Solving Algebraic Riccati
		   Equations.", Massachusetts Institute of Technology. Laboratory for
		   Information and Decision Systems. LIDS-R ; 859. Available online :
		   http://hdl.handle.net/1721.1/1301
		
		.. [3] P. Benner, "Symplectic Balancing of Hamiltonian Matrices", 2001,
		   SIAM J. Sci. Comput., 2001, Vol.22(5), DOI: 10.1137/S1064827500367993
		
		Examples
		--------
		Given `a`, `b`, `q`, and `r` solve for `x`:
		
		>>> from scipy import linalg
		>>> a = np.array([[4, 3], [-4.5, -3.5]])
		>>> b = np.array([[1], [-1]])
		>>> q = np.array([[9, 6], [6, 4.]])
		>>> r = 1
		>>> x = linalg.solve_continuous_are(a, b, q, r)
		>>> x
		array([[ 21.72792206,  14.48528137],
		       [ 14.48528137,   9.65685425]])
		>>> np.allclose(a.T.dot(x) + x.dot(a)-x.dot(b).dot(b.T).dot(x), -q)
		True
	**/
	static public function solve_continuous_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic, ?e:Dynamic, ?s:Dynamic, ?balanced:Dynamic):Dynamic;
	/**
		Solves the continuous Lyapunov equation :math:`AX + XA^H = Q`.
		
		Uses the Bartels-Stewart algorithm to find :math:`X`.
		
		Parameters
		----------
		a : array_like
		    A square matrix
		
		q : array_like
		    Right-hand side square matrix
		
		Returns
		-------
		x : ndarray
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_discrete_lyapunov : computes the solution to the discrete-time
		    Lyapunov equation
		solve_sylvester : computes the solution to the Sylvester equation
		
		Notes
		-----
		The continuous Lyapunov equation is a special form of the Sylvester
		equation, hence this solver relies on LAPACK routine ?TRSYL.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		Given `a` and `q` solve for `x`:
		
		>>> from scipy import linalg
		>>> a = np.array([[-3, -2, 0], [-1, -1, 0], [0, -5, -1]])
		>>> b = np.array([2, 4, -1])
		>>> q = np.eye(3)
		>>> x = linalg.solve_continuous_lyapunov(a, q)
		>>> x
		array([[ -0.75  ,   0.875 ,  -3.75  ],
		       [  0.875 ,  -1.375 ,   5.3125],
		       [ -3.75  ,   5.3125, -27.0625]])
		>>> np.allclose(a.dot(x) + x.dot(a.T), q)
		True
	**/
	static public function solve_continuous_lyapunov(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Solves the discrete-time algebraic Riccati equation (DARE).
		
		The DARE is defined as
		
		.. math::
		
		      A^HXA - X - (A^HXB) (R + B^HXB)^{-1} (B^HXA) + Q = 0
		
		The limitations for a solution to exist are :
		
		    * All eigenvalues of :math:`A` outside the unit disc, should be
		      controllable.
		
		    * The associated symplectic pencil (See Notes), should have
		      eigenvalues sufficiently away from the unit circle.
		
		Moreover, if ``e`` and ``s`` are not both precisely ``None``, then the
		generalized version of DARE
		
		.. math::
		
		      A^HXA - E^HXE - (A^HXB+S) (R+B^HXB)^{-1} (B^HXA+S^H) + Q = 0
		
		is solved. When omitted, ``e`` is assumed to be the identity and ``s``
		is assumed to be the zero matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    Square matrix
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Square matrix
		e : (M, M) array_like, optional
		    Nonsingular square matrix
		s : (M, N) array_like, optional
		    Input
		balanced : bool
		    The boolean that indicates whether a balancing step is performed
		    on the data. The default is set to True.
		
		Returns
		-------
		x : (M, M) ndarray
		    Solution to the discrete algebraic Riccati equation.
		
		Raises
		------
		LinAlgError
		    For cases where the stable subspace of the pencil could not be
		    isolated. See Notes section and the references for details.
		
		See Also
		--------
		solve_continuous_are : Solves the continuous algebraic Riccati equation
		
		Notes
		-----
		The equation is solved by forming the extended symplectic matrix pencil,
		as described in [1]_, :math:`H - \lambda J` given by the block matrices ::
		
		       [  A   0   B ]             [ E   0   B ]
		       [ -Q  E^H -S ] - \lambda * [ 0  A^H  0 ]
		       [ S^H  0   R ]             [ 0 -B^H  0 ]
		
		and using a QZ decomposition method.
		
		In this algorithm, the fail conditions are linked to the symmetry
		of the product :math:`U_2 U_1^{-1}` and condition number of
		:math:`U_1`. Here, :math:`U` is the 2m-by-m matrix that holds the
		eigenvectors spanning the stable subspace with 2m rows and partitioned
		into two m-row matrices. See [1]_ and [2]_ for more details.
		
		In order to improve the QZ decomposition accuracy, the pencil goes
		through a balancing step where the sum of absolute values of
		:math:`H` and :math:`J` rows/cols (after removing the diagonal entries)
		is balanced following the recipe given in [3]_. If the data has small
		numerical noise, balancing may amplify their effects and some clean up
		is required.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1]  P. van Dooren , "A Generalized Eigenvalue Approach For Solving
		   Riccati Equations.", SIAM Journal on Scientific and Statistical
		   Computing, Vol.2(2), DOI: 10.1137/0902010
		
		.. [2] A.J. Laub, "A Schur Method for Solving Algebraic Riccati
		   Equations.", Massachusetts Institute of Technology. Laboratory for
		   Information and Decision Systems. LIDS-R ; 859. Available online :
		   http://hdl.handle.net/1721.1/1301
		
		.. [3] P. Benner, "Symplectic Balancing of Hamiltonian Matrices", 2001,
		   SIAM J. Sci. Comput., 2001, Vol.22(5), DOI: 10.1137/S1064827500367993
		
		Examples
		--------
		Given `a`, `b`, `q`, and `r` solve for `x`:
		
		>>> from scipy import linalg as la
		>>> a = np.array([[0, 1], [0, -1]])
		>>> b = np.array([[1, 0], [2, 1]])
		>>> q = np.array([[-4, -4], [-4, 7]])
		>>> r = np.array([[9, 3], [3, 1]])
		>>> x = la.solve_discrete_are(a, b, q, r)
		>>> x
		array([[-4., -4.],
		       [-4.,  7.]])
		>>> R = la.solve(r + b.T.dot(x).dot(b), b.T.dot(x).dot(a))
		>>> np.allclose(a.T.dot(x).dot(a) - x - a.T.dot(x).dot(b).dot(R), -q)
		True
	**/
	static public function solve_discrete_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic, ?e:Dynamic, ?s:Dynamic, ?balanced:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation :math:`AXA^H - X + Q = 0`.
		
		Parameters
		----------
		a, q : (M, M) array_like
		    Square matrices corresponding to A and Q in the equation
		    above respectively. Must have the same shape.
		
		method : {'direct', 'bilinear'}, optional
		    Type of solver.
		
		    If not given, chosen to be ``direct`` if ``M`` is less than 10 and
		    ``bilinear`` otherwise.
		
		Returns
		-------
		x : ndarray
		    Solution to the discrete Lyapunov equation
		
		See Also
		--------
		solve_continuous_lyapunov : computes the solution to the continuous-time
		    Lyapunov equation
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is *direct* if ``M`` is less than 10
		and ``bilinear`` otherwise.
		
		Method *direct* uses a direct analytical solution to the discrete Lyapunov
		equation. The algorithm is given in, for example, [1]_. However it requires
		the linear solution of a system with dimension :math:`M^2` so that
		performance degrades rapidly for even moderately sized matrices.
		
		Method *bilinear* uses a bilinear transformation to convert the discrete
		Lyapunov equation to a continuous Lyapunov equation :math:`(BX+XB'=-C)`
		where :math:`B=(A-I)(A+I)^{-1}` and
		:math:`C=2(A' + I)^{-1} Q (A + I)^{-1}`. The continuous equation can be
		efficiently solved since it is a special case of a Sylvester equation.
		The transformation algorithm is from Popov (1964) as described in [2]_.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Hamilton, James D. Time Series Analysis, Princeton: Princeton
		   University Press, 1994.  265.  Print.
		   http://doc1.lbfl.li/aca/FLMF037168.pdf
		.. [2] Gajic, Z., and M.T.J. Qureshi. 2008.
		   Lyapunov Matrix Equation in System Stability and Control.
		   Dover Books on Engineering Series. Dover Publications.
		
		Examples
		--------
		Given `a` and `q` solve for `x`:
		
		>>> from scipy import linalg
		>>> a = np.array([[0.2, 0.5],[0.7, -0.9]])
		>>> q = np.eye(2)
		>>> x = linalg.solve_discrete_lyapunov(a, q)
		>>> x
		array([[ 0.70872893,  1.43518822],
		       [ 1.43518822, -2.4266315 ]])
		>>> np.allclose(a.dot(x).dot(a.T)-x, -q)
		True
	**/
	static public function solve_discrete_lyapunov(a:Dynamic, q:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Solves the continuous Lyapunov equation :math:`AX + XA^H = Q`.
		
		Uses the Bartels-Stewart algorithm to find :math:`X`.
		
		Parameters
		----------
		a : array_like
		    A square matrix
		
		q : array_like
		    Right-hand side square matrix
		
		Returns
		-------
		x : ndarray
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_discrete_lyapunov : computes the solution to the discrete-time
		    Lyapunov equation
		solve_sylvester : computes the solution to the Sylvester equation
		
		Notes
		-----
		The continuous Lyapunov equation is a special form of the Sylvester
		equation, hence this solver relies on LAPACK routine ?TRSYL.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		Given `a` and `q` solve for `x`:
		
		>>> from scipy import linalg
		>>> a = np.array([[-3, -2, 0], [-1, -1, 0], [0, -5, -1]])
		>>> b = np.array([2, 4, -1])
		>>> q = np.eye(3)
		>>> x = linalg.solve_continuous_lyapunov(a, q)
		>>> x
		array([[ -0.75  ,   0.875 ,  -3.75  ],
		       [  0.875 ,  -1.375 ,   5.3125],
		       [ -3.75  ,   5.3125, -27.0625]])
		>>> np.allclose(a.dot(x) + x.dot(a.T), q)
		True
	**/
	static public function solve_lyapunov(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Computes a solution (X) to the Sylvester equation :math:`AX + XB = Q`.
		
		Parameters
		----------
		a : (M, M) array_like
		    Leading matrix of the Sylvester equation
		b : (N, N) array_like
		    Trailing matrix of the Sylvester equation
		q : (M, N) array_like
		    Right-hand side
		
		Returns
		-------
		x : (M, N) ndarray
		    The solution to the Sylvester equation.
		
		Raises
		------
		LinAlgError
		    If solution was not found
		
		Notes
		-----
		Computes a solution to the Sylvester matrix equation via the Bartels-
		Stewart algorithm.  The A and B matrices first undergo Schur
		decompositions.  The resulting matrices are used to construct an
		alternative Sylvester equation (``RY + YS^T = F``) where the R and S
		matrices are in quasi-triangular form (or, when R, S or F are complex,
		triangular form).  The simplified equation is then solved using
		``*TRSYL`` from LAPACK directly.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		Given `a`, `b`, and `q` solve for `x`:
		
		>>> from scipy import linalg
		>>> a = np.array([[-3, -2, 0], [-1, -1, 3], [3, -5, -1]])
		>>> b = np.array([[1]])
		>>> q = np.array([[1],[2],[3]])
		>>> x = linalg.solve_sylvester(a, b, q)
		>>> x
		array([[ 0.0625],
		       [-0.5625],
		       [ 0.6875]])
		>>> np.allclose(a.dot(x) + x.dot(b), q)
		True
	**/
	static public function solve_sylvester(a:Dynamic, b:Dynamic, q:Dynamic):Dynamic;
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
		
		Examples
		--------
		Solve the lower triangular system a x = b, where::
		
		         [3  0  0  0]       [4]
		    a =  [2  1  0  0]   b = [2]
		         [1  0  1  0]       [4]
		         [1  1  1  1]       [2]
		
		>>> from scipy.linalg import solve_triangular
		>>> a = np.array([[3, 0, 0, 0], [2, 1, 0, 0], [1, 0, 1, 0], [1, 1, 1, 1]])
		>>> b = np.array([4, 2, 4, 2])
		>>> x = solve_triangular(a, b, lower=True)
		>>> x
		array([ 1.33333333, -0.66666667,  2.66666667, -1.33333333])
		>>> a.dot(x)  # Check the result
		array([ 4.,  2.,  4.,  2.])
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		When `a` is a 2D array, it is factorized as ``u @ np.diag(s) @ vh
		= (u * s) @ vh``, where `u` and `vh` are 2D unitary arrays and `s` is a 1D
		array of `a`'s singular values. When `a` is higher-dimensional, SVD is
		applied in stacked mode as explained below.
		
		Parameters
		----------
		a : (..., M, N) array_like
		    A real or complex array with ``a.ndim >= 2``.
		full_matrices : bool, optional
		    If True (default), `u` and `vh` have the shapes ``(..., M, M)`` and
		    ``(..., N, N)``, respectively.  Otherwise, the shapes are
		    ``(..., M, K)`` and ``(..., K, N)``, respectively, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether or not to compute `u` and `vh` in addition to `s`.  True
		    by default.
		
		Returns
		-------
		u : { (..., M, M), (..., M, K) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		s : (..., K) array
		    Vector(s) with the singular values, within each vector sorted in
		    descending order. The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`.
		vh : { (..., N, N), (..., K, N) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		
		.. versionchanged:: 1.8.0
		   Broadcasting rules apply, see the `numpy.linalg` documentation for
		   details.
		
		The decomposition is performed using LAPACK routine ``_gesdd``.
		
		SVD is usually described for the factorization of a 2D matrix :math:`A`.
		The higher-dimensional case will be discussed below. In the 2D case, SVD is
		written as :math:`A = U S V^H`, where :math:`A = a`, :math:`U= u`,
		:math:`S= \mathtt{np.diag}(s)` and :math:`V^H = vh`. The 1D array `s`
		contains the singular values of `a` and `u` and `vh` are unitary. The rows
		of `vh` are the eigenvectors of :math:`A^H A` and the columns of `u` are
		the eigenvectors of :math:`A A^H`. In both cases the corresponding
		(possibly non-zero) eigenvalues are given by ``s**2``.
		
		If `a` has more than two dimensions, then broadcasting rules apply, as
		explained in :ref:`routines.linalg-broadcasting`. This means that SVD is
		working in "stacked" mode: it iterates over all indices of the first
		``a.ndim - 2`` dimensions and for each combination SVD is applied to the
		last two indices. The matrix `a` can be reconstructed from the
		decomposition with either ``(u * s[..., None, :]) @ vh`` or
		``u @ (s[..., None] * vh)``. (The ``@`` operator can be replaced by the
		function ``np.matmul`` for python versions below 3.5.)
		
		If `a` is a ``matrix`` object (as opposed to an ``ndarray``), then so are
		all the return values.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6) + 1j*np.random.randn(9, 6)
		>>> b = np.random.randn(2, 7, 8, 3) + 1j*np.random.randn(2, 7, 8, 3)
		
		Reconstruction based on full SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((9, 9), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u[:, :6] * s, vh))
		True
		>>> smat = np.zeros((9, 6), dtype=complex)
		>>> smat[:6, :6] = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on reduced SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((9, 6), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u * s, vh))
		True
		>>> smat = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on full SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 8), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u[..., :3] * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u[..., :3], s[..., None] * vh))
		True
		
		Reconstruction based on reduced SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 3), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u, s[..., None] * vh))
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
}