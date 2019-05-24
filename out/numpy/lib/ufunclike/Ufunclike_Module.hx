/* This file is generated, do not edit! */
package numpy.lib.ufunclike;
@:pythonImport("numpy.lib.ufunclike") extern class Ufunclike_Module {
	static public var ENABLE_ARRAY_FUNCTION : Dynamic;
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
		Allow the out argument to be passed as the name `y` (deprecated)
		
		In future, this decorator should be removed.
	**/
	static public function _deprecate_out_named_y(f:Dynamic):Dynamic;
	static public function _dispatcher(x:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Allow the out argument to be passed as the name `y` (deprecated)
		
		In future, this decorator should be removed.
	**/
	static public function _fix_out_named_y(f:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Round to nearest integer towards zero.
		
		Round an array of floats element-wise to nearest integer towards zero.
		The rounded values are returned as floats.
		
		Parameters
		----------
		x : array_like
		    An array of floats to be rounded
		y : ndarray, optional
		    Output array
		
		Returns
		-------
		out : ndarray of floats
		    The array of rounded numbers
		
		See Also
		--------
		trunc, floor, ceil
		around : Round to given number of decimals
		
		Examples
		--------
		>>> np.fix(3.14)
		3.0
		>>> np.fix(3)
		3.0
		>>> np.fix([2.1, 2.9, -2.1, -2.9])
		array([ 2.,  2., -2., -2.])
	**/
	static public function fix(x:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Test element-wise for negative infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A boolean array with the same shape and type as `x` to store the
		    result.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a numpy boolean array is
		    returned with values True where the corresponding element of the
		    input is negative infinity and values False where the element of
		    the input is not negative infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as
		    zeros and ones, if the type is boolean then as False and True. The
		    return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values.
		
		Examples
		--------
		>>> np.isneginf(np.NINF)
		array(True, dtype=bool)
		>>> np.isneginf(np.inf)
		array(False, dtype=bool)
		>>> np.isneginf(np.PINF)
		array(False, dtype=bool)
		>>> np.isneginf([-np.inf, 0., np.inf])
		array([ True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isneginf(x, y)
		array([1, 0, 0])
		>>> y
		array([1, 0, 0])
	**/
	static public function isneginf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Test element-wise for positive infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		y : array_like, optional
		    A boolean array with the same shape as `x` to store the result.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a boolean array is returned
		    with values True where the corresponding element of the input is
		    positive infinity and values False where the element of the input is
		    not positive infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as zeros
		    and ones, if the type is boolean then as False and True.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isneginf, isfinite, isnan
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values
		
		Examples
		--------
		>>> np.isposinf(np.PINF)
		array(True, dtype=bool)
		>>> np.isposinf(np.inf)
		array(True, dtype=bool)
		>>> np.isposinf(np.NINF)
		array(False, dtype=bool)
		>>> np.isposinf([-np.inf, 0., np.inf])
		array([False, False,  True])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isposinf(x, y)
		array([0, 0, 1])
		>>> y
		array([0, 0, 1])
	**/
	static public function isposinf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
}