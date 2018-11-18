/* This file is generated, do not edit! */
package scipy.optimize._trustregion_exact;
@:pythonImport("scipy.optimize._trustregion_exact") extern class _Trustregion_exact_Module {
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
		Minimization of scalar function of one or more variables using a
		trust-region algorithm.
		
		Options for the trust-region algorithm are:
		    initial_trust_radius : float
		        Initial trust radius.
		    max_trust_radius : float
		        Never propose steps that are longer than this value.
		    eta : float
		        Trust region related acceptance stringency for proposed steps.
		    gtol : float
		        Gradient norm must be less than `gtol`
		        before successful termination.
		    maxiter : int
		        Maximum number of iterations to perform.
		    disp : bool
		        If True, print convergence message.
		    inexact : bool
		        Accuracy to solve subproblems. If True requires less nonlinear
		        iterations, but more vector products. Only effective for method
		        trust-krylov.
		
		This function is called by the `minimize` function.
		It is not supposed to be called directly.
	**/
	static public function _minimize_trust_region(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic, ?subproblem:Dynamic, ?initial_trust_radius:Dynamic, ?max_trust_radius:Dynamic, ?eta:Dynamic, ?gtol:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?callback:Dynamic, ?inexact:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using
		a nearly exact trust-region algorithm.
		
		Options
		-------
		initial_tr_radius : float
		    Initial trust-region radius.
		max_tr_radius : float
		    Maximum value of the trust-region radius. No steps that are longer
		    than this value will be proposed.
		eta : float
		    Trust region related acceptance stringency for proposed steps.
		gtol : float
		    Gradient norm must be less than ``gtol`` before successful
		    termination.
	**/
	static public function _minimize_trustregion_exact(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?trust_region_options:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
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
		
		Examples
		--------
		>>> from scipy.linalg import cho_factor, cho_solve
		>>> A = np.array([[9, 3, 1, 5], [3, 7, 5, 1], [1, 5, 9, 2], [5, 1, 2, 6]])
		>>> c, low = cho_factor(A)
		>>> x = cho_solve((c, low), [1, 1, 1, 1])
		>>> np.allclose(A @ x - [1, 1, 1, 1], np.zeros(4))
		True
	**/
	static public function cho_solve(c_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
	static public var division : Dynamic;
	/**
		Given upper triangular matrix ``U`` estimate the smallest singular
		value and the correspondent right singular vector in O(n**2) operations.
		
		Parameters
		----------
		U : ndarray
		    Square upper triangular matrix.
		
		Returns
		-------
		s_min : float
		    Estimated smallest singular value of the provided matrix.
		z_min : ndarray
		    Estimatied right singular vector.
		
		Notes
		-----
		The procedure is based on [1]_ and is done in two steps. First it finds
		a vector ``e`` with components selected from {+1, -1} such that the
		solution ``w`` from the system ``U.T w = e`` is as large as possible.
		Next it estimate ``U v = w``. The smallest singular value is close
		to ``norm(w)/norm(v)`` and the right singular vector is close
		to ``v/norm(v)``.
		
		The estimation will be better more ill-conditioned is the matrix.
		
		References
		----------
		.. [1] Cline, A. K., Moler, C. B., Stewart, G. W., Wilkinson, J. H.
		       An estimate for the condition number of a matrix.  1979.
		       SIAM Journal on Numerical Analysis, 16(2), 368-375.
	**/
	static public function estimate_smallest_singular_value(U:Dynamic):Float;
	/**
		Given a square matrix ``H`` compute upper
		and lower bounds for its eigenvalues (Gregoshgorin Bounds).
		Defined ref. [1].
		
		References
		----------
		.. [1] Conn, A. R., Gould, N. I., & Toint, P. L.
		       Trust region methods. 2000. Siam. pp. 19.
	**/
	static public function gershgorin_bounds(H:Dynamic):Dynamic;
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
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
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
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
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
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute term that makes the leading ``k`` by ``k``
		submatrix from ``A`` singular.
		
		Parameters
		----------
		A : ndarray
		    Symmetric matrix that is not positive definite.
		U : ndarray
		    Upper triangular matrix resulting of an incomplete
		    Cholesky decomposition of matrix ``A``.
		k : int
		    Positive integer such that the leading k by k submatrix from
		    `A` is the first non-positive definite leading submatrix.
		
		Returns
		-------
		delta : float
		    Amount that should be added to the element (k, k) of the
		    leading k by k submatrix of ``A`` to make it singular.
		v : ndarray
		    A vector such that ``v.T B v = 0``. Where B is the matrix A after
		    ``delta`` is added to its element (k, k).
	**/
	static public function singular_leading_submatrix(A:Dynamic, U:Dynamic, k:Dynamic):Float;
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
}