/* This file is generated, do not edit! */
package scipy.interpolate.interpolate;
@:pythonImport("scipy.interpolate.interpolate", "_PPolyBase") extern class _PPolyBase {
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
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c and x may be modified by the user. The Cython code expects
		that they are C contiguous.
	**/
	public function _ensure_c_contiguous():Dynamic;
	public function _get_dtype(dtype:Dynamic):Dynamic;
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
	public var x : Dynamic;
}