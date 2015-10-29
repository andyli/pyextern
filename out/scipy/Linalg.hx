/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.linalg") extern class Linalg {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Dynamic;
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
		
		Empty sequences (i.e., array-likes of zero size) are ignored.
		
		Examples
		--------
		>>> from scipy.linalg import block_diag
		>>> A = [[1, 0],
		...      [0, 1]]
		>>> B = [[3, 4, 5],
		...      [6, 7, 8]]
		>>> C = [[7]]
		>>> block_diag(A, B, C)
		[[1 0 0 0 0 0]
		 [0 1 0 0 0 0]
		 [0 0 3 4 5 0]
		 [0 0 6 7 8 0]
		 [0 0 0 0 0 7]]
		>>> block_diag(1.0, [2, 3], [[4, 5], [6, 7]])
		array([[ 1.,  0.,  0.,  0.,  0.],
		       [ 0.,  2.,  3.,  0.,  0.],
		       [ 0.,  0.,  0.,  4.,  5.],
		       [ 0.,  0.,  0.,  6.,  7.]])
	**/
	static public function block_diag(arrs:Dynamic):Dynamic;
	/**
		Compute the Cholesky decomposition of a matrix, to use in cho_solve
		
		Returns a matrix containing the Cholesky decomposition,
		``A = L L*`` or ``A = U* U`` of a Hermitian positive-definite matrix `a`.
		The return value can be directly used as the first parameter to cho_solve.
		
		.. warning::
		    The returned matrix also contains random data in the entries not
		    used by the Cholesky decomposition. If you need to zero these
		    entries, use the function `cholesky` instead.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky factorization
		    (Default: upper-triangular)
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Matrix whose upper or lower triangle contains the Cholesky factor
		    of `a`. Other parts of the matrix contain random data.
		lower : bool
		    Flag indicating whether the factor is in the lower or upper triangle
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails.
		
		See also
		--------
		cho_solve : Solve a linear set equations using the Cholesky factorization
		            of a matrix.
	**/
	static public function cho_factor(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the linear equations A x = b, given the Cholesky factorization of A.
		
		Parameters
		----------
		(c, lower) : tuple, (array, bool)
		    Cholesky factorization of a, as given by cho_factor
		b : array
		    Right-hand side
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    The solution to the system A x = b
		
		See also
		--------
		cho_factor : Cholesky factorization of a matrix
	**/
	static public function cho_solve(c_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the linear equations A x = b, given the Cholesky factorization of A.
		
		Parameters
		----------
		(cb, lower) : tuple, (array, bool)
		    `cb` is the Cholesky factorization of A, as given by cholesky_banded.
		    `lower` must be the same value that was given to cholesky_banded.
		b : array
		    Right-hand side
		overwrite_b : bool, optional
		    If True, the function will overwrite the values in `b`.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    The solution to the system A x = b
		
		See also
		--------
		cholesky_banded : Cholesky factorization of a banded matrix
		
		Notes
		-----
		
		.. versionadded:: 0.8.0
	**/
	static public function cho_solve_banded(cb_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the Cholesky decomposition of a matrix.
		
		Returns the Cholesky decomposition, :math:`A = L L^*` or
		:math:`A = U^* U` of a Hermitian positive-definite matrix A.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky
		    factorization.  Default is upper-triangular.
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Upper- or lower-triangular Cholesky factor of `a`.
		
		Raises
		------
		LinAlgError : if decomposition fails.
		
		Examples
		--------
		>>> from scipy import array, linalg, dot
		>>> a = array([[1,-2j],[2j,5]])
		>>> L = linalg.cholesky(a, lower=True)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> dot(L, L.T.conj())
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
	**/
	static public function cholesky(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Cholesky decompose a banded Hermitian positive-definite matrix
		
		The matrix a is stored in ab either in lower diagonal or upper
		diagonal ordered form::
		
		    ab[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    ab[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		Example of ab (shape of a is (6,6), u=2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Parameters
		----------
		ab : (u + 1, M) array_like
		    Banded matrix
		overwrite_ab : bool, optional
		    Discard data in ab (may enhance performance)
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (u + 1, M) ndarray
		    Cholesky factorization of a, in the same banded format as ab
	**/
	static public function cholesky_banded(ab:Dynamic, ?overwrite_ab:Dynamic, ?lower:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Construct a circulant matrix.
		
		Parameters
		----------
		c : (N,) array_like
		    1-D array, the first column of the matrix.
		
		Returns
		-------
		A : (N, N) ndarray
		    A circulant matrix whose first column is `c`.
		
		See also
		--------
		toeplitz : Toeplitz matrix
		hankel : Hankel matrix
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		Examples
		--------
		>>> from scipy.linalg import circulant
		>>> circulant([1, 2, 3])
		array([[1, 3, 2],
		       [2, 1, 3],
		       [3, 2, 1]])
	**/
	static public function circulant(c:Dynamic):Dynamic;
	/**
		Create a companion matrix.
		
		Create the companion matrix [1]_ associated with the polynomial whose
		coefficients are given in `a`.
		
		Parameters
		----------
		a : (N,) array_like
		    1-D array of polynomial coefficients.  The length of `a` must be
		    at least two, and ``a[0]`` must not be zero.
		
		Returns
		-------
		c : (N-1, N-1) ndarray
		    The first row of `c` is ``-a[1:]/a[0]``, and the first
		    sub-diagonal is all ones.  The data-type of the array is the same
		    as the data-type of ``1.0*a[0]``.
		
		Raises
		------
		ValueError
		    If any of the following are true: a) ``a.ndim != 1``;
		    b) ``a.size < 2``; c) ``a[0] == 0``.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> from scipy.linalg import companion
		>>> companion([1, -10, 31, -30])
		array([[ 10., -31.,  30.],
		       [  1.,   0.,   0.],
		       [  0.,   1.,   0.]])
	**/
	static public function companion(a:Dynamic):Dynamic;
	/**
		Compute the hyperbolic matrix cosine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		coshm : (N, N) ndarray
		    Hyperbolic matrix cosine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> c = coshm(a)
		>>> c
		array([[ 11.24592233,  38.76236492],
		       [ 12.92078831,  50.00828725]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> t = tanhm(a)
		>>> s = sinhm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function coshm(A:Dynamic):Dynamic;
	/**
		Compute the matrix cosine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array
		
		Returns
		-------
		cosm : (N, N) ndarray
		    Matrix cosine of A
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function cosm(A:Dynamic):Dynamic;
	/**
		Compute the determinant of a matrix
		
		The determinant of a square matrix is a value derived arithmetically
		from the coefficients of the matrix.
		
		The determinant for a 3x3 matrix, for example, is computed as follows::
		
		    a    b    c
		    d    e    f = A
		    g    h    i
		
		    det(A) = a*e*i + b*f*g + c*d*h - c*e*g - b*d*i - a*f*h
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		overwrite_a : bool, optional
		    Allow overwriting data in a (may enhance performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		det : float or complex
		    Determinant of `a`.
		
		Notes
		-----
		The determinant is computed via LU factorization, LAPACK routine z/dgetrf.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		0.0
		>>> a = np.array([[0,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		3.0
	**/
	static public function det(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Discrete Fourier transform matrix.
		
		Create the matrix that computes the discrete Fourier transform of a
		sequence [1]_.  The n-th primitive root of unity used to generate the
		matrix is exp(-2*pi*i/n), where i = sqrt(-1).
		
		Parameters
		----------
		n : int
		    Size the matrix to create.
		scale : str, optional
		    Must be None, 'sqrtn', or 'n'.
		    If `scale` is 'sqrtn', the matrix is divided by `sqrt(n)`.
		    If `scale` is 'n', the matrix is divided by `n`.
		    If `scale` is None (the default), the matrix is not normalized, and the
		    return value is simply the Vandermonde matrix of the roots of unity.
		
		Returns
		-------
		m : (n, n) ndarray
		    The DFT matrix.
		
		Notes
		-----
		When `scale` is None, multiplying a vector by the matrix returned by
		`dft` is mathematically equivalent to (but much less efficient than)
		the calculation performed by `scipy.fftpack.fft`.
		
		.. versionadded:: 0.14.0
		
		References
		----------
		.. [1] "DFT matrix", http://en.wikipedia.org/wiki/DFT_matrix
		
		Examples
		--------
		>>> from scipy.linalg import dft
		>>> np.set_printoptions(precision=5, suppress=True)
		>>> x = np.array([1, 2, 3, 0, 3, 2, 1, 0])
		>>> m = dft(8)
		>>> m.dot(x)   # Compute the DFT of x
		array([ 12.+0.j,  -2.-2.j,   0.-4.j,  -2.+2.j,   4.+0.j,  -2.-2.j,
		        -0.+4.j,  -2.+2.j])
		
		Verify that ``m.dot(x)`` is the same as ``fft(x)``.
		
		>>> from scipy.fftpack import fft
		>>> fft(x)     # Same result as m.dot(x)
		array([ 12.+0.j,  -2.-2.j,   0.-4.j,  -2.+2.j,   4.+0.j,  -2.-2.j,
		         0.+4.j,  -2.+2.j])
	**/
	static public function dft(n:Dynamic, ?scale:Dynamic):Dynamic;
	/**
		Construct the sigma matrix in SVD from singular values and size M, N.
		
		Parameters
		----------
		s : (M,) or (N,) array_like
		    Singular values
		M : int
		    Size of the matrix whose singular values are `s`.
		N : int
		    Size of the matrix whose singular values are `s`.
		
		Returns
		-------
		S : (M, N) ndarray
		    The S-matrix in the singular value decomposition
	**/
	static public function diagsvd(s:Dynamic, M:Dynamic, N:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem of a square matrix.
		
		Find eigenvalues w and right or left eigenvectors of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		    a.H vl[:,i] = w[i].conj() b.H vl[:,i]
		
		where ``.H`` is the Hermitian conjugation.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    Default is None, identity matrix is assumed.
		left : bool, optional
		    Whether to calculate and return left eigenvectors.  Default is False.
		right : bool, optional
		    Whether to calculate and return right eigenvectors.  Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.  Default is False.
		overwrite_b : bool, optional
		    Whether to overwrite `b`; may improve performance.  Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		vl : (M, M) double or complex ndarray
		    The normalized left eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column vl[:,i]. Only returned if ``left=True``.
		vr : (M, M) double or complex ndarray
		    The normalized right eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column ``vr[:,i]``.  Only returned if ``right=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex hermitian band matrix eigenvalue problem.
		
		Find eigenvalues w and optionally right eigenvectors v of a::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		The matrix a is stored in a_band either in lower diagonal or upper
		diagonal ordered form:
		
		    a_band[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    a_band[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		where u is the number of bands above the diagonal.
		
		Example of a_band (shape of a is (6,6), u=2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		a_band : (u+1, M) array_like
		    The bands of the M by M matrix a.
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		eigvals_only : bool, optional
		    Compute only the eigenvalues and no eigenvectors.
		    (Default: calculate also eigenvectors)
		overwrite_a_band : bool, optional
		    Discard data in a_band (may enhance performance)
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		max_ev : int, optional
		    For select=='v', maximum number of eigenvalues expected.
		    For other values of select, has no meaning.
		
		    In doubt, leave this parameter untouched.
		
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		v : (M, M) float or complex ndarray
		    The normalized eigenvector corresponding to the eigenvalue w[i] is
		    the column v[:,i].
		
		Raises LinAlgError if eigenvalue computation does not converge
	**/
	static public function eig_banded(a_band:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?max_ev:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w and optionally eigenvectors v of matrix `a`, where
		`b` is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		eigvals_only : bool, optional
		    Whether to calculate only eigenvalues and no eigenvectors.
		    (Default: both are calculated)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo <= hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		v : (M, N) complex ndarray
		    (if eigvals_only == False)
		
		    The normalized selected eigenvector corresponding to the
		    eigenvalue w[i] is the column v[:,i].
		
		    Normalization:
		
		        type 1 and 3: v.conj() a      v  = w
		
		        type 2: inv(v).conj() a  inv(v) = w
		
		        type = 1 or 2: v.conj() b      v  = I
		
		        type = 3: v.conj() inv(b) v  = I
		
		Raises
		------
		LinAlgError :
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute eigenvalues from an ordinary or generalized eigenvalue problem.
		
		Find eigenvalues of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    If omitted, identity matrix is assumed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity,
		    but not in any specific order.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge
		
		See Also
		--------
		eigvalsh : eigenvalues of symmetric or Hermitian arrays,
		eig : eigenvalues and right eigenvectors of general arrays.
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
	**/
	static public function eigvals(a:Dynamic, ?b:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex hermitian band matrix eigenvalue problem.
		
		Find eigenvalues w of a::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		The matrix a is stored in a_band either in lower diagonal or upper
		diagonal ordered form:
		
		    a_band[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    a_band[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		where u is the number of bands above the diagonal.
		
		Example of a_band (shape of a is (6,6), u=2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		a_band : (u+1, M) array_like
		    The bands of the M by M matrix a.
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		overwrite_a_band : bool, optional
		    Discard data in a_band (may enhance performance)
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		
		Raises LinAlgError if eigenvalue computation does not converge
		
		See Also
		--------
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigvals : eigenvalues of general arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigvals_banded(a_band:Dynamic, ?lower:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w of matrix a, where b is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo < hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		
		Raises
		------
		LinAlgError :
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eigvals : eigenvalues of general arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigvalsh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the matrix exponential using Pade approximation.
		
		Parameters
		----------
		A : (N, N) array_like or sparse matrix
		    Matrix to be exponentiated.
		
		Returns
		-------
		expm : (N, N) ndarray
		    Matrix exponential of `A`.
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       "A New Scaling and Squaring Algorithm for the Matrix Exponential."
		       SIAM Journal on Matrix Analysis and Applications.
		       31 (3). pp. 970-989. ISSN 1095-7162
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Matrix version of the formula exp(0) = 1:
		
		>>> expm(np.zeros((2,2)))
		array([[ 1.,  0.],
		       [ 0.,  1.]])
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function expm(A:Dynamic, ?q:Dynamic):Dynamic;
	/**
		`expm2` is deprecated, use `expm` instead!
		
		
		Compute the matrix exponential using eigenvalue decomposition.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix to be exponentiated
		
		Returns
		-------
		expm2 : (N, N) ndarray
		    Matrix exponential of `A`
	**/
	static public function expm2(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		`expm3` is deprecated, use `expm` instead!
		
		
		Compute the matrix exponential using Taylor series.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix to be exponentiated
		q : int
		    Order of the Taylor series used is `q-1`
		
		Returns
		-------
		expm3 : (N, N) ndarray
		    Matrix exponential of `A`
	**/
	static public function expm3(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Relative condition number of the matrix exponential in the Frobenius norm.
		
		Parameters
		----------
		A : 2d array_like
		    Square input matrix with shape (N, N).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		kappa : float
		    The relative condition number of the matrix exponential
		    in the Frobenius norm
		
		Notes
		-----
		A faster estimate for the condition number in the 1-norm
		has been published but is not yet implemented in scipy.
		
		.. versionadded:: 0.14.0
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		expm_frechet : Compute the Frechet derivative of the matrix exponential.
	**/
	static public function expm_cond(A:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Frechet derivative of the matrix exponential of A in the direction E.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix of which to take the matrix exponential.
		E : (N, N) array_like
		    Matrix direction in which to take the Frechet derivative.
		method : str, optional
		    Choice of algorithm.  Should be one of
		
		    - `SPS` (default)
		    - `blockEnlarge`
		
		compute_expm : bool, optional
		    Whether to compute also `expm_A` in addition to `expm_frechet_AE`.
		    Default is True.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		expm_A : ndarray
		    Matrix exponential of A.
		expm_frechet_AE : ndarray
		    Frechet derivative of the matrix exponential of A in the direction E.
		
		For ``compute_expm = False``, only `expm_frechet_AE` is returned.
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		
		Notes
		-----
		This section describes the available implementations that can be selected
		by the `method` parameter. The default method is *SPS*.
		
		Method *blockEnlarge* is a naive algorithm.
		
		Method *SPS* is Scaling-Pade-Squaring [1]_.
		It is a sophisticated implementation which should take
		only about 3/8 as much time as the naive implementation.
		The asymptotics are the same.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       Computing the Frechet Derivative of the Matrix Exponential,
		       with an application to Condition Number Estimation.
		       SIAM Journal On Matrix Analysis and Applications.,
		       30 (4). pp. 1639-1657. ISSN 1095-7162
		
		Examples
		--------
		>>> import scipy.linalg
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> expm_A.shape, expm_frechet_AE.shape
		((3, 3), (3, 3))
		
		>>> import scipy.linalg
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> M = np.zeros((6, 6))
		>>> M[:3, :3] = A; M[:3, 3:] = E; M[3:, 3:] = A
		>>> expm_M = scipy.linalg.expm(M)
		>>> np.allclose(expm_A, expm_M[:3, :3])
		True
		>>> np.allclose(expm_frechet_AE, expm_M[:3, 3:])
		True
	**/
	static public function expm_frechet(A:Dynamic, E:Dynamic, ?method:Dynamic, ?compute_expm:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Find best-matching BLAS/LAPACK type.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		Returns
		-------
		prefix : str
		    BLAS/LAPACK prefix character.
		dtype : dtype
		    Inferred Numpy data type.
		prefer_fortran : bool
		    Whether to prefer Fortran order routines over C order.
	**/
	static public function find_best_blas_type(?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Compute the fractional power of a matrix.
		
		Proceeds according to the discussion in section (6) of [1]_.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose fractional power to evaluate.
		t : float
		    Fractional power.
		
		Returns
		-------
		X : (N, N) array_like
		    The fractional power of the matrix.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
		
		Examples
		--------
		>>> from scipy.linalg import fractional_matrix_power
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> b = fractional_matrix_power(a, 0.5)
		>>> b
		array([[ 0.75592895,  1.13389342],
		       [ 0.37796447,  1.88982237]])
		>>> np.dot(b, b)      # Verify square root
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function fractional_matrix_power(A:Dynamic, t:Dynamic):Dynamic;
	/**
		Evaluate a matrix function specified by a callable.
		
		Returns the value of matrix-valued function ``f`` at `A`. The
		function ``f`` is an extension of the scalar-valued function `func`
		to matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix at which to evaluate the function
		func : callable
		    Callable object that evaluates a scalar function f.
		    Must be vectorized (eg. using vectorize).
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		funm : (N, N) ndarray
		    Value of the matrix function specified by func evaluated at `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		Examples
		--------
		>>> from scipy.linalg import funm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> funm(a, lambda x: x*x)
		array([[  4.,  15.],
		       [  5.,  19.]])
		>>> a.dot(a)
		array([[  4.,  15.],
		       [  5.,  19.]])
		
		Notes
		-----
		This function implements the general algorithm based on Schur decomposition
		(Algorithm 9.1.1. in [1]_).
		
		If the input matrix is known to be diagonalizable, then relying on the
		eigendecomposition is likely to be faster. For example, if your matrix is
		Hermitian, you can do
		
		>>> from scipy.linalg import eigh
		>>> def funm_herm(a, func, check_finite=False):
		...     w, v = eigh(a, check_finite=check_finite)
		...     ## if you further know that your matrix is positive semidefinite,
		...     ## you can optionally guard against precision errors by doing
		...     # w = np.maximum(w, 0)
		...     w = func(w)
		...     return (v * w).dot(v.conj().T)
		
		References
		----------
		.. [1] Gene H. Golub, Charles F. van Loan, Matrix Computations 4th ed.
	**/
	static public function funm(A:Dynamic, func:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Return available BLAS function objects from names.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of BLAS functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
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
		
		In BLAS, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
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
		types {float32, float64, complex64, complex128} respectevely, and
		are stored in attribute `typecode` of the returned functions.
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct a Hadamard matrix.
		
		Constructs an n-by-n Hadamard matrix, using Sylvester's
		construction.  `n` must be a power of 2.
		
		Parameters
		----------
		n : int
		    The order of the matrix.  `n` must be a power of 2.
		dtype : dtype, optional
		    The data type of the array to be constructed.
		
		Returns
		-------
		H : (n, n) ndarray
		    The Hadamard matrix.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		Examples
		--------
		>>> from scipy.linalg import hadamard
		>>> hadamard(2, dtype=complex)
		array([[ 1.+0.j,  1.+0.j],
		       [ 1.+0.j, -1.-0.j]])
		>>> hadamard(4)
		array([[ 1,  1,  1,  1],
		       [ 1, -1,  1, -1],
		       [ 1,  1, -1, -1],
		       [ 1, -1, -1,  1]])
	**/
	static public function hadamard(n:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct a Hankel matrix.
		
		The Hankel matrix has constant anti-diagonals, with `c` as its
		first column and `r` as its last row.  If `r` is not given, then
		`r = zeros_like(c)` is assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix.  Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    Last row of the matrix. If None, ``r = zeros_like(c)`` is assumed.
		    r[0] is ignored; the last row of the returned matrix is
		    ``[c[-1], r[1:]]``.  Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Hankel matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See also
		--------
		toeplitz : Toeplitz matrix
		circulant : circulant matrix
		
		Examples
		--------
		>>> from scipy.linalg import hankel
		>>> hankel([1, 17, 99])
		array([[ 1, 17, 99],
		       [17, 99,  0],
		       [99,  0,  0]])
		>>> hankel([1,2,3,4], [4,7,7,8,9])
		array([[1, 2, 3, 4, 7],
		       [2, 3, 4, 7, 7],
		       [3, 4, 7, 7, 8],
		       [4, 7, 7, 8, 9]])
	**/
	static public function hankel(c:Dynamic, ?r:Dynamic):Dynamic;
	/**
		Create a Helmert matrix of order `n`.
		
		This has applications in statistics, compositional or simplicial analysis,
		and in Aitchison geometry.
		
		Parameters
		----------
		n : int
		    The size of the array to create.
		full : bool, optional
		    If True the (n, n) ndarray will be returned.
		    Otherwise the submatrix that does not include the first
		    row will be returned.
		    Default: False.
		
		Returns
		-------
		M : ndarray
		    The Helmert matrix.
		    The shape is (n, n) or (n-1, n) depending on the `full` argument.
		
		Examples
		--------
		>>> from scipy.linalg import helmert
		>>> helmert(5, full=True)
		array([[ 0.4472136 ,  0.4472136 ,  0.4472136 ,  0.4472136 ,  0.4472136 ],
		       [ 0.70710678, -0.70710678,  0.        ,  0.        ,  0.        ],
		       [ 0.40824829,  0.40824829, -0.81649658,  0.        ,  0.        ],
		       [ 0.28867513,  0.28867513,  0.28867513, -0.8660254 ,  0.        ],
		       [ 0.2236068 ,  0.2236068 ,  0.2236068 ,  0.2236068 , -0.89442719]])
	**/
	static public function helmert(n:Dynamic, ?full:Dynamic):Dynamic;
	/**
		Compute Hessenberg form of a matrix.
		
		The Hessenberg decomposition is::
		
		    A = Q H Q^H
		
		where `Q` is unitary/orthogonal and `H` has only zero elements below
		the first sub-diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to bring into Hessenberg form.
		calc_q : bool, optional
		    Whether to compute the transformation matrix.  Default is False.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		H : (M, M) ndarray
		    Hessenberg form of `a`.
		Q : (M, M) ndarray
		    Unitary/orthogonal similarity transformation matrix ``A = Q H Q^H``.
		    Only returned if ``calc_q=True``.
	**/
	static public function hessenberg(a:Dynamic, ?calc_q:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Create a Hilbert matrix of order `n`.
		
		Returns the `n` by `n` array with entries `h[i,j] = 1 / (i + j + 1)`.
		
		Parameters
		----------
		n : int
		    The size of the array to create.
		
		Returns
		-------
		h : (n, n) ndarray
		    The Hilbert matrix.
		
		See Also
		--------
		invhilbert : Compute the inverse of a Hilbert matrix.
		
		Notes
		-----
		.. versionadded:: 0.10.0
		
		Examples
		--------
		>>> from scipy.linalg import hilbert
		>>> hilbert(3)
		array([[ 1.        ,  0.5       ,  0.33333333],
		       [ 0.5       ,  0.33333333,  0.25      ],
		       [ 0.33333333,  0.25      ,  0.2       ]])
	**/
	static public function hilbert(n:Dynamic):Dynamic;
	/**
		Compute the inverse of a matrix.
		
		Parameters
		----------
		a : array_like
		    Square matrix to be inverted.
		overwrite_a : bool, optional
		    Discard data in `a` (may improve performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		ainv : ndarray
		    Inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError :
		    If `a` is singular.
		ValueError :
		    If `a` is not square, or not 2-dimensional.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> linalg.inv(a)
		array([[-2. ,  1. ],
		       [ 1.5, -0.5]])
		>>> np.dot(a, linalg.inv(a))
		array([[ 1.,  0.],
		       [ 0.,  1.]])
	**/
	static public function inv(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the inverse of the Hilbert matrix of order `n`.
		
		The entries in the inverse of a Hilbert matrix are integers.  When `n`
		is greater than 14, some entries in the inverse exceed the upper limit
		of 64 bit integers.  The `exact` argument provides two options for
		dealing with these large integers.
		
		Parameters
		----------
		n : int
		    The order of the Hilbert matrix.
		exact : bool, optional
		    If False, the data type of the array that is returned is np.float64,
		    and the array is an approximation of the inverse.
		    If True, the array is the exact integer inverse array.  To represent
		    the exact inverse when n > 14, the returned array is an object array
		    of long integers.  For n <= 14, the exact inverse is returned as an
		    array with data type np.int64.
		
		Returns
		-------
		invh : (n, n) ndarray
		    The data type of the array is np.float64 if `exact` is False.
		    If `exact` is True, the data type is either np.int64 (for n <= 14)
		    or object (for n > 14).  In the latter case, the objects in the
		    array will be long integers.
		
		See Also
		--------
		hilbert : Create a Hilbert matrix.
		
		Notes
		-----
		.. versionadded:: 0.10.0
		
		Examples
		--------
		>>> from scipy.linalg import invhilbert
		>>> invhilbert(4)
		array([[   16.,  -120.,   240.,  -140.],
		       [ -120.,  1200., -2700.,  1680.],
		       [  240., -2700.,  6480., -4200.],
		       [ -140.,  1680., -4200.,  2800.]])
		>>> invhilbert(4, exact=True)
		array([[   16,  -120,   240,  -140],
		       [ -120,  1200, -2700,  1680],
		       [  240, -2700,  6480, -4200],
		       [ -140,  1680, -4200,  2800]], dtype=int64)
		>>> invhilbert(16)[7,7]
		4.2475099528537506e+19
		>>> invhilbert(16, exact=True)[7,7]
		42475099528537378560L
	**/
	static public function invhilbert(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Returns the inverse of the n x n Pascal matrix.
		
		The Pascal matrix is a matrix containing the binomial coefficients as
		its elements.
		
		Parameters
		----------
		n : int
		    The size of the matrix to create; that is, the result is an n x n
		    matrix.
		kind : str, optional
		    Must be one of 'symmetric', 'lower', or 'upper'.
		    Default is 'symmetric'.
		exact : bool, optional
		    If `exact` is True, the result is either an array of type
		    `numpy.int64` (if `n` <= 35) or an object array of Python integers.
		    If `exact` is False, the coefficients in the matrix are computed using
		    `scipy.special.comb` with `exact=False`.  The result will be a floating
		    point array, and for large `n`, the values in the array will not be the
		    exact coefficients.
		
		Returns
		-------
		invp : (n, n) ndarray
		    The inverse of the Pascal matrix.
		
		See Also
		--------
		pascal
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] "Pascal matrix",  http://en.wikipedia.org/wiki/Pascal_matrix
		.. [2] Cohen, A. M., "The inverse of a Pascal matrix", Mathematical
		       Gazette, 59(408), pp. 111-112, 1975.
		
		Examples
		--------
		>>> from scipy.linalg import invpascal, pascal
		>>> invp = invpascal(5)
		>>> invp
		array([[  5, -10,  10,  -5,   1],
		       [-10,  30, -35,  19,  -4],
		       [ 10, -35,  46, -27,   6],
		       [ -5,  19, -27,  17,  -4],
		       [  1,  -4,   6,  -4,   1]])
		
		>>> p = pascal(5)
		>>> p.dot(invp)
		array([[ 1.,  0.,  0.,  0.,  0.],
		       [ 0.,  1.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.,  0.],
		       [ 0.,  0.,  0.,  0.,  1.]])
		
		An example of the use of `kind` and `exact`:
		
		>>> invpascal(5, kind='lower', exact=False)
		array([[ 1., -0.,  0., -0.,  0.],
		       [-1.,  1., -0.,  0., -0.],
		       [ 1., -2.,  1., -0.,  0.],
		       [-1.,  3., -3.,  1., -0.],
		       [ 1., -4.,  6., -4.,  1.]])
	**/
	static public function invpascal(n:Dynamic, ?kind:Dynamic, ?exact:Dynamic):Dynamic;
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
		Create a Leslie matrix.
		
		Given the length n array of fecundity coefficients `f` and the length
		n-1 array of survival coefficents `s`, return the associated Leslie matrix.
		
		Parameters
		----------
		f : (N,) array_like
		    The "fecundity" coefficients.
		s : (N-1,) array_like
		    The "survival" coefficients, has to be 1-D.  The length of `s`
		    must be one less than the length of `f`, and it must be at least 1.
		
		Returns
		-------
		L : (N, N) ndarray
		    The array is zero except for the first row,
		    which is `f`, and the first sub-diagonal, which is `s`.
		    The data-type of the array will be the data-type of ``f[0]+s[0]``.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		The Leslie matrix is used to model discrete-time, age-structured
		population growth [1]_ [2]_. In a population with `n` age classes, two sets
		of parameters define a Leslie matrix: the `n` "fecundity coefficients",
		which give the number of offspring per-capita produced by each age
		class, and the `n` - 1 "survival coefficients", which give the
		per-capita survival rate of each age class.
		
		References
		----------
		.. [1] P. H. Leslie, On the use of matrices in certain population
		       mathematics, Biometrika, Vol. 33, No. 3, 183--212 (Nov. 1945)
		.. [2] P. H. Leslie, Some further notes on the use of matrices in
		       population mathematics, Biometrika, Vol. 35, No. 3/4, 213--245
		       (Dec. 1948)
		
		Examples
		--------
		>>> from scipy.linalg import leslie
		>>> leslie([0.1, 2.0, 1.0, 0.1], [0.2, 0.8, 0.7])
		array([[ 0.1,  2. ,  1. ,  0.1],
		       [ 0.2,  0. ,  0. ,  0. ],
		       [ 0. ,  0.8,  0. ,  0. ],
		       [ 0. ,  0. ,  0.7,  0. ]])
	**/
	static public function leslie(f:Dynamic, s:Dynamic):Dynamic;
	/**
		Compute matrix logarithm.
		
		The matrix logarithm is the inverse of
		expm: expm(logm(`A`)) == `A`
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose logarithm to evaluate
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		logm : (N, N) ndarray
		    Matrix logarithm of `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2012)
		       "Improved Inverse Scaling and Squaring Algorithms
		       for the Matrix Logarithm."
		       SIAM Journal on Scientific Computing, 34 (4). C152-C169.
		       ISSN 1095-7197
		
		.. [2] Nicholas J. Higham (2008)
		       "Functions of Matrices: Theory and Computation"
		       ISBN 978-0-898716-46-7
		
		.. [3] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
		
		Examples
		--------
		>>> from scipy.linalg import logm, expm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> b = logm(a)
		>>> b
		array([[-1.02571087,  2.05142174],
		       [ 0.68380725,  1.02571087]])
		>>> expm(b)         # Verify expm(logm(a)) returns a
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function logm(A:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left hand side matrix (2-D array).
		b : (M,) or (M, K) array_like
		    Right hand side matrix or vector (1-D or 2-D array).
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``rcond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : () or (1,) or (K,) ndarray
		    Sums of residues, squared 2-norm for each column in ``b - a x``.
		    If rank of matrix a is < N or > M this is an empty array.
		    If b was 1-D, this is an (1,) shape array, otherwise the shape is (K,).
		rank : int
		    Effective rank of matrix `a`.
		s : (min(M,N),) ndarray
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0]/s[-1])``.
		
		Raises
		------
		LinAlgError :
		    If computation does not converge.
		
		
		See Also
		--------
		optimize.nnls : linear least squares with non-negativity constraint
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		This is a LU factorization routine written for Scipy.
	**/
	static public function lu(a:Dynamic, ?permute_l:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		overwrite_a : bool, optional
		    Whether to overwrite data in A (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		lu : (N, N) ndarray
		    Matrix containing U in its upper triangle, and L in its lower triangle.
		    The unit diagonal elements of L are not stored.
		piv : (N,) ndarray
		    Pivot indices representing the permutation matrix P:
		    row i of matrix was interchanged with row piv[i].
		
		See also
		--------
		lu_solve : solve an equation system using the LU factorization of a matrix
		
		Notes
		-----
		This is a wrapper to the ``*GETRF`` routines from LAPACK.
	**/
	static public function lu_factor(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an equation system, a x = b, given the LU factorization of a
		
		Parameters
		----------
		(lu, piv)
		    Factorization of the coefficient matrix a, as given by lu_factor
		b : array
		    Right-hand side
		trans : {0, 1, 2}, optional
		    Type of system to solve:
		
		    =====  =========
		    trans  system
		    =====  =========
		    0      a x   = b
		    1      a^T x = b
		    2      a^H x = b
		    =====  =========
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Solution to the system
		
		See also
		--------
		lu_factor : LU factorize a matrix
	**/
	static public function lu_solve(lu_and_piv:Dynamic, b:Dynamic, ?trans:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		
		Returns
		-------
		norm : float
		    Norm of the matrix or vector.
		
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
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		nan
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		nan
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic):Dynamic;
	/**
		Construct an orthonormal basis for the range of A using SVD
		
		Parameters
		----------
		A : (M, N) array_like
		    Input array
		
		Returns
		-------
		Q : (M, K) ndarray
		    Orthonormal basis for the range of A.
		    K = effective rank of A, as determined by automatic cutoff
		
		See also
		--------
		svd : Singular value decomposition of a matrix
	**/
	static public function orth(A:Dynamic):Dynamic;
	/**
		Compute the matrix solution of the orthogonal Procrustes problem.
		
		Given matrices A and B of equal shape, find an orthogonal matrix R
		that most closely maps A to B [1]_.
		Note that unlike higher level Procrustes analyses of spatial data,
		this function only uses orthogonal transformations like rotations
		and reflections, and it does not use scaling or translation.
		
		Parameters
		----------
		A : (M, N) array_like
		    Matrix to be mapped.
		B : (M, N) array_like
		    Target matrix.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		R : (N, N) ndarray
		    The matrix solution of the orthogonal Procrustes problem.
		    Minimizes the Frobenius norm of dot(A, R) - B, subject to
		    dot(R.T, R) == I.
		scale : float
		    Sum of the singular values of ``dot(A.T, B)``.
		
		Raises
		------
		ValueError
		    If the input arrays are incompatibly shaped.
		    This may also be raised if matrix A or B contains an inf or nan
		    and check_finite is True, or if the matrix product AB contains
		    an inf or nan.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Peter H. Schonemann, "A generalized solution of the orthogonal
		       Procrustes problem", Psychometrica -- Vol. 31, No. 1, March, 1996.
	**/
	static public function orthogonal_procrustes(A:Dynamic, B:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Returns the n x n Pascal matrix.
		
		The Pascal matrix is a matrix containing the binomial coefficients as
		its elements.
		
		Parameters
		----------
		n : int
		    The size of the matrix to create; that is, the result is an n x n
		    matrix.
		kind : str, optional
		    Must be one of 'symmetric', 'lower', or 'upper'.
		    Default is 'symmetric'.
		exact : bool, optional
		    If `exact` is True, the result is either an array of type
		    numpy.uint64 (if n < 35) or an object array of Python long integers.
		    If `exact` is False, the coefficients in the matrix are computed using
		    `scipy.special.comb` with `exact=False`.  The result will be a floating
		    point array, and the values in the array will not be the exact
		    coefficients, but this version is much faster than `exact=True`.
		
		Returns
		-------
		p : (n, n) ndarray
		    The Pascal matrix.
		
		See Also
		--------
		invpascal
		
		Notes
		-----
		See http://en.wikipedia.org/wiki/Pascal_matrix for more information
		about Pascal matrices.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.linalg import pascal
		>>> pascal(4)
		array([[ 1,  1,  1,  1],
		       [ 1,  2,  3,  4],
		       [ 1,  3,  6, 10],
		       [ 1,  4, 10, 20]], dtype=uint64)
		>>> pascal(4, kind='lower')
		array([[1, 0, 0, 0],
		       [1, 1, 0, 0],
		       [1, 2, 1, 0],
		       [1, 3, 3, 1]], dtype=uint64)
		>>> pascal(50)[-1, -1]
		25477612258980856902730428600L
		>>> from scipy.special import comb
		>>> comb(98, 49, exact=True)
		25477612258980856902730428600L
	**/
	static public function pascal(n:Dynamic, ?kind:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using a least-squares
		solver.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float, optional
		    Cutoff for 'small' singular values in the least-squares solver.
		    Singular values smaller than ``rcond * largest_singular_value``
		    are considered zero.
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6)
		>>> B = linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using its
		singular-value decomposition and including all 'large' singular
		values.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float or None
		    Cutoff for 'small' singular values.
		    Singular values smaller than ``rcond*largest_singular_value``
		    are considered zero.
		    If None or -1, suitable machine precision is used.
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6)
		>>> B = linalg.pinv2(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv2(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a Hermitian matrix.
		
		Calculate a generalized inverse of a Hermitian or real symmetric matrix
		using its eigenvalue decomposition and including all eigenvalues with
		'large' absolute value.
		
		Parameters
		----------
		a : (N, N) array_like
		    Real symmetric or complex hermetian matrix to be pseudo-inverted
		cond, rcond : float or None
		    Cutoff for 'small' eigenvalues.
		    Singular values smaller than rcond * largest_eigenvalue are considered
		    zero.
		
		    If None or -1, suitable machine precision is used.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of a. (Default: lower)
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, N) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If eigenvalue does not converge
		
		Examples
		--------
		>>> from scipy.linalg import pinvh
		>>> a = np.random.randn(9, 6)
		>>> a = np.dot(a, a.T)
		>>> B = pinvh(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinvh(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?lower:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the polar decomposition.
		
		Returns the factors of the polar decomposition [1]_ `u` and `p` such
		that ``a = up`` (if `side` is "right") or ``a = pu`` (if `side` is
		"left"), where `p` is positive semidefinite.  Depending on the shape
		of `a`, either the rows or columns of `u` are orthonormal.  When `a`
		is a square array, `u` is a square unitary array.  When `a` is not
		square, the "canonical polar decomposition" [2]_ is computed.
		
		Parameters
		----------
		a : (m, n) array_like
		    The array to be factored.
		side : {'left', 'right'}, optional
		    Determines whether a right or left polar decomposition is computed.
		    If `side` is "right", then ``a = up``.  If `side` is "left",  then
		    ``a = pu``.  The default is "right".
		
		Returns
		-------
		u : (m, n) ndarray
		    If `a` is square, then `u` is unitary.  If m > n, then the columns
		    of `a` are orthonormal, and if m < n, then the rows of `u` are
		    orthonormal.
		p : ndarray
		    `p` is Hermitian positive semidefinite.  If `a` is nonsingular, `p`
		    is positive definite.  The shape of `p` is (n, n) or (m, m), depending
		    on whether `side` is "right" or "left", respectively.
		
		References
		----------
		.. [1] R. A. Horn and C. R. Johnson, "Matrix Analysis", Cambridge University
		       Press, 1985.
		.. [2] N. J. Higham, "Functions of Matrices: Theory and Computation",
		       SIAM, 2008.
		
		Examples
		--------
		>>> from scipy.linalg import polar
		>>> a = np.array([[1, -1], [2, 4]])
		>>> u, p = polar(a)
		>>> u
		array([[ 0.85749293, -0.51449576],
		       [ 0.51449576,  0.85749293]])
		>>> p
		array([[ 1.88648444,  1.2004901 ],
		       [ 1.2004901 ,  3.94446746]])
		
		A non-square example, with m < n:
		
		>>> b = np.array([[0.5, 1, 2], [1.5, 3, 4]])
		>>> u, p = polar(b)
		>>> u
		array([[-0.21196618, -0.42393237,  0.88054056],
		       [ 0.39378971,  0.78757942,  0.4739708 ]])
		>>> p
		array([[ 0.48470147,  0.96940295,  1.15122648],
		       [ 0.96940295,  1.9388059 ,  2.30245295],
		       [ 1.15122648,  2.30245295,  3.65696431]])
		>>> u.dot(p)   # Verify the decomposition.
		array([[ 0.5,  1. ,  2. ],
		       [ 1.5,  3. ,  4. ]])
		>>> u.dot(u.T)   # The rows of u are orthonormal.
		array([[  1.00000000e+00,  -2.07353665e-17],
		       [ -2.07353665e-17,   1.00000000e+00]])
		
		Another non-square example, with m > n:
		
		>>> c = b.T
		>>> u, p = polar(c)
		>>> u
		array([[-0.21196618,  0.39378971],
		       [-0.42393237,  0.78757942],
		       [ 0.88054056,  0.4739708 ]])
		>>> p
		array([[ 1.23116567,  1.93241587],
		       [ 1.93241587,  4.84930602]])
		>>> u.dot(p)   # Verify the decomposition.
		array([[ 0.5,  1.5],
		       [ 1. ,  3. ],
		       [ 2. ,  4. ]])
		>>> u.T.dot(u)  # The columns of u are orthonormal.
		array([[  1.00000000e+00,  -1.26363763e-16],
		       [ -1.26363763e-16,   1.00000000e+00]])
	**/
	static public function polar(a:Dynamic, ?side:Dynamic):Dynamic;
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
		    (added in Scipy 0.11) makes the function return two matrices
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
		qr_delete(Q, R, k, p=1, which='row', overwrite_qr=False, check_finite=True)
		QR downdate on row or column deletions
		
		    If ``A = Q R`` is the QR factorization of ``A``, return the QR
		    factorization of ``A`` where ``p`` rows or columns have been removed
		    starting at row or column ``k``.
		
		    Parameters
		    ----------
		    Q : (M, M) or (M, N) array_like
		        Unitary/orthogonal matrix from QR decomposition.
		    R : (M, N) or (N, N) array_like
		        Upper triangular matrix from QR decomposition.
		    k : int
		        Index of the first row or column to delete.
		    p : int, optional
		        Number of rows or columns to delete, defaults to 1.
		    which: {'row', 'col'}, optional
		        Determines if rows or columns will be deleted, defaults to 'row'
		    overwrite_qr : bool, optional
		        If True, consume Q and R, overwriting their contents with their
		        downdated versions, and returning approriately sized views.  
		        Defaults to False.
		    check_finite : bool, optional
		        Whether to check that the input matrix contains only finite numbers.
		        Disabling may give a performance gain, but may result in problems
		        (crashes, non-termination) if the inputs do contain infinities or NaNs.
		        Default is True.
		
		    Returns
		    -------
		    Q1 : ndarray
		        Updated unitary/orthogonal factor
		    R1 : ndarray
		        Updated upper triangular factor
		
		    See Also
		    --------
		    qr, qr_multiply, qr_insert, qr_update
		
		    Notes
		    -----
		    This routine does not guarantee that the diagonal entries of ``R1`` are
		    positive.
		
		    .. versionadded:: 0.16.0
		
		    References
		    ----------
		    .. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		           (Johns Hopkins University Press, 1996).
		
		    .. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		           Reorthogonalization and stable algorithms for updating the
		           Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		    .. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		           Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		           (1990).
		
		    Examples
		    --------
		    >>> from scipy import linalg
		    >>> a = np.array([[  3.,  -2.,  -2.],
		    ...               [  6.,  -9.,  -3.],
		    ...               [ -3.,  10.,   1.],
		    ...               [  6.,  -7.,   4.],
		    ...               [  7.,   8.,  -6.]])
		    >>> q, r = linalg.qr(a)
		
		    Given this QR decomposition, update q and r when 2 rows are removed.
		
		    >>> q1, r1 = linalg.qr_delete(q, r, 2, 2, 'row', False)
		    >>> q1
		    array([[ 0.30942637,  0.15347579,  0.93845645],
		           [ 0.61885275,  0.71680171, -0.32127338],
		           [ 0.72199487, -0.68017681, -0.12681844]])
		    >>> r1
		    array([[  9.69535971,  -0.4125685 ,  -6.80738023],
		           [  0.        , -12.19958144,   1.62370412],
		           [  0.        ,   0.        ,  -0.15218213]])
		
		    The update is equivalent, but faster than the following.
		
		    >>> a1 = np.delete(a, slice(2,4), 0)
		    >>> a1
		    array([[ 3., -2., -2.],
		           [ 6., -9., -3.],
		           [ 7.,  8., -6.]])
		    >>> q_direct, r_direct = linalg.qr(a1)
		
		    Check that we have equivalent results:
		
		    >>> np.dot(q1, r1)
		    array([[ 3., -2., -2.],
		           [ 6., -9., -3.],
		           [ 7.,  8., -6.]])
		    >>> np.allclose(np.dot(q1, r1), a1)
		    True
		
		    And the updated Q is still unitary:
		
		    >>> np.allclose(np.dot(q1.T, q1), np.eye(3))
		    True
		
		    
	**/
	static public function qr_delete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr_insert(Q, R, u, k, which='row', rcond=None, overwrite_qru=False, check_finite=True)
		QR update on row or column insertions
		
		    If ``A = Q R`` is the QR factorization of ``A``, return the QR
		    factorization of ``A`` where rows or columns have been inserted starting
		    at row or column ``k``.
		
		    Parameters
		    ----------
		    Q : (M, M) array_like
		        Unitary/orthogonal matrix from the QR decomposition of A.
		    R : (M, N) array_like
		        Upper triangular matrix from the QR decomposition of A.
		    u : (N,), (p, N), (M,), or (M, p) array_like
		        Rows or columns to insert
		    k : int
		        Index before which `u` is to be inserted.
		    which: {'row', 'col'}, optional
		        Determines if rows or columns will be inserted, defaults to 'row'
		    rcond : float
		        Lower bound on the reciprocal condition number of ``Q`` augmented with
		        ``u/||u||`` Only used when updating economic mode (thin, (M,N) (N,N))
		        decompositions.  If None, machine precision is used.  Defaults to 
		        None.
		    overwrite_qru : bool, optional
		        If True, consume Q, R, and u, if possible, while performing the update,
		        otherwise make copies as necessary. Defaults to False.
		    check_finite : bool, optional
		        Whether to check that the input matrices contain only finite numbers.
		        Disabling may give a performance gain, but may result in problems
		        (crashes, non-termination) if the inputs do contain infinities or NaNs.
		        Default is True.
		
		    Returns
		    -------
		    Q1 : ndarray
		        Updated unitary/orthogonal factor
		    R1 : ndarray
		        Updated upper triangular factor
		
		    Raises
		    ------
		    LinAlgError :
		        If updating a (M,N) (N,N) factorization and the reciprocal condition
		        number of Q augmented with u/||u|| is smaller than rcond.
		
		    See Also
		    --------
		    qr, qr_multiply, qr_delete, qr_update
		
		    Notes
		    -----
		    This routine does not guarantee that the diagonal entries of ``R1`` are
		    positive.
		
		    .. versionadded:: 0.16.0
		
		    References
		    ----------
		    .. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		           (Johns Hopkins University Press, 1996).
		
		    .. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		           Reorthogonalization and stable algorithms for updating the
		           Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		    .. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		           Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		           (1990).
		
		    Examples
		    --------
		    >>> from scipy import linalg
		    >>> a = np.array([[  3.,  -2.,  -2.],
		    ...               [  6.,  -7.,   4.],
		    ...               [  7.,   8.,  -6.]])
		    >>> q, r = linalg.qr(a)
		
		    Given this QR decomposition, update q and r when 2 rows are inserted.
		                      
		    >>> u = np.array([[  6.,  -9.,  -3.], 
		    ...               [ -3.,  10.,   1.]])
		    >>> q1, r1 = linalg.qr_insert(q, r, u, 2, 'row')
		    >>> q1
		    array([[-0.25445668,  0.02246245,  0.18146236, -0.72798806,  0.60979671],
		           [-0.50891336,  0.23226178, -0.82836478, -0.02837033, -0.00828114],
		           [-0.50891336,  0.35715302,  0.38937158,  0.58110733,  0.35235345],
		           [ 0.25445668, -0.52202743, -0.32165498,  0.36263239,  0.65404509],
		           [-0.59373225, -0.73856549,  0.16065817, -0.0063658 , -0.27595554]])
		    >>> r1
		    array([[-11.78982612,   6.44623587,   3.81685018],
		           [  0.        , -16.01393278,   3.72202865],
		           [  0.        ,   0.        ,  -6.13010256],
		           [  0.        ,   0.        ,   0.        ],
		           [  0.        ,   0.        ,   0.        ]])
		
		    The update is equivalent, but faster than the following.
		
		    >>> a1 = np.insert(a, 2, u, 0)
		    >>> a1
		    array([[  3.,  -2.,  -2.],
		           [  6.,  -7.,   4.],
		           [  6.,  -9.,  -3.],
		           [ -3.,  10.,   1.],
		           [  7.,   8.,  -6.]])
		    >>> q_direct, r_direct = linalg.qr(a1)
		
		    Check that we have equivalent results:
		
		    >>> np.dot(q1, r1)
		    array([[  3.,  -2.,  -2.],
		           [  6.,  -7.,   4.],
		           [  6.,  -9.,  -3.],
		           [ -3.,  10.,   1.],
		           [  7.,   8.,  -6.]])
		
		    >>> np.allclose(np.dot(q1, r1), a1)
		    True
		
		    And the updated Q is still unitary:
		
		    >>> np.allclose(np.dot(q1.T, q1), np.eye(5))
		    True
		
		    
	**/
	static public function qr_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function qr_insert_col(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function qr_insert_row(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the QR decomposition and multiply Q with a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular. Multiply Q with a vector or a matrix c.
		
		Parameters
		----------
		a : array_like, shape (M, N)
		    Matrix to be decomposed
		c : array_like, one- or two-dimensional
		    calculate the product of c and q, depending on the mode:
		mode : {'left', 'right'}, optional
		    ``dot(Q, c)`` is returned if mode is 'left',
		    ``dot(c, Q)`` is returned if mode is 'right'.
		    The shape of c must be appropriate for the matrix multiplications,
		    if mode is 'left', ``min(a.shape) == c.shape[0]``,
		    if mode is 'right', ``a.shape[0] == c.shape[1]``.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition, see the documentation of qr.
		conjugate : bool, optional
		    Whether Q should be complex-conjugated. This might be faster
		    than explicit conjugation.
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		overwrite_c : bool, optional
		    Whether data in c is overwritten (may improve performance).
		    If this is used, c must be big enough to keep the result,
		    i.e. c.shape[0] = a.shape[0] if mode is 'left'.
		
		
		Returns
		-------
		CQ : float or complex ndarray
		    the product of Q and c, as defined in mode
		R : float or complex ndarray
		    Of shape (K, N), ``K = min(M, N)``.
		P : ndarray of ints
		    Of shape (N,) for ``pivoting=True``.
		    Not returned if ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dormqr, zunmqr, dgeqp3, and zgeqp3.
		
		.. versionadded:: 0.11.0
	**/
	static public function qr_multiply(a:Dynamic, c:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?conjugate:Dynamic, ?overwrite_a:Dynamic, ?overwrite_c:Dynamic):Dynamic;
	/**
		qr_update(Q, R, u, v, overwrite_qruv=False, check_finite=True)
		Rank-k QR update
		
		    If ``A = Q R`` is the QR factorization of ``A``, return the QR
		    factorization of ``A + u v**T`` for real ``A`` or ``A + u v**H``
		    for complex ``A``.
		
		    Parameters
		    ----------
		    Q : (M, M) or (M, N) array_like
		        Unitary/orthogonal matrix from the qr decomposition of A.
		    R : (M, N) or (N, N) array_like
		        Upper triangular matrix from the qr decomposition of A.
		    u : (M,) or (M, k) array_like
		        Left update vector
		    v : (N,) or (N, k) array_like
		        Right update vector
		    overwrite_qruv : bool, optional
		        If True, consume Q, R, u, and v, if possible, while performing the
		        update, otherwise make copies as necessary. Defaults to False.
		    check_finite : bool, optional
		        Whether to check that the input matrix contains only finite numbers.
		        Disabling may give a performance gain, but may result in problems
		        (crashes, non-termination) if the inputs do contain infinities or NaNs.
		        Default is True.
		
		    Returns
		    -------
		    Q1 : ndarray
		        Updated unitary/orthogonal factor
		    R1 : ndarray
		        Updated upper triangular factor
		
		    See Also
		    --------
		    qr, qr_multiply, qr_delete, qr_insert
		
		    Notes
		    -----
		    This routine does not guarantee that the diagonal entries of `R1` are
		    real or positive.
		
		    .. versionadded:: 0.16.0
		
		    References
		    ----------
		    .. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		           (Johns Hopkins University Press, 1996).
		
		    .. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		           Reorthogonalization and stable algorithms for updating the
		           Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		    .. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		           Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		           (1990).
		
		    Examples
		    --------
		    >>> from scipy import linalg
		    >>> a = np.array([[  3.,  -2.,  -2.],
		    ...               [  6.,  -9.,  -3.],
		    ...               [ -3.,  10.,   1.],
		    ...               [  6.,  -7.,   4.],
		    ...               [  7.,   8.,  -6.]])
		    >>> q, r = linalg.qr(a)
		
		    Given this q, r decomposition, perform a rank 1 update.
		
		    >>> u = np.array([7., -2., 4., 3., 5.])
		    >>> v = np.array([1., 3., -5.])
		    >>> q_up, r_up = linalg.qr_update(q, r, u, v, False)
		    >>> q_up
		    array([[ 0.54073807,  0.18645997,  0.81707661, -0.02136616,  0.06902409],
		           [ 0.21629523, -0.63257324,  0.06567893,  0.34125904, -0.65749222],
		           [ 0.05407381,  0.64757787, -0.12781284, -0.20031219, -0.72198188],
		           [ 0.48666426, -0.30466718, -0.27487277, -0.77079214,  0.0256951 ],
		           [ 0.64888568,  0.23001   , -0.4859845 ,  0.49883891,  0.20253783]])
		    >>> r_up
		    array([[ 18.49324201,  24.11691794, -44.98940746],
		           [  0.        ,  31.95894662, -27.40998201],
		           [  0.        ,   0.        ,  -9.25451794],
		           [  0.        ,   0.        ,   0.        ],
		           [  0.        ,   0.        ,   0.        ]])
		    
		    The update is equivalent, but faster than the following.
		
		    >>> a_up = a + np.outer(u, v)
		    >>> q_direct, r_direct = linalg.qr(a_up)
		
		    Check that we have equivalent results:
		
		    >>> np.allclose(np.dot(q_up, r_up), a_up)
		    True
		
		    And the updated Q is still unitary:
		
		    >>> np.allclose(np.dot(q_up.T, q_up), np.eye(5))
		    True
		
		    Updating economic (reduced, thin) decompositions is also possible:
		
		    >>> qe, re = linalg.qr(a, mode='economic')
		    >>> qe_up, re_up = linalg.qr_update(qe, re, u, v, False)
		    >>> qe_up
		    array([[ 0.54073807,  0.18645997,  0.81707661],
		           [ 0.21629523, -0.63257324,  0.06567893],
		           [ 0.05407381,  0.64757787, -0.12781284],
		           [ 0.48666426, -0.30466718, -0.27487277],
		           [ 0.64888568,  0.23001   , -0.4859845 ]])
		    >>> re_up
		    array([[ 18.49324201,  24.11691794, -44.98940746],
		           [  0.        ,  31.95894662, -27.40998201],
		           [  0.        ,   0.        ,  -9.25451794]])
		    >>> np.allclose(np.dot(qe_up, re_up), a_up)
		    True
		    >>> np.allclose(np.dot(qe_up.T, qe_up), np.eye(3))
		    True
		
		    Similarly to the above, perform a rank 2 update.
		
		    >>> u2 = np.array([[ 7., -1,],
		    ...                [-2.,  4.],
		    ...                [ 4.,  2.],
		    ...                [ 3., -6.],
		    ...                [ 5.,  3.]])
		    >>> v2 = np.array([[ 1., 2.],
		    ...                [ 3., 4.],
		    ...                [-5., 2]])
		    >>> q_up2, r_up2 = linalg.qr_update(q, r, u, v, False)
		    >>> q_up2
		    array([[-0.33626508, -0.03477253,  0.61956287, -0.64352987, -0.29618884],
		           [-0.50439762,  0.58319694, -0.43010077, -0.33395279,  0.33008064],
		           [-0.21016568, -0.63123106,  0.0582249 , -0.13675572,  0.73163206],
		           [ 0.12609941,  0.49694436,  0.64590024,  0.31191919,  0.47187344],
		           [-0.75659643, -0.11517748,  0.10284903,  0.5986227 , -0.21299983]])
		    >>> r_up2
		    array([[-23.79075451, -41.1084062 ,  24.71548348],
		           [  0.        , -33.83931057,  11.02226551],
		           [  0.        ,   0.        , -48.91476811],
		           [ -0.        ,   0.        ,   0.        ],
		           [  0.        ,   0.        ,   0.        ]])
		
		    This update is also a valid qr decomposition of ``A + U V**T``.
		
		    >>> a_up2 = a + np.dot(u2, v2.T)
		    >>> np.allclose(a_up2, np.dot(q_up2, r_up2))
		    True
		    >>> np.allclose(np.dot(q_up2.T, q_up2), np.eye(5))
		    True
		
		    
	**/
	static public function qr_update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QZ decomposition for generalized eigenvalues of a pair of matrices.
		
		The QZ, or generalized Schur, decomposition for a pair of N x N
		nonsymmetric matrices (A,B) is::
		
		    (A,B) = (Q*AA*Z', Q*BB*Z')
		
		where AA, BB is in generalized Schur form if BB is upper-triangular
		with non-negative diagonal and AA is upper-triangular, or for real QZ
		decomposition (``output='real'``) block upper triangular with 1x1
		and 2x2 blocks.  In this case, the 1x1 blocks correspond to real
		generalized eigenvalues and 2x2 blocks are 'standardized' by making
		the corresponding elements of BB have the form::
		
		    [ a 0 ]
		    [ 0 b ]
		
		and the pair of corresponding 2x2 blocks in AA and BB will have a complex
		conjugate pair of generalized eigenvalues.  If (``output='complex'``) or
		A and B are complex matrices, Z' denotes the conjugate-transpose of Z.
		Q and Z are unitary matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    2d array to decompose
		B : (N, N) array_like
		    2d array to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex QZ decomposition for real matrices.
		    Default is 'real'.
		lwork : int, optional
		    Work array size.  If None or -1, it is automatically computed.
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    NOTE: THIS INPUT IS DISABLED FOR NOW, IT DOESN'T WORK WELL ON WINDOWS.
		
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True). For
		    real matrix pairs, the sort function takes three real arguments
		    (alphar, alphai, beta). The eigenvalue x = (alphar + alphai*1j)/beta.
		    For complex matrix pairs or output='complex', the sort function
		    takes two complex arguments (alpha, beta). The eigenvalue
		    x = (alpha/beta).
		    Alternatively, string parameters may be used:
		
		        - 'lhp'   Left-hand plane (x.real < 0.0)
		        - 'rhp'   Right-hand plane (x.real > 0.0)
		        - 'iuc'   Inside the unit circle (x*x.conjugate() <= 1.0)
		        - 'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may improve performance)
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
		Q : (N, N) ndarray
		    The left Schur vectors.
		Z : (N, N) ndarray
		    The right Schur vectors.
		sdim : int, optional
		    If sorting was requested, a fifth return value will contain the
		    number of eigenvalues for which the sort condition was True.
		
		Notes
		-----
		Q is transposed versus the equivalent function in Matlab.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import linalg
		>>> np.random.seed(1234)
		>>> A = np.arange(9).reshape((3, 3))
		>>> B = np.random.randn(3, 3)
		
		>>> AA, BB, Q, Z = linalg.qz(A, B)
		>>> AA
		array([[-13.40928183,  -4.62471562,   1.09215523],
		       [  0.        ,   0.        ,   1.22805978],
		       [  0.        ,   0.        ,   0.31973817]])
		>>> BB
		array([[ 0.33362547, -1.37393632,  0.02179805],
		       [ 0.        ,  1.68144922,  0.74683866],
		       [ 0.        ,  0.        ,  0.9258294 ]])
		>>> Q
		array([[ 0.14134727, -0.97562773,  0.16784365],
		       [ 0.49835904, -0.07636948, -0.86360059],
		       [ 0.85537081,  0.20571399,  0.47541828]])
		>>> Z
		array([[-0.24900855, -0.51772687,  0.81850696],
		       [-0.79813178,  0.58842606,  0.12938478],
		       [-0.54861681, -0.6210585 , -0.55973739]])
	**/
	static public function qz(A:Dynamic, B:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?sort:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute RQ decomposition of a matrix.
		
		Calculate the decomposition ``A = R Q`` where Q is unitary/orthogonal
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
		mode : {'full', 'r', 'economic'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		R : float or complex ndarray
		    Of shape (M, N) or (M, K) for ``mode='economic'``.  ``K = min(M, N)``.
		Q : float or complex ndarray
		    Of shape (N, N) or (K, N) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		
		Raises
		------
		LinAlgError
		    If decomposition fails.
		
		Notes
		-----
		This is an interface to the LAPACK routines sgerqf, dgerqf, cgerqf, zgerqf,
		sorgrq, dorgrq, cungrq and zungrq.
		
		If ``mode=economic``, the shapes of Q and R are (K, N) and (M, K) instead
		of (N,N) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> from numpy import random, dot, allclose
		>>> a = random.randn(6, 9)
		>>> r, q = linalg.rq(a)
		>>> allclose(a, dot(r, q))
		True
		>>> r.shape, q.shape
		((6, 9), (9, 9))
		>>> r2 = linalg.rq(a, mode='r')
		>>> allclose(r, r2)
		True
		>>> r3, q3 = linalg.rq(a, mode='economic')
		>>> r3.shape, q3.shape
		((6, 6), (6, 9))
	**/
	static public function rq(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Convert real Schur form to complex Schur form.
		
		Convert a quasi-diagonal real-valued Schur form to the upper triangular
		complex-valued Schur form.
		
		Parameters
		----------
		T : (M, M) array_like
		    Real Schur form of the original matrix
		Z : (M, M) array_like
		    Schur transformation matrix
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Complex Schur form of the original matrix
		Z : (M, M) ndarray
		    Schur transformation matrix corresponding to the complex form
		
		See also
		--------
		schur : Schur decompose a matrix
	**/
	static public function rsf2csf(T:Dynamic, Z:Dynamic, ?check_finite:Dynamic):Dynamic;
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
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Matrix sign function.
		
		Extension of the scalar sign(x) to matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix at which to evaluate the sign function
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		signm : (N, N) ndarray
		    Value of the sign function at `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		Examples
		--------
		>>> from scipy.linalg import signm, eigvals
		>>> a = [[1,2,3], [1,2,1], [1,1,1]]
		>>> eigvals(a)
		array([ 4.12488542+0.j, -0.76155718+0.j,  0.63667176+0.j])
		>>> eigvals(signm(a))
		array([-1.+0.j,  1.+0.j,  1.+0.j])
	**/
	static public function signm(A:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Compute the hyperbolic matrix sine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		sinhm : (N, N) ndarray
		    Hyperbolic matrix sine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> s = sinhm(a)
		>>> s
		array([[ 10.57300653,  39.28826594],
		       [ 13.09608865,  49.86127247]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> t = tanhm(a)
		>>> c = coshm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function sinhm(A:Dynamic):Dynamic;
	/**
		Compute the matrix sine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		sinm : (N, N) ndarray
		    Matrix cosine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function sinm(A:Dynamic):Dynamic;
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
		Solve the equation a x = b for x, assuming a is banded matrix.
		
		The matrix a is stored in `ab` using the matrix diagonal ordered form::
		
		    ab[u + i - j, j] == a[i,j]
		
		Example of `ab` (shape of a is (6,6), `u` =1, `l` =2)::
		
		    *    a01  a12  a23  a34  a45
		    a00  a11  a22  a33  a44  a55
		    a10  a21  a32  a43  a54   *
		    a20  a31  a42  a53   *    *
		
		Parameters
		----------
		(l, u) : (integer, integer)
		    Number of non-zero lower and upper diagonals
		ab : (`l` + `u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b.  Returned shape depends on the
		    shape of `b`.
	**/
	static public function solve_banded(l_and_u:Dynamic, ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve C x = b for x, where C is a circulant matrix.
		
		`C` is the circulant matrix associated with the vector `c`.
		
		The system is solved by doing division in Fourier space.  The
		calculation is::
		
		    x = ifft(fft(b) / fft(c))
		
		where `fft` and `ifft` are the fast Fourier transform and its inverse,
		respectively.  For a large vector `c`, this is *much* faster than
		solving the system with the full circulant matrix.
		
		Parameters
		----------
		c : array_like
		    The coefficients of the circulant matrix.
		b : array_like
		    Right-hand side matrix in ``a x = b``.
		singular : str, optional
		    This argument controls how a near singular circulant matrix is
		    handled.  If `singular` is "raise" and the circulant matrix is
		    near singular, a `LinAlgError` is raised.  If `singular` is
		    "lstsq", the least squares solution is returned.  Default is "raise".
		tol : float, optional
		    If any eigenvalue of the circulant matrix has an absolute value
		    that is less than or equal to `tol`, the matrix is considered to be
		    near singular.  If not given, `tol` is set to::
		
		        tol = abs_eigs.max() * abs_eigs.size * np.finfo(np.float64).eps
		
		    where `abs_eigs` is the array of absolute values of the eigenvalues
		    of the circulant matrix.
		caxis : int
		    When `c` has dimension greater than 1, it is viewed as a collection
		    of circulant vectors.  In this case, `caxis` is the axis of `c` that
		    holds the vectors of circulant coefficients.
		baxis : int
		    When `b` has dimension greater than 1, it is viewed as a collection
		    of vectors.  In this case, `baxis` is the axis of `b` that holds the
		    right-hand side vectors.
		outaxis : int
		    When `c` or `b` are multidimensional, the value returned by
		    `solve_circulant` is multidimensional.  In this case, `outaxis` is
		    the axis of the result that holds the solution vectors.
		
		Returns
		-------
		x : ndarray
		    Solution to the system ``C x = b``.
		
		Raises
		------
		LinAlgError
		    If the circulant matrix associated with `c` is near singular.
		
		See Also
		--------
		circulant
		
		Notes
		-----
		For a one-dimensional vector `c` with length `m`, and an array `b`
		with shape ``(m, ...)``,
		
		    solve_circulant(c, b)
		
		returns the same result as
		
		    solve(circulant(c), b)
		
		where `solve` and `circulant` are from `scipy.linalg`.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.linalg import solve_circulant, solve, circulant, lstsq
		
		>>> c = np.array([2, 2, 4])
		>>> b = np.array([1, 2, 3])
		>>> solve_circulant(c, b)
		array([ 0.75, -0.25,  0.25])
		
		Compare that result to solving the system with `scipy.linalg.solve`:
		
		>>> solve(circulant(c), b)
		array([ 0.75, -0.25,  0.25])
		
		A singular example:
		
		>>> c = np.array([1, 1, 0, 0])
		>>> b = np.array([1, 2, 3, 4])
		
		Calling ``solve_circulant(c, b)`` will raise a `LinAlgError`.  For the
		least square solution, use the option ``singular='lstsq'``:
		
		>>> solve_circulant(c, b, singular='lstsq')
		array([ 0.25,  1.25,  2.25,  1.25])
		
		Compare to `scipy.linalg.lstsq`:
		
		>>> x, resid, rnk, s = lstsq(circulant(c), b)
		>>> x
		array([ 0.25,  1.25,  2.25,  1.25])
		
		A broadcasting example:
		
		Suppose we have the vectors of two circulant matrices stored in an array
		with shape (2, 5), and three `b` vectors stored in an array with shape
		(3, 5).  For example,
		
		>>> c = np.array([[1.5, 2, 3, 0, 0], [1, 1, 4, 3, 2]])
		>>> b = np.arange(15).reshape(-1, 5)
		
		We want to solve all combinations of circulant matrices and `b` vectors,
		with the result stored in an array with shape (2, 3, 5).  When we
		disregard the axes of `c` and `b` that hold the vectors of coefficients,
		the shapes of the collections are (2,) and (3,), respectively, which are
		not compatible for broadcasting.  To have a broadcast result with shape
		(2, 3), we add a trivial dimension to `c`: ``c[:, np.newaxis, :]`` has
		shape (2, 1, 5).  The last dimension holds the coefficients of the
		circulant matrices, so when we call `solve_circulant`, we can use the
		default ``caxis=-1``.  The coefficients of the `b` vectors are in the last
		dimension of the array `b`, so we use ``baxis=-1``.  If we use the
		default `outaxis`, the result will have shape (5, 2, 3), so we'll use
		``outaxis=-1`` to put the solution vectors in the last dimension.
		
		>>> x = solve_circulant(c[:, np.newaxis, :], b, baxis=-1, outaxis=-1)
		>>> x.shape
		(2, 3, 5)
		>>> np.set_printoptions(precision=3)  # For compact output of numbers.
		>>> x
		array([[[-0.118,  0.22 ,  1.277, -0.142,  0.302],
		        [ 0.651,  0.989,  2.046,  0.627,  1.072],
		        [ 1.42 ,  1.758,  2.816,  1.396,  1.841]],
		       [[ 0.401,  0.304,  0.694, -0.867,  0.377],
		        [ 0.856,  0.758,  1.149, -0.412,  0.831],
		        [ 1.31 ,  1.213,  1.603,  0.042,  1.286]]])
		
		Check by solving one pair of `c` and `b` vectors (cf. ``x[1, 1, :]``):
		
		>>> solve_circulant(c[1], b[1, :])
		array([ 0.856,  0.758,  1.149, -0.412,  0.831])
	**/
	static public function solve_circulant(c:Dynamic, b:Dynamic, ?singular:Dynamic, ?tol:Dynamic, ?caxis:Dynamic, ?baxis:Dynamic, ?outaxis:Dynamic):Dynamic;
	/**
		Solves the continuous algebraic Riccati equation, or CARE, defined
		as (A'X + XA - XBR^-1B'X+Q=0) directly using a Schur decomposition
		method.
		
		Parameters
		----------
		a : (M, M) array_like
		    Input
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Non-singular, square matrix
		
		Returns
		-------
		x : (M, M) ndarray
		    Solution to the continuous algebraic Riccati equation
		
		See Also
		--------
		solve_discrete_are : Solves the discrete algebraic Riccati equation
		
		Notes
		-----
		Method taken from:
		Laub, "A Schur Method for Solving Algebraic Riccati Equations."
		U.S. Energy Research and Development Agency under contract
		ERDA-E(49-18)-2087.
		http://dspace.mit.edu/bitstream/handle/1721.1/1301/R-0859-05666488.pdf
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_continuous_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic):Dynamic;
	/**
		Solves the disctrete algebraic Riccati equation, or DARE, defined as
		(X = A'XA-(A'XB)(R+B'XB)^-1(B'XA)+Q), directly using a Schur decomposition
		method.
		
		Parameters
		----------
		a : (M, M) array_like
		    Non-singular, square matrix
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Non-singular, square matrix
		
		Returns
		-------
		x : ndarray
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_continuous_are : Solves the continuous algebraic Riccati equation
		
		Notes
		-----
		Method taken from:
		Laub, "A Schur Method for Solving Algebraic Riccati Equations."
		U.S. Energy Research and Development Agency under contract
		ERDA-E(49-18)-2087.
		http://dspace.mit.edu/bitstream/handle/1721.1/1301/R-0859-05666488.pdf
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_discrete_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation :math:`(A'XA-X=-Q)`.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix
		
		q : (M, M) array_like
		    Right-hand side square matrix
		
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
		solve_lyapunov : computes the solution to the continuous Lyapunov equation
		
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
		Lyapunov equation to a continuous Lyapunov equation :math:`(B'X+XB=-C)`
		where :math:`B=(A-I)(A+I)^{-1}` and
		:math:`C=2(A' + I)^{-1} Q (A + I)^{-1}`. The continuous equation can be
		efficiently solved since it is a special case of a Sylvester equation.
		The transformation algorithm is from Popov (1964) as described in [2]_.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Hamilton, James D. Time Series Analysis, Princeton: Princeton
		   University Press, 1994.  265.  Print.
		   http://www.scribd.com/doc/20577138/Hamilton-1994-Time-Series-Analysis
		.. [2] Gajic, Z., and M.T.J. Qureshi. 2008.
		   Lyapunov Matrix Equation in System Stability and Control.
		   Dover Books on Engineering Series. Dover Publications.
	**/
	static public function solve_discrete_lyapunov(a:Dynamic, q:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Solves the continuous Lyapunov equation (AX + XA^H = Q) given the values
		of A and Q using the Bartels-Stewart algorithm.
		
		Parameters
		----------
		a : array_like
		    A square matrix
		
		q : array_like
		    Right-hand side square matrix
		
		Returns
		-------
		x : array_like
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_sylvester : computes the solution to the Sylvester equation
		
		Notes
		-----
		Because the continuous Lyapunov equation is just a special form of the
		Sylvester equation, this solver relies entirely on solve_sylvester for a
		solution.
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_lyapunov(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Computes a solution (X) to the Sylvester equation (AX + XB = Q).
		
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
	**/
	static public function solve_sylvester(a:Dynamic, b:Dynamic, q:Dynamic):Dynamic;
	/**
		Solve a Toeplitz system using Levinson Recursion
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row.  If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c_or_cr : array_like or tuple of (array_like, array_like)
		    The vector ``c``, or a tuple of arrays (``c``, ``r``). Whatever the
		    actual shape of ``c``, it will be converted to a 1-D array. If not
		    supplied, ``r = conjugate(c)`` is assumed; in this case, if c[0] is
		    real, the Toeplitz matrix is Hermitian. r[0] is ignored; the first row
		    of the Toeplitz matrix is ``[c[0], r[1:]]``.  Whatever the actual shape
		    of ``r``, it will be converted to a 1-D array.
		b : (M,) or (M, K) array_like
		    Right-hand side in ``T x = b``.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (result entirely NaNs) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system ``T x = b``.  Shape of return matches shape
		    of `b`.
		
		Notes
		-----
		The solution is computed using Levinson-Durbin recursion, which is faster
		than generic least-squares methods, but can be less numerically stable.
	**/
	static public function solve_toeplitz(c_or_cr:Dynamic, b:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		Solve equation a x = b. a is Hermitian positive-definite banded matrix.
		
		The matrix a is stored in `ab` either in lower diagonal or upper
		diagonal ordered form:
		
		    ab[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    ab[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		Example of `ab` (shape of a is (6, 6), `u` =2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		ab : (`u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b.  Shape of return matches shape
		    of `b`.
	**/
	static public function solveh_banded(ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?lower:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Matrix square root.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose square root to evaluate
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		blocksize : integer, optional
		    If the blocksize is not degenerate with respect to the
		    size of the input array, then use a blocked algorithm. (Default: 64)
		
		Returns
		-------
		sqrtm : (N, N) ndarray
		    Value of the sqrt function at `A`
		
		errest : float
		    (if disp == False)
		
		    Frobenius norm of the estimated error, ||err||_F / ||A||_F
		
		References
		----------
		.. [1] Edvin Deadman, Nicholas J. Higham, Rui Ralha (2013)
		       "Blocked Schur Algorithms for Computing the Matrix Square Root,
		       Lecture Notes in Computer Science, 7782. pp. 171-182.
		
		Examples
		--------
		>>> from scipy.linalg import sqrtm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> r = sqrtm(a)
		>>> r
		array([[ 0.75592895,  1.13389342],
		       [ 0.37796447,  1.88982237]])
		>>> r.dot(r)
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function sqrtm(A:Dynamic, ?disp:Dynamic, ?blocksize:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix a into two unitary matrices U and Vh, and
		a 1-D array s of singular values (real, non-negative) such that
		``a == U*S*Vh``, where S is a suitably shaped matrix of zeros with
		main diagonal s.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True, `U` and `Vh` are of shape ``(M,M)``, ``(N,N)``.
		    If False, the shapes are ``(M,K)`` and ``(K,N)``, where
		    ``K = min(M,N)``.
		compute_uv : bool, optional
		    Whether to compute also `U` and `Vh` in addition to `s`.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M,M)`` or ``(M,K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N,N)`` or ``(K,N)`` depending on `full_matrices`.
		
		For ``compute_uv = False``, only `s` is returned.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See also
		--------
		svdvals : Compute singular values of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6) + 1.j*np.random.randn(9, 6)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape, Vh.shape, s.shape
		((9, 9), (6, 6), (6,))
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, Vh.shape, s.shape
		((9, 6), (6, 6), (6,))
		>>> S = linalg.diagsvd(s, 6, 6)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute singular values of a matrix.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		s : (min(M, N),) ndarray
		    The singular values, sorted in decreasing order.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		``svdvals(a)`` only differs from ``svd(a, compute_uv=False)`` by its
		handling of the edge case of empty ``a``, where it returns an
		empty sequence:
		
		>>> a = np.empty((0, 2))
		>>> from scipy.linalg import svdvals
		>>> svdvals(a)
		array([], dtype=float64)
		
		See also
		--------
		svd : Compute the full singular value decomposition of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
	**/
	static public function svdvals(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the hyperbolic matrix tangent.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array
		
		Returns
		-------
		tanhm : (N, N) ndarray
		    Hyperbolic matrix tangent of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> t = tanhm(a)
		>>> t
		array([[ 0.3428582 ,  0.51987926],
		       [ 0.17329309,  0.86273746]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> s = sinhm(a)
		>>> c = coshm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function tanhm(A:Dynamic):Dynamic;
	/**
		Compute the matrix tangent.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		tanm : (N, N) ndarray
		    Matrix tangent of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanm, sinm, cosm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> t = tanm(a)
		>>> t
		array([[ -2.00876993,  -8.41880636],
		       [ -2.80626879, -10.42757629]])
		
		Verify tanm(a) = sinm(a).dot(inv(cosm(a)))
		
		>>> s = sinm(a)
		>>> c = cosm(a)
		>>> s.dot(np.linalg.inv(c))
		array([[ -2.00876993,  -8.41880636],
		       [ -2.80626879, -10.42757629]])
	**/
	static public function tanm(A:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		Construct a Toeplitz matrix.
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row.  If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix.  Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    First row of the matrix. If None, ``r = conjugate(c)`` is assumed;
		    in this case, if c[0] is real, the result is a Hermitian matrix.
		    r[0] is ignored; the first row of the returned matrix is
		    ``[c[0], r[1:]]``.  Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Toeplitz matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See also
		--------
		circulant : circulant matrix
		hankel : Hankel matrix
		
		Notes
		-----
		The behavior when `c` or `r` is a scalar, or when `c` is complex and
		`r` is None, was changed in version 0.8.0.  The behavior in previous
		versions was undocumented and is no longer supported.
		
		Examples
		--------
		>>> from scipy.linalg import toeplitz
		>>> toeplitz([1,2,3], [1,4,5,6])
		array([[1, 4, 5, 6],
		       [2, 1, 4, 5],
		       [3, 2, 1, 4]])
		>>> toeplitz([1.0, 2+3j, 4-1j])
		array([[ 1.+0.j,  2.-3.j,  4.+1.j],
		       [ 2.+3.j,  1.+0.j,  2.-3.j],
		       [ 4.-1.j,  2.+3.j,  1.+0.j]])
	**/
	static public function toeplitz(c:Dynamic, ?r:Dynamic):Dynamic;
	/**
		Construct (N, M) matrix filled with ones at and below the k-th diagonal.
		
		The matrix has A[i,j] == 1 for i <= j + k
		
		Parameters
		----------
		N : int
		    The size of the first dimension of the matrix.
		M : int or None, optional
		    The size of the second dimension of the matrix. If `M` is None,
		    `M = N` is assumed.
		k : int, optional
		    Number of subdiagonal below which matrix is filled with ones.
		    `k` = 0 is the main diagonal, `k` < 0 subdiagonal and `k` > 0
		    superdiagonal.
		dtype : dtype, optional
		    Data type of the matrix.
		
		Returns
		-------
		tri : (N, M) ndarray
		    Tri matrix.
		
		Examples
		--------
		>>> from scipy.linalg import tri
		>>> tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		>>> tri(3, 5, -1, dtype=int)
		array([[0, 0, 0, 0, 0],
		       [1, 0, 0, 0, 0],
		       [1, 1, 0, 0, 0]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Make a copy of a matrix with elements above the k-th diagonal zeroed.
		
		Parameters
		----------
		m : array_like
		    Matrix whose elements to return
		k : int, optional
		    Diagonal above which to zero elements.
		    `k` == 0 is the main diagonal, `k` < 0 subdiagonal and
		    `k` > 0 superdiagonal.
		
		Returns
		-------
		tril : ndarray
		    Return is the same shape and type as `m`.
		
		Examples
		--------
		>>> from scipy.linalg import tril
		>>> tril([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 0,  0,  0],
		       [ 4,  0,  0],
		       [ 7,  8,  0],
		       [10, 11, 12]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Make a copy of a matrix with elements below the k-th diagonal zeroed.
		
		Parameters
		----------
		m : array_like
		    Matrix whose elements to return
		k : int, optional
		    Diagonal below which to zero elements.
		    `k` == 0 is the main diagonal, `k` < 0 subdiagonal and
		    `k` > 0 superdiagonal.
		
		Returns
		-------
		triu : ndarray
		    Return matrix with zeroed elements below the k-th diagonal and has
		    same shape and type as `m`.
		
		Examples
		--------
		>>> from scipy.linalg import triu
		>>> triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
}