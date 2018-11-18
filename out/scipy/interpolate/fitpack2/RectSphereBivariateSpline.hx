/* This file is generated, do not edit! */
package scipy.interpolate.fitpack2;
@:pythonImport("scipy.interpolate.fitpack2", "RectSphereBivariateSpline") extern class RectSphereBivariateSpline {
	/**
		Evaluate the spline or its derivatives at given positions.
		
		Parameters
		----------
		theta, phi : array_like
		    Input coordinates.
		
		    If `grid` is False, evaluate the spline at points
		    ``(theta[i], phi[i]), i=0, ..., len(x)-1``.  Standard
		    Numpy broadcasting is obeyed.
		
		    If `grid` is True: evaluate spline at the grid points
		    defined by the coordinate arrays theta, phi. The arrays
		    must be sorted to increasing order.
		dtheta : int, optional
		    Order of theta-derivative
		
		    .. versionadded:: 0.14.0
		dphi : int
		    Order of phi-derivative
		
		    .. versionadded:: 0.14.0
		grid : bool
		    Whether to evaluate the results on a grid spanned by the
		    input arrays, or at points specified by the input arrays.
		
		    .. versionadded:: 0.14.0
	**/
	public function __call__(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic, ?grid:Dynamic):Dynamic;
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
	public function ___init__(u:Dynamic, v:Dynamic, r:Dynamic, ?s:Dynamic, ?pole_continuity:Dynamic, ?pole_values:Dynamic, ?pole_exact:Dynamic, ?pole_flat:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(u:Dynamic, v:Dynamic, r:Dynamic, ?s:Dynamic, ?pole_continuity:Dynamic, ?pole_values:Dynamic, ?pole_exact:Dynamic, ?pole_flat:Dynamic):Void;
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
		Evaluate the spline at points
		
		Returns the interpolated value at ``(theta[i], phi[i]),
		i=0,...,len(theta)-1``.
		
		Parameters
		----------
		theta, phi : array_like
		    Input coordinates. Standard Numpy broadcasting is obeyed.
		dtheta : int, optional
		    Order of theta-derivative
		
		    .. versionadded:: 0.14.0
		dphi : int, optional
		    Order of phi-derivative
		
		    .. versionadded:: 0.14.0
	**/
	public function ev(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic):Dynamic;
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
}