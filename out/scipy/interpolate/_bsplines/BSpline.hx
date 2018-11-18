/* This file is generated, do not edit! */
package scipy.interpolate._bsplines;
@:pythonImport("scipy.interpolate._bsplines", "BSpline") extern class BSpline {
	/**
		Evaluate a spline function.
		
		Parameters
		----------
		x : array_like
		    points to evaluate the spline at.
		nu: int, optional
		    derivative to evaluate (default is 0).
		extrapolate : bool or 'periodic', optional
		    whether to extrapolate based on the first and last intervals
		    or return nans. If 'periodic', periodic extrapolation is used.
		    Default is `self.extrapolate`.
		
		Returns
		-------
		y : array_like
		    Shape is determined by replacing the interpolation axis
		    in the coefficient array with the shape of `x`.
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
	public function ___init__(t:Dynamic, c:Dynamic, k:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(t:Dynamic, c:Dynamic, k:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Void;
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
		c and t may be modified by the user. The Cython code expects
		that they are C contiguous.
	**/
	public function _ensure_c_contiguous():Dynamic;
	public function _evaluate(xp:Dynamic, nu:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	/**
		Return a b-spline representing the antiderivative.
		
		Parameters
		----------
		nu : int, optional
		    Antiderivative order. Default is 1.
		
		Returns
		-------
		b : BSpline object
		    A new instance representing the antiderivative.
		
		Notes
		-----
		If antiderivative is computed and ``self.extrapolate='periodic'``,
		it will be set to False for the returned instance. This is done because
		the antiderivative is no longer periodic and its correct evaluation
		outside of the initially given x interval is difficult.
		
		See Also
		--------
		splder, splantider
	**/
	public function antiderivative(?nu:Dynamic):Dynamic;
	/**
		Return a B-spline basis element ``B(x | t[0], ..., t[k+1])``.
		
		Parameters
		----------
		t : ndarray, shape (k+1,)
		    internal knots
		extrapolate : bool or 'periodic', optional
		    whether to extrapolate beyond the base interval, ``t[0] .. t[k+1]``,
		    or to return nans.
		    If 'periodic', periodic extrapolation is used.
		    Default is True.
		
		Returns
		-------
		basis_element : callable
		    A callable representing a B-spline basis element for the knot
		    vector `t`.
		
		Notes
		-----
		The order of the b-spline, `k`, is inferred from the length of `t` as
		``len(t)-2``. The knot vector is constructed by appending and prepending
		``k+1`` elements to internal knots `t`.
		
		Examples
		--------
		
		Construct a cubic b-spline:
		
		>>> from scipy.interpolate import BSpline
		>>> b = BSpline.basis_element([0, 1, 2, 3, 4])
		>>> k = b.k
		>>> b.t[k:-k]
		array([ 0.,  1.,  2.,  3.,  4.])
		>>> k
		3
		
		Construct a second order b-spline on ``[0, 1, 1, 2]``, and compare
		to its explicit form:
		
		>>> t = [-1, 0, 1, 1, 2]
		>>> b = BSpline.basis_element(t[1:])
		>>> def f(x):
		...     return np.where(x < 1, x*x, (2. - x)**2)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots()
		>>> x = np.linspace(0, 2, 51)
		>>> ax.plot(x, b(x), 'g', lw=3)
		>>> ax.plot(x, f(x), 'r', lw=8, alpha=0.4)
		>>> ax.grid(True)
		>>> plt.show()
	**/
	static public function basis_element(t:Dynamic, ?extrapolate:Dynamic):haxe.Constraints.Function;
	/**
		Construct a spline without making checks.
		
		Accepts same parameters as the regular constructor. Input arrays
		`t` and `c` must of correct shape and dtype.
	**/
	static public function construct_fast(t:Dynamic, c:Dynamic, k:Dynamic, ?extrapolate:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return a b-spline representing the derivative.
		
		Parameters
		----------
		nu : int, optional
		    Derivative order.
		    Default is 1.
		
		Returns
		-------
		b : BSpline object
		    A new instance representing the derivative.
		
		See Also
		--------
		splder, splantider
	**/
	public function derivative(?nu:Dynamic):Dynamic;
	/**
		Compute a definite integral of the spline.
		
		Parameters
		----------
		a : float
		    Lower limit of integration.
		b : float
		    Upper limit of integration.
		extrapolate : bool or 'periodic', optional
		    whether to extrapolate beyond the base interval,
		    ``t[k] .. t[-k-1]``, or take the spline to be zero outside of the
		    base interval. If 'periodic', periodic extrapolation is used.
		    If None (default), use `self.extrapolate`.
		
		Returns
		-------
		I : array_like
		    Definite integral of the spline over the interval ``[a, b]``.
		
		Examples
		--------
		Construct the linear spline ``x if x < 1 else 2 - x`` on the base
		interval :math:`[0, 2]`, and integrate it
		
		>>> from scipy.interpolate import BSpline
		>>> b = BSpline.basis_element([0, 1, 2])
		>>> b.integrate(0, 1)
		array(0.5)
		
		If the integration limits are outside of the base interval, the result
		is controlled by the `extrapolate` parameter
		
		>>> b.integrate(-1, 1)
		array(0.0)
		>>> b.integrate(-1, 1, extrapolate=False)
		array(0.5)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots()
		>>> ax.grid(True)
		>>> ax.axvline(0, c='r', lw=5, alpha=0.5)  # base interval
		>>> ax.axvline(2, c='r', lw=5, alpha=0.5)
		>>> xx = [-1, 1, 2]
		>>> ax.plot(xx, b(xx))
		>>> plt.show()
	**/
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Equivalent to ``(self.t, self.c, self.k)`` (read-only).
		        
	**/
	public var tck : Dynamic;
}