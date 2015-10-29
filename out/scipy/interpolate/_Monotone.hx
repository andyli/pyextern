/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate._monotone") extern class _Monotone {
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
		Check whether x is if a scalar type, or 0-dim
	**/
	static public function _isscalar(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Convenience function for pchip interpolation.
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``.  The interpolant uses monotonic cubic splines
		to find the value of new points x and the derivatives there.
		
		See `PchipInterpolator` for details.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates, of length N.
		yi :  array_like
		    A 1-D array of real values.  `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array_like
		    Of length M.
		der : int or list, optional
		    How many derivatives to extract; None for all potentially
		    nonzero derivatives (that is a number equal to the number
		    of points), or a list of derivatives to extract. This number
		    includes the function value as 0th derivative.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		See Also
		--------
		PchipInterpolator
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
	**/
	static public function pchip_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}