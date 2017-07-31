/* This file is generated, do not edit! */
package scipy.interpolate.fitpack2;
@:pythonImport("scipy.interpolate.fitpack2", "LSQUnivariateSpline") extern class LSQUnivariateSpline {
	/**
		Evaluate spline (or its nu-th derivative) at positions x.
		
		Parameters
		----------
		x : array_like
		    A 1-D array of points at which to return the value of the smoothed
		    spline or its derivatives. Note: x can be unordered but the
		    evaluation is more efficient if x is (partially) ordered.
		nu  : int
		    The order of derivative of the spline to compute.
		ext : int
		    Controls the value returned for elements of ``x`` not in the
		    interval defined by the knot sequence.
		
		    * if ext=0 or 'extrapolate', return the extrapolated value.
		    * if ext=1 or 'zeros', return 0
		    * if ext=2 or 'raise', raise a ValueError
		    * if ext=3 or 'const', return the boundary value.
		
		    The default value is 0, passed from the initialization of
		    UnivariateSpline.
	**/
	public function __call__(x:Dynamic, ?nu:Dynamic, ?ext:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(x:Dynamic, y:Dynamic, t:Dynamic, ?w:Dynamic, ?bbox:Dynamic, ?k:Dynamic, ?ext:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, t:Dynamic, ?w:Dynamic, ?bbox:Dynamic, ?k:Dynamic, ?ext:Dynamic, ?check_finite:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Construct a spline object from given tck
	**/
	static public function _from_tck(tck:Dynamic, ?ext:Dynamic):Dynamic;
	public function _reset_class():Dynamic;
	public function _reset_nest(data:Dynamic, ?nest:Dynamic):Dynamic;
	public function _set_class(cls:Dynamic):Dynamic;
	/**
		Construct a new spline representing the antiderivative of this spline.
		
		Parameters
		----------
		n : int, optional
		    Order of antiderivative to evaluate. Default: 1
		
		Returns
		-------
		spline : UnivariateSpline
		    Spline of order k2=k+n representing the antiderivative of this
		    spline.
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		See Also
		--------
		splantider, derivative
		
		Examples
		--------
		>>> from scipy.interpolate import UnivariateSpline
		>>> x = np.linspace(0, np.pi/2, 70)
		>>> y = 1 / np.sqrt(1 - 0.8*np.sin(x)**2)
		>>> spl = UnivariateSpline(x, y, s=0)
		
		The derivative is the inverse operation of the antiderivative,
		although some floating point error accumulates:
		
		>>> spl(1.7), spl.antiderivative().derivative()(1.7)
		(array(2.1565429877197317), array(2.1565429877201865))
		
		Antiderivative can be used to evaluate definite integrals:
		
		>>> ispl = spl.antiderivative()
		>>> ispl(np.pi/2) - ispl(0)
		2.2572053588768486
		
		This is indeed an approximation to the complete elliptic integral
		:math:`K(m) = \int_0^{\pi/2} [1 - m\sin^2 x]^{-1/2} dx`:
		
		>>> from scipy.special import ellipk
		>>> ellipk(0.8)
		2.2572053268208538
	**/
	public function antiderivative(?n:Dynamic):Dynamic;
	/**
		Construct a new spline representing the derivative of this spline.
		
		Parameters
		----------
		n : int, optional
		    Order of derivative to evaluate. Default: 1
		
		Returns
		-------
		spline : UnivariateSpline
		    Spline of order k2=k-n representing the derivative of this
		    spline.
		
		See Also
		--------
		splder, antiderivative
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		Examples
		--------
		This can be used for finding maxima of a curve:
		
		>>> from scipy.interpolate import UnivariateSpline
		>>> x = np.linspace(0, 10, 70)
		>>> y = np.sin(x)
		>>> spl = UnivariateSpline(x, y, k=4, s=0)
		
		Now, differentiate the spline and find the zeros of the
		derivative. (NB: `sproot` only works for order 3 splines, so we
		fit an order 4 spline):
		
		>>> spl.derivative().roots() / np.pi
		array([ 0.50000001,  1.5       ,  2.49999998])
		
		This agrees well with roots :math:`\pi/2 + n\pi` of
		:math:`\cos(x) = \sin'(x)`.
	**/
	public function derivative(?n:Dynamic):Dynamic;
	/**
		Return all derivatives of the spline at the point x.
		
		Parameters
		----------
		x : float
		    The point to evaluate the derivatives at.
		
		Returns
		-------
		der : ndarray, shape(k+1,)
		    Derivatives of the orders 0 to k.
		
		Examples
		--------
		>>> from scipy.interpolate import UnivariateSpline
		>>> x = np.linspace(0, 3, 11)
		>>> y = x**2
		>>> spl = UnivariateSpline(x, y)
		>>> spl.derivatives(1.5)
		array([2.25, 3.0, 2.0, 0])
	**/
	public function derivatives(x:Dynamic):Dynamic;
	/**
		Return spline coefficients.
	**/
	public function get_coeffs():Dynamic;
	/**
		Return positions of interior knots of the spline.
		
		Internally, the knot vector contains ``2*k`` additional boundary knots.
	**/
	public function get_knots():Dynamic;
	/**
		Return weighted sum of squared residuals of the spline approximation.
		
		This is equivalent to::
		
		     sum((w[i] * (y[i]-spl(x[i])))**2, axis=0)
	**/
	public function get_residual():Dynamic;
	/**
		Return definite integral of the spline between two given points.
		
		Parameters
		----------
		a : float
		    Lower limit of integration.
		b : float
		    Upper limit of integration.
		
		Returns
		-------
		integral : float
		    The value of the definite integral of the spline between limits.
		
		Examples
		--------
		>>> from scipy.interpolate import UnivariateSpline
		>>> x = np.linspace(0, 3, 11)
		>>> y = x**2
		>>> spl = UnivariateSpline(x, y)
		>>> spl.integral(0, 3)
		9.0
		
		which agrees with :math:`\int x^2 dx = x^3 / 3` between the limits
		of 0 and 3.
		
		A caveat is that this routine assumes the spline to be zero outside of
		the data limits:
		
		>>> spl.integral(-1, 4)
		9.0
		>>> spl.integral(-1, 0)
		0.0
	**/
	public function integral(a:Dynamic, b:Dynamic):Float;
	/**
		Return the zeros of the spline.
		
		Restriction: only cubic splines are supported by fitpack.
	**/
	public function roots():Dynamic;
	/**
		Continue spline computation with the given smoothing
		factor s and with the knots found at the last call.
		
		This routine modifies the spline in place.
	**/
	public function set_smoothing_factor(s:Dynamic):Dynamic;
}