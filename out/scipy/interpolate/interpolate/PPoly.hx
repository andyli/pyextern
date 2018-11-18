/* This file is generated, do not edit! */
package scipy.interpolate.interpolate;
@:pythonImport("scipy.interpolate.interpolate", "PPoly") extern class PPoly {
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
	public function ___init__(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Void;
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
		c and x may be modified by the user. The Cython code expects
		that they are C contiguous.
	**/
	public function _ensure_c_contiguous():Dynamic;
	public function _evaluate(x:Dynamic, nu:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	public function _get_dtype(dtype:Dynamic):Dynamic;
	/**
		Construct a new piecewise polynomial representing the antiderivative.
		
		Antiderivative is also the indefinite integral of the function,
		and derivative is its inverse operation.
		
		Parameters
		----------
		nu : int, optional
		    Order of antiderivative to evaluate. Default is 1, i.e. compute
		    the first integral. If negative, the derivative is returned.
		
		Returns
		-------
		pp : PPoly
		    Piecewise polynomial of order k2 = k + n representing
		    the antiderivative of this polynomial.
		
		Notes
		-----
		The antiderivative returned by this function is continuous and
		continuously differentiable to order n-1, up to floating point
		rounding error.
		
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
		pp : PPoly
		    Piecewise polynomial of order k2 = k - n representing the derivative
		    of this polynomial.
		
		Notes
		-----
		Derivatives are evaluated piecewise for each polynomial
		segment, even if the polynomial is not differentiable at the
		breakpoints. The polynomial intervals are considered half-open,
		``[a, b)``, except for the last interval which is closed
		``[a, b]``.
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
		Construct a piecewise polynomial in the power basis
		from a polynomial in Bernstein basis.
		
		Parameters
		----------
		bp : BPoly
		    A Bernstein basis polynomial, as created by BPoly
		extrapolate : bool or 'periodic', optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used. Default is True.
	**/
	static public function from_bernstein_basis(bp:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Construct a piecewise polynomial from a spline
		
		Parameters
		----------
		tck
		    A spline, as returned by `splrep` or a BSpline object.
		extrapolate : bool or 'periodic', optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used. Default is True.
	**/
	static public function from_spline(tck:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Compute a definite integral over a piecewise polynomial.
		
		Parameters
		----------
		a : float
		    Lower integration bound
		b : float
		    Upper integration bound
		extrapolate : {bool, 'periodic', None}, optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs.
		    If 'periodic', periodic extrapolation is used.
		    If None (default), use `self.extrapolate`.
		
		Returns
		-------
		ig : array_like
		    Definite integral of the piecewise polynomial over [a, b]
	**/
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Find real roots of the the piecewise polynomial.
		
		Parameters
		----------
		discontinuity : bool, optional
		    Whether to report sign changes across discontinuities at
		    breakpoints as roots.
		extrapolate : {bool, 'periodic', None}, optional
		    If bool, determines whether to return roots from the polynomial
		    extrapolated based on first and last intervals, 'periodic' works
		    the same as False. If None (default), use `self.extrapolate`.
		
		Returns
		-------
		roots : ndarray
		    Roots of the polynomial(s).
		
		    If the PPoly object describes multiple polynomials, the
		    return value is an object array whose each element is an
		    ndarray containing the roots.
		
		See Also
		--------
		PPoly.solve
	**/
	public function roots(?discontinuity:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Find real solutions of the the equation ``pp(x) == y``.
		
		Parameters
		----------
		y : float, optional
		    Right-hand side. Default is zero.
		discontinuity : bool, optional
		    Whether to report sign changes across discontinuities at
		    breakpoints as roots.
		extrapolate : {bool, 'periodic', None}, optional
		    If bool, determines whether to return roots from the polynomial
		    extrapolated based on first and last intervals, 'periodic' works
		    the same as False. If None (default), use `self.extrapolate`.
		
		Returns
		-------
		roots : ndarray
		    Roots of the polynomial(s).
		
		    If the PPoly object describes multiple polynomials, the
		    return value is an object array whose each element is an
		    ndarray containing the roots.
		
		Notes
		-----
		This routine works only on real-valued polynomials.
		
		If the piecewise polynomial contains sections that are
		identically zero, the root list will contain the start point
		of the corresponding interval, followed by a ``nan`` value.
		
		If the polynomial is discontinuous across a breakpoint, and
		there is a sign change across the breakpoint, this is reported
		if the `discont` parameter is True.
		
		Examples
		--------
		
		Finding roots of ``[x**2 - 1, (x - 1)**2]`` defined on intervals
		``[-2, 1], [1, 2]``:
		
		>>> from scipy.interpolate import PPoly
		>>> pp = PPoly(np.array([[1, -4, 3], [1, 0, 0]]).T, [-2, 1, 2])
		>>> pp.roots()
		array([-1.,  1.])
	**/
	public function solve(?y:Dynamic, ?discontinuity:Dynamic, ?extrapolate:Dynamic):Dynamic;
	public var x : Dynamic;
}