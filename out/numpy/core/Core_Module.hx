/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core") extern class Core_Module {
	static public var ALLOW_THREADS : Dynamic;
	static public var BUFSIZE : Dynamic;
	static public var CLIP : Dynamic;
	static public var ERR_CALL : Dynamic;
	static public var ERR_DEFAULT : Dynamic;
	static public var ERR_IGNORE : Dynamic;
	static public var ERR_LOG : Dynamic;
	static public var ERR_PRINT : Dynamic;
	static public var ERR_RAISE : Dynamic;
	static public var ERR_WARN : Dynamic;
	static public var FLOATING_POINT_SUPPORT : Dynamic;
	static public var FPE_DIVIDEBYZERO : Dynamic;
	static public var FPE_INVALID : Dynamic;
	static public var FPE_OVERFLOW : Dynamic;
	static public var FPE_UNDERFLOW : Dynamic;
	static public var False_ : Dynamic;
	static public var Inf : Dynamic;
	static public var Infinity : Dynamic;
	static public var MAXDIMS : Dynamic;
	static public var NAN : Dynamic;
	static public var NINF : Dynamic;
	static public var NZERO : Dynamic;
	static public var NaN : Dynamic;
	static public var PINF : Dynamic;
	static public var PZERO : Dynamic;
	static public var RAISE : Dynamic;
	static public var SHIFT_DIVIDEBYZERO : Dynamic;
	static public var SHIFT_INVALID : Dynamic;
	static public var SHIFT_OVERFLOW : Dynamic;
	static public var SHIFT_UNDERFLOW : Dynamic;
	static public var ScalarType : Dynamic;
	static public var True_ : Dynamic;
	static public var UFUNC_BUFSIZE_DEFAULT : Dynamic;
	static public var UFUNC_PYVALS_NAME : Dynamic;
	static public var WRAP : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public function _ufunc_reconstruct(module:Dynamic, name:Dynamic):Dynamic;
	/**
		absolute(x[, out])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10])
		>>> plt.show()
	**/
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		absolute(x[, out])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10])
		>>> plt.show()
	**/
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		add(x1, x2[, out])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` + `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.add(1.0, 4.0)
		5.0
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.add(x1, x2)
		array([[  0.,   2.,   4.],
		       [  3.,   5.,   7.],
		       [  6.,   8.,  10.]])
	**/
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the length of the first dimension of the input array.
		
		Parameters
		----------
		a : array_like
		   Input array.
		
		Returns
		-------
		alen : int
		   Length of the first dimension of `a`.
		
		See Also
		--------
		shape, size
		
		Examples
		--------
		>>> a = np.zeros((7,4,5))
		>>> a.shape[0]
		7
		>>> np.alen(a)
		7
	**/
	static public function alen(a:Dynamic):Int;
	/**
		Test whether all array elements along a given axis evaluate to True.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical AND reduction is performed.
		    The default (`axis` = `None`) is to perform a logical AND over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.
		    It must have the same shape as the expected output and its
		    type is preserved (e.g., if ``dtype(out)`` is float, the result
		    will consist of 0.0's and 1.0's).  See `doc.ufuncs` (Section
		    "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		all : ndarray, bool
		    A new boolean or array is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.all : equivalent method
		
		any : Test whether any element along a given axis evaluates to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity
		evaluate to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.all([[True,False],[True,True]])
		False
		
		>>> np.all([[True,False],[True,True]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.all([-1, 4, 5])
		True
		
		>>> np.all([1.0, np.nan])
		True
		
		>>> o=np.array([False])
		>>> z=np.all([-1, 4, 5], out=o)
		>>> id(z), id(o), z                             # doctest: +SKIP
		(28293632, 28293632, array([ True], dtype=bool))
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns True if two arrays are element-wise equal within a tolerance.
		
		The tolerance values are positive, typically very small numbers.  The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		If either array contains one or more NaNs, False is returned.
		Infs are treated as equal if they are in the same place and of the same
		sign in both arrays.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		rtol : float
		    The relative tolerance parameter (see Notes).
		atol : float
		    The absolute tolerance parameter (see Notes).
		equal_nan : bool
		    Whether to compare NaN's as equal.  If True, NaN's in `a` will be
		    considered equal to NaN's in `b` in the output array.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		allclose : bool
		    Returns True if the two arrays are equal within the given
		    tolerance; False otherwise.
		
		See Also
		--------
		isclose, all, any
		
		Notes
		-----
		If the following equation is element-wise True, then allclose returns
		True.
		
		 absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		The above equation is not symmetric in `a` and `b`, so that
		`allclose(a, b)` might be different from `allclose(b, a)` in
		some rare cases.
		
		Examples
		--------
		>>> np.allclose([1e10,1e-7], [1.00001e10,1e-8])
		False
		>>> np.allclose([1e10,1e-8], [1.00001e10,1e-9])
		True
		>>> np.allclose([1e10,1e-8], [1.0001e10,1e-9])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan], equal_nan=True)
		True
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	/**
		Check if all elements of input array are true.
		
		See Also
		--------
		numpy.all : Equivalent function; see for details.
	**/
	static public function alltrue(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Change `dot`, `vdot`, and `inner` to use accelerated BLAS functions.
		
		Typically, as a user of Numpy, you do not explicitly call this
		function. If Numpy is built with an accelerated BLAS, this function is
		automatically called when Numpy is imported.
		
		When Numpy is built with an accelerated BLAS like ATLAS, these
		functions are replaced to make use of the faster implementations.  The
		faster implementations only affect float32, float64, complex64, and
		complex128 arrays. Furthermore, the BLAS API only includes
		matrix-matrix, matrix-vector, and vector-vector products. Products of
		arrays with larger dimensionalities use the built in functions and are
		not accelerated.
		
		.. note:: Deprecated in Numpy 1.10
		          The cblas functions have been integrated into the multarray
		          module and alterdot now longer does anything. It will be
		          removed in Numpy 1.11.0.
		
		See Also
		--------
		restoredot : `restoredot` undoes the effects of `alterdot`.
	**/
	static public function alterdot():Dynamic;
	/**
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amax : ndarray or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		argmax :
		    Return the indices of the maximum values.
		
		nanmin, minimum, fmin
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding max value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmax.
		
		Don't use `amax` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``maximum(a[0], a[1])`` is faster than
		``amax(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amax(a)           # Maximum of the flattened array
		3
		>>> np.amax(a, axis=0)   # Maxima along the first axis
		array([2, 3])
		>>> np.amax(a, axis=1)   # Maxima along the second axis
		array([1, 3])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amin : ndarray or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		argmin :
		    Return the indices of the minimum values.
		
		nanmax, maximum, fmax
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding min value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmin.
		
		Don't use `amin` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``minimum(a[0], a[1])`` is faster than
		``amin(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amin(a)           # Minimum of the flattened array
		0
		>>> np.amin(a, axis=0)   # Minima along the first axis
		array([0, 1])
		>>> np.amin(a, axis=1)   # Minima along the second axis
		array([0, 2])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (`axis` = `None`) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See `doc.ufuncs` (Section "Output arguments") for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True], dtype=bool), array([ True], dtype=bool))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arccos(x[, out])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
		
		out : ndarray, optional
		    Array of the same shape as `a`, to store results in. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi]. If `x` is a scalar then a
		    scalar is returned, otherwise an array of the same shape as `x`
		    is returned.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cos(z) = x`. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts `[-inf, -1]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79. http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arccos of 1 to be 0, and of -1 to be pi:
		
		>>> np.arccos([1, -1])
		array([ 0.        ,  3.14159265])
		
		Plot arccos:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-1, 1, num=100)
		>>> plt.plot(x, np.arccos(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arccos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arccosh(x[, out])
		
		Inverse hyperbolic cosine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Array of the same shape as `x`, to store results in.
		    See `doc.ufuncs` (Section "Output arguments") for details.
		
		
		Returns
		-------
		arccosh : ndarray
		    Array of the same shape as `x`.
		
		See Also
		--------
		
		cosh, arcsinh, sinh, arctanh, tanh
		
		Notes
		-----
		`arccosh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cosh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]` and the real part in
		``[0, inf]``.
		
		For real-valued input data types, `arccosh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccosh` is a complex analytical function that
		has a branch cut `[-inf, 1]` and is continuous from above on it.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arccosh
		
		Examples
		--------
		>>> np.arccosh([np.e, 10.0])
		array([ 1.65745445,  2.99322285])
		>>> np.arccosh(1)
		0.0
	**/
	static public function arccosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsin(x[, out])
		
		Inverse sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    `y`-coordinate on the unit circle.
		
		out : ndarray, optional
		    Array of the same shape as `x`, in which to store the results.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The inverse sine of each element in `x`, in radians and in the
		    closed interval ``[-pi/2, pi/2]``.  If `x` is a scalar, a scalar
		    is returned, otherwise an array.
		
		See Also
		--------
		sin, cos, arccos, tan, arctan, arctan2, emath.arcsin
		
		Notes
		-----
		`arcsin` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that :math:`sin(z) = x`.  The convention is to
		return the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, *arcsin* always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arcsin` is a complex analytic function that
		has, by convention, the branch cuts [-inf, -1] and [1, inf]  and is
		continuous from above on the former and from below on the latter.
		
		The inverse sine is also known as `asin` or sin^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79ff.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		>>> np.arcsin(1)     # pi/2
		1.5707963267948966
		>>> np.arcsin(-1)    # -pi/2
		-1.5707963267948966
		>>> np.arcsin(0)
		0.0
	**/
	static public function arcsin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsinh(x[, out])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		out : ndarray
		    Array of of the same shape as `x`.
		
		Notes
		-----
		`arcsinh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `sinh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arcsinh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		returns ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytical function that
		has branch cuts `[1j, infj]` and `[-1j, -infj]` and is continuous from
		the right on the former and from the left on the latter.
		
		The inverse hyperbolic sine is also known as `asinh` or ``sinh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function arcsinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan(x[, out])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		    Input values.  `arctan` is applied to each element of `x`.
		
		Returns
		-------
		out : ndarray
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    It is a scalar if `x` is a scalar.
		
		See Also
		--------
		arctan2 : The "four quadrant" arctan of the angle formed by (`x`, `y`)
		    and the positive `x`-axis.
		angle : Argument of complex values.
		
		Notes
		-----
		`arctan` is a multi-valued function: for each `x` there are infinitely
		many numbers `z` such that tan(`z`) = `x`.  The convention is to return
		the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, `arctan` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctan` is a complex analytic function that
		has [`1j, infj`] and [`-1j, -infj`] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arctan of 0 to be 0, and of 1 to be pi/4:
		
		>>> np.arctan([0, 1])
		array([ 0.        ,  0.78539816])
		
		>>> np.pi/4
		0.78539816339744828
		
		Plot arctan:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-10, 10)
		>>> plt.plot(x, np.arctan(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arctan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan2(x1, x2[, out])
		
		Element-wise arc tangent of ``x1/x2`` choosing the quadrant correctly.
		
		The quadrant (i.e., branch) is chosen so that ``arctan2(x1, x2)`` is
		the signed angle in radians between the ray ending at the origin and
		passing through the point (1,0), and the ray ending at the origin and
		passing through the point (`x2`, `x1`).  (Note the role reversal: the
		"`y`-coordinate" is the first function parameter, the "`x`-coordinate"
		is the second.)  By IEEE convention, this function is defined for
		`x2` = +/-0 and for either or both of `x1` and `x2` = +/-inf (see
		Notes for specific values).
		
		This function is not defined for complex-valued arguments; for the
		so-called argument of complex values, use `angle`.
		
		Parameters
		----------
		x1 : array_like, real-valued
		    `y`-coordinates.
		x2 : array_like, real-valued
		    `x`-coordinates. `x2` must be broadcastable to match the shape of
		    `x1` or vice versa.
		
		Returns
		-------
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		
		See Also
		--------
		arctan, tan, angle
		
		Notes
		-----
		*arctan2* is identical to the `atan2` function of the underlying
		C library.  The following special values are defined in the C
		standard: [1]_
		
		====== ====== ================
		`x1`   `x2`   `arctan2(x1,x2)`
		====== ====== ================
		+/- 0  +0     +/- 0
		+/- 0  -0     +/- pi
		 > 0   +/-inf +0 / +pi
		 < 0   +/-inf -0 / -pi
		+/-inf +inf   +/- (pi/4)
		+/-inf -inf   +/- (3*pi/4)
		====== ====== ================
		
		Note that +0 and -0 are distinct floating point numbers, as are +inf
		and -inf.
		
		References
		----------
		.. [1] ISO/IEC standard 9899:1999, "Programming language C."
		
		Examples
		--------
		Consider four points in different quadrants:
		
		>>> x = np.array([-1, +1, +1, -1])
		>>> y = np.array([-1, -1, +1, +1])
		>>> np.arctan2(y, x) * 180 / np.pi
		array([-135.,  -45.,   45.,  135.])
		
		Note the order of the parameters. `arctan2` is defined also when `x2` = 0
		and at several other special points, obtaining values in
		the range ``[-pi, pi]``:
		
		>>> np.arctan2([1., -1.], [0., 0.])
		array([ 1.57079633, -1.57079633])
		>>> np.arctan2([0., 0., np.inf], [+0., -0., np.inf])
		array([ 0.        ,  3.14159265,  0.78539816])
	**/
	static public function arctan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctanh(x[, out])
		
		Inverse hyperbolic tangent element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Array of the same shape as `x`.
		
		See Also
		--------
		emath.arctanh
		
		Notes
		-----
		`arctanh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `tanh(z) = x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arctanh` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctanh` is a complex analytical function
		that has branch cuts `[-1, -inf]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse hyperbolic tangent is also known as `atanh` or ``tanh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arctanh
		
		Examples
		--------
		>>> np.arctanh([0, -0.5])
		array([ 0.        , -0.54930614])
	**/
	static public function arctanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the indices of the maximum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed.
		
		See Also
		--------
		ndarray.argmax, argmin
		amax : The maximum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		
		Notes
		-----
		In case of multiple occurrences of the maximum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argmax(a)
		5
		>>> np.argmax(a, axis=0)
		array([1, 1, 1])
		>>> np.argmax(a, axis=1)
		array([2, 2])
		
		>>> b = np.arange(6)
		>>> b[1] = 5
		>>> b
		array([0, 5, 2, 3, 4, 5])
		>>> np.argmax(b) # Only the first occurrence is returned.
		1
	**/
	static public function argmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed.
		
		See Also
		--------
		ndarray.argmin, argmax
		amin : The minimum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		
		Notes
		-----
		In case of multiple occurrences of the minimum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argmin(a)
		0
		>>> np.argmin(a, axis=0)
		array([0, 0, 0])
		>>> np.argmin(a, axis=1)
		array([0, 0])
		
		>>> b = np.arange(6)
		>>> b[4] = 0
		>>> b
		array([0, 1, 2, 3, 0, 5])
		>>> np.argmin(b) # Only the first occurrence is returned.
		0
	**/
	static public function argmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Perform an indirect partition along the given axis using the algorithm
		specified by the `kind` keyword. It returns an array of indices of the
		same shape as `a` that index data along the given axis in partitioned
		order.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		kth : int or sequence of ints
		    Element index to partition by. The kth element will be in its final
		    sorted position and all smaller elements will be moved before it and
		    all larger elements behind it.
		    The order all elements in the partitions is undefined.
		    If provided with a sequence of kth it will partition all of them into
		    their sorted position at once.
		axis : int or None, optional
		    Axis along which to sort.  The default is -1 (the last axis). If None,
		    the flattened array is used.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that partition `a` along the specified axis.
		    In other words, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		partition : Describes partition algorithms used.
		ndarray.partition : Inplace partition.
		argsort : Full indirect sort
		
		Notes
		-----
		See `partition` for notes on the different selection algorithms.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 4, 2, 1])
		>>> x[np.argpartition(x, 3)]
		array([2, 1, 3, 4])
		>>> x[np.argpartition(x, (1, 3))]
		array([1, 2, 3, 4])
		
		>>> x = [3, 4, 2, 1]
		>>> np.array(x)[np.argpartition(x, 3)]
		array([2, 1, 3, 4])
	**/
	static public function argpartition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Returns the indices that would sort an array.
		
		Perform an indirect sort along the given axis using the algorithm specified
		by the `kind` keyword. It returns an array of indices of the same shape as
		`a` that index data along the given axis in sorted order.
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		axis : int or None, optional
		    Axis along which to sort.  The default is -1 (the last axis). If None,
		    the flattened array is used.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    In other words, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		argpartition : Indirect partial sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		As of NumPy 1.4.0 `argsort` works with real/complex arrays containing
		nan values. The enhanced sort order is documented in `sort`.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 1, 2])
		>>> np.argsort(x)
		array([1, 2, 0])
		
		Two-dimensional array:
		
		>>> x = np.array([[0, 3], [2, 2]])
		>>> x
		array([[0, 3],
		       [2, 2]])
		
		>>> np.argsort(x, axis=0)
		array([[0, 1],
		       [1, 0]])
		
		>>> np.argsort(x, axis=1)
		array([[0, 1],
		       [0, 1]])
		
		Sorting with keys:
		
		>>> x = np.array([(1, 0), (0, 1)], dtype=[('x', '<i4'), ('y', '<i4')])
		>>> x
		array([(1, 0), (0, 1)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
		
		>>> np.argsort(x, order=('x','y'))
		array([1, 0])
		
		>>> np.argsort(x, order=('y','x'))
		array([0, 1])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Find the indices of array elements that are non-zero, grouped by element.
		
		Parameters
		----------
		a : array_like
		    Input data.
		
		Returns
		-------
		index_array : ndarray
		    Indices of elements that are non-zero. Indices are grouped by element.
		
		See Also
		--------
		where, nonzero
		
		Notes
		-----
		``np.argwhere(a)`` is the same as ``np.transpose(np.nonzero(a))``.
		
		The output of ``argwhere`` is not suitable for indexing arrays.
		For this purpose use ``where(a)`` instead.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argwhere(x>1)
		array([[0, 2],
		       [1, 0],
		       [1, 1],
		       [1, 2]])
	**/
	static public function argwhere(a:Dynamic):numpy.Ndarray;
	/**
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See `doc.ufuncs` (Section
		    "Output arguments") for details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, Numpy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc. Results may also be surprising due
		to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling
		by powers of ten.
		
		References
		----------
		.. [1] "Lecture Notes on the Status of  IEEE 754", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		.. [2] "How Futile are Mindless Assessments of
		       Roundoff in Floating-Point Computation?", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/Mindless.pdf
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([ 0.,  2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([ 0.4,  1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([ 0.,  2.,  2.,  4.,  4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    The maximum number of columns the string should span. Newline
		    characters splits the string appropriately after array elements.
		precision : int, optional
		    Floating point precision. Default is the current printing
		    precision (usually 8), which can be altered using `set_printoptions`.
		suppress_small : bool, optional
		    Represent very small numbers as zero. A number is "very small" if it
		    is smaller than the current printing precision.
		separator : str, optional
		    Inserted between elements.
		prefix : str, optional
		    An array is typically printed as::
		
		      'prefix(' + array2string(a) + ')'
		
		    The length of the prefix string is used to align the
		    output correctly.
		style : function, optional
		    A function that accepts an ndarray and returns a string.  Used only
		    when the shape of `a` is equal to ``()``, i.e. for 0-D arrays.
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are::
		
		        - 'bool'
		        - 'int'
		        - 'timedelta' : a `numpy.timedelta64`
		        - 'datetime' : a `numpy.datetime64`
		        - 'float'
		        - 'longfloat' : 128-bit floats
		        - 'complexfloat'
		        - 'longcomplexfloat' : composed of two 128-bit floats
		        - 'numpy_str' : types `numpy.string_` and `numpy.unicode_`
		        - 'str' : all other strings
		
		    Other keys that can be used to set a group of types at once are::
		
		        - 'all' : sets all types
		        - 'int_kind' : sets 'int'
		        - 'float_kind' : sets 'float' and 'longfloat'
		        - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		        - 'str_kind' : sets 'str' and 'numpystr'
		
		Returns
		-------
		array_str : str
		    String representation of the array.
		
		Raises
		------
		TypeError
		    if a callable in `formatter` does not return a string.
		
		See Also
		--------
		array_str, array_repr, set_printoptions, get_printoptions
		
		Notes
		-----
		If a formatter is specified for a certain type, the `precision` keyword is
		ignored for that type.
		
		This is a very flexible function; `array_repr` and `array_str` are using
		`array2string` internally so keywords with the same name should work
		identically in all three functions.
		
		Examples
		--------
		>>> x = np.array([1e-16,1,2,3])
		>>> print np.array2string(x, precision=2, separator=',',
		...                       suppress_small=True)
		[ 0., 1., 2., 3.]
		
		>>> x  = np.arange(3.)
		>>> np.array2string(x, formatter={'float_kind':lambda x: "%.2f" % x})
		'[0.00 1.00 2.00]'
		
		>>> x  = np.arange(3)
		>>> np.array2string(x, formatter={'int':lambda x: hex(x)})
		'[0x0L 0x1L 0x2L]'
	**/
	static public function array2string(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic):String;
	/**
		True if two arrays have the same shape and elements, False otherwise.
		
		Parameters
		----------
		a1, a2 : array_like
		    Input arrays.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equal.
		
		See Also
		--------
		allclose: Returns True if two arrays are element-wise equal within a
		          tolerance.
		array_equiv: Returns True if input arrays are shape consistent and all
		             elements equal.
		
		Examples
		--------
		>>> np.array_equal([1, 2], [1, 2])
		True
		>>> np.array_equal(np.array([1, 2]), np.array([1, 2]))
		True
		>>> np.array_equal([1, 2], [1, 2, 3])
		False
		>>> np.array_equal([1, 2], [1, 4])
		False
	**/
	static public function array_equal(a1:Dynamic, a2:Dynamic):Bool;
	/**
		Returns True if input arrays are shape consistent and all elements equal.
		
		Shape consistent means they are either the same shape, or one input array
		can be broadcasted to create the same shape as the other one.
		
		Parameters
		----------
		a1, a2 : array_like
		    Input arrays.
		
		Returns
		-------
		out : bool
		    True if equivalent, False otherwise.
		
		Examples
		--------
		>>> np.array_equiv([1, 2], [1, 2])
		True
		>>> np.array_equiv([1, 2], [1, 3])
		False
		
		Showing the shape equivalence:
		
		>>> np.array_equiv([1, 2], [[1, 2], [1, 2]])
		True
		>>> np.array_equiv([1, 2], [[1, 2, 1, 2], [1, 2, 1, 2]])
		False
		
		>>> np.array_equiv([1, 2], [[1, 2], [1, 3]])
		False
	**/
	static public function array_equiv(a1:Dynamic, a2:Dynamic):Bool;
	/**
		Return the string representation of an array.
		
		Parameters
		----------
		arr : ndarray
		    Input array.
		max_line_width : int, optional
		    The maximum number of columns the string should span. Newline
		    characters split the string appropriately after array elements.
		precision : int, optional
		    Floating point precision. Default is the current printing precision
		    (usually 8), which can be altered using `set_printoptions`.
		suppress_small : bool, optional
		    Represent very small numbers as zero, default is False. Very small
		    is defined by `precision`, if the precision is 8 then
		    numbers smaller than 5e-9 are represented as zero.
		
		Returns
		-------
		string : str
		  The string representation of an array.
		
		See Also
		--------
		array_str, array2string, set_printoptions
		
		Examples
		--------
		>>> np.array_repr(np.array([1,2]))
		'array([1, 2])'
		>>> np.array_repr(np.ma.array([0.]))
		'MaskedArray([ 0.])'
		>>> np.array_repr(np.array([], np.int32))
		'array([], dtype=int32)'
		
		>>> x = np.array([1e-6, 4e-7, 2, 3])
		>>> np.array_repr(x, precision=6, suppress_small=True)
		'array([ 0.000001,  0.      ,  2.      ,  3.      ])'
	**/
	static public function array_repr(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):String;
	/**
		Return a string representation of the data in an array.
		
		The data in the array is returned as a single string.  This function is
		similar to `array_repr`, the difference being that `array_repr` also
		returns information on the kind of array and its data type.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.  The
		    default is, indirectly, 75.
		precision : int, optional
		    Floating point precision.  Default is the current printing precision
		    (usually 8), which can be altered using `set_printoptions`.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		
		See Also
		--------
		array2string, array_repr, set_printoptions
		
		Examples
		--------
		>>> np.array_str(np.arange(3))
		'[0 1 2]'
	**/
	static public function array_str(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):Dynamic;
	/**
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or column-major
		    (Fortran-style) memory representation.  Defaults to 'C'.
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.matrix([1, 2])
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return a contiguous array in memory (C order).
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    Data-type of returned array.
		
		Returns
		-------
		out : ndarray
		    Contiguous array of same shape and content as `a`, with type `dtype`
		    if specified.
		
		See Also
		--------
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		require : Return an ndarray that satisfies requirements.
		ndarray.flags : Information about the memory layout of the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> np.ascontiguousarray(x, dtype=np.float32)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.]], dtype=float32)
		>>> x.flags['C_CONTIGUOUS']
		True
	**/
	static public function ascontiguousarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Return an array laid out in Fortran order in memory.
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    By default, the data-type is inferred from the input data.
		
		Returns
		-------
		out : ndarray
		    The input `a` in Fortran, or column-major, order.
		
		See Also
		--------
		ascontiguousarray : Convert input to a contiguous (C order) array.
		asanyarray : Convert input to an ndarray with either row or
		    column-major memory order.
		require : Return an ndarray that satisfies requirements.
		ndarray.flags : Information about the memory layout of the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> y = np.asfortranarray(x)
		>>> x.flags['F_CONTIGUOUS']
		False
		>>> y.flags['F_CONTIGUOUS']
		True
	**/
	static public function asfortranarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or sequence of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or tuple of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		View inputs as arrays with at least three dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted to
		    arrays.  Arrays that already have three or more dimensions are
		    preserved.
		
		Returns
		-------
		res1, res2, ... : ndarray
		    An array, or tuple of arrays, each with ``a.ndim >= 3``.  Copies are
		    avoided where possible, and views with three or more dimensions are
		    returned.  For example, a 1-D array of shape ``(N,)`` becomes a view
		    of shape ``(1, N, 1)``, and a 2-D array of shape ``(M, N)`` becomes a
		    view of shape ``(M, N, 1)``.
		
		See Also
		--------
		atleast_1d, atleast_2d
		
		Examples
		--------
		>>> np.atleast_3d(3.0)
		array([[[ 3.]]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_3d(x).shape
		(1, 3, 1)
		
		>>> x = np.arange(12.0).reshape(4,3)
		>>> np.atleast_3d(x).shape
		(4, 3, 1)
		>>> np.atleast_3d(x).base is x
		True
		
		>>> for arr in np.atleast_3d([1, 2], [[1, 2]], [[[1, 2]]]):
		...     print arr, arr.shape
		...
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1 2]]] (1, 1, 2)
	**/
	static public function atleast_3d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		Return a string representation of a number in the given base system.
		
		Parameters
		----------
		number : int
		    The value to convert. Only positive values are handled.
		base : int, optional
		    Convert `number` to the `base` number system. The valid range is 2-36,
		    the default value is 2.
		padding : int, optional
		    Number of zeros padded on the left. Default is 0 (no padding).
		
		Returns
		-------
		out : str
		    String representation of `number` in `base` system.
		
		See Also
		--------
		binary_repr : Faster version of `base_repr` for base 2.
		
		Examples
		--------
		>>> np.base_repr(5)
		'101'
		>>> np.base_repr(6, 5)
		'11'
		>>> np.base_repr(7, base=5, padding=3)
		'00012'
		
		>>> np.base_repr(10, base=16)
		'A'
		>>> np.base_repr(32, base=16)
		'20'
	**/
	static public function base_repr(number:Dynamic, ?base:Dynamic, ?padding:Dynamic):String;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	/**
		Return the binary representation of the input number as a string.
		
		For negative numbers, if width is not given, a minus sign is added to the
		front. If width is given, the two's complement of the number is
		returned, with respect to that width.
		
		In a two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit two's-complement
		system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		num : int
		    Only an integer decimal number can be used.
		width : int, optional
		    The length of the returned string if `num` is positive, the length of
		    the two's complement if `num` is negative.
		
		Returns
		-------
		bin : str
		    Binary representation of `num` or two's complement of `num`.
		
		See Also
		--------
		base_repr: Return a string representation of a number in the given base
		           system.
		
		Notes
		-----
		`binary_repr` is equivalent to using `base_repr` with base 2, but about 25x
		faster.
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    http://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		>>> np.binary_repr(3)
		'11'
		>>> np.binary_repr(-3)
		'-11'
		>>> np.binary_repr(3, width=4)
		'0011'
		
		The two's complement is returned when the input number is negative and
		width is specified:
		
		>>> np.binary_repr(-3, width=4)
		'1101'
	**/
	static public function binary_repr(num:Dynamic, ?width:Dynamic):String;
	/**
		bitwise_and(x1, x2[, out])
		
		Compute the bit-wise AND of two arrays element-wise.
		
		Computes the bit-wise AND of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``&``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_and
		bitwise_or
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 is represented by ``00001101``.  Likewise, 17 is
		represented by ``00010001``.  The bit-wise AND of 13 and 17 is
		therefore ``000000001``, or 1:
		
		>>> np.bitwise_and(13, 17)
		1
		
		>>> np.bitwise_and(14, 13)
		12
		>>> np.binary_repr(12)
		'1100'
		>>> np.bitwise_and([14,3], 13)
		array([12,  1])
		
		>>> np.bitwise_and([11,7], [4,25])
		array([0, 1])
		>>> np.bitwise_and(np.array([2,5,255]), np.array([3,14,16]))
		array([ 2,  4, 16])
		>>> np.bitwise_and([True, True], [False, True])
		array([False,  True], dtype=bool)
	**/
	static public function bitwise_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		invert(x[, out])
		
		Compute bit-wise inversion, or bit-wise NOT, element-wise.
		
		Computes the bit-wise NOT of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``~``.
		
		For signed integer inputs, the two's complement is returned.  In a
		two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit
		two's-complement system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		x1 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		bitwise_and, bitwise_or, bitwise_xor
		logical_not
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Notes
		-----
		`bitwise_not` is an alias for `invert`:
		
		>>> np.bitwise_not is np.invert
		True
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    http://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		We've seen that 13 is represented by ``00001101``.
		The invert or bit-wise NOT of 13 is then:
		
		>>> np.invert(np.array([13], dtype=uint8))
		array([242], dtype=uint8)
		>>> np.binary_repr(x, width=8)
		'00001101'
		>>> np.binary_repr(242, width=8)
		'11110010'
		
		The result depends on the bit-width:
		
		>>> np.invert(np.array([13], dtype=uint16))
		array([65522], dtype=uint16)
		>>> np.binary_repr(x, width=16)
		'0000000000001101'
		>>> np.binary_repr(65522, width=16)
		'1111111111110010'
		
		When using signed integer types the result is the two's complement of
		the result for the unsigned type:
		
		>>> np.invert(np.array([13], dtype=int8))
		array([-14], dtype=int8)
		>>> np.binary_repr(-14, width=8)
		'11110010'
		
		Booleans are accepted as well:
		
		>>> np.invert(array([True, False]))
		array([False,  True], dtype=bool)
	**/
	static public function bitwise_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_or(x1, x2[, out])
		
		Compute the bit-wise OR of two arrays element-wise.
		
		Computes the bit-wise OR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``|``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_or
		bitwise_and
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 has the binaray representation ``00001101``. Likewise,
		16 is represented by ``00010000``.  The bit-wise OR of 13 and 16 is
		then ``000111011``, or 29:
		
		>>> np.bitwise_or(13, 16)
		29
		>>> np.binary_repr(29)
		'11101'
		
		>>> np.bitwise_or(32, 2)
		34
		>>> np.bitwise_or([33, 4], 1)
		array([33,  5])
		>>> np.bitwise_or([33, 4], [1, 2])
		array([33,  6])
		
		>>> np.bitwise_or(np.array([2, 5, 255]), np.array([4, 4, 4]))
		array([  6,   5, 255])
		>>> np.array([2, 5, 255]) | np.array([4, 4, 4])
		array([  6,   5, 255])
		>>> np.bitwise_or(np.array([2, 5, 255, 2147483647L], dtype=np.int32),
		...               np.array([4, 4, 4, 2147483647L], dtype=np.int32))
		array([         6,          5,        255, 2147483647])
		>>> np.bitwise_or([True, True], [False, True])
		array([ True,  True], dtype=bool)
	**/
	static public function bitwise_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_xor(x1, x2[, out])
		
		Compute the bit-wise XOR of two arrays element-wise.
		
		Computes the bit-wise XOR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``^``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_xor
		bitwise_and
		bitwise_or
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 is represented by ``00001101``. Likewise, 17 is
		represented by ``00010001``.  The bit-wise XOR of 13 and 17 is
		therefore ``00011100``, or 28:
		
		>>> np.bitwise_xor(13, 17)
		28
		>>> np.binary_repr(28)
		'11100'
		
		>>> np.bitwise_xor(31, 5)
		26
		>>> np.bitwise_xor([31,3], 5)
		array([26,  6])
		
		>>> np.bitwise_xor([31,3], [5,6])
		array([26,  5])
		>>> np.bitwise_xor([True, True], [False, True])
		array([ True, False], dtype=bool)
	**/
	static public function bitwise_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_count(begindates, enddates, weekmask='1111100', holidays=[], busdaycal=None, out=None)
		
		Counts the number of valid days between `begindates` and
		`enddates`, not including the day of `enddates`.
		
		If ``enddates`` specifies a date value that is earlier than the
		corresponding ``begindates`` date value, the count will be negative.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		begindates : array_like of datetime64[D]
		    The array of the first dates for counting.
		enddates : array_like of datetime64[D]
		    The array of the end dates for counting, which are excluded
		    from the count themselves.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of int, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of int
		    An array with a shape from broadcasting ``begindates`` and ``enddates``
		    together, containing the number of valid days between
		    the begin and end dates.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_offset : Applies an offset counted in valid days.
		
		Examples
		--------
		>>> # Number of weekdays in January 2011
		... np.busday_count('2011-01', '2011-02')
		21
		>>> # Number of weekdays in 2011
		...  np.busday_count('2011', '2012')
		260
		>>> # Number of Saturdays in 2011
		... np.busday_count('2011', '2012', weekmask='Sat')
		53
	**/
	static public function busday_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_offset(dates, offsets, roll='raise', weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		First adjusts the date to fall on a valid day according to
		the ``roll`` rule, then applies offsets to the given dates
		counted in valid days.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		offsets : array_like of int
		    The array of offsets, which is broadcast with ``dates``.
		roll : {'raise', 'nat', 'forward', 'following', 'backward', 'preceding', 'modifiedfollowing', 'modifiedpreceding'}, optional
		    How to treat dates that do not fall on a valid day. The default
		    is 'raise'.
		
		      * 'raise' means to raise an exception for an invalid day.
		      * 'nat' means to return a NaT (not-a-time) for an invalid day.
		      * 'forward' and 'following' mean to take the first valid day
		        later in time.
		      * 'backward' and 'preceding' mean to take the first valid day
		        earlier in time.
		      * 'modifiedfollowing' means to take the first valid day
		        later in time unless it is across a Month boundary, in which
		        case to take the first valid day earlier in time.
		      * 'modifiedpreceding' means to take the first valid day
		        earlier in time unless it is across a Month boundary, in which
		        case to take the first valid day later in time.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of datetime64[D], optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of datetime64[D]
		    An array with a shape from broadcasting ``dates`` and ``offsets``
		    together, containing the dates with offsets applied.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # First business day in October 2011 (not accounting for holidays)
		... np.busday_offset('2011-10', 0, roll='forward')
		numpy.datetime64('2011-10-03','D')
		>>> # Last business day in February 2012 (not accounting for holidays)
		... np.busday_offset('2012-03', -1, roll='forward')
		numpy.datetime64('2012-02-29','D')
		>>> # Third Wednesday in January 2011
		... np.busday_offset('2011-01', 2, roll='forward', weekmask='Wed')
		numpy.datetime64('2011-01-19','D')
		>>> # 2012 Mother's Day in Canada and the U.S.
		... np.busday_offset('2012-05', 1, roll='forward', weekmask='Sun')
		numpy.datetime64('2012-05-13','D')
		
		>>> # First business day on or after a date
		... np.busday_offset('2011-03-20', 0, roll='forward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 0, roll='forward')
		numpy.datetime64('2011-03-22','D')
		>>> # First business day after a date
		... np.busday_offset('2011-03-20', 1, roll='backward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 1, roll='backward')
		numpy.datetime64('2011-03-23','D')
	**/
	static public function busday_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		can_cast(from, totype, casting = 'safe')
		
		Returns True if cast between data types can occur according to the
		casting rule.  If from is a scalar or array scalar, also returns
		True if the scalar value can be cast without overflow or truncation
		to an integer.
		
		Parameters
		----------
		from : dtype, dtype specifier, scalar, or array
		    Data type, scalar, or array to cast from.
		totype : dtype or dtype specifier
		    Data type to cast to.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		out : bool
		    True if cast can occur according to the casting rule.
		
		Notes
		-----
		Starting in NumPy 1.9, can_cast function now returns False in 'safe'
		casting mode for integer/float dtype and string dtype if the string dtype
		length is not long enough to store the max integer/float value converted
		to a string. Previously can_cast in 'safe' mode returned True for
		integer/float dtype and a string dtype of any length.
		
		See also
		--------
		dtype, result_type
		
		Examples
		--------
		Basic examples
		
		>>> np.can_cast(np.int32, np.int64)
		True
		>>> np.can_cast(np.float64, np.complex)
		True
		>>> np.can_cast(np.complex, np.float)
		False
		
		>>> np.can_cast('i8', 'f8')
		True
		>>> np.can_cast('i8', 'f4')
		False
		>>> np.can_cast('i4', 'S4')
		False
		
		Casting scalars
		
		>>> np.can_cast(100, 'i1')
		True
		>>> np.can_cast(150, 'i1')
		False
		>>> np.can_cast(150, 'u1')
		True
		
		>>> np.can_cast(3.5e100, np.float32)
		False
		>>> np.can_cast(1000.0, np.float32)
		True
		
		Array scalar checks the value, array does not
		
		>>> np.can_cast(np.array(1000.0), np.float32)
		True
		>>> np.can_cast(np.array([1000.0]), np.float32)
		False
		
		Using the casting rules
		
		>>> np.can_cast('i8', 'i8', 'no')
		True
		>>> np.can_cast('<i8', '>i8', 'no')
		False
		
		>>> np.can_cast('<i8', '>i8', 'equiv')
		True
		>>> np.can_cast('<i4', '>i8', 'equiv')
		False
		
		>>> np.can_cast('<i4', '>i8', 'safe')
		True
		>>> np.can_cast('<i8', '>i4', 'safe')
		False
		
		>>> np.can_cast('<i8', '>i4', 'same_kind')
		True
		>>> np.can_cast('<i8', '>u4', 'same_kind')
		False
		
		>>> np.can_cast('<i8', '>u4', 'unsafe')
		True
	**/
	static public function can_cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("cast")
	static public var _cast : Dynamic;
	/**
		cbrt(x[, out])
		
		Return the cube-root of an array, element-wise.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		x : array_like
		    The values whose cube-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the cube
		    cube-root of each element in `x`.
		    If `out` was provided, `y` is a reference to it.
		
		
		Examples
		--------
		>>> np.cbrt([1,8,27])
		array([ 1.,  2.,  3.])
	**/
	static public function cbrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil(x[, out])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct an array from an index array and a set of arrays to choose from.
		
		First of all, if confused or uncertain, definitely look at the Examples -
		in its full generality, this function is less simple than it might
		seem from the following code description (below ndi =
		`numpy.lib.index_tricks`):
		
		``np.choose(a,c) == np.array([c[a[I]][I] for I in ndi.ndindex(a.shape)])``.
		
		But this omits some subtleties.  Here is a fully general summary:
		
		Given an "index" array (`a`) of integers and a sequence of `n` arrays
		(`choices`), `a` and each choice array are first broadcast, as necessary,
		to arrays of a common shape; calling these *Ba* and *Bchoices[i], i =
		0,...,n-1* we have that, necessarily, ``Ba.shape == Bchoices[i].shape``
		for each `i`.  Then, a new array with shape ``Ba.shape`` is created as
		follows:
		
		* if ``mode=raise`` (the default), then, first of all, each element of
		  `a` (and thus `Ba`) must be in the range `[0, n-1]`; now, suppose that
		  `i` (in that range) is the value at the `(j0, j1, ..., jm)` position
		  in `Ba` - then the value at the same position in the new array is the
		  value in `Bchoices[i]` at that same position;
		
		* if ``mode=wrap``, values in `a` (and thus `Ba`) may be any (signed)
		  integer; modular arithmetic is used to map integers outside the range
		  `[0, n-1]` back into that range; and then the new array is constructed
		  as above;
		
		* if ``mode=clip``, values in `a` (and thus `Ba`) may be any (signed)
		  integer; negative integers are mapped to 0; values greater than `n-1`
		  are mapped to `n-1`; and then the new array is constructed as above.
		
		Parameters
		----------
		a : int array
		    This array must contain integers in `[0, n-1]`, where `n` is the number
		    of choices, unless ``mode=wrap`` or ``mode=clip``, in which cases any
		    integers are permissible.
		choices : sequence of arrays
		    Choice arrays. `a` and all of the choices must be broadcastable to the
		    same shape.  If `choices` is itself an array (not recommended), then
		    its outermost dimension (i.e., the one corresponding to
		    ``choices.shape[0]``) is taken as defining the "sequence".
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise' (default), 'wrap', 'clip'}, optional
		    Specifies how indices outside `[0, n-1]` will be treated:
		
		      * 'raise' : an exception is raised
		      * 'wrap' : value becomes value mod `n`
		      * 'clip' : values < 0 are mapped to 0, values > n-1 are mapped to n-1
		
		Returns
		-------
		merged_array : array
		    The merged result.
		
		Raises
		------
		ValueError: shape mismatch
		    If `a` and each choice array are not all broadcastable to the same
		    shape.
		
		See Also
		--------
		ndarray.choose : equivalent method
		
		Notes
		-----
		To reduce the chance of misinterpretation, even though the following
		"abuse" is nominally supported, `choices` should neither be, nor be
		thought of as, a single array, i.e., the outermost sequence-like container
		should be either a list or a tuple.
		
		Examples
		--------
		
		>>> choices = [[0, 1, 2, 3], [10, 11, 12, 13],
		...   [20, 21, 22, 23], [30, 31, 32, 33]]
		>>> np.choose([2, 3, 1, 0], choices
		... # the first element of the result will be the first element of the
		... # third (2+1) "array" in choices, namely, 20; the second element
		... # will be the second element of the fourth (3+1) choice array, i.e.,
		... # 31, etc.
		... )
		array([20, 31, 12,  3])
		>>> np.choose([2, 4, 1, 0], choices, mode='clip') # 4 goes to 3 (4-1)
		array([20, 31, 12,  3])
		>>> # because there are 4 choice arrays
		>>> np.choose([2, 4, 1, 0], choices, mode='wrap') # 4 goes to (4 mod 4)
		array([20,  1, 12,  3])
		>>> # i.e., 0
		
		A couple examples illustrating how choose broadcasts:
		
		>>> a = [[1, 0, 1], [0, 1, 0], [1, 0, 1]]
		>>> choices = [-10, 10]
		>>> np.choose(a, choices)
		array([[ 10, -10,  10],
		       [-10,  10, -10],
		       [ 10, -10,  10]])
		
		>>> # With thanks to Anne Archibald
		>>> a = np.array([0, 1]).reshape((2,1,1))
		>>> c1 = np.array([1, 2, 3]).reshape((1,3,1))
		>>> c2 = np.array([-1, -2, -3, -4, -5]).reshape((1,1,5))
		>>> np.choose(a, (c1, c2)) # result is 2x3x5, res[0,:,:]=c1, res[1,:,:]=c2
		array([[[ 1,  1,  1,  1,  1],
		        [ 2,  2,  2,  2,  2],
		        [ 3,  3,  3,  3,  3]],
		       [[-1, -2, -3, -4, -5],
		        [-1, -2, -3, -4, -5],
		        [-1, -2, -3, -4, -5]]])
	**/
	static public function choose(a:Dynamic, choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Clip (limit) the values in an array.
		
		Given an interval, values outside the interval are clipped to
		the interval edges.  For example, if an interval of ``[0, 1]``
		is specified, values smaller than 0 become 0, and values larger
		than 1 become 1.
		
		Parameters
		----------
		a : array_like
		    Array containing elements to clip.
		a_min : scalar or array_like
		    Minimum value.
		a_max : scalar or array_like
		    Maximum value.  If `a_min` or `a_max` are array_like, then they will
		    be broadcasted to the shape of `a`.
		out : ndarray, optional
		    The results will be placed in this array. It may be the input
		    array for in-place clipping.  `out` must be of the right shape
		    to hold the output.  Its type is preserved.
		
		Returns
		-------
		clipped_array : ndarray
		    An array with the elements of `a`, but where values
		    < `a_min` are replaced with `a_min`, and those > `a_max`
		    with `a_max`.
		
		See Also
		--------
		numpy.doc.ufuncs : Section "Output arguments"
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> np.clip(a, 1, 8)
		array([1, 1, 2, 3, 4, 5, 6, 7, 8, 8])
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, 3, 6, out=a)
		array([3, 3, 3, 3, 4, 5, 6, 6, 6, 6])
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, [3,4,1,1,1,4,4,4,4,4], 8)
		array([3, 4, 2, 3, 4, 5, 6, 7, 8, 8])
	**/
	static public function clip(a:Dynamic, a_min:Dynamic, a_max:Dynamic, ?out:Dynamic):numpy.Ndarray;
	static public function compare_chararrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return selected slices of an array along given axis.
		
		When working along a given axis, a slice along that axis is returned in
		`output` for each index where `condition` evaluates to True. When
		working on a 1-D array, `compress` is equivalent to `extract`.
		
		Parameters
		----------
		condition : 1-D array of bools
		    Array that selects which entries to return. If len(condition)
		    is less than the size of `a` along the given axis, then output is
		    truncated to the length of the condition array.
		a : array_like
		    Array from which to extract a part.
		axis : int, optional
		    Axis along which to take slices. If None (default), work on the
		    flattened array.
		out : ndarray, optional
		    Output array.  Its type is preserved and it must be of the right
		    shape to hold the output.
		
		Returns
		-------
		compressed_array : ndarray
		    A copy of `a` without the slices along axis for which `condition`
		    is false.
		
		See Also
		--------
		take, choose, diag, diagonal, select
		ndarray.compress : Equivalent method in ndarray
		np.extract: Equivalent method when working on 1-D arrays
		numpy.doc.ufuncs : Section "Output arguments"
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4], [5, 6]])
		>>> a
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.compress([0, 1], a, axis=0)
		array([[3, 4]])
		>>> np.compress([False, True, True], a, axis=0)
		array([[3, 4],
		       [5, 6]])
		>>> np.compress([False, True], a, axis=1)
		array([[2],
		       [4],
		       [6]])
		
		Working on the flattened array does not return slices along an axis but
		selects elements.
		
		>>> np.compress([False, True], a)
		array([2])
	**/
	static public function compress(condition:Dynamic, a:Dynamic, ?axis:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		concatenate((a1, a2, ...), axis=0)
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  Default is 0.
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise)
		vsplit : Split array into multiple sub-arrays vertically (row wise)
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise)
		vstack : Stack arrays in sequence vertically (row wise)
		dstack : Stack arrays in sequence depth wise (along third dimension)
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data = [0 1 2 2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conjugate(x[, out])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conjugate(x[, out])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the discrete, linear convolution of two one-dimensional sequences.
		
		The convolution operator is often seen in signal processing, where it
		models the effect of a linear time-invariant system on a signal [1]_.  In
		probability theory, the sum of two independent random variables is
		distributed according to the convolution of their individual
		distributions.
		
		If `v` is longer than `a`, the arrays are swapped before computation.
		
		Parameters
		----------
		a : (N,) array_like
		    First one-dimensional input array.
		v : (M,) array_like
		    Second one-dimensional input array.
		mode : {'full', 'valid', 'same'}, optional
		    'full':
		      By default, mode is 'full'.  This returns the convolution
		      at each point of overlap, with an output shape of (N+M-1,). At
		      the end-points of the convolution, the signals do not overlap
		      completely, and boundary effects may be seen.
		
		    'same':
		      Mode `same` returns output of length ``max(M, N)``.  Boundary
		      effects are still visible.
		
		    'valid':
		      Mode `valid` returns output of length
		      ``max(M, N) - min(M, N) + 1``.  The convolution product is only given
		      for points where the signals overlap completely.  Values outside
		      the signal boundary have no effect.
		
		Returns
		-------
		out : ndarray
		    Discrete, linear convolution of `a` and `v`.
		
		See Also
		--------
		scipy.signal.fftconvolve : Convolve two arrays using the Fast Fourier
		                           Transform.
		scipy.linalg.toeplitz : Used to construct the convolution operator.
		polymul : Polynomial multiplication. Same output as convolve, but also
		          accepts poly1d objects as input.
		
		Notes
		-----
		The discrete convolution operation is defined as
		
		.. math:: (a * v)[n] = \sum_{m = -\infty}^{\infty} a[m] v[n - m]
		
		It can be shown that a convolution :math:`x(t) * y(t)` in time/space
		is equivalent to the multiplication :math:`X(f) Y(f)` in the Fourier
		domain, after appropriate padding (padding is necessary to prevent
		circular convolution).  Since multiplication is more efficient (faster)
		than convolution, the function `scipy.signal.fftconvolve` exploits the
		FFT to calculate the convolution of large data-sets.
		
		References
		----------
		.. [1] Wikipedia, "Convolution", http://en.wikipedia.org/wiki/Convolution.
		
		Examples
		--------
		Note how the convolution operator flips the second array
		before "sliding" the two across one another:
		
		>>> np.convolve([1, 2, 3], [0, 1, 0.5])
		array([ 0. ,  1. ,  2.5,  4. ,  1.5])
		
		Only return the middle values of the convolution.
		Contains boundary effects, where zeros are taken
		into account:
		
		>>> np.convolve([1,2,3],[0,1,0.5], 'same')
		array([ 1. ,  2.5,  4. ])
		
		The two arrays are of the same length, so there
		is only one position where they completely overlap:
		
		>>> np.convolve([1,2,3],[0,1,0.5], 'valid')
		array([ 2.5])
	**/
	static public function convolve(a:Dynamic, v:Dynamic, ?mode:Dynamic):numpy.Ndarray;
	/**
		copysign(x1, x2[, out])
		
		Change the sign of x1 to that of x2, element-wise.
		
		If both arguments are arrays or sequences, they have to be of the same
		length. If `x2` is a scalar, its sign will be copied to all elements of
		`x1`.
		
		Parameters
		----------
		x1 : array_like
		    Values to change the sign of.
		x2 : array_like
		    The sign of `x2` is copied to `x1`.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		out : array_like
		    The values of `x1` with the sign of `x2`.
		
		Examples
		--------
		>>> np.copysign(1.3, -1)
		-1.3
		>>> 1/np.copysign(0, 1)
		inf
		>>> 1/np.copysign(0, -1)
		-inf
		
		>>> np.copysign([-1, 0, 1], -1.1)
		array([-1., -0., -1.])
		>>> np.copysign([-1, 0, 1], np.arange(3)-1)
		array([-1.,  0.,  1.])
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copyto(dst, src, casting='same_kind', where=None)
		
		Copies values from one array to another, broadcasting as necessary.
		
		Raises a TypeError if the `casting` rule is violated, and if
		`where` is provided, it selects which elements to copy.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dst : ndarray
		    The array into which values are copied.
		src : array_like
		    The array from which values are copied.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur when copying.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		where : array_like of bool, optional
		    A boolean array which is broadcasted to match the dimensions
		    of `dst`, and selects elements to copy from `src` to `dst`
		    wherever it contains the value True.
	**/
	static public function copyto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Cross-correlation of two 1-dimensional sequences.
		
		This function computes the correlation as generally defined in signal
		processing texts::
		
		    c_{av}[k] = sum_n a[n+k] * conj(v[n])
		
		with a and v sequences being zero-padded where necessary and conj being
		the conjugate.
		
		Parameters
		----------
		a, v : array_like
		    Input sequences.
		mode : {'valid', 'same', 'full'}, optional
		    Refer to the `convolve` docstring.  Note that the default
		    is `valid`, unlike `convolve`, which uses `full`.
		old_behavior : bool
		    `old_behavior` was removed in NumPy 1.10. If you need the old
		    behavior, use `multiarray.correlate`.
		
		Returns
		-------
		out : ndarray
		    Discrete cross-correlation of `a` and `v`.
		
		See Also
		--------
		convolve : Discrete, linear convolution of two one-dimensional sequences.
		multiarray.correlate : Old, no conjugate, version of correlate.
		
		Notes
		-----
		The definition of correlation above is not unique and sometimes correlation
		may be defined differently. Another common definition is::
		
		    c'_{av}[k] = sum_n a[n] conj(v[n+k])
		
		which is related to ``c_{av}[k]`` by ``c'_{av}[k] = c_{av}[-k]``.
		
		Examples
		--------
		>>> np.correlate([1, 2, 3], [0, 1, 0.5])
		array([ 3.5])
		>>> np.correlate([1, 2, 3], [0, 1, 0.5], "same")
		array([ 2. ,  3.5,  3. ])
		>>> np.correlate([1, 2, 3], [0, 1, 0.5], "full")
		array([ 0.5,  2. ,  3.5,  3. ,  0. ])
		
		Using complex sequences:
		
		>>> np.correlate([1+1j, 2, 3-1j], [0, 1, 0.5j], 'full')
		array([ 0.5-0.5j,  1.0+0.j ,  1.5-1.5j,  3.0-1.j ,  0.0+0.j ])
		
		Note that you get the time reversed, complex conjugated result
		when the two input sequences change places, i.e.,
		``c_{va}[k] = c^{*}_{av}[-k]``:
		
		>>> np.correlate([0, 1, 0.5j], [1+1j, 2, 3-1j], 'full')
		array([ 0.0+0.j ,  3.0+1.j ,  1.5+1.5j,  1.0+0.j ,  0.5+0.5j])
	**/
	static public function correlate(a:Dynamic, v:Dynamic, ?mode:Dynamic):numpy.Ndarray;
	/**
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x[, out])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array of same shape as `x`.
		
		Examples
		--------
		>>> np.cosh(0)
		1.0
		
		The hyperbolic cosine describes the shape of a hanging cable:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 1000)
		>>> plt.plot(x, np.cosh(x))
		>>> plt.show()
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		count_nonzero(a)
		
		Counts the number of non-zero values in the array ``a``.
		
		Parameters
		----------
		a : array_like
		    The array for which to count non-zeros.
		
		Returns
		-------
		count : int or array of int
		    Number of non-zero values in the array.
		
		See Also
		--------
		nonzero : Return the coordinates of all the non-zero values.
		
		Examples
		--------
		>>> np.count_nonzero(np.eye(4))
		4
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]])
		5
	**/
	static public function count_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the cross product of two (arrays of) vectors.
		
		The cross product of `a` and `b` in :math:`R^3` is a vector perpendicular
		to both `a` and `b`.  If `a` and `b` are arrays of vectors, the vectors
		are defined by the last axis of `a` and `b` by default, and these axes
		can have dimensions 2 or 3.  Where the dimension of either `a` or `b` is
		2, the third component of the input vector is assumed to be zero and the
		cross product calculated accordingly.  In cases where both input vectors
		have dimension 2, the z-component of the cross product is returned.
		
		Parameters
		----------
		a : array_like
		    Components of the first vector(s).
		b : array_like
		    Components of the second vector(s).
		axisa : int, optional
		    Axis of `a` that defines the vector(s).  By default, the last axis.
		axisb : int, optional
		    Axis of `b` that defines the vector(s).  By default, the last axis.
		axisc : int, optional
		    Axis of `c` containing the cross product vector(s).  Ignored if
		    both input vectors have dimension 2, as the return is scalar.
		    By default, the last axis.
		axis : int, optional
		    If defined, the axis of `a`, `b` and `c` that defines the vector(s)
		    and cross product(s).  Overrides `axisa`, `axisb` and `axisc`.
		
		Returns
		-------
		c : ndarray
		    Vector cross product(s).
		
		Raises
		------
		ValueError
		    When the dimension of the vector(s) in `a` and/or `b` does not
		    equal 2 or 3.
		
		See Also
		--------
		inner : Inner product
		outer : Outer product.
		ix_ : Construct index arrays.
		
		Notes
		-----
		.. versionadded:: 1.9.0
		
		Supports full broadcasting of the inputs.
		
		Examples
		--------
		Vector cross-product.
		
		>>> x = [1, 2, 3]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([-3,  6, -3])
		
		One vector with dimension 2.
		
		>>> x = [1, 2]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([12, -6, -3])
		
		Equivalently:
		
		>>> x = [1, 2, 0]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([12, -6, -3])
		
		Both vectors with dimension 2.
		
		>>> x = [1,2]
		>>> y = [4,5]
		>>> np.cross(x, y)
		-3
		
		Multiple vector cross-products. Note that the direction of the cross
		product vector is defined by the `right-hand rule`.
		
		>>> x = np.array([[1,2,3], [4,5,6]])
		>>> y = np.array([[4,5,6], [1,2,3]])
		>>> np.cross(x, y)
		array([[-3,  6, -3],
		       [ 3, -6,  3]])
		
		The orientation of `c` can be changed using the `axisc` keyword.
		
		>>> np.cross(x, y, axisc=0)
		array([[-3,  3],
		       [ 6, -6],
		       [-3,  3]])
		
		Change the vector definition of `x` and `y` using `axisa` and `axisb`.
		
		>>> x = np.array([[1,2,3], [4,5,6], [7, 8, 9]])
		>>> y = np.array([[7, 8, 9], [4,5,6], [1,2,3]])
		>>> np.cross(x, y)
		array([[ -6,  12,  -6],
		       [  0,   0,   0],
		       [  6, -12,   6]])
		>>> np.cross(x, y, axisa=0, axisb=0)
		array([[-24,  48, -24],
		       [-30,  60, -30],
		       [-36,  72, -36]])
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?axisa:Dynamic, ?axisb:Dynamic, ?axisc:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the cumulative product of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative product is computed.  By default
		    the input is flattened.
		dtype : dtype, optional
		    Type of the returned array, as well as of the accumulator in which
		    the elements are multiplied.  If *dtype* is not specified, it
		    defaults to the dtype of `a`, unless `a` has an integer dtype with
		    a precision less than that of the default platform integer.  In
		    that case, the default platform integer is used instead.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type of the resulting values will be cast if necessary.
		
		Returns
		-------
		cumprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case a reference to out is returned.
		
		See Also
		--------
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		Examples
		--------
		>>> a = np.array([1,2,3])
		>>> np.cumprod(a) # intermediate results 1, 1*2
		...               # total product 1*2*3 = 6
		array([1, 2, 6])
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> np.cumprod(a, dtype=float) # specify type of output
		array([   1.,    2.,    6.,   24.,  120.,  720.])
		
		The cumulative product for each column (i.e., over the rows) of `a`:
		
		>>> np.cumprod(a, axis=0)
		array([[ 1,  2,  3],
		       [ 4, 10, 18]])
		
		The cumulative product for each row (i.e. over the columns) of `a`:
		
		>>> np.cumprod(a,axis=1)
		array([[  1,   2,   6],
		       [  4,  20, 120]])
	**/
	static public function cumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative product over the given axis.
		
		
		See Also
		--------
		cumprod : equivalent function; see for details.
	**/
	static public function cumproduct(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the cumulative sum of the elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative sum is computed. The default
		    (None) is to compute the cumsum over the flattened array.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed.  If `dtype` is not specified, it defaults
		    to the dtype of `a`, unless `a` has an integer dtype with a
		    precision less than that of the default platform integer.  In
		    that case, the default platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary. See `doc.ufuncs`
		    (Section "Output arguments") for more details.
		
		Returns
		-------
		cumsum_along_axis : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which case a reference to `out` is returned. The
		    result has the same size as `a`, and the same shape as `a` if
		    `axis` is not None or `a` is a 1-d array.
		
		
		See Also
		--------
		sum : Sum array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		diff :  Calculate the n-th order discrete difference along given axis.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		Examples
		--------
		>>> a = np.array([[1,2,3], [4,5,6]])
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.cumsum(a)
		array([ 1,  3,  6, 10, 15, 21])
		>>> np.cumsum(a, dtype=float)     # specifies type of output value(s)
		array([  1.,   3.,   6.,  10.,  15.,  21.])
		
		>>> np.cumsum(a,axis=0)      # sum over rows for each of the 3 columns
		array([[1, 2, 3],
		       [5, 7, 9]])
		>>> np.cumsum(a,axis=1)      # sum over columns for each of the 2 rows
		array([[ 1,  3,  6],
		       [ 4,  9, 15]])
	**/
	static public function cumsum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deg2rad(x[, out])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Angles in degrees.
		
		Returns
		-------
		y : ndarray
		    The corresponding angle in radians.
		
		See Also
		--------
		rad2deg : Convert angles from radians to degrees.
		unwrap : Remove large jumps in angle by wrapping.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		``deg2rad(x)`` is ``x * pi / 180``.
		
		Examples
		--------
		>>> np.deg2rad(180)
		3.1415926535897931
	**/
	static public function deg2rad(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		degrees(x[, out])
		
		Convert angles from radians to degrees.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as x.
		
		Returns
		-------
		y : ndarray of floats
		    The corresponding degree values; if `out` was supplied this is a
		    reference to it.
		
		See Also
		--------
		rad2deg : equivalent function
		
		Examples
		--------
		Convert a radian array to degrees
		
		>>> rad = np.arange(12.)*np.pi/6
		>>> np.degrees(rad)
		array([   0.,   30.,   60.,   90.,  120.,  150.,  180.,  210.,  240.,
		        270.,  300.,  330.])
		
		>>> out = np.zeros((rad.shape))
		>>> r = degrees(rad, out)
		>>> np.all(r == out)
		True
	**/
	static public function degrees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return specified diagonals.
		
		If `a` is 2-D, returns the diagonal of `a` with the given offset,
		i.e., the collection of elements of the form ``a[i, i+offset]``.  If
		`a` has more than two dimensions, then the axes specified by `axis1`
		and `axis2` are used to determine the 2-D sub-array whose diagonal is
		returned.  The shape of the resulting array can be determined by
		removing `axis1` and `axis2` and appending an index to the right equal
		to the size of the resulting diagonals.
		
		In versions of NumPy prior to 1.7, this function always returned a new,
		independent array containing a copy of the values in the diagonal.
		
		In NumPy 1.7 and 1.8, it continues to return a copy of the diagonal,
		but depending on this fact is deprecated. Writing to the resulting
		array continues to work as it used to, but a FutureWarning is issued.
		
		In NumPy 1.9 it returns a read-only view on the original array.
		Attempting to write to the resulting array will produce an error.
		
		In NumPy 1.10, it will return a read/write view and writing to the
		returned array will alter your original array.  The returned array
		will have the same type as the input array.
		
		If you don't write to the array returned by this function, then you can
		just ignore all of the above.
		
		If you depend on the current behavior, then we suggest copying the
		returned array explicitly, i.e., use ``np.diagonal(a).copy()`` instead
		of just ``np.diagonal(a)``. This will work with both past and future
		versions of NumPy.
		
		Parameters
		----------
		a : array_like
		    Array from which the diagonals are taken.
		offset : int, optional
		    Offset of the diagonal from the main diagonal.  Can be positive or
		    negative.  Defaults to main diagonal (0).
		axis1 : int, optional
		    Axis to be used as the first axis of the 2-D sub-arrays from which
		    the diagonals should be taken.  Defaults to first axis (0).
		axis2 : int, optional
		    Axis to be used as the second axis of the 2-D sub-arrays from
		    which the diagonals should be taken. Defaults to second axis (1).
		
		Returns
		-------
		array_of_diagonals : ndarray
		    If `a` is 2-D and not a matrix, a 1-D array of the same type as `a`
		    containing the diagonal is returned. If `a` is a matrix, a 1-D
		    array containing the diagonal is returned in order to maintain
		    backward compatibility.  If the dimension of `a` is greater than
		    two, then an array of diagonals is returned, "packed" from
		    left-most dimension to right-most (e.g., if `a` is 3-D, then the
		    diagonals are "packed" along rows).
		
		Raises
		------
		ValueError
		    If the dimension of `a` is less than 2.
		
		See Also
		--------
		diag : MATLAB work-a-like for 1-D and 2-D arrays.
		diagflat : Create diagonal arrays.
		trace : Sum along diagonals.
		
		Examples
		--------
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> a.diagonal()
		array([0, 3])
		>>> a.diagonal(1)
		array([1])
		
		A 3-D example:
		
		>>> a = np.arange(8).reshape(2,2,2); a
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> a.diagonal(0, # Main diagonals of two arrays created by skipping
		...            0, # across the outer(left)-most axis last and
		...            1) # the "middle" (row) axis first.
		array([[0, 6],
		       [1, 7]])
		
		The sub-arrays whose main diagonals we just obtained; note that each
		corresponds to fixing the right-most (column) axis, and that the
		diagonals are "packed" in rows.
		
		>>> a[:,:,0] # main diagonal is [0 6]
		array([[0, 2],
		       [4, 6]])
		>>> a[:,:,1] # main diagonal is [1 7]
		array([[1, 3],
		       [5, 7]])
	**/
	static public function diagonal(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):numpy.Ndarray;
	/**
		true_divide(x1, x2[, out])
		
		Returns a true division of the inputs, element-wise.
		
		Instead of the Python traditional 'floor division', this returns a true
		division.  True division adjusts the output type to present the best
		answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		
		Returns
		-------
		out : ndarray
		    Result is scalar if both inputs are scalar, ndarray otherwise.
		
		Notes
		-----
		The floor division operator ``//`` was added in Python 2.2 making
		``//`` and ``/`` equivalent operators.  The default floor division
		operation of ``/`` can be replaced by true division with ``from
		__future__ import division``.
		
		In Python 3.0, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([0, 0, 0, 0, 1])
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		>>> from __future__ import division
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		>>> x//4
		array([0, 0, 0, 0, 1])
	**/
	static public function divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var e : Dynamic;
	/**
		einsum(subscripts, *operands, out=None, dtype=None, order='K', casting='safe')
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional
		array operations can be represented in a simple fashion.  This function
		provides a way compute such summations. The best way to understand this
		function is to try the examples below, which show how many common NumPy
		functions can be implemented as calls to `einsum`.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : data-type, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout as the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		dot, inner, outer, tensordot
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Repeated subscripts labels in one operand take the diagonal.  For example,
		``np.einsum('ii', a)`` is equivalent to ``np.trace(a)``.
		
		Whenever a label is repeated, it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to ``np.inner(a,b)``.  If a label appears only once,
		it is not summed, so ``np.einsum('i', a)`` produces a view of ``a``
		with no changes.
		
		The order of labels in the output is by default alphabetical.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose.
		
		The output can be controlled by specifying output subscript labels
		as well.  This specifies the label order, and allows summing to
		be disallowed or forced when desired.  The call ``np.einsum('i->', a)``
		is like ``np.sum(a, axis=-1)``, and ``np.einsum('ii->i', a)``
		is like ``np.diag(a)``.  The difference is that `einsum` does not
		allow broadcasting by default.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, you can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view.
		
		An alternative way to provide the subscripts and operands is as
		``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``. The examples
		below have corresponding `einsum` calls with the two parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as ``np.swapaxes(a, 0, 2)`` and
		``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> c.T
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		>>> np.einsum('i...->...', a)
		array([50, 55, 60, 65, 70])
		>>> np.einsum(a, [0,Ellipsis], [Ellipsis])
		array([50, 55, 60, 65, 70])
		>>> np.sum(a, axis=0)
		array([50, 55, 60, 65, 70])
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		
		>>> # since version 1.10.0
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
	**/
	static public function einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the given
		    shape, dtype, and order.
		
		See Also
		--------
		empty_like, zeros, ones
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty_like(a, dtype=None, order='K', subok=True)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of the
		    returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if ``a`` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of ``a`` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		equal(x1, x2[, out])
		
		Return (x1 == x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		not_equal, greater_equal, less_equal, greater, less
		
		Examples
		--------
		>>> np.equal([0, 1, 3], np.arange(3))
		array([ True,  True, False], dtype=bool)
		
		What is compared are values, not types. So an int (1) and an array of
		length one can evaluate as True:
		
		>>> np.equal(1, np.ones(1))
		array([ True], dtype=bool)
	**/
	static public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var euler_gamma : Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp2(x[, out])
		
		Calculate `2**p` for all `p` in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		out : ndarray, optional
		    Array to insert results into.
		
		Returns
		-------
		out : ndarray
		    Element-wise 2 to the power `x`.
		
		See Also
		--------
		power
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		
		
		Examples
		--------
		>>> np.exp2([2, 3])
		array([ 4.,  8.])
	**/
	static public function exp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1(x[, out])
		
		Calculate ``exp(x) - 1`` for all elements in the array.
		
		Parameters
		----------
		x : array_like
		   Input values.
		
		Returns
		-------
		out : ndarray
		    Element-wise exponential minus one: ``out = exp(x) - 1``.
		
		See Also
		--------
		log1p : ``log(1 + x)``, the inverse of expm1.
		
		
		Notes
		-----
		This function provides greater precision than ``exp(x) - 1``
		for small values of ``x``.
		
		Examples
		--------
		The true value of ``exp(1e-10) - 1`` is ``1.00000000005e-10`` to
		about 32 significant digits. This example shows the superiority of
		expm1 in this case.
		
		>>> np.expm1(1e-10)
		1.00000000005e-10
		>>> np.exp(1e-10) - 1
		1.000000082740371e-10
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fabs(x[, out])
		
		Compute the absolute values element-wise.
		
		This function returns the absolute values (positive magnitude) of the
		data in `x`. Complex values are not handled, use `absolute` to find the
		absolute values of complex data.
		
		Parameters
		----------
		x : array_like
		    The array of numbers for which the absolute values are required. If
		    `x` is a scalar, the result `y` will also be a scalar.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray or scalar
		    The absolute values of `x`, the returned values are always floats.
		
		See Also
		--------
		absolute : Absolute values including `complex` types.
		
		Examples
		--------
		>>> np.fabs(-1)
		1.0
		>>> np.fabs([-1.2, 1.2])
		array([ 1.2,  1.2])
	**/
	static public function fabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determine common type following standard coercion rules.
		
		Parameters
		----------
		array_types : sequence
		    A list of dtypes or dtype convertible objects representing arrays.
		scalar_types : sequence
		    A list of dtypes or dtype convertible objects representing scalars.
		
		Returns
		-------
		datatype : dtype
		    The common data type, which is the maximum of `array_types` ignoring
		    `scalar_types`, unless the maximum of `scalar_types` is of a
		    different kind (`dtype.kind`). If the kind is not understood, then
		    None is returned.
		
		See Also
		--------
		dtype, common_type, can_cast, mintypecode
		
		Examples
		--------
		>>> np.find_common_type([], [np.int64, np.float32, np.complex])
		dtype('complex128')
		>>> np.find_common_type([np.int64, np.float32], [])
		dtype('float64')
		
		The standard casting rules ensure that a scalar cannot up-cast an
		array unless the scalar is of a fundamentally different kind of data
		(i.e. under a different hierarchy in the data type hierarchy) then
		the array:
		
		>>> np.find_common_type([np.float32], [np.int64, np.float64])
		dtype('float32')
		
		Complex is of a different type, so it up-casts the float in the
		`array_types` argument:
		
		>>> np.find_common_type([np.float32], [np.complex])
		dtype('complex128')
		
		Type specifier strings are convertible to dtypes and can therefore
		be used instead of dtypes:
		
		>>> np.find_common_type(['f4', 'f4', 'i4'], ['c8'])
		dtype('complex128')
	**/
	static public function find_common_type(array_types:Dynamic, scalar_types:Dynamic):Dynamic;
	/**
		Return indices that are non-zero in the flattened version of a.
		
		This is equivalent to a.ravel().nonzero()[0].
		
		Parameters
		----------
		a : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    Output array, containing the indices of the elements of `a.ravel()`
		    that are non-zero.
		
		See Also
		--------
		nonzero : Return the indices of the non-zero elements of the input array.
		ravel : Return a 1-D array containing the elements of the input array.
		
		Examples
		--------
		>>> x = np.arange(-2, 3)
		>>> x
		array([-2, -1,  0,  1,  2])
		>>> np.flatnonzero(x)
		array([0, 1, 3, 4])
		
		Use the indices of the non-zero elements as an index array to extract
		these elements:
		
		>>> x.ravel()[np.flatnonzero(x)]
		array([-2, -1,  1,  2])
	**/
	static public function flatnonzero(a:Dynamic):numpy.Ndarray;
	/**
		floor(x[, out])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor_divide(x1, x2[, out])
		
		Return the largest integer smaller or equal to the division of the
		inputs.
		
		Parameters
		----------
		x1 : array_like
		    Numerator.
		x2 : array_like
		    Denominator.
		
		Returns
		-------
		y : ndarray
		    y = floor(`x1`/`x2`)
		
		
		See Also
		--------
		divide : Standard division.
		floor : Round a number to the nearest integer toward minus infinity.
		ceil : Round a number to the nearest integer toward infinity.
		
		Examples
		--------
		>>> np.floor_divide(7,3)
		2
		>>> np.floor_divide([1., 2., 3., 4.], 2.5)
		array([ 0.,  0.,  1.,  1.])
	**/
	static public function floor_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmax(x1, x2[, out])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then the
		non-nan element is returned. If both elements are NaNs then the first
		is returned.  The latter distinction is important for complex NaNs,
		which are defined as at least one of the real or imaginary parts being
		a NaN. The net effect is that NaNs are ignored when possible.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		minimum, amin, nanmin
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		The fmax is equivalent to ``np.where(x1 >= x2, x1, x2)`` when neither
		x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
		
		Examples
		--------
		>>> np.fmax([2, 3, 4], [1, 5, 2])
		array([ 2.,  5.,  4.])
		
		>>> np.fmax(np.eye(2), [0.5, 2])
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.fmax([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([  0.,   0.,  NaN])
	**/
	static public function fmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmin(x1, x2[, out])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then the
		non-nan element is returned. If both elements are NaNs then the first
		is returned.  The latter distinction is important for complex NaNs,
		which are defined as at least one of the real or imaginary parts being
		a NaN. The net effect is that NaNs are ignored when possible.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		maximum, amax, nanmax
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		The fmin is equivalent to ``np.where(x1 <= x2, x1, x2)`` when neither
		x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
		
		Examples
		--------
		>>> np.fmin([2, 3, 4], [1, 5, 2])
		array([2, 5, 4])
		
		>>> np.fmin(np.eye(2), [0.5, 2])
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.fmin([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([  0.,   0.,  NaN])
	**/
	static public function fmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod(x1, x2[, out])
		
		Return the element-wise remainder of division.
		
		This is the NumPy implementation of the C library function fmod, the
		remainder has the same sign as the dividend `x1`. It is equivalent to
		the Matlab(TM) ``rem`` function and should not be confused with the
		Python modulus operator ``x1 % x2``.
		
		Parameters
		----------
		x1 : array_like
		  Dividend.
		x2 : array_like
		  Divisor.
		
		Returns
		-------
		y : array_like
		  The remainder of the division of `x1` by `x2`.
		
		See Also
		--------
		remainder : Equivalent to the Python ``%`` operator.
		divide
		
		Notes
		-----
		The result of the modulo operation for negative dividend and divisors
		is bound by conventions. For `fmod`, the sign of result is the sign of
		the dividend, while for `remainder` the sign of the result is the sign
		of the divisor. The `fmod` function is equivalent to the Matlab(TM)
		``rem`` function.
		
		Examples
		--------
		>>> np.fmod([-3, -2, -1, 1, 2, 3], 2)
		array([-1,  0, -1,  1,  0,  1])
		>>> np.remainder([-3, -2, -1, 1, 2, 3], 2)
		array([1, 0, 1, 1, 0, 1])
		
		>>> np.fmod([5, 3], [2, 2.])
		array([ 1.,  1.])
		>>> a = np.arange(-3, 3).reshape(3, 2)
		>>> a
		array([[-3, -2],
		       [-1,  0],
		       [ 1,  2]])
		>>> np.fmod(a, [2,2])
		array([[-1,  0],
		       [-1,  0],
		       [ 1,  0]])
	**/
	static public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frexp(x[, out1, out2])
		
		Decompose the elements of x into mantissa and twos exponent.
		
		Returns (`mantissa`, `exponent`), where `x = mantissa * 2**exponent``.
		The mantissa is lies in the open interval(-1, 1), while the twos
		exponent is a signed integer.
		
		Parameters
		----------
		x : array_like
		    Array of numbers to be decomposed.
		out1 : ndarray, optional
		    Output array for the mantissa. Must have the same shape as `x`.
		out2 : ndarray, optional
		    Output array for the exponent. Must have the same shape as `x`.
		
		Returns
		-------
		(mantissa, exponent) : tuple of ndarrays, (float, int)
		    `mantissa` is a float array with values between -1 and 1.
		    `exponent` is an int array which represents the exponent of 2.
		
		See Also
		--------
		ldexp : Compute ``y = x1 * 2**x2``, the inverse of `frexp`.
		
		Notes
		-----
		Complex dtypes are not supported, they will raise a TypeError.
		
		Examples
		--------
		>>> x = np.arange(9)
		>>> y1, y2 = np.frexp(x)
		>>> y1
		array([ 0.   ,  0.5  ,  0.5  ,  0.75 ,  0.5  ,  0.625,  0.75 ,  0.875,
		        0.5  ])
		>>> y2
		array([0, 1, 2, 2, 3, 3, 3, 3, 4])
		>>> y1 * 2**y2
		array([ 0.,  1.,  2.,  3.,  4.,  5.,  6.,  7.,  8.])
	**/
	static public function frexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0)
		
		Interpret a buffer as a 1-dimensional array.
		
		Parameters
		----------
		buffer : buffer_like
		    An object that exposes the buffer interface.
		dtype : data-type, optional
		    Data-type of the returned array; default: float.
		count : int, optional
		    Number of items to read. ``-1`` means all data in the buffer.
		offset : int, optional
		    Start reading the buffer from this offset; default: 0.
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt)
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = 'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array(['w', 'o', 'r', 'l', 'd'],
		      dtype='|S1')
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromfile(file, dtype=float, count=-1, sep='')
		
		Construct an array from data in a text or binary file.
		
		A highly efficient way of reading binary data with a known data-type,
		as well as parsing simply formatted text files.  Data written using the
		`tofile` method can be read using this function.
		
		Parameters
		----------
		file : file or str
		    Open file object or filename.
		dtype : data-type
		    Data type of the returned array.
		    For binary files, it is used to determine the size and byte-order
		    of the items in the file.
		count : int
		    Number of items to read. ``-1`` means all items (i.e., the complete
		    file).
		sep : str
		    Separator between items if file is a text file.
		    Empty ("") separator means the file should be treated as binary.
		    Spaces (" ") in the separator match zero or more whitespace characters.
		    A separator consisting only of spaces must match at least one
		    whitespace.
		
		See also
		--------
		load, save
		ndarray.tofile
		loadtxt : More flexible way of loading data from a text file.
		
		Notes
		-----
		Do not rely on the combination of `tofile` and `fromfile` for
		data storage, as the binary files generated are are not platform
		independent.  In particular, no byte-order or data-type information is
		saved.  Data can be stored in the platform independent ``.npy`` format
		using `save` and `load` instead.
		
		Examples
		--------
		Construct an ndarray:
		
		>>> dt = np.dtype([('time', [('min', int), ('sec', int)]),
		...                ('temp', float)])
		>>> x = np.zeros((1,), dtype=dt)
		>>> x['time']['min'] = 10; x['temp'] = 98.25
		>>> x
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		Save the raw data to disk:
		
		>>> import os
		>>> fname = os.tmpnam()
		>>> x.tofile(fname)
		
		Read the raw data from disk:
		
		>>> np.fromfile(fname, dtype=dt)
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		The recommended way to store and load data:
		
		>>> np.save(fname, x)
		>>> np.load(fname + '.npy')
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
	**/
	static public function fromfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct an array by executing a function over each coordinate.
		
		The resulting array therefore has a value ``fn(x, y, z)`` at
		coordinate ``(x, y, z)``.
		
		Parameters
		----------
		function : callable
		    The function is called with N parameters, where N is the rank of
		    `shape`.  Each parameter represents the coordinates of the array
		    varying along a specific axis.  For example, if `shape`
		    were ``(2, 2)``, then the parameters in turn be (0, 0), (0, 1),
		    (1, 0), (1, 1).
		shape : (N,) tuple of ints
		    Shape of the output array, which also determines the shape of
		    the coordinate arrays passed to `function`.
		dtype : data-type, optional
		    Data-type of the coordinate arrays passed to `function`.
		    By default, `dtype` is float.
		
		Returns
		-------
		fromfunction : any
		    The result of the call to `function` is passed back directly.
		    Therefore the shape of `fromfunction` is completely determined by
		    `function`.  If `function` returns a scalar value, the shape of
		    `fromfunction` would match the `shape` parameter.
		
		See Also
		--------
		indices, meshgrid
		
		Notes
		-----
		Keywords other than `dtype` are passed to `function`.
		
		Examples
		--------
		>>> np.fromfunction(lambda i, j: i == j, (3, 3), dtype=int)
		array([[ True, False, False],
		       [False,  True, False],
		       [False, False,  True]], dtype=bool)
		
		>>> np.fromfunction(lambda i, j: i + j, (3, 3), dtype=int)
		array([[0, 1, 2],
		       [1, 2, 3],
		       [2, 3, 4]])
	**/
	static public function fromfunction(_function:Dynamic, shape:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		fromiter(iterable, dtype, count=-1)
		
		Create a new 1-dimensional array from an iterable object.
		
		Parameters
		----------
		iterable : iterable object
		    An iterable object providing data for the array.
		dtype : data-type
		    The data-type of the returned array.
		count : int, optional
		    The number of items to read from *iterable*.  The default is -1,
		    which means all data is read.
		
		Returns
		-------
		out : ndarray
		    The output array.
		
		Notes
		-----
		Specify `count` to improve performance.  It allows ``fromiter`` to
		pre-allocate the output array, instead of resizing it on demand.
		
		Examples
		--------
		>>> iterable = (x*x for x in range(5))
		>>> np.fromiter(iterable, np.float)
		array([  0.,   1.,   4.,   9.,  16.])
	**/
	static public function fromiter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frompyfunc(func, nin, nout)
		
		Takes an arbitrary Python function and returns a Numpy ufunc.
		
		Can be used, for example, to add broadcasting to a built-in Python
		function (see Examples section).
		
		Parameters
		----------
		func : Python function object
		    An arbitrary Python function.
		nin : int
		    The number of input arguments.
		nout : int
		    The number of objects returned by `func`.
		
		Returns
		-------
		out : ufunc
		    Returns a Numpy universal function (``ufunc``) object.
		
		Notes
		-----
		The returned ufunc always returns PyObject arrays.
		
		Examples
		--------
		Use frompyfunc to add broadcasting to the Python function ``oct``:
		
		>>> oct_array = np.frompyfunc(oct, 1, 1)
		>>> oct_array(np.array((10, 30, 100)))
		array([012, 036, 0144], dtype=object)
		>>> np.array((oct(10), oct(30), oct(100))) # for comparison
		array(['012', '036', '0144'],
		      dtype='|S4')
	**/
	static public function frompyfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromstring(string, dtype=float, count=-1, sep='')
		
		A new 1-D array initialized from raw binary or text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format.
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    If not provided or, equivalently, the empty string, the data will
		    be interpreted as binary data; otherwise, as ASCII text with
		    decimal numbers.  Also in this latter case, this argument is
		    interpreted as the string separating numbers in the data; extra
		    whitespace between elements is also ignored.
		
		Returns
		-------
		arr : ndarray
		    The constructed array.
		
		Raises
		------
		ValueError
		    If the string is not the correct size to satisfy the requested
		    `dtype` and `count`.
		
		See Also
		--------
		frombuffer, fromfile, fromiter
		
		Examples
		--------
		>>> np.fromstring('\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
		>>> np.fromstring('\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new array of given shape and type, filled with `fill_value`.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		fill_value : scalar
		    Fill value.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `np.int8`.  Default
		    is `float`, but will change to `np.array(fill_value).dtype` in a
		    future release.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of `fill_value` with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		full_like : Fill an array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.full((2, 2), np.inf)
		array([[ inf,  inf],
		       [ inf,  inf]])
		>>> np.full((2, 2), 10, dtype=np.int)
		array([[10, 10],
		       [10, 10]])
	**/
	static public function full(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return a full array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		fill_value : scalar
		    Fill value.
		dtype : data-type, optional
		    Overrides the data type of the result.
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of `fill_value` with the same shape and type as `a`.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		full : Fill a new array.
		
		Examples
		--------
		>>> x = np.arange(6, dtype=np.int)
		>>> np.full_like(x, 1)
		array([1, 1, 1, 1, 1, 1])
		>>> np.full_like(x, 0.1)
		array([0, 0, 0, 0, 0, 0])
		>>> np.full_like(x, 0.1, dtype=np.double)
		array([ 0.1,  0.1,  0.1,  0.1,  0.1,  0.1])
		>>> np.full_like(x, np.nan, dtype=np.double)
		array([ nan,  nan,  nan,  nan,  nan,  nan])
		
		>>> y = np.arange(6, dtype=np.double)
		>>> np.full_like(y, 0.1)
		array([ 0.1,  0.1,  0.1,  0.1,  0.1,  0.1])
	**/
	static public function full_like(a:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):numpy.Ndarray;
	/**
		Return the current print options.
		
		Returns
		-------
		print_opts : dict
		    Dictionary of current print options with keys
		
		      - precision : int
		      - threshold : int
		      - edgeitems : int
		      - linewidth : int
		      - suppress : bool
		      - nanstr : str
		      - infstr : str
		      - formatter : dict of callables
		
		    For a full description of these options, see `set_printoptions`.
		
		See Also
		--------
		set_printoptions, set_string_function
	**/
	static public function get_printoptions():python.Dict<Dynamic, Dynamic>;
	/**
		Return the size of the buffer used in ufuncs.
		
		Returns
		-------
		getbufsize : int
		    Size of ufunc buffer in bytes.
	**/
	static public function getbufsize():Int;
	/**
		Get the current way of handling floating-point errors.
		
		Returns
		-------
		res : dict
		    A dictionary with keys "divide", "over", "under", and "invalid",
		    whose values are from the strings "ignore", "print", "log", "warn",
		    "raise", and "call". The keys represent possible floating-point
		    exceptions, and the values define how these exceptions are handled.
		
		See Also
		--------
		geterrcall, seterr, seterrcall
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterr()
		{'over': 'warn', 'divide': 'warn', 'invalid': 'warn',
		'under': 'ignore'}
		>>> np.arange(3.) / np.arange(3.)
		array([ NaN,   1.,   1.])
		
		>>> oldsettings = np.seterr(all='warn', over='raise')
		>>> np.geterr()
		{'over': 'raise', 'divide': 'warn', 'invalid': 'warn', 'under': 'warn'}
		>>> np.arange(3.) / np.arange(3.)
		__main__:1: RuntimeWarning: invalid value encountered in divide
		array([ NaN,   1.,   1.])
	**/
	static public function geterr():python.Dict<Dynamic, Dynamic>;
	/**
		Return the current callback function used on floating-point errors.
		
		When the error handling for a floating-point error (one of "divide",
		"over", "under", or "invalid") is set to 'call' or 'log', the function
		that is called or the log instance that is written to is returned by
		`geterrcall`. This function or log instance has been set with
		`seterrcall`.
		
		Returns
		-------
		errobj : callable, log instance or None
		    The current error handler. If no handler was set through `seterrcall`,
		    ``None`` is returned.
		
		See Also
		--------
		seterrcall, seterr, geterr
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterrcall()  # we did not yet set a handler, returns None
		
		>>> oldsettings = np.seterr(all='call')
		>>> def err_handler(type, flag):
		...     print "Floating point error (%s), with flag %s" % (type, flag)
		>>> oldhandler = np.seterrcall(err_handler)
		>>> np.array([1, 2, 3]) / 0.0
		Floating point error (divide by zero), with flag 1
		array([ Inf,  Inf,  Inf])
		
		>>> cur_handler = np.geterrcall()
		>>> cur_handler is err_handler
		True
	**/
	static public function geterrcall():Dynamic;
	/**
		geterrobj()
		
		Return the current object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in Numpy. `geterrobj` is used internally by the other
		functions that get and set error handling behavior (`geterr`, `seterr`,
		`geterrcall`, `seterrcall`).
		
		Returns
		-------
		errobj : list
		    The error object, a list containing three elements:
		    [internal numpy buffer size, error mask, error callback function].
		
		    The error mask is a single integer that holds the treatment information
		    on all four floating point errors. The information for each error type
		    is contained in three bits of the integer. If we print it in base 8, we
		    can see what treatment is set for "invalid", "under", "over", and
		    "divide" (in that order). The printed string can be interpreted with
		
		    * 0 : 'ignore'
		    * 1 : 'warn'
		    * 2 : 'raise'
		    * 3 : 'call'
		    * 4 : 'print'
		    * 5 : 'log'
		
		See Also
		--------
		seterrobj, seterr, geterr, seterrcall, geterrcall
		getbufsize, setbufsize
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterrobj()  # first get the defaults
		[10000, 0, None]
		
		>>> def err_handler(type, flag):
		...     print "Floating point error (%s), with flag %s" % (type, flag)
		...
		>>> old_bufsize = np.setbufsize(20000)
		>>> old_err = np.seterr(divide='raise')
		>>> old_handler = np.seterrcall(err_handler)
		>>> np.geterrobj()
		[20000, 2, <function err_handler at 0x91dcaac>]
		
		>>> old_err = np.seterr(all='ignore')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'0'
		>>> old_err = np.seterr(divide='warn', over='log', under='call',
		                        invalid='print')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'4351'
	**/
	static public function geterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater(x1, x2[, out])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False], dtype=bool)
		
		If the inputs are ndarrays, then np.greater is equivalent to '>'.
		
		>>> a = np.array([4,2])
		>>> b = np.array([2,2])
		>>> a > b
		array([ True, False], dtype=bool)
	**/
	static public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater_equal(x1, x2[, out])
		
		Return the truth value of (x1 >= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater_equal([4, 2, 1], [2, 2, 2])
		array([ True, True, False], dtype=bool)
	**/
	static public function greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		Take a sequence of arrays and stack them horizontally to make
		a single array. Rebuild arrays divided by `hsplit`.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    All arrays must have the same shape along all but the second axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		concatenate : Join a sequence of arrays along an existing axis.
		hsplit : Split array along second axis.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=1)``
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.hstack((a,b))
		array([1, 2, 3, 2, 3, 4])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[2],[3],[4]])
		>>> np.hstack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function hstack(tup:Dynamic):numpy.Ndarray;
	/**
		hypot(x1, x2[, out])
		
		Given the "legs" of a right triangle, return its hypotenuse.
		
		Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
		`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
		it is broadcast for use with each element of the other argument.
		(See Examples)
		
		Parameters
		----------
		x1, x2 : array_like
		    Leg of the triangle(s).
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		z : ndarray
		    The hypotenuse of the triangle(s).
		
		Examples
		--------
		>>> np.hypot(3*np.ones((3, 3)), 4*np.ones((3, 3)))
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
		
		Example showing broadcast of scalar_like argument:
		
		>>> np.hypot(3*np.ones((3, 3)), [4])
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
	**/
	static public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the identity array.
		
		The identity array is a square array with ones on
		the main diagonal.
		
		Parameters
		----------
		n : int
		    Number of rows (and columns) in `n` x `n` output.
		dtype : data-type, optional
		    Data-type of the output.  Defaults to ``float``.
		
		Returns
		-------
		out : ndarray
		    `n` x `n` array with its main diagonal set to one,
		    and all other elements 0.
		
		Examples
		--------
		>>> np.identity(3)
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Return an array representing the indices of a grid.
		
		Compute an array where the subarrays contain index values 0,1,...
		varying only along the corresponding axis.
		
		Parameters
		----------
		dimensions : sequence of ints
		    The shape of the grid.
		dtype : dtype, optional
		    Data type of the result.
		
		Returns
		-------
		grid : ndarray
		    The array of grid indices,
		    ``grid.shape = (len(dimensions),) + tuple(dimensions)``.
		
		See Also
		--------
		mgrid, meshgrid
		
		Notes
		-----
		The output shape is obtained by prepending the number of dimensions
		in front of the tuple of dimensions, i.e. if `dimensions` is a tuple
		``(r0, ..., rN-1)`` of length ``N``, the output shape is
		``(N,r0,...,rN-1)``.
		
		The subarrays ``grid[k]`` contains the N-D array of indices along the
		``k-th`` axis. Explicitly::
		
		    grid[k,i0,i1,...,iN-1] = ik
		
		Examples
		--------
		>>> grid = np.indices((2, 3))
		>>> grid.shape
		(2, 2, 3)
		>>> grid[0]        # row indices
		array([[0, 0, 0],
		       [1, 1, 1]])
		>>> grid[1]        # column indices
		array([[0, 1, 2],
		       [0, 1, 2]])
		
		The indices can be used as an index into an array.
		
		>>> x = np.arange(20).reshape(5, 4)
		>>> row, col = np.indices((2, 3))
		>>> x[row, col]
		array([[0, 1, 2],
		       [4, 5, 6]])
		
		Note that it would be more straightforward in the above example to
		extract the required elements directly with ``x[:2, :3]``.
	**/
	static public function indices(dimensions:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	static public var inf : Dynamic;
	static public var infty : Dynamic;
	/**
		inner(a, b)
		
		Inner product of two arrays.
		
		Ordinary inner product of vectors for 1-D arrays (without complex
		conjugation), in higher dimensions a sum product over the last axes.
		
		Parameters
		----------
		a, b : array_like
		    If `a` and `b` are nonscalar, their last dimensions of must match.
		
		Returns
		-------
		out : ndarray
		    `out.shape = a.shape[:-1] + b.shape[:-1]`
		
		Raises
		------
		ValueError
		    If the last dimension of `a` and `b` has different size.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-1,j0,...,js-1]
		         = sum(a[i0,...,ir-1,:]*b[j0,...,js-1,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		A multidimensional example:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> np.inner(a, b)
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[ 7.,  0.],
		       [ 0.,  7.]])
	**/
	static public function inner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function int_asbuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		invert(x[, out])
		
		Compute bit-wise inversion, or bit-wise NOT, element-wise.
		
		Computes the bit-wise NOT of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``~``.
		
		For signed integer inputs, the two's complement is returned.  In a
		two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit
		two's-complement system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		x1 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		bitwise_and, bitwise_or, bitwise_xor
		logical_not
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Notes
		-----
		`bitwise_not` is an alias for `invert`:
		
		>>> np.bitwise_not is np.invert
		True
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    http://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		We've seen that 13 is represented by ``00001101``.
		The invert or bit-wise NOT of 13 is then:
		
		>>> np.invert(np.array([13], dtype=uint8))
		array([242], dtype=uint8)
		>>> np.binary_repr(x, width=8)
		'00001101'
		>>> np.binary_repr(242, width=8)
		'11110010'
		
		The result depends on the bit-width:
		
		>>> np.invert(np.array([13], dtype=uint16))
		array([65522], dtype=uint16)
		>>> np.binary_repr(x, width=16)
		'0000000000001101'
		>>> np.binary_repr(65522, width=16)
		'1111111111110010'
		
		When using signed integer types the result is the two's complement of
		the result for the unsigned type:
		
		>>> np.invert(np.array([13], dtype=int8))
		array([-14], dtype=int8)
		>>> np.binary_repr(-14, width=8)
		'11110010'
		
		Booleans are accepted as well:
		
		>>> np.invert(array([True, False]))
		array([False,  True], dtype=bool)
	**/
	static public function invert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_busday(dates, weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		Calculates which of the given dates are valid days, and which are not.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of bool, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of bool
		    An array with the same shape as ``dates``, containing True for
		    each valid day, and False for each invalid day.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		busday_offset : Applies an offset counted in valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # The weekdays are Friday, Saturday, and Monday
		... np.is_busday(['2011-07-01', '2011-07-02', '2011-07-18'],
		...                 holidays=['2011-07-01', '2011-07-04', '2011-07-17'])
		array([False, False,  True], dtype='bool')
	**/
	static public function is_busday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a boolean array where two arrays are element-wise equal within a
		tolerance.
		
		The tolerance values are positive, typically very small numbers.  The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		rtol : float
		    The relative tolerance parameter (see Notes).
		atol : float
		    The absolute tolerance parameter (see Notes).
		equal_nan : bool
		    Whether to compare NaN's as equal.  If True, NaN's in `a` will be
		    considered equal to NaN's in `b` in the output array.
		
		Returns
		-------
		y : array_like
		    Returns a boolean array of where `a` and `b` are equal within the
		    given tolerance. If both `a` and `b` are scalars, returns a single
		    boolean value.
		
		See Also
		--------
		allclose
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		For finite values, isclose uses the following equation to test whether
		two floating point values are equivalent.
		
		 absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		The above equation is not symmetric in `a` and `b`, so that
		`isclose(a, b)` might be different from `isclose(b, a)` in
		some rare cases.
		
		Examples
		--------
		>>> np.isclose([1e10,1e-7], [1.00001e10,1e-8])
		array([True, False])
		>>> np.isclose([1e10,1e-8], [1.00001e10,1e-9])
		array([True, True])
		>>> np.isclose([1e10,1e-8], [1.0001e10,1e-9])
		array([False, True])
		>>> np.isclose([1.0, np.nan], [1.0, np.nan])
		array([True, False])
		>>> np.isclose([1.0, np.nan], [1.0, np.nan], equal_nan=True)
		array([True, True])
	**/
	static public function isclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	/**
		isfinite(x[, out])
		
		Test element-wise for finiteness (not infinity or not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		y : ndarray, bool
		    For scalar input, the result is a new boolean with value True
		    if the input is finite; otherwise the value is False (input is
		    either positive infinity, negative infinity or Not a Number).
		
		    For array input, the result is a boolean array with the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is finite; otherwise the values
		    are False (element is either positive infinity, negative infinity
		    or Not a Number).
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if the array is Fortran contiguous but *not* C contiguous.
		
		This function is obsolete and, because of changes due to relaxed stride
		checking, its return value for the same array may differ for versions
		of Numpy >= 1.10 and previous versions. If you only want to check if an
		array is Fortran contiguous use ``a.flags.f_contiguous`` instead.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		
		
		Examples
		--------
		
		np.array allows to specify whether the array is written in C-contiguous
		order (last index varies the fastest), or FORTRAN-contiguous order in
		memory (first index varies the fastest).
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(a)
		False
		
		>>> b = np.array([[1, 2, 3], [4, 5, 6]], order='FORTRAN')
		>>> b
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(b)
		True
		
		
		The transpose of a C-ordered array is a FORTRAN-ordered array.
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(a)
		False
		>>> b = a.T
		>>> b
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
		>>> np.isfortran(b)
		True
		
		C-ordered arrays evaluate as False even if they are also FORTRAN-ordered.
		
		>>> np.isfortran(np.array([1, 2], order='FORTRAN'))
		False
	**/
	static public function isfortran(a:Dynamic):Dynamic;
	/**
		isinf(x[, out])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : array_like, optional
		    An array with the same shape as `x` to store the result.
		
		Returns
		-------
		y : bool (scalar) or boolean ndarray
		    For scalar input, the result is a new boolean with value True if
		    the input is positive or negative infinity; otherwise the value is
		    False.
		
		    For array input, the result is a boolean array with the same shape
		    as the input and the values are True where the corresponding
		    element of the input is positive or negative infinity; elsewhere
		    the values are False.  If a second argument was supplied the result
		    is stored there.  If the type of that array is a numeric type the
		    result is represented as zeros and ones, if the type is boolean
		    then as False and True, respectively.  The return value `y` is then
		    a reference to that array.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is supplied when the first
		argument is a scalar, or if the first and second arguments have
		different shapes.
		
		Examples
		--------
		>>> np.isinf(np.inf)
		True
		>>> np.isinf(np.nan)
		False
		>>> np.isinf(np.NINF)
		True
		>>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
		array([ True,  True, False, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x[, out])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		y : ndarray or bool
		    For scalar input, the result is a new boolean with value True if
		    the input is NaN; otherwise the value is False.
		
		    For array input, the result is a boolean array of the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is NaN; otherwise the values are
		    False.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False], dtype=bool)
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if the type of `num` is a scalar type.
		
		Parameters
		----------
		num : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `num` is a scalar type, False if it is not.
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
	**/
	static public function isscalar(num:Dynamic):Bool;
	/**
		Determines whether the given object represents a scalar data-type.
		
		Parameters
		----------
		rep : any
		    If `rep` is an instance of a scalar dtype, True is returned. If not,
		    False is returned.
		
		Returns
		-------
		out : bool
		    Boolean result of check whether `rep` is a scalar dtype.
		
		See Also
		--------
		issubsctype, issubdtype, obj2sctype, sctype2char
		
		Examples
		--------
		>>> np.issctype(np.int32)
		True
		>>> np.issctype(list)
		False
		>>> np.issctype(1.1)
		False
		
		Strings are also a scalar type:
		
		>>> np.issctype(np.dtype('str'))
		True
	**/
	static public function issctype(rep:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    dtype or string representing a typecode.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		issubsctype, issubclass_
		numpy.core.numerictypes : Overview of numpy type hierarchy.
		
		Examples
		--------
		>>> np.issubdtype('S1', str)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		ldexp(x1, x2[, out])
		
		Returns x1 * 2**x2, element-wise.
		
		The mantissas `x1` and twos exponents `x2` are used to construct
		floating point numbers ``x1 * 2**x2``.
		
		Parameters
		----------
		x1 : array_like
		    Array of multipliers.
		x2 : array_like, int
		    Array of twos exponents.
		out : ndarray, optional
		    Output array for the result.
		
		Returns
		-------
		y : ndarray or scalar
		    The result of ``x1 * 2**x2``.
		
		See Also
		--------
		frexp : Return (y1, y2) from ``x = y1 * 2**y2``, inverse to `ldexp`.
		
		Notes
		-----
		Complex dtypes are not supported, they will raise a TypeError.
		
		`ldexp` is useful as the inverse of `frexp`, if used by itself it is
		more clear to simply use the expression ``x1 * 2**x2``.
		
		Examples
		--------
		>>> np.ldexp(5, np.arange(4))
		array([  5.,  10.,  20.,  40.], dtype=float32)
		
		>>> x = np.arange(6)
		>>> np.ldexp(*np.frexp(x))
		array([ 0.,  1.,  2.,  3.,  4.,  5.])
	**/
	static public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		left_shift(x1, x2[, out])
		
		Shift the bits of an integer to the left.
		
		Bits are shifted to the left by appending `x2` 0s at the right of `x1`.
		Since the internal representation of numbers is in binary format, this
		operation is equivalent to multiplying `x1` by ``2**x2``.
		
		Parameters
		----------
		x1 : array_like of integer type
		    Input values.
		x2 : array_like of integer type
		    Number of zeros to append to `x1`. Has to be non-negative.
		
		Returns
		-------
		out : array of integer type
		    Return `x1` with bits shifted `x2` times to the left.
		
		See Also
		--------
		right_shift : Shift the bits of an integer to the right.
		binary_repr : Return the binary representation of the input number
		    as a string.
		
		Examples
		--------
		>>> np.binary_repr(5)
		'101'
		>>> np.left_shift(5, 2)
		20
		>>> np.binary_repr(20)
		'10100'
		
		>>> np.left_shift(5, [1,2,3])
		array([10, 20, 40])
	**/
	static public function left_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less(x1, x2[, out])
		
		Return the truth value of (x1 < x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less_equal, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less([1, 2], [2, 2])
		array([ True, False], dtype=bool)
	**/
	static public function less(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less_equal(x1, x2[, out])
		
		Return the truth value of (x1 =< x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True], dtype=bool)
	**/
	static public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lexsort(keys, axis=-1)
		
		Perform an indirect sort using a sequence of keys.
		
		Given multiple sorting keys, which can be interpreted as columns in a
		spreadsheet, lexsort returns an array of integer indices that describes
		the sort order by multiple columns. The last key in the sequence is used
		for the primary sort order, the second-to-last key for the secondary sort
		order, and so on. The keys argument must be a sequence of objects that
		can be converted to arrays of the same shape. If a 2D array is provided
		for the keys argument, it's rows are interpreted as the sorting keys and
		sorting is according to the last row, second last row etc.
		
		Parameters
		----------
		keys : (k, N) array or tuple containing k (N,)-shaped sequences
		    The `k` different "columns" to be sorted.  The last column (or row if
		    `keys` is a 2D array) is the primary sort key.
		axis : int, optional
		    Axis to be indirectly sorted.  By default, sort over the last axis.
		
		Returns
		-------
		indices : (N,) ndarray of ints
		    Array of indices that sort the keys along the specified axis.
		
		See Also
		--------
		argsort : Indirect sort.
		ndarray.sort : In-place sort.
		sort : Return a sorted copy of an array.
		
		Examples
		--------
		Sort names: first by surname, then by name.
		
		>>> surnames =    ('Hertz',    'Galilei', 'Hertz')
		>>> first_names = ('Heinrich', 'Galileo', 'Gustav')
		>>> ind = np.lexsort((first_names, surnames))
		>>> ind
		array([1, 2, 0])
		
		>>> [surnames[i] + ", " + first_names[i] for i in ind]
		['Galilei, Galileo', 'Hertz, Gustav', 'Hertz, Heinrich']
		
		Sort two columns of numbers:
		
		>>> a = [1,5,1,4,3,4,4] # First column
		>>> b = [9,4,0,4,0,2,1] # Second column
		>>> ind = np.lexsort((b,a)) # Sort by a, then by b
		>>> print ind
		[2 0 4 6 5 3 1]
		
		>>> [(a[i],b[i]) for i in ind]
		[(1, 0), (1, 9), (3, 0), (4, 1), (4, 2), (4, 4), (5, 4)]
		
		Note that sorting is first according to the elements of ``a``.
		Secondary sorting is according to the elements of ``b``.
		
		A normal ``argsort`` would have yielded:
		
		>>> [(a[i],b[i]) for i in np.argsort(a)]
		[(1, 9), (1, 0), (3, 0), (4, 4), (4, 2), (4, 1), (5, 4)]
		
		Structured arrays are sorted lexically by ``argsort``:
		
		>>> x = np.array([(1,9), (5,4), (1,0), (4,4), (3,0), (4,2), (4,1)],
		...              dtype=np.dtype([('x', int), ('y', int)]))
		
		>>> np.argsort(x) # or np.argsort(x, order=('x', 'y'))
		array([2, 0, 4, 6, 5, 3, 1])
	**/
	static public function lexsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		Parameters
		----------
		start : scalar
		    The starting value of the sequence.
		stop : scalar
		    The end value of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced samples, so that `stop` is excluded.  Note that the step
		    size changes when `endpoint` is False.
		num : int, optional
		    Number of samples to generate. Default is 50. Must be non-negative.
		endpoint : bool, optional
		    If True, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		retstep : bool, optional
		    If True, return (`samples`, `step`), where `step` is the spacing
		    between samples.
		dtype : dtype, optional
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		logspace : Samples uniformly distributed in log space.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		    array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		    array([ 2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		    (array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 8
		>>> y = np.zeros(N)
		>>> x1 = np.linspace(0, 10, N, endpoint=True)
		>>> x2 = np.linspace(0, 10, N, endpoint=False)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var little_endian : Dynamic;
	/**
		Wrapper around cPickle.load which accepts either a file-like object or
		a filename.
		
		Note that the NumPy binary format is not based on pickle/cPickle anymore.
		For details on the preferred way of loading and saving files, see `load`
		and `save`.
		
		See Also
		--------
		load, save
	**/
	static public function load(file:Dynamic):Dynamic;
	/**
		Read and return an object from the given pickle data.
		
		The protocol version of the pickle is detected automatically, so no
		protocol argument is needed.  Bytes past the pickled object's
		representation are ignored.
		
		Optional keyword arguments are *fix_imports*, *encoding* and *errors*,
		which are used to control compatiblity support for pickle stream
		generated by Python 2.  If *fix_imports* is True, pickle will try to
		map the old Python 2 names to the new names used in Python 3.  The
		*encoding* and *errors* tell pickle how to decode 8-bit string
		instances pickled by Python 2; these default to 'ASCII' and 'strict',
		respectively.  The *encoding* can be 'bytes' to read these 8-bit
		string instances as bytes objects.
	**/
	static public function loads(data:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		log(x[, out])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The natural logarithm of `x`, element-wise.
		
		See Also
		--------
		log10, log2, log1p, emath.log
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log` always returns real output. For
		each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10(x[, out])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		
		See Also
		--------
		emath.log10
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `10**z = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log10` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log10` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it.
		`log10` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  NaN])
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x[, out])
		
		Return the natural logarithm of one plus the input array, element-wise.
		
		Calculates ``log(1 + x)``.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    Natural logarithm of `1 + x`, element-wise.
		
		See Also
		--------
		expm1 : ``exp(x) - 1``, the inverse of `log1p`.
		
		Notes
		-----
		For real-valued input, `log1p` is accurate also for `x` so small
		that `1 + x == 1` in floating-point accuracy.
		
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = 1 + x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log1p` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log1p` is a complex analytical function that
		has a branch cut `[-inf, -1]` and is continuous from above on it.
		`log1p` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log1p(1e-99)
		1e-99
		>>> np.log(1 + 1e-99)
		0.0
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2(x[, out])
		
		Base-2 logarithm of `x`.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    Base-2 logarithm of `x`.
		
		See Also
		--------
		log, log10, log1p, emath.log2
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `2**z = x`. The convention is to return the `z`
		whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log2` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log2` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log2`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		Examples
		--------
		>>> x = np.array([0, 1, 2, 2**4])
		>>> np.log2(x)
		array([-Inf,   0.,   1.,   4.])
		
		>>> xi = np.array([0+1.j, 1, 2+0.j, 4.j])
		>>> np.log2(xi)
		array([ 0.+2.26618007j,  0.+0.j        ,  1.+0.j        ,  2.+2.26618007j])
	**/
	static public function log2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logaddexp(x1, x2[, out])
		
		Logarithm of the sum of exponentiations of the inputs.
		
		Calculates ``log(exp(x1) + exp(x2))``. This function is useful in
		statistics where the calculated probabilities of events may be so small
		as to exceed the range of normal floating point numbers.  In such cases
		the logarithm of the calculated probability is stored. This function
		allows adding probabilities stored in such a fashion.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input values.
		
		Returns
		-------
		result : ndarray
		    Logarithm of ``exp(x1) + exp(x2)``.
		
		See Also
		--------
		logaddexp2: Logarithm of the sum of exponentiations of inputs in base 2.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> prob1 = np.log(1e-50)
		>>> prob2 = np.log(2.5e-50)
		>>> prob12 = np.logaddexp(prob1, prob2)
		>>> prob12
		-113.87649168120691
		>>> np.exp(prob12)
		3.5000000000000057e-50
	**/
	static public function logaddexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logaddexp2(x1, x2[, out])
		
		Logarithm of the sum of exponentiations of the inputs in base-2.
		
		Calculates ``log2(2**x1 + 2**x2)``. This function is useful in machine
		learning when the calculated probabilities of events may be so small as
		to exceed the range of normal floating point numbers.  In such cases
		the base-2 logarithm of the calculated probability can be used instead.
		This function allows adding probabilities stored in such a fashion.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input values.
		out : ndarray, optional
		    Array to store results in.
		
		Returns
		-------
		result : ndarray
		    Base-2 logarithm of ``2**x1 + 2**x2``.
		
		See Also
		--------
		logaddexp: Logarithm of the sum of exponentiations of the inputs.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> prob1 = np.log2(1e-50)
		>>> prob2 = np.log2(2.5e-50)
		>>> prob12 = np.logaddexp2(prob1, prob2)
		>>> prob1, prob2, prob12
		(-166.09640474436813, -164.77447664948076, -164.28904982231052)
		>>> 2**prob12
		3.4999999999999914e-50
	**/
	static public function logaddexp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_and(x1, x2[, out])
		
		Compute the truth value of x1 AND x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays. `x1` and `x2` must be of the same shape.
		
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result with the same shape as `x1` and `x2` of the logical
		    AND operation on corresponding elements of `x1` and `x2`.
		
		See Also
		--------
		logical_or, logical_not, logical_xor
		bitwise_and
		
		Examples
		--------
		>>> np.logical_and(True, False)
		False
		>>> np.logical_and([True, False], [False, False])
		array([False, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_and(x>1, x<4)
		array([False, False,  True,  True, False], dtype=bool)
	**/
	static public function logical_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_not(x[, out])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True], dtype=bool)
	**/
	static public function logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_or(x1, x2[, out])
		
		Compute the truth value of x1 OR x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical OR is applied to the elements of `x1` and `x2`.
		    They have to be of the same shape.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result with the same shape as `x1` and `x2` of the logical
		    OR operation on elements of `x1` and `x2`.
		
		See Also
		--------
		logical_and, logical_not, logical_xor
		bitwise_or
		
		Examples
		--------
		>>> np.logical_or(True, False)
		True
		>>> np.logical_or([True, False], [False, False])
		array([ True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_or(x < 1, x > 3)
		array([ True, False, False, False,  True], dtype=bool)
	**/
	static public function logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_xor(x1, x2[, out])
		
		Compute the truth value of x1 XOR x2, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical XOR is applied to the elements of `x1` and `x2`.  They must
		    be broadcastable to the same shape.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result of the logical XOR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by whether or not
		    broadcasting of one or both arrays was required.
		
		See Also
		--------
		logical_and, logical_or, logical_not, bitwise_xor
		
		Examples
		--------
		>>> np.logical_xor(True, False)
		True
		>>> np.logical_xor([True, True, False, False], [True, False, True, False])
		array([False,  True,  True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_xor(x < 1, x > 3)
		array([ True, False, False, False,  True], dtype=bool)
		
		Simple example showing support of broadcasting
		
		>>> np.logical_xor(0, np.eye(2))
		array([[ True, False],
		       [False,  True]], dtype=bool)
	**/
	static public function logical_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return numbers spaced evenly on a log scale.
		
		In linear space, the sequence starts at ``base ** start``
		(`base` to the power of `start`) and ends with ``base ** stop``
		(see `endpoint` below).
		
		Parameters
		----------
		start : float
		    ``base ** start`` is the starting value of the sequence.
		stop : float
		    ``base ** stop`` is the final value of the sequence, unless `endpoint`
		    is False.  In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length ``num``) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		base : float, optional
		    The base of the log space. The step size between the elements in
		    ``ln(samples) / ln(base)`` (or ``log_base(samples)``) is uniform.
		    Default is 10.0.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples. Note that, when used with a float endpoint, the
		         endpoint may or may not be included.
		linspace : Similar to logspace, but with the samples uniformly distributed
		           in linear space, instead of log space.
		
		Notes
		-----
		Logspace is equivalent to the code
		
		>>> y = np.linspace(start, stop, num=num, endpoint=endpoint)
		... # doctest: +SKIP
		>>> power(base, y).astype(dtype)
		... # doctest: +SKIP
		
		Examples
		--------
		>>> np.logspace(2.0, 3.0, num=4)
		    array([  100.        ,   215.443469  ,   464.15888336,  1000.        ])
		>>> np.logspace(2.0, 3.0, num=4, endpoint=False)
		    array([ 100.        ,  177.827941  ,  316.22776602,  562.34132519])
		>>> np.logspace(2.0, 3.0, num=4, base=2.0)
		    array([ 4.        ,  5.0396842 ,  6.34960421,  8.        ])
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> x1 = np.logspace(0.1, 1, N, endpoint=True)
		>>> x2 = np.logspace(0.1, 1, N, endpoint=False)
		>>> y = np.zeros(N)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		matmul(a, b, out=None)
		
		Matrix product of two arrays.
		
		The behavior depends on the arguments in the following way.
		
		- If both arguments are 2-D they are multiplied like conventional
		  matrices.
		- If either argument is N-D, N > 2, it is treated as a stack of
		  matrices residing in the last two indexes and broadcast accordingly.
		- If the first argument is 1-D, it is promoted to a matrix by
		  prepending a 1 to its dimensions. After matrix multiplication
		  the prepended 1 is removed.
		- If the second argument is 1-D, it is promoted to a matrix by
		  appending a 1 to its dimensions. After matrix multiplication
		  the appended 1 is removed.
		
		Multiplication by a scalar is not allowed, use ``*`` instead. Note that
		multiplying a stack of matrices with a vector will result in a stack of
		vectors, but matmul will not recognize it as such.
		
		``matmul`` differs from ``dot`` in two important ways.
		
		- Multiplication by scalars is not allowed.
		- Stacks of matrices are broadcast together as if the matrices
		  were elements.
		
		.. warning::
		   This function is preliminary and included in Numpy 1.10 for testing
		   and documentation. Its semantics will not change, but the number and
		   order of the optional arguments will.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    1-D arrays then a scalar is returned; otherwise an array is
		    returned.  If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		    If scalar value is passed.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		dot : alternative matrix product with different broadcasting rules.
		
		Notes
		-----
		The matmul function implements the semantics of the `@` operator introduced
		in Python 3.5 following PEP465.
		
		Examples
		--------
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.matmul(a, b)
		array([[4, 1],
		       [2, 2]])
		
		For 2-D mixed with 1-D, the result is the usual.
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [1, 2]
		>>> np.matmul(a, b)
		array([1, 2])
		>>> np.matmul(b, a)
		array([1, 2])
		
		
		Broadcasting is conventional for stacks of arrays
		
		>>> a = np.arange(2*2*4).reshape((2,2,4))
		>>> b = np.arange(2*2*4).reshape((2,4,2))
		>>> np.matmul(a,b).shape
		(2, 2, 2)
		>>> np.matmul(a,b)[0,1,1]
		98
		>>> sum(a[0,1,:] * b[0,:,1])
		98
		
		Vector, vector returns the scalar inner product, but neither argument
		is complex-conjugated:
		
		>>> np.matmul([2j, 3j], [2j, 3j])
		(-13+0j)
		
		Scalar multiplication raises an error.
		
		>>> np.matmul([1,2], 3)
		Traceback (most recent call last):
		...
		ValueError: Scalar operands are not allowed, use '*' instead
	**/
	static public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amax : ndarray or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		argmax :
		    Return the indices of the maximum values.
		
		nanmin, minimum, fmin
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding max value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmax.
		
		Don't use `amax` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``maximum(a[0], a[1])`` is faster than
		``amax(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amax(a)           # Maximum of the flattened array
		3
		>>> np.amax(a, axis=0)   # Maxima along the first axis
		array([2, 3])
		>>> np.amax(a, axis=1)   # Maxima along the second axis
		array([1, 3])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
	**/
	static public function max(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		maximum(x1, x2[, out])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		fmin, amin, nanmin
		
		Notes
		-----
		The maximum is equivalent to ``np.where(x1 >= x2, x1, x2)`` when
		neither x1 nor x2 are nans, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.maximum([2, 3, 4], [1, 5, 2])
		array([2, 5, 4])
		
		>>> np.maximum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.maximum([np.nan, 0, np.nan], [0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the scalar type of highest precision of the same kind as the input.
		
		Parameters
		----------
		t : dtype or dtype specifier
		    The input data type. This can be a `dtype` object or an object that
		    is convertible to a `dtype`.
		
		Returns
		-------
		out : dtype
		    The highest precision data type of the same kind (`dtype.kind`) as `t`.
		
		See Also
		--------
		obj2sctype, mintypecode, sctype2char
		dtype
		
		Examples
		--------
		>>> np.maximum_sctype(np.int)
		<type 'numpy.int64'>
		>>> np.maximum_sctype(np.uint8)
		<type 'numpy.uint64'>
		>>> np.maximum_sctype(np.complex)
		<type 'numpy.complex192'>
		
		>>> np.maximum_sctype(str)
		<type 'numpy.string_'>
		
		>>> np.maximum_sctype('i2')
		<type 'numpy.int64'>
		>>> np.maximum_sctype('f4')
		<type 'numpy.float96'>
	**/
	static public function maximum_sctype(t:Dynamic):Dynamic;
	/**
		Determine if two arrays can share memory
		
		The memory-bounds of a and b are computed.  If they overlap then
		this function returns True.  Otherwise, it returns False.
		
		A return of True does not necessarily mean that the two arrays
		share any element.  It just means that they *might*.
		
		Parameters
		----------
		a, b : ndarray
		
		Returns
		-------
		out : bool
		
		Examples
		--------
		>>> np.may_share_memory(np.array([1,2]), np.array([5,8,9]))
		False
	**/
	static public function may_share_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the means are computed. The default is to
		    compute the mean of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a mean is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		    See `doc.ufuncs` for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned.
		
		See Also
		--------
		average : Weighted average
		std, var, nanmean, nanstd, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the elements along the axis divided
		by the number of elements.
		
		Note that for floating-point input, the mean is computed using the
		same precision the input has.  Depending on the input data, this can
		cause the results to be inaccurate, especially for `float32` (see
		example below).  Specifying a higher-precision accumulator using the
		`dtype` keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([ 2.,  3.])
		>>> np.mean(a, axis=1)
		array([ 1.5,  3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.546875
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amin : ndarray or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		argmin :
		    Return the indices of the minimum values.
		
		nanmax, maximum, fmax
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding min value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmin.
		
		Don't use `amin` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``minimum(a[0], a[1])`` is faster than
		``amin(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amin(a)           # Minimum of the flattened array
		0
		>>> np.amin(a, axis=0)   # Minima along the first axis
		array([0, 1])
		>>> np.amin(a, axis=1)   # Minima along the second axis
		array([0, 2])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
	**/
	static public function min(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		min_scalar_type(a)
		
		For scalar ``a``, returns the data type with the smallest size
		and smallest scalar kind which can hold its value.  For non-scalar
		array ``a``, returns the vector's dtype unmodified.
		
		Floating point values are not demoted to integers,
		and complex values are not demoted to floats.
		
		Parameters
		----------
		a : scalar or array_like
		    The value whose minimal data type is to be found.
		
		Returns
		-------
		out : dtype
		    The minimal data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		See Also
		--------
		result_type, promote_types, dtype, can_cast
		
		Examples
		--------
		>>> np.min_scalar_type(10)
		dtype('uint8')
		
		>>> np.min_scalar_type(-260)
		dtype('int16')
		
		>>> np.min_scalar_type(3.1)
		dtype('float16')
		
		>>> np.min_scalar_type(1e50)
		dtype('float64')
		
		>>> np.min_scalar_type(np.arange(4,dtype='f8'))
		dtype('float64')
	**/
	static public function min_scalar_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimum(x1, x2[, out])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		fmax, amax, nanmax
		
		Notes
		-----
		The minimum is equivalent to ``np.where(x1 <= x2, x1, x2)`` when
		neither x1 nor x2 are NaNs, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.minimum([2, 3, 4], [1, 5, 2])
		array([1, 3, 2])
		
		>>> np.minimum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.minimum([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.minimum(-np.Inf, 1)
		-inf
	**/
	static public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(x1, x2[, out])
		
		Return element-wise remainder of division.
		
		Computes ``x1 - floor(x1 / x2) * x2``, the result has the same sign as
		the divisor `x2`. It is equivalent to the Python modulus operator
		``x1 % x2`` and should not be confused with the Matlab(TM) ``rem``
		function.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The remainder of the quotient ``x1/x2``, element-wise. Returns a
		    scalar if both  `x1` and `x2` are scalars.
		
		See Also
		--------
		fmod : Equivalent of the Matlab(TM) ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modf(x[, out1, out2])
		
		Return the fractional and integral parts of an array, element-wise.
		
		The fractional and integral parts are negative if the given number is
		negative.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		y1 : ndarray
		    Fractional part of `x`.
		y2 : ndarray
		    Integral part of `x`.
		
		Notes
		-----
		For integer input the return values are floats.
		
		Examples
		--------
		>>> np.modf([0, 3.5])
		(array([ 0. ,  0.5]), array([ 0.,  3.]))
		>>> np.modf(-0.5)
		(-0.5, -0)
	**/
	static public function modf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multiply(x1, x2[, out])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise. Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` * `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.multiply(2.0, 4.0)
		8.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.multiply(x1, x2)
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
	static public var nbytes : Dynamic;
	/**
		Return the number of dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.  If it is not already an ndarray, a conversion is
		    attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in `a`.  Scalars are zero-dimensional.
		
		See Also
		--------
		ndarray.ndim : equivalent method
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Examples
		--------
		>>> np.ndim([[1,2,3],[4,5,6]])
		2
		>>> np.ndim(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.ndim(1)
		0
	**/
	static public function ndim(a:Dynamic):Int;
	/**
		negative(x[, out])
		
		Numerical negative, element-wise.
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = -x`.
		
		Examples
		--------
		>>> np.negative([1.,-1.])
		array([-1.,  1.])
	**/
	static public function negative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nested_iters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	/**
		nextafter(x1, x2[, out])
		
		Return the next floating-point value after x1 towards x2, element-wise.
		
		Parameters
		----------
		x1 : array_like
		    Values to find the next representable value of.
		x2 : array_like
		    The direction where to look for the next representable value of `x1`.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		out : array_like
		    The next representable values of `x1` in the direction of `x2`.
		
		Examples
		--------
		>>> eps = np.finfo(np.float64).eps
		>>> np.nextafter(1, 2) == eps + 1
		True
		>>> np.nextafter([1, 2], [2, 1]) == [eps + 1, 2 - eps]
		array([ True,  True], dtype=bool)
	**/
	static public function nextafter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the indices of the elements that are non-zero.
		
		Returns a tuple of arrays, one for each dimension of `a`,
		containing the indices of the non-zero elements in that
		dimension. The values in `a` are always tested and returned in
		row-major, C-style order. The corresponding non-zero
		values can be obtained with::
		
		    a[nonzero(a)]
		
		To group the indices by element, rather than dimension, use::
		
		    transpose(nonzero(a))
		
		The result of this is always a 2-D array, with a row for
		each non-zero element.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Examples
		--------
		>>> x = np.eye(3)
		>>> x
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> np.nonzero(x)
		(array([0, 1, 2]), array([0, 1, 2]))
		
		>>> x[np.nonzero(x)]
		array([ 1.,  1.,  1.])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 2]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1,2,3],[4,5,6],[7,8,9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]], dtype=bool)
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the boolean array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):python.Tuple<Dynamic>;
	/**
		not_equal(x1, x2[, out])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		  Input arrays.
		out : ndarray, optional
		  A placeholder the same shape as `x1` to store the result.
		  See `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		not_equal : ndarray bool, scalar bool
		  For each element in `x1, x2`, return True if `x1` is not equal
		  to `x2` and False otherwise.
		
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True], dtype=bool)
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]], dtype=bool)
	**/
	static public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the scalar dtype or NumPy equivalent of Python type of an object.
		
		Parameters
		----------
		rep : any
		    The object of which the type is returned.
		default : any, optional
		    If given, this is returned for objects whose types can not be
		    determined. If not given, None is returned for those objects.
		
		Returns
		-------
		dtype : dtype or Python type
		    The data type of `rep`.
		
		See Also
		--------
		sctype2char, issctype, issubsctype, issubdtype, maximum_sctype
		
		Examples
		--------
		>>> np.obj2sctype(np.int32)
		<type 'numpy.int32'>
		>>> np.obj2sctype(np.array([1., 2.]))
		<type 'numpy.float64'>
		>>> np.obj2sctype(np.array([1.j]))
		<type 'numpy.complex128'>
		
		>>> np.obj2sctype(dict)
		<type 'numpy.object_'>
		>>> np.obj2sctype('string')
		<type 'numpy.string_'>
		
		>>> np.obj2sctype(1, default=list)
		<type 'list'>
	**/
	static public function obj2sctype(rep:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return an array of ones with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the same shape and type as `a`.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.ones_like(x)
		array([[1, 1, 1],
		       [1, 1, 1]])
		
		>>> y = np.arange(3, dtype=np.float)
		>>> y
		array([ 0.,  1.,  2.])
		>>> np.ones_like(y)
		array([ 1.,  1.,  1.])
	**/
	static public function ones_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Compute the outer product of two vectors.
		
		Given two vectors, ``a = [a0, a1, ..., aM]`` and
		``b = [b0, b1, ..., bN]``,
		the outer product [1]_ is::
		
		  [[a0*b0  a0*b1 ... a0*bN ]
		   [a1*b0    .
		   [ ...          .
		   [aM*b0            aM*bN ]]
		
		Parameters
		----------
		a : (M,) array_like
		    First input vector.  Input is flattened if
		    not already 1-dimensional.
		b : (N,) array_like
		    Second input vector.  Input is flattened if
		    not already 1-dimensional.
		out : (M, N) ndarray, optional
		    A location where the result is stored
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : (M, N) ndarray
		    ``out[i, j] = a[i] * b[j]``
		
		See also
		--------
		inner, einsum
		
		References
		----------
		.. [1] : G. H. Golub and C. F. van Loan, *Matrix Computations*, 3rd
		         ed., Baltimore, MD, Johns Hopkins University Press, 1996,
		         pg. 8.
		
		Examples
		--------
		Make a (*very* coarse) grid for computing a Mandelbrot set:
		
		>>> rl = np.outer(np.ones((5,)), np.linspace(-2, 2, 5))
		>>> rl
		array([[-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.]])
		>>> im = np.outer(1j*np.linspace(2, -2, 5), np.ones((5,)))
		>>> im
		array([[ 0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j],
		       [ 0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j],
		       [ 0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j]])
		>>> grid = rl + im
		>>> grid
		array([[-2.+2.j, -1.+2.j,  0.+2.j,  1.+2.j,  2.+2.j],
		       [-2.+1.j, -1.+1.j,  0.+1.j,  1.+1.j,  2.+1.j],
		       [-2.+0.j, -1.+0.j,  0.+0.j,  1.+0.j,  2.+0.j],
		       [-2.-1.j, -1.-1.j,  0.-1.j,  1.-1.j,  2.-1.j],
		       [-2.-2.j, -1.-2.j,  0.-2.j,  1.-2.j,  2.-2.j]])
		
		An example using a "vector" of letters:
		
		>>> x = np.array(['a', 'b', 'c'], dtype=object)
		>>> np.outer(x, [1, 2, 3])
		array([[a, aa, aaa],
		       [b, bb, bbb],
		       [c, cc, ccc]], dtype=object)
	**/
	static public function outer(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return a partitioned copy of an array.
		
		Creates a copy of the array with its elements rearranged in such a way that
		the value of the element in kth position is in the position it would be in
		a sorted array. All elements smaller than the kth element are moved before
		this element and all equal or greater are moved behind it. The ordering of
		the elements in the two partitions is undefined.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		kth : int or sequence of ints
		    Element index to partition by. The kth value of the element will be in
		    its final sorted position and all smaller elements will be moved before
		    it and all equal or greater elements behind it.
		    The order all elements in the partitions is undefined.
		    If provided with a sequence of kth it will partition all elements
		    indexed by kth  of them into their sorted position at once.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string.  Not all fields need be specified, but
		    unspecified fields will still be used, in the order in which they
		    come up in the dtype, to break ties.
		
		Returns
		-------
		partitioned_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.partition : Method to sort an array in-place.
		argpartition : Indirect partition.
		sort : Full sorting
		
		Notes
		-----
		The various selection algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative order. The
		available algorithms have the following properties:
		
		================= ======= ============= ============ =======
		   kind            speed   worst case    work space  stable
		================= ======= ============= ============ =======
		'introselect'        1        O(n)           0         no
		================= ======= ============= ============ =======
		
		All the partition algorithms make temporary copies of the data when
		partitioning along any but the last axis.  Consequently, partitioning
		along the last axis is faster and uses less space than partitioning
		along any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Examples
		--------
		>>> a = np.array([3, 4, 2, 1])
		>>> np.partition(a, 3)
		array([2, 1, 3, 4])
		
		>>> np.partition(a, (1, 3))
		array([1, 2, 3, 4])
	**/
	static public function partition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		power(x1, x2[, out])
		
		First array elements raised to powers from second array, element-wise.
		
		Raise each base in `x1` to the positionally-corresponding power in
		`x2`.  `x1` and `x2` must be broadcastable to the same shape.
		
		Parameters
		----------
		x1 : array_like
		    The bases.
		x2 : array_like
		    The exponents.
		
		Returns
		-------
		y : ndarray
		    The bases in `x1` raised to the exponents in `x2`.
		
		Examples
		--------
		Cube each element in a list.
		
		>>> x1 = range(6)
		>>> x1
		[0, 1, 2, 3, 4, 5]
		>>> np.power(x1, 3)
		array([  0,   1,   8,  27,  64, 125])
		
		Raise the bases to different exponents.
		
		>>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
		>>> np.power(x1, x2)
		array([  0.,   1.,   8.,  27.,  16.,   5.])
		
		The effect of broadcasting.
		
		>>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
		>>> x2
		array([[1, 2, 3, 3, 2, 1],
		       [1, 2, 3, 3, 2, 1]])
		>>> np.power(x1, x2)
		array([[ 0,  1,  8, 27, 16,  5],
		       [ 0,  1,  8, 27, 16,  5]])
	**/
	static public function power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.
		    The default (`axis` = `None`) is perform a product over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a product is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    The data-type of the returned array, as well as of the accumulator
		    in which the elements are multiplied.  By default, if `a` is of
		    integer type, `dtype` is the default platform integer. (Note: if
		    the type of `a` is unsigned, then so is `dtype`.)  Otherwise,
		    the dtype is the same as that of `a`.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the
		    output values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x) #random
		16
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == np.int
		True
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		promote_types(type1, type2)
		
		Returns the data type with the smallest size and smallest scalar
		kind to which both ``type1`` and ``type2`` may be safely cast.
		The returned data type is always in native byte order.
		
		This function is symmetric and associative.
		
		Parameters
		----------
		type1 : dtype or dtype specifier
		    First data type.
		type2 : dtype or dtype specifier
		    Second data type.
		
		Returns
		-------
		out : dtype
		    The promoted data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Starting in NumPy 1.9, promote_types function now returns a valid string
		length when given an integer or float dtype as one argument and a string
		dtype as another argument. Previously it always returned the input string
		dtype, even if it wasn't long enough to store the max integer/float value
		converted to a string.
		
		See Also
		--------
		result_type, dtype, can_cast
		
		Examples
		--------
		>>> np.promote_types('f4', 'f8')
		dtype('float64')
		
		>>> np.promote_types('i8', 'f4')
		dtype('float64')
		
		>>> np.promote_types('>i8', '<c8')
		dtype('complex128')
		
		>>> np.promote_types('i4', 'S8')
		dtype('S11')
	**/
	static public function promote_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Range of values (maximum - minimum) along an axis.
		
		The name of the function comes from the acronym for 'peak to peak'.
		
		Parameters
		----------
		a : array_like
		    Input values.
		axis : int, optional
		    Axis along which to find the peaks.  By default, flatten the
		    array.
		out : array_like
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type of the output values will be cast if necessary.
		
		Returns
		-------
		ptp : ndarray
		    A new array holding the result, unless `out` was
		    specified, in which case a reference to `out` is returned.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.ptp(x, axis=0)
		array([2, 2])
		
		>>> np.ptp(x, axis=1)
		array([1, 1])
	**/
	static public function ptp(a:Dynamic, ?axis:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Replaces specified elements of an array with given values.
		
		The indexing works on the flattened target array. `put` is roughly
		equivalent to:
		
		::
		
		    a.flat[ind] = v
		
		Parameters
		----------
		a : ndarray
		    Target array.
		ind : array_like
		    Target indices, interpreted as integers.
		v : array_like
		    Values to place in `a` at target indices. If `v` is shorter than
		    `ind` it will be repeated as necessary.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		See Also
		--------
		putmask, place
		
		Examples
		--------
		>>> a = np.arange(5)
		>>> np.put(a, [0, 2], [-44, -55])
		>>> a
		array([-44,   1, -55,   3,   4])
		
		>>> a = np.arange(5)
		>>> np.put(a, 22, -5, mode='clip')
		>>> a
		array([ 0,  1,  2,  3, -5])
	**/
	static public function put(a:Dynamic, ind:Dynamic, v:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		putmask(a, mask, values)
		
		Changes elements of an array based on conditional and input values.
		
		Sets ``a.flat[n] = values[n]`` for each n where ``mask.flat[n]==True``.
		
		If `values` is not the same size as `a` and `mask` then it will repeat.
		This gives behavior different from ``a[mask] = values``.
		
		Parameters
		----------
		a : array_like
		    Target array.
		mask : array_like
		    Boolean mask array. It has to be the same shape as `a`.
		values : array_like
		    Values to put into `a` where `mask` is True. If `values` is smaller
		    than `a` it will be repeated.
		
		See Also
		--------
		place, put, take, copyto
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> np.putmask(x, x>2, x**2)
		>>> x
		array([[ 0,  1,  2],
		       [ 9, 16, 25]])
		
		If `values` is smaller than `a` it is repeated:
		
		>>> x = np.arange(5)
		>>> np.putmask(x, x>1, [-33, -44])
		>>> x
		array([  0,   1, -33, -44, -33])
	**/
	static public function putmask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rad2deg(x[, out])
		
		Convert angles from radians to degrees.
		
		Parameters
		----------
		x : array_like
		    Angle in radians.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The corresponding angle in degrees.
		
		See Also
		--------
		deg2rad : Convert angles from degrees to radians.
		unwrap : Remove large jumps in angle by wrapping.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		rad2deg(x) is ``180 * x / pi``.
		
		Examples
		--------
		>>> np.rad2deg(np.pi/2)
		90.0
	**/
	static public function rad2deg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		radians(x[, out])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Input array in degrees.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding radian values.
		
		See Also
		--------
		deg2rad : equivalent function
		
		Examples
		--------
		Convert a degree array to radians
		
		>>> deg = np.arange(12.) * 30.
		>>> np.radians(deg)
		array([ 0.        ,  0.52359878,  1.04719755,  1.57079633,  2.0943951 ,
		        2.61799388,  3.14159265,  3.66519143,  4.1887902 ,  4.71238898,
		        5.23598776,  5.75958653])
		
		>>> out = np.zeros((deg.shape))
		>>> ret = np.radians(deg, out)
		>>> ret is out
		True
	**/
	static public function radians(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the number of dimensions of an array.
		
		If `a` is not already an array, a conversion is attempted.
		Scalars are zero dimensional.
		
		.. note::
		    This function is deprecated in NumPy 1.9 to avoid confusion with
		    `numpy.linalg.matrix_rank`. The ``ndim`` attribute or function
		    should be used instead.
		
		Parameters
		----------
		a : array_like
		    Array whose number of dimensions is desired. If `a` is not an array,
		    a conversion is attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in the array.
		
		See Also
		--------
		ndim : equivalent function
		ndarray.ndim : equivalent property
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Notes
		-----
		In the old Numeric package, `rank` was the term used for the number of
		dimensions, but in Numpy `ndim` is used instead.
		
		Examples
		--------
		>>> np.rank([1,2,3])
		1
		>>> np.rank(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.rank(1)
		0
	**/
	static public function rank(a:Dynamic):Int;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> print np.ravel(x)
		[1 2 3 4 5 6]
		
		>>> print x.reshape(-1)
		[1 2 3 4 5 6]
		
		>>> print np.ravel(x, order='F')
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print np.ravel(x.T)
		[1 4 2 5 3 6]
		>>> print np.ravel(x.T, order='A')
		[1 2 3 4 5 6]
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):python.NativeIterable<Dynamic>;
	/**
		reciprocal(x[, out])
		
		Return the reciprocal of the argument, element-wise.
		
		Calculates ``1/x``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		y : ndarray
		    Return array.
		
		Notes
		-----
		.. note::
		    This function is not designed to work with integers.
		
		For integer arguments with absolute value larger than 1 the result is
		always zero because of the way Python handles integer division.  For
		integer zero the result is an overflow.
		
		Examples
		--------
		>>> np.reciprocal(2.)
		0.5
		>>> np.reciprocal([1, 2., 3.33])
		array([ 1.       ,  0.5      ,  0.3003003])
	**/
	static public function reciprocal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(x1, x2[, out])
		
		Return element-wise remainder of division.
		
		Computes ``x1 - floor(x1 / x2) * x2``, the result has the same sign as
		the divisor `x2`. It is equivalent to the Python modulus operator
		``x1 % x2`` and should not be confused with the Matlab(TM) ``rem``
		function.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The remainder of the quotient ``x1/x2``, element-wise. Returns a
		    scalar if both  `x1` and `x2` are scalars.
		
		See Also
		--------
		fmod : Equivalent of the Matlab(TM) ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Repeat elements of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		repeats : int or array of ints
		    The number of repetitions for each element.  `repeats` is broadcasted
		    to fit the shape of the given axis.
		axis : int, optional
		    The axis along which to repeat values.  By default, use the
		    flattened input array, and return a flat output array.
		
		Returns
		-------
		repeated_array : ndarray
		    Output array which has the same shape as `a`, except along
		    the given axis.
		
		See Also
		--------
		tile : Tile an array.
		
		Examples
		--------
		>>> x = np.array([[1,2],[3,4]])
		>>> np.repeat(x, 2)
		array([1, 1, 2, 2, 3, 3, 4, 4])
		>>> np.repeat(x, 3, axis=1)
		array([[1, 1, 1, 2, 2, 2],
		       [3, 3, 3, 4, 4, 4]])
		>>> np.repeat(x, [1, 2], axis=0)
		array([[1, 2],
		       [3, 4],
		       [3, 4]])
	**/
	static public function repeat(a:Dynamic, repeats:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return an ndarray of the provided type that satisfies requirements.
		
		This function is useful to be sure that an array with the correct flags
		is returned for passing to compiled code (perhaps through ctypes).
		
		Parameters
		----------
		a : array_like
		   The object to be converted to a type-and-requirement-satisfying array.
		dtype : data-type
		   The required data-type. If None preserve the current dtype. If your
		   application requires the data to be in native byteorder, include
		   a byteorder specification as a part of the dtype specification.
		requirements : str or list of str
		   The requirements list can be any of the following
		
		   * 'F_CONTIGUOUS' ('F') - ensure a Fortran-contiguous array
		   * 'C_CONTIGUOUS' ('C') - ensure a C-contiguous array
		   * 'ALIGNED' ('A')      - ensure a data-type aligned array
		   * 'WRITEABLE' ('W')    - ensure a writable array
		   * 'OWNDATA' ('O')      - ensure an array that owns its own data
		   * 'ENSUREARRAY', ('E') - ensure a base array, instead of a subclass
		
		See Also
		--------
		asarray : Convert input to an ndarray.
		asanyarray : Convert to an ndarray, but pass through ndarray subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		ndarray.flags : Information about the memory layout of the array.
		
		Notes
		-----
		The returned array will be guaranteed to have the listed requirements
		by making a copy if needed.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> x.flags
		  C_CONTIGUOUS : True
		  F_CONTIGUOUS : False
		  OWNDATA : False
		  WRITEABLE : True
		  ALIGNED : True
		  UPDATEIFCOPY : False
		
		>>> y = np.require(x, dtype=np.float32, requirements=['A', 'O', 'W', 'F'])
		>>> y.flags
		  C_CONTIGUOUS : False
		  F_CONTIGUOUS : True
		  OWNDATA : True
		  WRITEABLE : True
		  ALIGNED : True
		  UPDATEIFCOPY : False
	**/
	static public function require(a:Dynamic, ?dtype:Dynamic, ?requirements:Dynamic):Dynamic;
	/**
		Gives a new shape to an array without changing its data.
		
		Parameters
		----------
		a : array_like
		    Array to be reshaped.
		newshape : int or tuple of ints
		    The new shape should be compatible with the original shape. If
		    an integer, then the result will be a 1-D array of that length.
		    One shape dimension can be -1. In this case, the value is inferred
		    from the length of the array and remaining dimensions.
		order : {'C', 'F', 'A'}, optional
		    Read the elements of `a` using this index order, and place the elements
		    into the reshaped array using this index order.  'C' means to
		    read / write the elements using C-like index order, with the last axis
		    index changing fastest, back to the first axis index changing slowest.
		    'F' means to read / write the elements using Fortran-like index order,
		    with the first index changing fastest, and the last index changing
		    slowest.
		    Note that the 'C' and 'F' options take no account of the memory layout
		    of the underlying array, and only refer to the order of indexing.  'A'
		    means to read / write the elements in Fortran-like index order if `a`
		    is Fortran *contiguous* in memory, C-like order otherwise.
		
		Returns
		-------
		reshaped_array : ndarray
		    This will be a new view object if possible; otherwise, it will
		    be a copy.  Note there is no guarantee of the *memory layout* (C- or
		    Fortran- contiguous) of the returned array.
		
		See Also
		--------
		ndarray.reshape : Equivalent method.
		
		Notes
		-----
		It is not always possible to change the shape of an array without
		copying the data. If you want an error to be raise if the data is copied,
		you should assign the new shape to the shape attribute of the array::
		
		 >>> a = np.zeros((10, 2))
		 # A transpose make the array non-contiguous
		 >>> b = a.T
		 # Taking a view makes it possible to modify the shape without modifying
		 # the initial object.
		 >>> c = b.view()
		 >>> c.shape = (20)
		 AttributeError: incompatible shape for a non-contiguous array
		
		The `order` keyword gives the index ordering both for *fetching* the values
		from `a`, and then *placing* the values into the output array.
		For example, let's say you have an array:
		
		>>> a = np.arange(6).reshape((3, 2))
		>>> a
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		
		You can think of reshaping as first raveling the array (using the given
		index order), then inserting the elements from the raveled array into the
		new array using the same kind of index ordering as was used for the
		raveling.
		
		>>> np.reshape(a, (2, 3)) # C-like index ordering
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(np.ravel(a), (2, 3)) # equivalent to C ravel then C reshape
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(a, (2, 3), order='F') # Fortran-like index ordering
		array([[0, 4, 3],
		       [2, 1, 5]])
		>>> np.reshape(np.ravel(a, order='F'), (2, 3), order='F')
		array([[0, 4, 3],
		       [2, 1, 5]])
		
		Examples
		--------
		>>> a = np.array([[1,2,3], [4,5,6]])
		>>> np.reshape(a, 6)
		array([1, 2, 3, 4, 5, 6])
		>>> np.reshape(a, 6, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		>>> np.reshape(a, (3,-1))       # the unspecified value is inferred to be 2
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
	**/
	static public function reshape(a:Dynamic, newshape:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return a new array with the specified shape.
		
		If the new array is larger than the original array, then the new
		array is filled with repeated copies of `a`.  Note that this behavior
		is different from a.resize(new_shape) which fills with zeros instead
		of repeated copies of `a`.
		
		Parameters
		----------
		a : array_like
		    Array to be resized.
		
		new_shape : int or tuple of int
		    Shape of resized array.
		
		Returns
		-------
		reshaped_array : ndarray
		    The new array is formed from the data in the old array, repeated
		    if necessary to fill out the required number of elements.  The
		    data are repeated in the order that they are stored in memory.
		
		See Also
		--------
		ndarray.resize : resize an array in-place.
		
		Examples
		--------
		>>> a=np.array([[0,1],[2,3]])
		>>> np.resize(a,(2,3))
		array([[0, 1, 2],
		       [3, 0, 1]])
		>>> np.resize(a,(1,4))
		array([[0, 1, 2, 3]])
		>>> np.resize(a,(2,4))
		array([[0, 1, 2, 3],
		       [0, 1, 2, 3]])
	**/
	static public function resize(a:Dynamic, new_shape:Dynamic):numpy.Ndarray;
	/**
		Restore `dot`, `vdot`, and `innerproduct` to the default non-BLAS
		implementations.
		
		Typically, the user will only need to call this when troubleshooting
		and installation problem, reproducing the conditions of a build without
		an accelerated BLAS, or when being very careful about benchmarking
		linear algebra operations.
		
		.. note:: Deprecated in Numpy 1.10
		          The cblas functions have been integrated into the multarray
		          module and restoredot now longer does anything. It will be
		          removed in Numpy 1.11.0.
		
		See Also
		--------
		alterdot : `restoredot` undoes the effects of `alterdot`.
	**/
	static public function restoredot():Dynamic;
	/**
		result_type(*arrays_and_dtypes)
		
		Returns the type that results from applying the NumPy
		type promotion rules to the arguments.
		
		Type promotion in NumPy works similarly to the rules in languages
		like C++, with some slight differences.  When both scalars and
		arrays are used, the array's type takes precedence and the actual value
		of the scalar is taken into account.
		
		For example, calculating 3*a, where a is an array of 32-bit floats,
		intuitively should result in a 32-bit float output.  If the 3 is a
		32-bit integer, the NumPy rules indicate it can't convert losslessly
		into a 32-bit float, so a 64-bit float should be the result type.
		By examining the value of the constant, '3', we see that it fits in
		an 8-bit integer, which can be cast losslessly into the 32-bit float.
		
		Parameters
		----------
		arrays_and_dtypes : list of arrays and dtypes
		    The operands of some operation whose result type is needed.
		
		Returns
		-------
		out : dtype
		    The result type.
		
		See also
		--------
		dtype, promote_types, min_scalar_type, can_cast
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The specific algorithm used is as follows.
		
		Categories are determined by first checking which of boolean,
		integer (int/uint), or floating point (float/complex) the maximum
		kind of all the arrays and the scalars are.
		
		If there are only scalars or the maximum category of the scalars
		is higher than the maximum category of the arrays,
		the data types are combined with :func:`promote_types`
		to produce the return value.
		
		Otherwise, `min_scalar_type` is called on each array, and
		the resulting data types are all combined with :func:`promote_types`
		to produce the return value.
		
		The set of int values is not a subset of the uint values for types
		with the same number of bits, something not reflected in
		:func:`min_scalar_type`, but handled as a special case in `result_type`.
		
		Examples
		--------
		>>> np.result_type(3, np.arange(7, dtype='i1'))
		dtype('int8')
		
		>>> np.result_type('i4', 'c8')
		dtype('complex128')
		
		>>> np.result_type(3.0, -2)
		dtype('float64')
	**/
	static public function result_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		right_shift(x1, x2[, out])
		
		Shift the bits of an integer to the right.
		
		Bits are shifted to the right `x2`.  Because the internal
		representation of numbers is in binary format, this operation is
		equivalent to dividing `x1` by ``2**x2``.
		
		Parameters
		----------
		x1 : array_like, int
		    Input values.
		x2 : array_like, int
		    Number of bits to remove at the right of `x1`.
		
		Returns
		-------
		out : ndarray, int
		    Return `x1` with bits shifted `x2` times to the right.
		
		See Also
		--------
		left_shift : Shift the bits of an integer to the left.
		binary_repr : Return the binary representation of the input number
		    as a string.
		
		Examples
		--------
		>>> np.binary_repr(10)
		'1010'
		>>> np.right_shift(10, 1)
		5
		>>> np.binary_repr(5)
		'101'
		
		>>> np.right_shift(10, [1,2,3])
		array([5, 2, 1])
	**/
	static public function right_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rint(x[, out])
		
		Round elements of the array to the nearest integer.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array is same shape and type as `x`.
		
		See Also
		--------
		ceil, floor, trunc
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.rint(a)
		array([-2., -2., -0.,  0.,  2.,  2.,  2.])
	**/
	static public function rint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Roll array elements along a given axis.
		
		Elements that roll beyond the last position are re-introduced at
		the first.
		
		Parameters
		----------
		a : array_like
		    Input array.
		shift : int
		    The number of places by which elements are shifted.
		axis : int, optional
		    The axis along which elements are shifted.  By default, the array
		    is flattened before shifting, after which the original
		    shape is restored.
		
		Returns
		-------
		res : ndarray
		    Output array, with the same shape as `a`.
		
		See Also
		--------
		rollaxis : Roll the specified axis backwards, until it lies in a
		           given position.
		
		Examples
		--------
		>>> x = np.arange(10)
		>>> np.roll(x, 2)
		array([8, 9, 0, 1, 2, 3, 4, 5, 6, 7])
		
		>>> x2 = np.reshape(x, (2,5))
		>>> x2
		array([[0, 1, 2, 3, 4],
		       [5, 6, 7, 8, 9]])
		>>> np.roll(x2, 1)
		array([[9, 0, 1, 2, 3],
		       [4, 5, 6, 7, 8]])
		>>> np.roll(x2, 1, axis=0)
		array([[5, 6, 7, 8, 9],
		       [0, 1, 2, 3, 4]])
		>>> np.roll(x2, 1, axis=1)
		array([[4, 0, 1, 2, 3],
		       [9, 5, 6, 7, 8]])
	**/
	static public function roll(a:Dynamic, shift:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Roll the specified axis backwards, until it lies in a given position.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int
		    The axis to roll backwards.  The positions of the other axes do not
		    change relative to one another.
		start : int, optional
		    The axis is rolled until it lies before this position.  The default,
		    0, results in a "complete" roll.
		
		Returns
		-------
		res : ndarray
		    For Numpy >= 1.10 a view of `a` is always returned. For earlier
		    Numpy versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		See Also
		--------
		roll : Roll the elements of an array by a number of positions along a
		    given axis.
		
		Examples
		--------
		>>> a = np.ones((3,4,5,6))
		>>> np.rollaxis(a, 3, 1).shape
		(3, 6, 4, 5)
		>>> np.rollaxis(a, 2).shape
		(5, 3, 4, 6)
		>>> np.rollaxis(a, 1, 4).shape
		(3, 5, 6, 4)
	**/
	static public function rollaxis(a:Dynamic, axis:Dynamic, ?start:Dynamic):numpy.Ndarray;
	/**
		Round an array to the given number of decimals.
		
		Refer to `around` for full documentation.
		
		See Also
		--------
		around : equivalent function
	**/
	static public function round(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Round an array to the given number of decimals.
		
		Refer to `around` for full documentation.
		
		See Also
		--------
		around : equivalent function
	**/
	static public function round_(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the string representation of a scalar dtype.
		
		Parameters
		----------
		sctype : scalar dtype or object
		    If a scalar dtype, the corresponding string character is
		    returned. If an object, `sctype2char` tries to infer its scalar type
		    and then return the corresponding string character.
		
		Returns
		-------
		typechar : str
		    The string character corresponding to the scalar type.
		
		Raises
		------
		ValueError
		    If `sctype` is an object for which the type can not be inferred.
		
		See Also
		--------
		obj2sctype, issctype, issubsctype, mintypecode
		
		Examples
		--------
		>>> for sctype in [np.int32, np.float, np.complex, np.string_, np.ndarray]:
		...     print np.sctype2char(sctype)
		l
		d
		D
		S
		O
		
		>>> x = np.array([1., 2-1.j])
		>>> np.sctype2char(x)
		'D'
		>>> np.sctype2char(list)
		'O'
	**/
	static public function sctype2char(sctype:Dynamic):String;
	static public var sctypeDict : Dynamic;
	static public var sctypeNA : Dynamic;
	static public var sctypes : Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `a` such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `a` would be preserved.
		
		Parameters
		----------
		a : 1-D array_like
		    Input array. If `sorter` is None, then it must be sorted in
		    ascending order, otherwise `sorter` must be an array of indices
		    that sort it.
		v : array_like
		    Values to insert into `a`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `a`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		indices : array of ints
		    Array of insertion points with the same shape as `v`.
		
		See Also
		--------
		sort : Return a sorted copy of an array.
		histogram : Produce histogram from 1-D data.
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		As of Numpy 1.4.0 `searchsorted` works with real/complex arrays containing
		`nan` values. The enhanced sort order is documented in `sort`.
		
		Examples
		--------
		>>> np.searchsorted([1,2,3,4,5], 3)
		2
		>>> np.searchsorted([1,2,3,4,5], 3, side='right')
		3
		>>> np.searchsorted([1,2,3,4,5], [-10, 10, 2, 3])
		array([0, 5, 1, 2])
	**/
	static public function searchsorted(a:Dynamic, v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		set_numeric_ops(op1=func1, op2=func2, ...)
		
		Set numerical operators for array objects.
		
		Parameters
		----------
		op1, op2, ... : callable
		    Each ``op = func`` pair describes an operator to be replaced.
		    For example, ``add = lambda x, y: np.add(x, y) % 5`` would replace
		    addition by modulus 5 addition.
		
		Returns
		-------
		saved_ops : list of callables
		    A list of all operators, stored before making replacements.
		
		Notes
		-----
		.. WARNING::
		   Use with care!  Incorrect usage may lead to memory errors.
		
		A function replacing an operator cannot make use of that operator.
		For example, when replacing add, you may not use ``+``.  Instead,
		directly call ufuncs.
		
		Examples
		--------
		>>> def add_mod5(x, y):
		...     return np.add(x, y) % 5
		...
		>>> old_funcs = np.set_numeric_ops(add=add_mod5)
		
		>>> x = np.arange(12).reshape((3, 4))
		>>> x + x
		array([[0, 2, 4, 1],
		       [3, 0, 2, 4],
		       [1, 3, 0, 2]])
		
		>>> ignore = np.set_numeric_ops(**old_funcs) # restore operators
	**/
	static public function set_numeric_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set printing options.
		
		These options determine the way floating point numbers, arrays and
		other NumPy objects are displayed.
		
		Parameters
		----------
		precision : int, optional
		    Number of digits of precision for floating point output (default 8).
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr (default 1000).
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension (default 3).
		linewidth : int, optional
		    The number of characters per line for the purpose of inserting
		    line breaks (default 75).
		suppress : bool, optional
		    Whether or not suppress printing of small floating point values
		    using scientific notation (default False).
		nanstr : str, optional
		    String representation of floating point not-a-number (default nan).
		infstr : str, optional
		    String representation of floating point infinity (default inf).
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are::
		
		        - 'bool'
		        - 'int'
		        - 'timedelta' : a `numpy.timedelta64`
		        - 'datetime' : a `numpy.datetime64`
		        - 'float'
		        - 'longfloat' : 128-bit floats
		        - 'complexfloat'
		        - 'longcomplexfloat' : composed of two 128-bit floats
		        - 'numpy_str' : types `numpy.string_` and `numpy.unicode_`
		        - 'str' : all other strings
		
		    Other keys that can be used to set a group of types at once are::
		
		        - 'all' : sets all types
		        - 'int_kind' : sets 'int'
		        - 'float_kind' : sets 'float' and 'longfloat'
		        - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		        - 'str_kind' : sets 'str' and 'numpystr'
		
		See Also
		--------
		get_printoptions, set_string_function, array2string
		
		Notes
		-----
		`formatter` is always reset with a call to `set_printoptions`.
		
		Examples
		--------
		Floating point precision can be set:
		
		>>> np.set_printoptions(precision=4)
		>>> print np.array([1.123456789])
		[ 1.1235]
		
		Long arrays can be summarised:
		
		>>> np.set_printoptions(threshold=5)
		>>> print np.arange(10)
		[0 1 2 ..., 7 8 9]
		
		Small results can be suppressed:
		
		>>> eps = np.finfo(float).eps
		>>> x = np.arange(4.)
		>>> x**2 - (x + eps)**2
		array([ -4.9304e-32,  -4.4409e-16,   0.0000e+00,   0.0000e+00])
		>>> np.set_printoptions(suppress=True)
		>>> x**2 - (x + eps)**2
		array([-0., -0.,  0.,  0.])
		
		A custom formatter can be used to display array elements as desired:
		
		>>> np.set_printoptions(formatter={'all':lambda x: 'int: '+str(-x)})
		>>> x = np.arange(3)
		>>> x
		array([int: 0, int: -1, int: -2])
		>>> np.set_printoptions()  # formatter gets reset
		>>> x
		array([0, 1, 2])
		
		To put back the default options, you can use:
		
		>>> np.set_printoptions(edgeitems=3,infstr='inf',
		... linewidth=75, nanstr='nan', precision=8,
		... suppress=False, threshold=1000, formatter=None)
	**/
	static public function set_printoptions(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?suppress:Dynamic, ?nanstr:Dynamic, ?infstr:Dynamic, ?formatter:Dynamic):Dynamic;
	/**
		Set a Python function to be used when pretty printing arrays.
		
		Parameters
		----------
		f : function or None
		    Function to be used to pretty print arrays. The function should expect
		    a single array argument and return a string of the representation of
		    the array. If None, the function is reset to the default NumPy function
		    to print arrays.
		repr : bool, optional
		    If True (default), the function for pretty printing (``__repr__``)
		    is set, if False the function that returns the default string
		    representation (``__str__``) is set.
		
		See Also
		--------
		set_printoptions, get_printoptions
		
		Examples
		--------
		>>> def pprint(arr):
		...     return 'HA! - What are you going to do now?'
		...
		>>> np.set_string_function(pprint)
		>>> a = np.arange(10)
		>>> a
		HA! - What are you going to do now?
		>>> print a
		[0 1 2 3 4 5 6 7 8 9]
		
		We can reset the function to the default:
		
		>>> np.set_string_function(None)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		`repr` affects either pretty printing or normal string representation.
		Note that ``__repr__`` is still affected by setting ``__str__``
		because the width of each array element in the returned string becomes
		equal to the length of the result of ``__str__()``.
		
		>>> x = np.arange(4)
		>>> np.set_string_function(lambda x:'random', repr=False)
		>>> x.__str__()
		'random'
		>>> x.__repr__()
		'array([     0,      1,      2,      3])'
	**/
	static public function set_string_function(f:Dynamic, ?repr:Dynamic):Dynamic;
	/**
		Set the size of the buffer used in ufuncs.
		
		Parameters
		----------
		size : int
		    Size of buffer.
	**/
	static public function setbufsize(size:Dynamic):Dynamic;
	/**
		Set how floating-point errors are handled.
		
		Note that operations on integer scalar types (such as `int16`) are
		handled like floating point, and are affected by these settings.
		
		Parameters
		----------
		all : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Set treatment for all types of floating-point errors at once:
		
		    - ignore: Take no action when the exception occurs.
		    - warn: Print a `RuntimeWarning` (via the Python `warnings` module).
		    - raise: Raise a `FloatingPointError`.
		    - call: Call a function specified using the `seterrcall` function.
		    - print: Print a warning directly to ``stdout``.
		    - log: Record error in a Log object specified by `seterrcall`.
		
		    The default is not to change the current behavior.
		divide : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for division by zero.
		over : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for floating-point overflow.
		under : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for floating-point underflow.
		invalid : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for invalid floating-point operation.
		
		Returns
		-------
		old_settings : dict
		    Dictionary containing the old settings.
		
		See also
		--------
		seterrcall : Set a callback function for the 'call' mode.
		geterr, geterrcall, errstate
		
		Notes
		-----
		The floating-point exceptions are defined in the IEEE 754 standard [1]:
		
		- Division by zero: infinite result obtained from finite numbers.
		- Overflow: result too large to be expressed.
		- Underflow: result so close to zero that some precision
		  was lost.
		- Invalid operation: result is not an expressible number, typically
		  indicates that a NaN was produced.
		
		.. [1] http://en.wikipedia.org/wiki/IEEE_754
		
		Examples
		--------
		>>> old_settings = np.seterr(all='ignore')  #seterr to known value
		>>> np.seterr(over='raise')
		{'over': 'ignore', 'divide': 'ignore', 'invalid': 'ignore',
		 'under': 'ignore'}
		>>> np.seterr(**old_settings)  # reset to default
		{'over': 'raise', 'divide': 'ignore', 'invalid': 'ignore', 'under': 'ignore'}
		
		>>> np.int16(32000) * np.int16(3)
		30464
		>>> old_settings = np.seterr(all='warn', over='raise')
		>>> np.int16(32000) * np.int16(3)
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		FloatingPointError: overflow encountered in short_scalars
		
		>>> old_settings = np.seterr(all='print')
		>>> np.geterr()
		{'over': 'print', 'divide': 'print', 'invalid': 'print', 'under': 'print'}
		>>> np.int16(32000) * np.int16(3)
		Warning: overflow encountered in short_scalars
		30464
	**/
	static public function seterr(?all:Dynamic, ?divide:Dynamic, ?over:Dynamic, ?under:Dynamic, ?invalid:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Set the floating-point error callback function or log object.
		
		There are two ways to capture floating-point error messages.  The first
		is to set the error-handler to 'call', using `seterr`.  Then, set
		the function to call using this function.
		
		The second is to set the error-handler to 'log', using `seterr`.
		Floating-point errors then trigger a call to the 'write' method of
		the provided object.
		
		Parameters
		----------
		func : callable f(err, flag) or object with write method
		    Function to call upon floating-point errors ('call'-mode) or
		    object whose 'write' method is used to log such message ('log'-mode).
		
		    The call function takes two arguments. The first is a string describing the
		    type of error (such as "divide by zero", "overflow", "underflow", or "invalid value"),
		    and the second is the status flag.  The flag is a byte, whose four
		    least-significant bits indicate the type of error, one of "divide", "over",
		    "under", "invalid"::
		
		      [0 0 0 0 divide over under invalid]
		
		    In other words, ``flags = divide + 2*over + 4*under + 8*invalid``.
		
		    If an object is provided, its write method should take one argument,
		    a string.
		
		Returns
		-------
		h : callable, log instance or None
		    The old error handler.
		
		See Also
		--------
		seterr, geterr, geterrcall
		
		Examples
		--------
		Callback upon error:
		
		>>> def err_handler(type, flag):
		...     print "Floating point error (%s), with flag %s" % (type, flag)
		...
		
		>>> saved_handler = np.seterrcall(err_handler)
		>>> save_err = np.seterr(all='call')
		
		>>> np.array([1, 2, 3]) / 0.0
		Floating point error (divide by zero), with flag 1
		array([ Inf,  Inf,  Inf])
		
		>>> np.seterrcall(saved_handler)
		<function err_handler at 0x...>
		>>> np.seterr(**save_err)
		{'over': 'call', 'divide': 'call', 'invalid': 'call', 'under': 'call'}
		
		Log error message:
		
		>>> class Log(object):
		...     def write(self, msg):
		...         print "LOG: %s" % msg
		...
		
		>>> log = Log()
		>>> saved_handler = np.seterrcall(log)
		>>> save_err = np.seterr(all='log')
		
		>>> np.array([1, 2, 3]) / 0.0
		LOG: Warning: divide by zero encountered in divide
		<BLANKLINE>
		array([ Inf,  Inf,  Inf])
		
		>>> np.seterrcall(saved_handler)
		<__main__.Log object at 0x...>
		>>> np.seterr(**save_err)
		{'over': 'log', 'divide': 'log', 'invalid': 'log', 'under': 'log'}
	**/
	static public function seterrcall(func:Dynamic):Dynamic;
	/**
		seterrobj(errobj)
		
		Set the object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in Numpy. `seterrobj` is used internally by the other
		functions that set error handling behavior (`seterr`, `seterrcall`).
		
		Parameters
		----------
		errobj : list
		    The error object, a list containing three elements:
		    [internal numpy buffer size, error mask, error callback function].
		
		    The error mask is a single integer that holds the treatment information
		    on all four floating point errors. The information for each error type
		    is contained in three bits of the integer. If we print it in base 8, we
		    can see what treatment is set for "invalid", "under", "over", and
		    "divide" (in that order). The printed string can be interpreted with
		
		    * 0 : 'ignore'
		    * 1 : 'warn'
		    * 2 : 'raise'
		    * 3 : 'call'
		    * 4 : 'print'
		    * 5 : 'log'
		
		See Also
		--------
		geterrobj, seterr, geterr, seterrcall, geterrcall
		getbufsize, setbufsize
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> old_errobj = np.geterrobj()  # first get the defaults
		>>> old_errobj
		[10000, 0, None]
		
		>>> def err_handler(type, flag):
		...     print "Floating point error (%s), with flag %s" % (type, flag)
		...
		>>> new_errobj = [20000, 12, err_handler]
		>>> np.seterrobj(new_errobj)
		>>> np.base_repr(12, 8)  # int for divide=4 ('print') and over=1 ('warn')
		'14'
		>>> np.geterr()
		{'over': 'warn', 'divide': 'print', 'invalid': 'ignore', 'under': 'ignore'}
		>>> np.geterrcall() is err_handler
		True
	**/
	static public function seterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		sign(x[, out])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.
		
		Parameters
		----------
		x : array_like
		  Input values.
		
		Returns
		-------
		y : ndarray
		  The sign of `x`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
	**/
	static public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signbit(x[, out])
		
		Returns element-wise True where signbit is set (less than zero).
		
		Parameters
		----------
		x : array_like
		    The input value(s).
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output.  See `doc.ufuncs`.
		
		Returns
		-------
		result : ndarray of bool
		    Output array, or reference to `out` if that was supplied.
		
		Examples
		--------
		>>> np.signbit(-1.2)
		True
		>>> np.signbit(np.array([1, -2.3, 2.1]))
		array([False,  True, False], dtype=bool)
	**/
	static public function signbit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh(x[, out])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972, pg. 83.
		
		Examples
		--------
		>>> np.sinh(0)
		0.0
		>>> np.sinh(np.pi*1j/2)
		1j
		>>> np.sinh(np.pi*1j) # (exact value is 0)
		1.2246063538223773e-016j
		>>> # Discrepancy due to vagaries of floating point arithmetic.
		
		>>> # Example of providing the optional output parameter
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the number of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which the elements are counted.  By default, give
		    the total number of elements.
		
		Returns
		-------
		element_count : int
		    Number of elements along the specified axis.
		
		See Also
		--------
		shape : dimensions of array
		ndarray.shape : dimensions of array
		ndarray.size : number of elements in array
		
		Examples
		--------
		>>> a = np.array([[1,2,3],[4,5,6]])
		>>> np.size(a)
		6
		>>> np.size(a,1)
		3
		>>> np.size(a,0)
		2
	**/
	static public function size(a:Dynamic, ?axis:Dynamic):Int;
	/**
		Check whether some values are true.
		
		Refer to `any` for full documentation.
		
		See Also
		--------
		any : equivalent function
	**/
	static public function sometrue(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return a sorted copy of an array.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.sort : Method to sort an array in-place.
		argsort : Indirect sort.
		lexsort : Indirect stable sort on multiple keys.
		searchsorted : Find elements in a sorted array.
		partition : Partial sort.
		
		Notes
		-----
		The various sorting algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative
		order. The three available algorithms have the following
		properties:
		
		=========== ======= ============= ============ =======
		   kind      speed   worst case    work space  stable
		=========== ======= ============= ============ =======
		'quicksort'    1     O(n^2)            0          no
		'mergesort'    2     O(n*log(n))      ~n/2        yes
		'heapsort'     3     O(n*log(n))       0          no
		=========== ======= ============= ============ =======
		
		All the sort algorithms make temporary copies of the data when
		sorting along any but the last axis.  Consequently, sorting along
		the last axis is faster and uses less space than sorting along
		any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Previous to numpy 1.4.0 sorting real and complex arrays containing nan
		values led to undefined behaviour. In numpy versions >= 1.4.0 nan
		values are sorted to the end. The extended sort order is:
		
		  * Real: [R, nan]
		  * Complex: [R + Rj, R + nanj, nan + Rj, nan + nanj]
		
		where R is a non-nan real value. Complex values with the same nan
		placements are sorted according to the non-nan part if it exists.
		Non-nan values are sorted as before.
		
		Examples
		--------
		>>> a = np.array([[1,4],[3,1]])
		>>> np.sort(a)                # sort along the last axis
		array([[1, 4],
		       [1, 3]])
		>>> np.sort(a, axis=None)     # sort the flattened array
		array([1, 1, 3, 4])
		>>> np.sort(a, axis=0)        # sort along the first axis
		array([[1, 1],
		       [3, 4]])
		
		Use the `order` keyword to specify a field to use when sorting a
		structured array:
		
		>>> dtype = [('name', 'S10'), ('height', float), ('age', int)]
		>>> values = [('Arthur', 1.8, 41), ('Lancelot', 1.9, 38),
		...           ('Galahad', 1.7, 38)]
		>>> a = np.array(values, dtype=dtype)       # create a structured array
		>>> np.sort(a, order='height')                        # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Arthur', 1.8, 41),
		       ('Lancelot', 1.8999999999999999, 38)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
		
		Sort by age, then height if ages are equal:
		
		>>> np.sort(a, order=['age', 'height'])               # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Lancelot', 1.8999999999999999, 38),
		       ('Arthur', 1.8, 41)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		spacing(x[, out])
		
		Return the distance between x and the nearest adjacent number.
		
		Parameters
		----------
		x1 : array_like
		    Values to find the spacing of.
		
		Returns
		-------
		out : array_like
		    The spacing of values of `x1`.
		
		Notes
		-----
		It can be considered as a generalization of EPS:
		``spacing(np.float64(1)) == np.finfo(np.float64).eps``, and there
		should not be any representable number between ``x + spacing(x)`` and
		x for any finite x.
		
		Spacing of +- inf and NaN is NaN.
		
		Examples
		--------
		>>> np.spacing(1) == np.finfo(np.float64).eps
		True
	**/
	static public function spacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		square(x[, out])
		
		Return the element-wise square of the input.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		out : ndarray
		    Element-wise `x*x`, of the same shape and dtype as `x`.
		    Returns scalar if `x` is a scalar.
		
		See Also
		--------
		numpy.linalg.matrix_power
		sqrt
		power
		
		Examples
		--------
		>>> np.square([-1j, 1])
		array([-1.-0.j,  1.+0.j])
	**/
	static public function square(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove single-dimensional entries from the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the single-dimensional entries in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : ndarray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`.
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=(2,)).shape
		(1, 3)
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Join a sequence of arrays along a new axis.
		
		The `axis` parameter specifies the index of the new axis in the dimensions
		of the result. For example, if ``axis=0`` it will be the first dimension
		and if ``axis=-1`` it will be the last dimension.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		arrays : sequence of array_like
		    Each array must have the same shape.
		axis : int, optional
		    The axis in the result array along which the input arrays are stacked.
		
		Returns
		-------
		stacked : ndarray
		    The stacked array has one more dimension than the input arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		split : Split array into a list of multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> arrays = [np.random.randn(3, 4) for _ in range(10)]
		>>> np.stack(arrays, axis=0).shape
		(10, 3, 4)
		
		>>> np.stack(arrays, axis=1).shape
		(3, 10, 4)
		
		>>> np.stack(arrays, axis=2).shape
		(3, 4, 10)
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.stack((a, b))
		array([[1, 2, 3],
		       [2, 3, 4]])
		
		>>> np.stack((a, b), axis=-1)
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function stack(arrays:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the standard deviation along the specified axis.
		
		Returns the standard deviation, a measure of the spread of a distribution,
		of the array elements. The standard deviation is computed for the
		flattened array by default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Calculate the standard deviation of these values.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the standard deviation is computed. The
		    default is to compute the standard deviation of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a standard deviation is performed over
		    multiple axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    Type to use in computing the standard deviation. For arrays of
		    integer type the default is float64, for arrays of float types it is
		    the same as the array type.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type (of the calculated
		    values) will be cast if necessary.
		ddof : int, optional
		    Means Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		    By default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		standard_deviation : ndarray, see dtype parameter above.
		    If `out` is None, return a new array containing the standard deviation,
		    otherwise return a reference to the output array.
		
		See Also
		--------
		var, mean, nanmean, nanstd, nanvar
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		The standard deviation is the square root of the average of the squared
		deviations from the mean, i.e., ``std = sqrt(mean(abs(x - x.mean())**2))``.
		
		The average squared deviation is normally calculated as
		``x.sum() / N``, where ``N = len(x)``.  If, however, `ddof` is specified,
		the divisor ``N - ddof`` is used instead. In standard statistical
		practice, ``ddof=1`` provides an unbiased estimator of the variance
		of the infinite population. ``ddof=0`` provides a maximum likelihood
		estimate of the variance for normally distributed variables. The
		standard deviation computed in this function is the square root of
		the estimated variance, so even with ``ddof=1``, it will not be an
		unbiased estimate of the standard deviation per se.
		
		Note that, for complex numbers, `std` takes the absolute
		value before squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the *std* is computed using the same
		precision the input has. Depending on the input data, this can cause
		the results to be inaccurate, especially for float32 (see example below).
		Specifying a higher-accuracy accumulator using the `dtype` keyword can
		alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.std(a)
		1.1180339887498949
		>>> np.std(a, axis=0)
		array([ 1.,  1.])
		>>> np.std(a, axis=1)
		array([ 0.5,  0.5])
		
		In single precision, std() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.std(a)
		0.45000005
		
		Computing the standard deviation in float64 is more accurate:
		
		>>> np.std(a, dtype=np.float64)
		0.44999999925494177
	**/
	static public function std(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		subtract(x1, x2[, out])
		
		Subtract arguments, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be subtracted from each other.
		
		Returns
		-------
		y : ndarray
		    The difference of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to ``x1 - x2`` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.subtract(1.0, 4.0)
		-3.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.subtract(x1, x2)
		array([[ 0.,  0.,  0.],
		       [ 3.,  3.,  3.],
		       [ 6.,  6.,  6.]])
	**/
	static public function subtract(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.
		    The default (`axis` = `None`) is perform a sum over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a sum is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which
		    the elements are summed.  By default, the dtype of `a` is used.
		    An exception is when `a` has an integer type with less precision
		    than the default platform integer.  In that case, the default
		    platform integer is used instead.
		out : ndarray, optional
		    Array into which the output is placed.  By default, a new array is
		    created.  If `out` is given, it must be of the appropriate shape
		    (the shape of `a` with `axis` removed, i.e.,
		    ``numpy.delete(a.shape, axis)``).  Its type is preserved. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Interchange two axes of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis1 : int
		    First axis.
		axis2 : int
		    Second axis.
		
		Returns
		-------
		a_swapped : ndarray
		    For Numpy >= 1.10, if `a` is an ndarray, then a view of `a` is
		    returned; otherwise a new array is created. For earlier Numpy
		    versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> np.swapaxes(x,0,1)
		array([[1],
		       [2],
		       [3]])
		
		>>> x = np.array([[[0,1],[2,3]],[[4,5],[6,7]]])
		>>> x
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		
		>>> np.swapaxes(x,0,2)
		array([[[0, 4],
		        [2, 6]],
		       [[1, 5],
		        [3, 7]]])
	**/
	static public function swapaxes(a:Dynamic, axis1:Dynamic, axis2:Dynamic):numpy.Ndarray;
	/**
		Take elements from an array along an axis.
		
		This function does the same thing as "fancy" indexing (indexing arrays
		using arrays); however, it can be easier to use if you need elements
		along a given axis.
		
		Parameters
		----------
		a : array_like
		    The source array.
		indices : array_like
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		subarray : ndarray
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		tan(x[, out])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		  Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		  The corresponding tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> from math import pi
		>>> np.tan(np.array([-pi,pi/2,pi]))
		array([  1.22460635e-16,   1.63317787e+16,  -1.22460635e-16])
		>>>
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh(x[, out])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       http://www.math.sfu.ca/~cbm/aands/
		
		.. [2] Wikipedia, "Hyperbolic function",
		       http://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute tensor dot product along specified axes for arrays >= 1-D.
		
		Given two tensors (arrays of dimension greater than or equal to one),
		`a` and `b`, and an array_like object containing two array_like
		objects, ``(a_axes, b_axes)``, sum the products of `a`'s and `b`'s
		elements (components) over the axes specified by ``a_axes`` and
		``b_axes``. The third argument can be a single non-negative
		integer_like scalar, ``N``; if it is such, then the last ``N``
		dimensions of `a` and the first ``N`` dimensions of `b` are summed
		over.
		
		Parameters
		----------
		a, b : array_like, len(shape) >= 1
		    Tensors to "dot".
		
		axes : int or (2,) array_like
		    * integer_like
		      If an int N, sum over the last N axes of `a` and the first N axes
		      of `b` in order. The sizes of the corresponding axes must match.
		    * (2,) array_like
		      Or, a list of axes to be summed over, first sequence applying to `a`,
		      second to `b`. Both elements array_like must be of the same length.
		
		See Also
		--------
		dot, einsum
		
		Notes
		-----
		Three common use cases are:
		    ``axes = 0`` : tensor product $a\otimes b$
		    ``axes = 1`` : tensor dot product $a\cdot b$
		    ``axes = 2`` : (default) tensor double contraction $a:b$
		
		When `axes` is integer_like, the sequence for evaluation will be: first
		the -Nth axis in `a` and 0th axis in `b`, and the -1th axis in `a` and
		Nth axis in `b` last.
		
		When there is more than one axis to sum over - and they are not the last
		(first) axes of `a` (`b`) - the argument `axes` should consist of
		two sequences of the same length, with the first axis to sum over given
		first in both sequences, the second axis second, and so forth.
		
		Examples
		--------
		A "traditional" example:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> c = np.tensordot(a,b, axes=([1,0],[0,1]))
		>>> c.shape
		(5, 2)
		>>> c
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> # A slower but equivalent way of computing the same...
		>>> d = np.zeros((5,2))
		>>> for i in range(5):
		...   for j in range(2):
		...     for k in range(3):
		...       for n in range(4):
		...         d[i,j] += a[k,n,i] * b[n,k,j]
		>>> c == d
		array([[ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True]], dtype=bool)
		
		An extended example taking advantage of the overloading of + and \*:
		
		>>> a = np.array(range(1, 9))
		>>> a.shape = (2, 2, 2)
		>>> A = np.array(('a', 'b', 'c', 'd'), dtype=object)
		>>> A.shape = (2, 2)
		>>> a; A
		array([[[1, 2],
		        [3, 4]],
		       [[5, 6],
		        [7, 8]]])
		array([[a, b],
		       [c, d]], dtype=object)
		
		>>> np.tensordot(a, A) # third argument default is 2 for double-contraction
		array([abbcccdddd, aaaaabbbbbbcccccccdddddddd], dtype=object)
		
		>>> np.tensordot(a, A, 1)
		array([[[acc, bdd],
		        [aaacccc, bbbdddd]],
		       [[aaaaacccccc, bbbbbdddddd],
		        [aaaaaaacccccccc, bbbbbbbdddddddd]]], dtype=object)
		
		>>> np.tensordot(a, A, 0) # tensor product (result too long to incl.)
		array([[[[[a, b],
		          [c, d]],
		          ...
		
		>>> np.tensordot(a, A, (0, 1))
		array([[[abbbbb, cddddd],
		        [aabbbbbb, ccdddddd]],
		       [[aaabbbbbbb, cccddddddd],
		        [aaaabbbbbbbb, ccccdddddddd]]], dtype=object)
		
		>>> np.tensordot(a, A, (2, 1))
		array([[[abb, cdd],
		        [aaabbbb, cccdddd]],
		       [[aaaaabbbbbb, cccccdddddd],
		        [aaaaaaabbbbbbbb, cccccccdddddddd]]], dtype=object)
		
		>>> np.tensordot(a, A, ((0, 1), (0, 1)))
		array([abbbcccccddddddd, aabbbbccccccdddddddd], dtype=object)
		
		>>> np.tensordot(a, A, ((2, 1), (1, 0)))
		array([acccbbdddd, aaaaacccccccbbbbbbdddddddd], dtype=object)
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		Return the sum along diagonals of the array.
		
		If `a` is 2-D, the sum along its diagonal with the given offset
		is returned, i.e., the sum of elements ``a[i,i+offset]`` for all i.
		
		If `a` has more than two dimensions, then the axes specified by axis1 and
		axis2 are used to determine the 2-D sub-arrays whose traces are returned.
		The shape of the resulting array is the same as that of `a` with `axis1`
		and `axis2` removed.
		
		Parameters
		----------
		a : array_like
		    Input array, from which the diagonals are taken.
		offset : int, optional
		    Offset of the diagonal from the main diagonal. Can be both positive
		    and negative. Defaults to 0.
		axis1, axis2 : int, optional
		    Axes to be used as the first and second axis of the 2-D sub-arrays
		    from which the diagonals should be taken. Defaults are the first two
		    axes of `a`.
		dtype : dtype, optional
		    Determines the data-type of the returned array and of the accumulator
		    where the elements are summed. If dtype has the value None and `a` is
		    of integer type of precision less than the default integer
		    precision, then the default integer precision is used. Otherwise,
		    the precision is the same as that of `a`.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and
		    it must be of the right shape to hold the output.
		
		Returns
		-------
		sum_along_diagonals : ndarray
		    If `a` is 2-D, the sum along the diagonal is returned.  If `a` has
		    larger dimensions, then an array of sums along diagonals is returned.
		
		See Also
		--------
		diag, diagonal, diagflat
		
		Examples
		--------
		>>> np.trace(np.eye(3))
		3.0
		>>> a = np.arange(8).reshape((2,2,2))
		>>> np.trace(a)
		array([6, 8])
		
		>>> a = np.arange(24).reshape((2,2,2,3))
		>>> np.trace(a).shape
		(2, 3)
	**/
	static public function trace(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Permute the dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : list of ints, optional
		    By default, reverse the dimensions, otherwise permute the axes
		    according to the values given.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		rollaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		true_divide(x1, x2[, out])
		
		Returns a true division of the inputs, element-wise.
		
		Instead of the Python traditional 'floor division', this returns a true
		division.  True division adjusts the output type to present the best
		answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		
		Returns
		-------
		out : ndarray
		    Result is scalar if both inputs are scalar, ndarray otherwise.
		
		Notes
		-----
		The floor division operator ``//`` was added in Python 2.2 making
		``//`` and ``/`` equivalent operators.  The default floor division
		operation of ``/`` can be replaced by true division with ``from
		__future__ import division``.
		
		In Python 3.0, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([0, 0, 0, 0, 1])
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		>>> from __future__ import division
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		>>> x//4
		array([0, 0, 0, 0, 1])
	**/
	static public function true_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trunc(x[, out])
		
		Return the truncated value of the input, element-wise.
		
		The truncated value of the scalar `x` is the nearest integer `i` which
		is closer to zero than `x` is. In short, the fractional part of the
		signed number `x` is discarded.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The truncated value of each element in `x`.
		
		See Also
		--------
		ceil, floor, rint
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.trunc(a)
		array([-1., -1., -0.,  0.,  1.,  1.,  2.])
	**/
	static public function trunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var typeDict : Dynamic;
	static public var typeNA : Dynamic;
	static public var typecodes : Dynamic;
	/**
		Compute the variance along the specified axis.
		
		Returns the variance of the array elements, a measure of the spread of a
		distribution.  The variance is computed for the flattened array by
		default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose variance is desired.  If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the variance is computed.  The default is to
		    compute the variance of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a variance is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float32`; for arrays of float types it is the same as
		    the array type.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output, but the type is cast if
		    necessary.
		ddof : int, optional
		    "Delta Degrees of Freedom": the divisor used in the calculation is
		    ``N - ddof``, where ``N`` represents the number of elements. By
		    default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If ``out=None``, returns a new array containing the variance;
		    otherwise, a reference to the output array is returned.
		
		See Also
		--------
		std , mean, nanmean, nanstd, nanvar
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(abs(x - x.mean())**2)``.
		
		The mean is normally calculated as ``x.sum() / N``, where ``N = len(x)``.
		If, however, `ddof` is specified, the divisor ``N - ddof`` is used
		instead.  In standard statistical practice, ``ddof=1`` provides an
		unbiased estimator of the variance of a hypothetical infinite population.
		``ddof=0`` provides a maximum likelihood estimate of the variance for
		normally distributed variables.
		
		Note that for complex numbers, the absolute value is taken before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the variance is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32` (see example
		below).  Specifying a higher-accuracy accumulator using the ``dtype``
		keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.var(a)
		1.25
		>>> np.var(a, axis=0)
		array([ 1.,  1.])
		>>> np.var(a, axis=1)
		array([ 0.25,  0.25])
		
		In single precision, var() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.var(a)
		0.20250003
		
		Computing the variance in float64 is more accurate:
		
		>>> np.var(a, dtype=np.float64)
		0.20249999932944759
		>>> ((1-0.55)**2 + (0.1-0.55)**2)/2
		0.2025
	**/
	@:native("var")
	static public function _var(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		vdot(a, b)
		
		Return the dot product of two vectors.
		
		The vdot(`a`, `b`) function handles complex numbers differently than
		dot(`a`, `b`).  If the first argument is complex the complex conjugate
		of the first argument is used for the calculation of the dot product.
		
		Note that `vdot` handles multidimensional arrays differently than `dot`:
		it does *not* perform a matrix product, but flattens input arguments
		to 1-D vectors first. Consequently, it should only be used for vectors.
		
		Parameters
		----------
		a : array_like
		    If `a` is complex the complex conjugate is taken before calculation
		    of the dot product.
		b : array_like
		    Second argument to the dot product.
		
		Returns
		-------
		output : ndarray
		    Dot product of `a` and `b`.  Can be an int, float, or
		    complex depending on the types of `a` and `b`.
		
		See Also
		--------
		dot : Return the dot product without using the complex conjugate of the
		      first argument.
		
		Examples
		--------
		>>> a = np.array([1+2j,3+4j])
		>>> b = np.array([5+6j,7+8j])
		>>> np.vdot(a, b)
		(70-8j)
		>>> np.vdot(b, a)
		(70+8j)
		
		Note that higher-dimensional arrays are flattened!
		
		>>> a = np.array([[1, 4], [5, 6]])
		>>> b = np.array([[4, 1], [2, 2]])
		>>> np.vdot(a, b)
		30
		>>> np.vdot(b, a)
		30
		>>> 1*4 + 4*1 + 5*2 + 6*2
		30
	**/
	static public function vdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stack arrays in sequence vertically (row wise).
		
		Take a sequence of arrays and stack them vertically to make a single
		array. Rebuild arrays divided by `vsplit`.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    Tuple containing arrays to be stacked. The arrays must have the same
		    shape along all but the first axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		concatenate : Join a sequence of arrays along an existing axis.
		vsplit : Split array into a list of multiple sub-arrays vertically.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=0)`` if `tup` contains arrays that
		are at least 2-dimensional.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [2, 3, 4]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[2], [3], [4]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [2],
		       [3],
		       [4]])
	**/
	static public function vstack(tup:Dynamic):numpy.Ndarray;
	/**
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=np.float)
		>>> y
		array([ 0.,  1.,  2.])
		>>> np.zeros_like(y)
		array([ 0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
}