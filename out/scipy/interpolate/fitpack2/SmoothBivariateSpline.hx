/* This file is generated, do not edit! */
package scipy.interpolate.fitpack2;
@:pythonImport("scipy.interpolate.fitpack2", "SmoothBivariateSpline") extern class SmoothBivariateSpline {
	/**
		Evaluate the spline or its derivatives at given positions.
		
		Parameters
		----------
		x, y : array_like
		    Input coordinates.
		
		    If `grid` is False, evaluate the spline at points ``(x[i],
		    y[i]), i=0, ..., len(x)-1``.  Standard Numpy broadcasting
		    is obeyed.
		
		    If `grid` is True: evaluate spline at the grid points
		    defined by the coordinate arrays x, y. The arrays must be
		    sorted to increasing order.
		dx : int
		    Order of x-derivative
		
		    .. versionadded:: 0.14.0
		dy : int
		    Order of y-derivative
		
		    .. versionadded:: 0.14.0
		grid : bool
		    Whether to evaluate the results on a grid spanned by the
		    input arrays, or at points specified by the input arrays.
		
		    .. versionadded:: 0.14.0
		
		mth : str
		    Deprecated argument. Has no effect.
	**/
	public function __call__(x:Dynamic, y:Dynamic, ?mth:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?grid:Dynamic):Dynamic;
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
	public function ___init__(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic, ?bbox:Dynamic, ?kx:Dynamic, ?ky:Dynamic, ?s:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic, ?bbox:Dynamic, ?kx:Dynamic, ?ky:Dynamic, ?s:Dynamic, ?eps:Dynamic):Void;
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
		Construct a spline object from given tck and degree
	**/
	static public function _from_tck(tck:Dynamic):Dynamic;
	/**
		Evaluate the spline at points
		
		Returns the interpolated value at ``(xi[i], yi[i]),
		i=0,...,len(xi)-1``.
		
		Parameters
		----------
		xi, yi : array_like
		    Input coordinates. Standard Numpy broadcasting is obeyed.
		dx : int, optional
		    Order of x-derivative
		
		    .. versionadded:: 0.14.0
		dy : int, optional
		    Order of y-derivative
		
		    .. versionadded:: 0.14.0
	**/
	public function ev(xi:Dynamic, yi:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Dynamic;
	/**
		Return spline coefficients.
	**/
	public function get_coeffs():Dynamic;
	/**
		Return a tuple (tx,ty) where tx,ty contain knots positions
		of the spline with respect to x-, y-variable, respectively.
		The position of interior and additional knots are given as
		t[k+1:-k-1] and t[:k+1]=b, t[-k-1:]=e, respectively.
	**/
	public function get_knots():Dynamic;
	/**
		Return weighted sum of squared residuals of the spline
		approximation: sum ((w[i]*(z[i]-s(x[i],y[i])))**2,axis=0)
	**/
	public function get_residual():Dynamic;
	/**
		Evaluate the integral of the spline over area [xa,xb] x [ya,yb].
		
		Parameters
		----------
		xa, xb : float
		    The end-points of the x integration interval.
		ya, yb : float
		    The end-points of the y integration interval.
		
		Returns
		-------
		integ : float
		    The value of the resulting integral.
	**/
	public function integral(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic):Float;
}