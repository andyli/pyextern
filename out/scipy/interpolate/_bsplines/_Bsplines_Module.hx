/* This file is generated, do not edit! */
package scipy.interpolate._bsplines;
@:pythonImport("scipy.interpolate._bsplines") extern class _Bsplines_Module {
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
		Convert the input into a C contiguous float array.
		
		NB: Upcasts half- and single-precision floats to double precision.
	**/
	static public function _as_float_array(x:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Construct a knot vector appropriate for the order-k interpolation.
	**/
	static public function _augknt(x:Dynamic, k:Dynamic):Dynamic;
	static public function _convert_string_aliases(deriv:Dynamic, target_shape:Dynamic):Dynamic;
	/**
		Return np.complex128 for complex dtypes, np.float64 otherwise.
	**/
	static public function _get_dtype(dtype:Dynamic):Dynamic;
	/**
		Given data x, construct the knot vector w/ not-a-knot BC.
		cf de Boor, XIII(12).
	**/
	static public function _not_a_knot(x:Dynamic, k:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Solve the linear equations ``A x = b``, given the Cholesky factorization of
		the banded hermitian ``A``.
		
		Parameters
		----------
		(cb, lower) : tuple, (ndarray, bool)
		    `cb` is the Cholesky factorization of A, as given by cholesky_banded.
		    `lower` must be the same value that was given to cholesky_banded.
		b : array_like
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
		
		Examples
		--------
		>>> from scipy.linalg import cholesky_banded, cho_solve_banded
		>>> Ab = np.array([[0, 0, 1j, 2, 3j], [0, -1, -2, 3, 4], [9, 8, 7, 6, 9]])
		>>> A = np.diag(Ab[0,2:], k=2) + np.diag(Ab[1,1:], k=1)
		>>> A = A + A.conj().T + np.diag(Ab[2, :])
		>>> c = cholesky_banded(Ab)
		>>> x = cho_solve_banded((c, False), np.ones(5))
		>>> np.allclose(A @ x - np.ones(5), np.zeros(5))
		True
	**/
	static public function cho_solve_banded(cb_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
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
		
		Examples
		--------
		>>> from scipy.linalg import cholesky_banded
		>>> from numpy import allclose, zeros, diag
		>>> Ab = np.array([[0, 0, 1j, 2, 3j], [0, -1, -2, 3, 4], [9, 8, 7, 6, 9]])
		>>> A = np.diag(Ab[0,2:], k=2) + np.diag(Ab[1,1:], k=1)
		>>> A = A + A.conj().T + np.diag(Ab[2, :])
		>>> c = cholesky_banded(Ab)
		>>> C = np.diag(c[0, 2:], k=2) + np.diag(c[1, 1:], k=1) + np.diag(c[2, :])
		>>> np.allclose(C.conj().T @ C - A, np.zeros((5, 5)))
		True
	**/
	static public function cholesky_banded(ab:Dynamic, ?overwrite_ab:Dynamic, ?lower:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		Compute the (coefficients of) interpolating B-spline.
		
		Parameters
		----------
		x : array_like, shape (n,)
		    Abscissas.
		y : array_like, shape (n, ...)
		    Ordinates.
		k : int, optional
		    B-spline degree. Default is cubic, k=3.
		t : array_like, shape (nt + k + 1,), optional.
		    Knots.
		    The number of knots needs to agree with the number of datapoints and
		    the number of derivatives at the edges. Specifically, ``nt - n`` must
		    equal ``len(deriv_l) + len(deriv_r)``.
		bc_type : 2-tuple or None
		    Boundary conditions.
		    Default is None, which means choosing the boundary conditions
		    automatically. Otherwise, it must be a length-two tuple where the first
		    element sets the boundary conditions at ``x[0]`` and the second
		    element sets the boundary conditions at ``x[-1]``. Each of these must
		    be an iterable of pairs ``(order, value)`` which gives the values of
		    derivatives of specified orders at the given edge of the interpolation
		    interval.
		    Alternatively, the following string aliases are recognized:
		
		    * ``"clamped"``: The first derivatives at the ends are zero. This is
		       equivalent to ``bc_type=((1, 0.0), (1, 0.0))``.
		    * ``"natural"``: The second derivatives at ends are zero. This is
		      equivalent to ``bc_type=((2, 0.0), (2, 0.0))``.
		    * ``"not-a-knot"`` (default): The first and second segments are the same
		      polynomial. This is equivalent to having ``bc_type=None``.
		
		axis : int, optional
		    Interpolation axis. Default is 0.
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		b : a BSpline object of the degree ``k`` and with knots ``t``.
		
		Examples
		--------
		
		Use cubic interpolation on Chebyshev nodes:
		
		>>> def cheb_nodes(N):
		...     jj = 2.*np.arange(N) + 1
		...     x = np.cos(np.pi * jj / 2 / N)[::-1]
		...     return x
		
		>>> x = cheb_nodes(20)
		>>> y = np.sqrt(1 - x**2)
		
		>>> from scipy.interpolate import BSpline, make_interp_spline
		>>> b = make_interp_spline(x, y)
		>>> np.allclose(b(x), y)
		True
		
		Note that the default is a cubic spline with a not-a-knot boundary condition
		
		>>> b.k
		3
		
		Here we use a 'natural' spline, with zero 2nd derivatives at edges:
		
		>>> l, r = [(2, 0.0)], [(2, 0.0)]
		>>> b_n = make_interp_spline(x, y, bc_type=(l, r))  # or, bc_type="natural"
		>>> np.allclose(b_n(x), y)
		True
		>>> x0, x1 = x[0], x[-1]
		>>> np.allclose([b_n(x0, 2), b_n(x1, 2)], [0, 0])
		True
		
		Interpolation of parametric curves is also supported. As an example, we
		compute a discretization of a snail curve in polar coordinates
		
		>>> phi = np.linspace(0, 2.*np.pi, 40)
		>>> r = 0.3 + np.cos(phi)
		>>> x, y = r*np.cos(phi), r*np.sin(phi)  # convert to Cartesian coordinates
		
		Build an interpolating curve, parameterizing it by the angle
		
		>>> from scipy.interpolate import make_interp_spline
		>>> spl = make_interp_spline(phi, np.c_[x, y])
		
		Evaluate the interpolant on a finer grid (note that we transpose the result
		to unpack it into a pair of x- and y-arrays)
		
		>>> phi_new = np.linspace(0, 2.*np.pi, 100)
		>>> x_new, y_new = spl(phi_new).T
		
		Plot the result
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o')
		>>> plt.plot(x_new, y_new, '-')
		>>> plt.show()
		
		See Also
		--------
		BSpline : base class representing the B-spline objects
		CubicSpline : a cubic spline in the polynomial basis
		make_lsq_spline : a similar factory function for spline fitting
		UnivariateSpline : a wrapper over FITPACK spline fitting routines
		splrep : a wrapper over FITPACK spline fitting routines
	**/
	static public function make_interp_spline(x:Dynamic, y:Dynamic, ?k:Dynamic, ?t:Dynamic, ?bc_type:Dynamic, ?axis:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (coefficients of) an LSQ B-spline.
		
		The result is a linear combination
		
		.. math::
		
		        S(x) = \sum_j c_j B_j(x; t)
		
		of the B-spline basis elements, :math:`B_j(x; t)`, which minimizes
		
		.. math::
		
		    \sum_{j} \left( w_j \times (S(x_j) - y_j) \right)^2
		
		Parameters
		----------
		x : array_like, shape (m,)
		    Abscissas.
		y : array_like, shape (m, ...)
		    Ordinates.
		t : array_like, shape (n + k + 1,).
		    Knots.
		    Knots and data points must satisfy Schoenberg-Whitney conditions.
		k : int, optional
		    B-spline degree. Default is cubic, k=3.
		w : array_like, shape (n,), optional
		    Weights for spline fitting. Must be positive. If ``None``,
		    then weights are all equal.
		    Default is ``None``.
		axis : int, optional
		    Interpolation axis. Default is zero.
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		b : a BSpline object of the degree `k` with knots `t`.
		
		Notes
		-----
		
		The number of data points must be larger than the spline degree `k`.
		
		Knots `t` must satisfy the Schoenberg-Whitney conditions,
		i.e., there must be a subset of data points ``x[j]`` such that
		``t[j] < x[j] < t[j+k+1]``, for ``j=0, 1,...,n-k-2``.
		
		Examples
		--------
		Generate some noisy data:
		
		>>> x = np.linspace(-3, 3, 50)
		>>> y = np.exp(-x**2) + 0.1 * np.random.randn(50)
		
		Now fit a smoothing cubic spline with a pre-defined internal knots.
		Here we make the knot vector (k+1)-regular by adding boundary knots:
		
		>>> from scipy.interpolate import make_lsq_spline, BSpline
		>>> t = [-1, 0, 1]
		>>> k = 3
		>>> t = np.r_[(x[0],)*(k+1),
		...           t,
		...           (x[-1],)*(k+1)]
		>>> spl = make_lsq_spline(x, y, t, k)
		
		For comparison, we also construct an interpolating spline for the same
		set of data:
		
		>>> from scipy.interpolate import make_interp_spline
		>>> spl_i = make_interp_spline(x, y)
		
		Plot both:
		
		>>> import matplotlib.pyplot as plt
		>>> xs = np.linspace(-3, 3, 100)
		>>> plt.plot(x, y, 'ro', ms=5)
		>>> plt.plot(xs, spl(xs), 'g-', lw=3, label='LSQ spline')
		>>> plt.plot(xs, spl_i(xs), 'b-', lw=3, alpha=0.7, label='interp spline')
		>>> plt.legend(loc='best')
		>>> plt.show()
		
		**NaN handling**: If the input arrays contain ``nan`` values, the result is
		not useful since the underlying spline fitting routines cannot deal with
		``nan``. A workaround is to use zero weights for not-a-number data points:
		
		>>> y[8] = np.nan
		>>> w = np.isnan(y)
		>>> y[w] = 0.
		>>> tck = make_lsq_spline(x, y, t, w=~w)
		
		Notice the need to replace a ``nan`` by a numerical value (precise value
		does not matter as long as the corresponding weight is zero.)
		
		See Also
		--------
		BSpline : base class representing the B-spline objects
		make_interp_spline : a similar factory function for interpolating splines
		LSQUnivariateSpline : a FITPACK-based spline fitting routine
		splrep : a FITPACK-based fitting routine
	**/
	static public function make_lsq_spline(x:Dynamic, y:Dynamic, t:Dynamic, ?k:Dynamic, ?w:Dynamic, ?axis:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Product of a list of numbers; ~40x faster vs np.prod for Python tuples
	**/
	static public function prod(x:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}