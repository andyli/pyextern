/* This file is generated, do not edit! */
package scipy.interpolate.interpolate;
@:pythonImport("scipy.interpolate.interpolate", "NdPPoly") extern class NdPPoly {
	/**
		Evaluate the piecewise polynomial or its derivative
		
		Parameters
		----------
		x : array-like
		    Points to evaluate the interpolant at.
		nu : tuple, optional
		    Orders of derivatives to evaluate. Each must be non-negative.
		extrapolate : bool, optional
		    Whether to extrapolate to out-of-bounds points based on first
		    and last intervals, or to return NaNs.
		
		Returns
		-------
		y : array-like
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
	public function ___init__(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic):Void;
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
		Compute 1D antiderivative along a selected dimension
		May result to non-contiguous c array.
	**/
	public function _antiderivative_inplace(nu:Dynamic, axis:Dynamic):Dynamic;
	/**
		Compute 1D derivative along a selected dimension in-place
		May result to non-contiguous c array.
	**/
	public function _derivative_inplace(nu:Dynamic, axis:Dynamic):Dynamic;
	public function _ensure_c_contiguous():Dynamic;
	public function _get_dtype(dtype:Dynamic):Dynamic;
	/**
		Construct a new piecewise polynomial representing the antiderivative.
		
		Antiderivative is also the indefinite integral of the function,
		and derivative is its inverse operation.
		
		Parameters
		----------
		nu : ndim-tuple of int
		    Order of derivatives to evaluate for each dimension.
		    If negative, the derivative is returned.
		
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
	**/
	public function antiderivative(nu:Dynamic):Dynamic;
	/**
		Construct the piecewise polynomial without making checks.
		
		Takes the same parameters as the constructor. Input arguments
		`c` and `x` must be arrays of the correct shape and type.  The
		`c` array can only be of dtypes float and complex, and `x`
		array must have dtype float.
	**/
	static public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Construct a new piecewise polynomial representing the derivative.
		
		Parameters
		----------
		nu : ndim-tuple of int
		    Order of derivatives to evaluate for each dimension.
		    If negative, the antiderivative is returned.
		
		Returns
		-------
		pp : NdPPoly
		    Piecewise polynomial of orders (k[0] - nu[0], ..., k[n] - nu[n])
		    representing the derivative of this polynomial.
		
		Notes
		-----
		Derivatives are evaluated piecewise for each polynomial
		segment, even if the polynomial is not differentiable at the
		breakpoints. The polynomial intervals in each dimension are
		considered half-open, ``[a, b)``, except for the last interval
		which is closed ``[a, b]``.
	**/
	public function derivative(nu:Dynamic):Dynamic;
	/**
		Compute a definite integral over a piecewise polynomial.
		
		Parameters
		----------
		ranges : ndim-tuple of 2-tuples float
		    Sequence of lower and upper bounds for each dimension,
		    ``[(a[0], b[0]), ..., (a[ndim-1], b[ndim-1])]``
		extrapolate : bool, optional
		    Whether to extrapolate to out-of-bounds points based on first
		    and last intervals, or to return NaNs.
		
		Returns
		-------
		ig : array_like
		    Definite integral of the piecewise polynomial over
		    [a[0], b[0]] x ... x [a[ndim-1], b[ndim-1]]
	**/
	public function integrate(ranges:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Compute NdPPoly representation for one dimensional definite integral
		
		The result is a piecewise polynomial representing the integral:
		
		.. math::
		
		   p(y, z, ...) = \int_a^b dx\, p(x, y, z, ...)
		
		where the dimension integrated over is specified with the
		`axis` parameter.
		
		Parameters
		----------
		a, b : float
		    Lower and upper bound for integration.
		axis : int
		    Dimension over which to compute the 1D integrals
		extrapolate : bool, optional
		    Whether to extrapolate to out-of-bounds points based on first
		    and last intervals, or to return NaNs.
		
		Returns
		-------
		ig : NdPPoly or array-like
		    Definite integral of the piecewise polynomial over [a, b].
		    If the polynomial was 1-dimensional, an array is returned,
		    otherwise, an NdPPoly object.
	**/
	public function integrate_1d(a:Dynamic, b:Dynamic, axis:Dynamic, ?extrapolate:Dynamic):Dynamic;
}