/* This file is generated, do not edit! */
package scipy.interpolate._cubic;
@:pythonImport("scipy.interpolate._cubic", "PchipInterpolator") extern class PchipInterpolator {
	/**
		Evaluate the piecewise polynomial or its derivative.
		
		Parameters
		----------
		x : array_like
		    Points to evaluate the interpolant at.
		nu : int, optional
		    Order of derivative to evaluate. Must be non-negative.
		extrapolate : {bool, 'periodic', None}, optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used.
		    If None (default), use `self.extrapolate`.
		
		Returns
		-------
		y : array_like
		    Interpolated values. Shape is determined by replacing
		    the interpolation axis in the original array with the shape of x.
		
		Notes
		-----
		Derivatives are evaluated piecewise for each polynomial
		segment, even if the polynomial is not differentiable at the
		breakpoints. The polynomial intervals are considered half-open,
		``[a, b)``, except for the last interval which is closed
		``[a, b]``.
	**/
	public function __call__(x:Dynamic, ?nu:Dynamic, ?extrapolate:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic, ?axis:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, ?axis:Dynamic, ?extrapolate:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Compute the coefficients of a polynomial in the Bernstein basis
		given the values and derivatives at the edges.
		
		Return the coefficients of a polynomial in the Bernstein basis
		defined on `[xa, xb]` and having the values and derivatives at the
		endpoints ``xa`` and ``xb`` as specified by ``ya`` and ``yb``.
		The polynomial constructed is of the minimal possible degree, i.e.,
		if the lengths of ``ya`` and ``yb`` are ``na`` and ``nb``, the degree
		of the polynomial is ``na + nb - 1``.
		
		Parameters
		----------
		xa : float
		    Left-hand end point of the interval
		xb : float
		    Right-hand end point of the interval
		ya : array_like
		    Derivatives at ``xa``. ``ya[0]`` is the value of the function, and
		    ``ya[i]`` for ``i > 0`` is the value of the ``i``-th derivative.
		yb : array_like
		    Derivatives at ``xb``.
		
		Returns
		-------
		array
		    coefficient array of a polynomial having specified derivatives
		
		Notes
		-----
		This uses several facts from life of Bernstein basis functions.
		First of all,
		
		    .. math:: b'_{a, n} = n (b_{a-1, n-1} - b_{a, n-1})
		
		If B(x) is a linear combination of the form
		
		    .. math:: B(x) = \sum_{a=0}^{n} c_a b_{a, n},
		
		then :math: B'(x) = n \sum_{a=0}^{n-1} (c_{a+1} - c_{a}) b_{a, n-1}.
		Iterating the latter one, one finds for the q-th derivative
		
		    .. math:: B^{q}(x) = n!/(n-q)! \sum_{a=0}^{n-q} Q_a b_{a, n-q},
		
		with
		
		  .. math:: Q_a = \sum_{j=0}^{q} (-)^{j+q} comb(q, j) c_{j+a}
		
		This way, only `a=0` contributes to :math: `B^{q}(x = xa)`, and
		`c_q` are found one by one by iterating `q = 0, ..., na`.
		
		At `x = xb` it's the same with `a = n - q`.
	**/
	static public function _construct_from_derivatives(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic):Dynamic;
	static public function _edge_case(h0:Dynamic, h1:Dynamic, m0:Dynamic, m1:Dynamic):Dynamic;
	/**
		c and x may be modified by the user. The Cython code expects
		that they are C contiguous.
	**/
	public function _ensure_c_contiguous():Dynamic;
	public function _evaluate(x:Dynamic, nu:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	static public function _find_derivatives(x:Dynamic, y:Dynamic):Dynamic;
	public function _get_dtype(dtype:Dynamic):Dynamic;
	/**
		Raise a degree of a polynomial in the Bernstein basis.
		
		Given the coefficients of a polynomial degree `k`, return (the
		coefficients of) the equivalent polynomial of degree `k+d`.
		
		Parameters
		----------
		c : array_like
		    coefficient array, 1D
		d : integer
		
		Returns
		-------
		array
		    coefficient array, 1D array of length `c.shape[0] + d`
		
		Notes
		-----
		This uses the fact that a Bernstein polynomial `b_{a, k}` can be
		identically represented as a linear combination of polynomials of
		a higher degree `k+d`:
		
		    .. math:: b_{a, k} = comb(k, a) \sum_{j=0}^{d} b_{a+j, k+d} \
		                         comb(d, j) / comb(k+d, a+j)
	**/
	static public function _raise_degree(c:Dynamic, d:Dynamic):Dynamic;
	/**
		Construct a new piecewise polynomial representing the antiderivative.
		
		Parameters
		----------
		nu : int, optional
		    Order of antiderivative to evaluate. Default is 1, i.e. compute
		    the first integral. If negative, the derivative is returned.
		
		Returns
		-------
		bp : BPoly
		    Piecewise polynomial of order k + nu representing the
		    antiderivative of this polynomial.
		
		Notes
		-----
		If antiderivative is computed and ``self.extrapolate='periodic'``,
		it will be set to False for the returned instance. This is done because
		the antiderivative is no longer periodic and its correct evaluation
		outside of the initially given x interval is difficult.
	**/
	public function antiderivative(?nu:Dynamic):Dynamic;
	public var axis : Dynamic;
	public var c : Dynamic;
	/**
		Construct the piecewise polynomial without making checks.
		
		Takes the same parameters as the constructor. Input arguments
		`c` and `x` must be arrays of the correct shape and type.  The
		`c` array can only be of dtypes float and complex, and `x`
		array must have dtype float.
	**/
	static public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Construct a new piecewise polynomial representing the derivative.
		
		Parameters
		----------
		nu : int, optional
		    Order of derivative to evaluate. Default is 1, i.e. compute the
		    first derivative. If negative, the antiderivative is returned.
		
		Returns
		-------
		bp : BPoly
		    Piecewise polynomial of order k - nu representing the derivative of
		    this polynomial.
	**/
	public function derivative(?nu:Dynamic):Dynamic;
	/**
		Add additional breakpoints and coefficients to the polynomial.
		
		Parameters
		----------
		c : ndarray, size (k, m, ...)
		    Additional coefficients for polynomials in intervals. Note that
		    the first additional interval will be formed using one of the
		    `self.x` end points.
		x : ndarray, size (m,)
		    Additional breakpoints. Must be sorted in the same order as
		    `self.x` and either to the right or to the left of the current
		    breakpoints.
		right
		    Deprecated argument. Has no effect.
		
		    .. deprecated:: 0.19
	**/
	public function extend(c:Dynamic, x:Dynamic, ?right:Dynamic):Dynamic;
	public var extrapolate : Dynamic;
	/**
		Construct a piecewise polynomial in the Bernstein basis,
		compatible with the specified values and derivatives at breakpoints.
		
		Parameters
		----------
		xi : array_like
		    sorted 1D array of x-coordinates
		yi : array_like or list of array_likes
		    ``yi[i][j]`` is the ``j``-th derivative known at ``xi[i]``
		orders : None or int or array_like of ints. Default: None.
		    Specifies the degree of local polynomials. If not None, some
		    derivatives are ignored.
		extrapolate : bool or 'periodic', optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used. Default is True.
		
		Notes
		-----
		If ``k`` derivatives are specified at a breakpoint ``x``, the
		constructed polynomial is exactly ``k`` times continuously
		differentiable at ``x``, unless the ``order`` is provided explicitly.
		In the latter case, the smoothness of the polynomial at
		the breakpoint is controlled by the ``order``.
		
		Deduces the number of derivatives to match at each end
		from ``order`` and the number of derivatives available. If
		possible it uses the same number of derivatives from
		each end; if the number is odd it tries to take the
		extra one from y2. In any case if not enough derivatives
		are available at one end or another it draws enough to
		make up the total from the other end.
		
		If the order is too high and not enough derivatives are available,
		an exception is raised.
		
		Examples
		--------
		
		>>> from scipy.interpolate import BPoly
		>>> BPoly.from_derivatives([0, 1], [[1, 2], [3, 4]])
		
		Creates a polynomial `f(x)` of degree 3, defined on `[0, 1]`
		such that `f(0) = 1, df/dx(0) = 2, f(1) = 3, df/dx(1) = 4`
		
		>>> BPoly.from_derivatives([0, 1, 2], [[0, 1], [0], [2]])
		
		Creates a piecewise polynomial `f(x)`, such that
		`f(0) = f(1) = 0`, `f(2) = 2`, and `df/dx(0) = 1`.
		Based on the number of derivatives provided, the order of the
		local polynomials is 2 on `[0, 1]` and 1 on `[1, 2]`.
		Notice that no restriction is imposed on the derivatives at
		`x = 1` and `x = 2`.
		
		Indeed, the explicit form of the polynomial is::
		
		    f(x) = | x * (1 - x),  0 <= x < 1
		           | 2 * (x - 1),  1 <= x <= 2
		
		So that f'(1-0) = -1 and f'(1+0) = 2
	**/
	static public function from_derivatives(xi:Dynamic, yi:Dynamic, ?orders:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Construct a piecewise polynomial in Bernstein basis
		from a power basis polynomial.
		
		Parameters
		----------
		pp : PPoly
		    A piecewise polynomial in the power basis
		extrapolate : bool or 'periodic', optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used. Default is True.
	**/
	static public function from_power_basis(pp:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Compute a definite integral over a piecewise polynomial.
		
		Parameters
		----------
		a : float
		    Lower integration bound
		b : float
		    Upper integration bound
		extrapolate : {bool, 'periodic', None}, optional
		    Whether to extrapolate to out-of-bounds points based on first
		    and last intervals, or to return NaNs. If 'periodic', periodic
		    extrapolation is used. If None (default), use `self.extrapolate`.
		
		Returns
		-------
		array_like
		    Definite integral of the piecewise polynomial over [a, b]
	**/
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Return the roots of the interpolated function.
	**/
	public function roots():Dynamic;
	public var x : Dynamic;
}