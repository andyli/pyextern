/* This file is generated, do not edit! */
package scipy.interpolate.polyint;
@:pythonImport("scipy.interpolate.polyint", "PiecewisePolynomial") extern class PiecewisePolynomial {
	/**
		Evaluate the interpolant
		
		Parameters
		----------
		x : array_like
		    Points to evaluate the interpolant at.
		
		Returns
		-------
		y : array_like
		    Interpolated values. Shape is determined by replacing
		    the interpolation axis in the original array with the shape of x.
	**/
	public function __call__(x:Dynamic):Dynamic;
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
	public function ___init__(xi:Dynamic, yi:Dynamic, ?orders:Dynamic, ?direction:Dynamic, ?axis:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Actually evaluate the value of the interpolator.
	**/
	public function _evaluate(x:Dynamic):Dynamic;
	public function _evaluate_derivatives(x:Dynamic, ?der:Dynamic):Dynamic;
	/**
		Reshape interpolated y back to n-d array similar to initial y
	**/
	public function _finish_y(y:Dynamic, x_shape:Dynamic):Dynamic;
	/**
		Construct the interpolating polynomial object
		
		Deduces the number of derivatives to match at each end
		from order and the number of derivatives available. If
		possible it uses the same number of derivatives from
		each end; if the number is odd it tries to take the
		extra one from y2. In any case if not enough derivatives
		are available at one end or another it draws enough to
		make up the total from the other end.
	**/
	public function _make_polynomial(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic, order:Dynamic, direction:Dynamic):Dynamic;
	/**
		Reshape input x array to 1-D
	**/
	public function _prepare_x(x:Dynamic):Dynamic;
	public function _reshape_yi(yi:Dynamic, ?check:Dynamic):Dynamic;
	public function _set_dtype(dtype:Dynamic, ?union:Dynamic):Dynamic;
	public function _set_yi(yi:Dynamic, ?xi:Dynamic, ?axis:Dynamic):Dynamic;
	static public var _y_axis : Dynamic;
	static public var _y_extra_shape : Dynamic;
	/**
		Append a single point with derivatives to the PiecewisePolynomial
		
		Parameters
		----------
		xi : float
		    Point to add.
		yi : array_like
		    `yi` is the list of derivatives known at `xi`.
		order : int or None, optional
		    A polynomial order, or instructions to use the highest possible
		    order.
	**/
	public function append(xi:Dynamic, yi:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Evaluate one derivative of the polynomial at the point x
		
		Parameters
		----------
		x : array_like
		    Point or points at which to evaluate the derivatives
		
		der : integer, optional
		    Which derivative to extract. This number includes the
		    function value as 0th derivative.
		
		Returns
		-------
		d : ndarray
		    Derivative interpolated at the x-points.  Shape of d is
		    determined by replacing the interpolation axis in the
		    original array with the shape of x.
		
		Notes
		-----
		This is computed by evaluating all derivatives up to the desired
		one (using self.derivatives()) and then discarding the rest.
	**/
	public function derivative(x:Dynamic, ?der:Dynamic):Dynamic;
	/**
		Evaluate many derivatives of the polynomial at the point x
		
		Produce an array of all derivative values at the point x.
		
		Parameters
		----------
		x : array_like
		    Point or points at which to evaluate the derivatives
		der : int or None, optional
		    How many derivatives to extract; None for all potentially
		    nonzero derivatives (that is a number equal to the number
		    of points). This number includes the function value as 0th
		    derivative.
		
		Returns
		-------
		d : ndarray
		    Array with derivatives; d[j] contains the j-th derivative.
		    Shape of d[j] is determined by replacing the interpolation
		    axis in the original array with the shape of x.
		
		Examples
		--------
		>>> KroghInterpolator([0,0,0],[1,2,3]).derivatives(0)
		array([1.0,2.0,3.0])
		>>> KroghInterpolator([0,0,0],[1,2,3]).derivatives([0,0])
		array([[1.0,1.0],
		       [2.0,2.0],
		       [3.0,3.0]])
	**/
	public function derivatives(x:Dynamic, ?der:Dynamic):Dynamic;
	static public var dtype : Dynamic;
	/**
		Extend the PiecewisePolynomial by a list of points
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates.
		yi : list of lists of length N1
		    ``yi[i]`` (if ``axis == 0``) is the list of derivatives known
		    at ``xi[i]``.
		orders : int or list of ints, optional
		    A list of polynomial orders, or a single universal order.
	**/
	public function extend(xi:Dynamic, yi:Dynamic, ?orders:Dynamic):Dynamic;
}