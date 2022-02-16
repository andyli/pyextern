/* This file is generated, do not edit! */
package numpy.core.umath;
@:pythonImport("numpy.core.umath") extern class Umath_Module {
	static public var ALLOW_THREADS : Dynamic;
	static public var BUFSIZE : Dynamic;
	static public var CLIP : Dynamic;
	static public var DATETIMEUNITS : Dynamic;
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
	static public var ITEM_HASOBJECT : Dynamic;
	static public var ITEM_IS_POINTER : Dynamic;
	static public var LIST_PICKLE : Dynamic;
	static public var MAXDIMS : Dynamic;
	static public var MAY_SHARE_BOUNDS : Dynamic;
	static public var MAY_SHARE_EXACT : Dynamic;
	static public var NAN : Dynamic;
	static public var NEEDS_INIT : Dynamic;
	static public var NEEDS_PYAPI : Dynamic;
	static public var NINF : Dynamic;
	static public var NZERO : Dynamic;
	static public var PINF : Dynamic;
	static public var PZERO : Dynamic;
	static public var RAISE : Dynamic;
	static public var SHIFT_DIVIDEBYZERO : Dynamic;
	static public var SHIFT_INVALID : Dynamic;
	static public var SHIFT_OVERFLOW : Dynamic;
	static public var SHIFT_UNDERFLOW : Dynamic;
	static public var UFUNC_BUFSIZE_DEFAULT : Dynamic;
	static public var UFUNC_PYVALS_NAME : Dynamic;
	static public var USE_GETITEM : Dynamic;
	static public var USE_SETITEM : Dynamic;
	static public var WRAP : Dynamic;
	static public var _UFUNC_API : Dynamic;
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
		add_ufunc_docstring(ufunc, new_docstring)
		
		Replace the docstring for a ufunc with new_docstring.
		This method will only work if the current docstring for
		the ufunc is NULL. (At the C level, i.e. when ufunc->doc is NULL.)
		
		Parameters
		----------
		ufunc : numpy.ufunc
		    A ufunc whose current doc is NULL.
		new_docstring : string
		    The new docstring for the ufunc.
		
		Notes
		-----
		This method allocates memory for new_docstring on
		the heap. Technically this creates a mempory leak, since this
		memory will not be reclaimed until the end of the program
		even if the ufunc itself is removed. However this will only
		be a problem if the user is repeatedly creating ufuncs with
		no documentation, adding documentation via add_newdoc_ufunc,
		and then throwing away the ufunc.
	**/
	static public function _add_newdoc_ufunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_ones_like(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		This function used to be the numpy.ones_like, but now a specific
		function for that has been written for consistency with the other
		*_like functions. It is only used internally in a limited fashion now.
		
		See Also
		--------
		ones_like
	**/
	static public function _ones_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
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
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
		
		The `abs` function can be used as a shorthand for ``np.absolute`` on
		ndarrays.
		
		>>> x = np.array([-1.2, 1.2])
		>>> abs(x)
		array([1.2, 1.2])
	**/
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``+`` operator can be used as a shorthand for ``np.add`` on ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 + x2
		array([[ 0.,  2.,  4.],
		       [ 3.,  5.,  7.],
		       [ 6.,  8., 10.]])
	**/
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None, *, like=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, it is often better to use
		`numpy.linspace`. See the warnings section below for more information.
		
		Parameters
		----------
		start : integer or real, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : integer or real
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : integer or real, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		Warnings
		--------
		The length of the output might not be numerically stable.
		
		Another stability issue is due to the internal implementation of
		`numpy.arange`.
		The actual step value used to populate the array is
		``dtype(start + step) - dtype(start)`` and not `step`. Precision loss
		can occur here, due to casting or due to using floating points when
		`start` is much larger than `step`. This can lead to unexpected
		behaviour. For example::
		
		  >>> np.arange(0, 5, 0.5, dtype=int)
		  array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		  >>> np.arange(-3, 3, 0.5, dtype=int)
		  array([-3, -2, -1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		In such cases, the use of `numpy.linspace` should be preferred.
		
		See Also
		--------
		numpy.linspace : Evenly spaced numbers with careful handling of endpoints.
		numpy.ogrid: Arrays of evenly spaced numbers in N-dimensions.
		numpy.mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
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
		arccos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi].
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that ``cos(z) = x``. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts ``[-inf, -1]`` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79.
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
		arccosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic cosine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		arccosh : ndarray
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		
		cosh, arcsinh, sinh, arctanh, tanh
		
		Notes
		-----
		`arccosh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cosh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in ``[-pi, pi]`` and the real part in
		``[0, inf]``.
		
		For real-valued input data types, `arccosh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccosh` is a complex analytical function that
		has a branch cut `[-inf, 1]` and is continuous from above on it.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arccosh
		
		Examples
		--------
		>>> np.arccosh([np.e, 10.0])
		array([ 1.65745445,  2.99322285])
		>>> np.arccosh(1)
		0.0
	**/
	static public function arccosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    `y`-coordinate on the unit circle.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    The inverse sine of each element in `x`, in radians and in the
		    closed interval ``[-pi/2, pi/2]``.
		    This is a scalar if `x` is a scalar.
		
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
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
		arcsinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function arcsinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    This is a scalar if `x` is a scalar.
		
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
		has [``1j, infj``] and [``-1j, -infj``] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
		arctan2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    `x`-coordinates.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		arctanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic tangent element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		emath.arctanh
		
		Notes
		-----
		`arctanh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that ``tanh(z) = x``. The convention is to return
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
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arctanh
		
		Examples
		--------
		>>> np.arctanh([0, -0.5])
		array([ 0.        , -0.54930614])
	**/
	static public function arctanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
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
		asanyarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'K'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
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
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ascontiguousarray(a, dtype=None, *, like=None)
		
		Return a contiguous array (ndim >= 1) in memory (C order).
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    Data-type of returned array.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		array([[0., 1., 2.],
		       [3., 4., 5.]], dtype=float32)
		>>> x.flags['C_CONTIGUOUS']
		True
		
		Note: This function returns an array with at least one-dimension (1-d)
		so it will not preserve 0-d arrays.
	**/
	static public function ascontiguousarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asfortranarray(a, dtype=None, *, like=None)
		
		Return an array (ndim >= 1) laid out in Fortran order in memory.
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    By default, the data-type is inferred from the input data.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		
		Note: This function returns an array with at least one-dimension (1-d)
		so it will not preserve 0-d arrays.
	**/
	static public function asfortranarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bincount(x, /, weights=None, minlength=0)
		
		Count number of occurrences of each value in array of non-negative ints.
		
		The number of bins (of size 1) is one larger than the largest value in
		`x`. If `minlength` is specified, there will be at least this number
		of bins in the output array (though it will be longer if necessary,
		depending on the contents of `x`).
		Each bin gives the number of occurrences of its index value in `x`.
		If `weights` is specified the input array is weighted by it, i.e. if a
		value ``n`` is found at position ``i``, ``out[n] += weight[i]`` instead
		of ``out[n] += 1``.
		
		Parameters
		----------
		x : array_like, 1 dimension, nonnegative ints
		    Input array.
		weights : array_like, optional
		    Weights, array of the same shape as `x`.
		minlength : int, optional
		    A minimum number of bins for the output array.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		out : ndarray of ints
		    The result of binning the input array.
		    The length of `out` is equal to ``np.amax(x)+1``.
		
		Raises
		------
		ValueError
		    If the input is not 1-dimensional, or contains elements with negative
		    values, or if `minlength` is negative.
		TypeError
		    If the type of the input is float or complex.
		
		See Also
		--------
		histogram, digitize, unique
		
		Examples
		--------
		>>> np.bincount(np.arange(5))
		array([1, 1, 1, 1, 1])
		>>> np.bincount(np.array([0, 1, 1, 3, 2, 1, 7]))
		array([1, 3, 1, 1, 0, 0, 0, 1])
		
		>>> x = np.array([0, 1, 1, 3, 2, 1, 7, 23])
		>>> np.bincount(x).size == np.amax(x)+1
		True
		
		The input array needs to be of integer dtype, otherwise a
		TypeError is raised:
		
		>>> np.bincount(np.arange(5, dtype=float))
		Traceback (most recent call last):
		  ...
		TypeError: Cannot cast array data from dtype('float64') to dtype('int64')
		according to the rule 'safe'
		
		A possible use of ``bincount`` is to perform sums over
		variable-size chunks of an array, using the ``weights`` keyword.
		
		>>> w = np.array([0.3, 0.5, 0.2, 0.7, 1., -0.6]) # weights
		>>> x = np.array([0, 1, 1, 2, 2, 2])
		>>> np.bincount(x,  weights=w)
		array([ 0.3,  0.7,  1.1])
	**/
	static public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise AND of two arrays element-wise.
		
		Computes the bit-wise AND of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``&``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([False,  True])
		
		The ``&`` operator can be used as a shorthand for ``np.bitwise_and`` on
		ndarrays.
		
		>>> x1 = np.array([2, 5, 255])
		>>> x2 = np.array([3, 14, 16])
		>>> x1 & x2
		array([ 2,  4, 16])
	**/
	static public function bitwise_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise OR of two arrays element-wise.
		
		Computes the bit-wise OR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``|``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_or
		bitwise_and
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 has the binary representation ``00001101``. Likewise,
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
		>>> np.bitwise_or(np.array([2, 5, 255, 2147483647], dtype=np.int32),
		...               np.array([4, 4, 4, 2147483647], dtype=np.int32))
		array([         6,          5,        255, 2147483647])
		>>> np.bitwise_or([True, True], [False, True])
		array([ True,  True])
		
		The ``|`` operator can be used as a shorthand for ``np.bitwise_or`` on
		ndarrays.
		
		>>> x1 = np.array([2, 5, 255])
		>>> x2 = np.array([4, 4, 4])
		>>> x1 | x2
		array([  6,   5, 255])
	**/
	static public function bitwise_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise XOR of two arrays element-wise.
		
		Computes the bit-wise XOR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``^``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([ True, False])
		
		The ``^`` operator can be used as a shorthand for ``np.bitwise_xor`` on
		ndarrays.
		
		>>> x1 = np.array([True, True])
		>>> x2 = np.array([False, True])
		>>> x1 ^ x2
		array([ True, False])
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
		busdaycalendar : An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_offset : Applies an offset counted in valid days.
		
		Examples
		--------
		>>> # Number of weekdays in January 2011
		... np.busday_count('2011-01', '2011-02')
		21
		>>> # Number of weekdays in 2011
		>>> np.busday_count('2011', '2012')
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
		busdaycalendar : An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # First business day in October 2011 (not accounting for holidays)
		... np.busday_offset('2011-10', 0, roll='forward')
		numpy.datetime64('2011-10-03')
		>>> # Last business day in February 2012 (not accounting for holidays)
		... np.busday_offset('2012-03', -1, roll='forward')
		numpy.datetime64('2012-02-29')
		>>> # Third Wednesday in January 2011
		... np.busday_offset('2011-01', 2, roll='forward', weekmask='Wed')
		numpy.datetime64('2011-01-19')
		>>> # 2012 Mother's Day in Canada and the U.S.
		... np.busday_offset('2012-05', 1, roll='forward', weekmask='Sun')
		numpy.datetime64('2012-05-13')
		
		>>> # First business day on or after a date
		... np.busday_offset('2011-03-20', 0, roll='forward')
		numpy.datetime64('2011-03-21')
		>>> np.busday_offset('2011-03-22', 0, roll='forward')
		numpy.datetime64('2011-03-22')
		>>> # First business day after a date
		... np.busday_offset('2011-03-20', 1, roll='backward')
		numpy.datetime64('2011-03-21')
		>>> np.busday_offset('2011-03-22', 1, roll='backward')
		numpy.datetime64('2011-03-23')
	**/
	static public function busday_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c_einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe')
		
		*This documentation shadows that of the native python implementation of the `einsum` function,
		except all references and examples related to the `optimize` argument (v 0.12.0) have been removed.*
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional,
		linear algebraic array operations can be represented in a simple fashion.
		In *implicit* mode `einsum` computes these values.
		
		In *explicit* mode, `einsum` provides further flexibility to compute
		other array operations that might not be considered classical Einstein
		summation operations, by disabling, or forcing summation over specified
		subscript labels.
		
		See the notes and examples for clarification.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation as comma separated list of
		    subscript labels. An implicit (classical Einstein summation)
		    calculation is performed unless the explicit indicator '->' is
		    included as well as subscript labels of the precise output form.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : {data-type, None}, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions. Default is None.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout of the inputs as
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
		
		    Default is 'safe'.
		optimize : {False, True, 'greedy', 'optimal'}, optional
		    Controls if intermediate optimization should occur. No optimization
		    will occur if False and True will default to the 'greedy' algorithm.
		    Also accepts an explicit contraction list from the ``np.einsum_path``
		    function. See ``np.einsum_path`` for more details. Defaults to False.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		einsum_path, dot, inner, outer, tensordot, linalg.multi_dot
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The Einstein summation convention can be used to compute
		many multi-dimensional, linear algebraic array operations. `einsum`
		provides a succinct way of representing these.
		
		A non-exhaustive list of these operations,
		which can be computed by `einsum`, is shown below along with examples:
		
		* Trace of an array, :py:func:`numpy.trace`.
		* Return a diagonal, :py:func:`numpy.diag`.
		* Array axis summations, :py:func:`numpy.sum`.
		* Transpositions and permutations, :py:func:`numpy.transpose`.
		* Matrix multiplication and dot product, :py:func:`numpy.matmul` :py:func:`numpy.dot`.
		* Vector inner and outer products, :py:func:`numpy.inner` :py:func:`numpy.outer`.
		* Broadcasting, element-wise and scalar multiplication, :py:func:`numpy.multiply`.
		* Tensor contractions, :py:func:`numpy.tensordot`.
		* Chained array operations, in efficient calculation order, :py:func:`numpy.einsum_path`.
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Whenever a label is repeated it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to :py:func:`np.inner(a,b) <numpy.inner>`. If a label
		appears only once, it is not summed, so ``np.einsum('i', a)`` produces a
		view of ``a`` with no changes. A further example ``np.einsum('ij,jk', a, b)``
		describes traditional matrix multiplication and is equivalent to
		:py:func:`np.matmul(a,b) <numpy.matmul>`. Repeated subscript labels in one
		operand take the diagonal. For example, ``np.einsum('ii', a)`` is equivalent
		to :py:func:`np.trace(a) <numpy.trace>`.
		
		In *implicit mode*, the chosen subscripts are important
		since the axes of the output are reordered alphabetically.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose. Additionally,
		``np.einsum('ij,jk', a, b)`` returns a matrix multiplication, while,
		``np.einsum('ij,jh', a, b)`` returns the transpose of the
		multiplication since subscript 'h' precedes subscript 'i'.
		
		In *explicit mode* the output can be directly controlled by
		specifying output subscript labels.  This requires the
		identifier '->' as well as the list of output subscript labels.
		This feature increases the flexibility of the function since
		summing can be disabled or forced when required. The call
		``np.einsum('i->', a)`` is like :py:func:`np.sum(a, axis=-1) <numpy.sum>`,
		and ``np.einsum('ii->i', a)`` is like :py:func:`np.diag(a) <numpy.diag>`.
		The difference is that `einsum` does not allow broadcasting by default.
		Additionally ``np.einsum('ij,jh->ih', a, b)`` directly specifies the
		order of the output subscript labels and therefore returns matrix
		multiplication, unlike the example above in implicit mode.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, one can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view (changed in version 1.10.0).
		
		`einsum` also provides an alternative way to provide the subscripts
		and operands as ``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``.
		If the output shape is not provided in this format `einsum` will be
		calculated in implicit mode, otherwise it will be performed explicitly.
		The examples below have corresponding `einsum` calls with the two
		parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as :py:func:`np.swapaxes(a, 0, 2) <numpy.swapaxes>`
		and ``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		Trace of a matrix:
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		Extract the diagonal (requires explicit form):
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		Sum over an axis (requires explicit form):
		
		>>> np.einsum('ij->i', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [0,1], [0])
		array([ 10,  35,  60,  85, 110])
		>>> np.sum(a, axis=1)
		array([ 10,  35,  60,  85, 110])
		
		For higher dimensional arrays summing a single axis can be done with ellipsis:
		
		>>> np.einsum('...j->...', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [Ellipsis,1], [Ellipsis])
		array([ 10,  35,  60,  85, 110])
		
		Compute a matrix transpose, or reorder any number of axes:
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum('ij->ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.transpose(c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		Vector inner products:
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		Matrix vector multiplication:
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		Broadcasting and scalar multiplication:
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		Vector outer product:
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		Tensor contraction:
		
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
		
		Writeable returned arrays (since version 1.10.0):
		
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		
		Example of ellipsis use:
		
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
	**/
	static public function c_einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		can_cast(from_, to, casting='safe')
		
		Returns True if cast between data types can occur according to the
		casting rule.  If from is a scalar or array scalar, also returns
		True if the scalar value can be cast without overflow or truncation
		to an integer.
		
		Parameters
		----------
		from_ : dtype, dtype specifier, scalar, or array
		    Data type, scalar, or array to cast from.
		to : dtype or dtype specifier
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
		.. versionchanged:: 1.17.0
		   Casting between a simple data type and a structured one is possible only
		   for "unsafe" casting.  Casting to multiple fields is allowed, but
		   casting from multiple fields is not.
		
		.. versionchanged:: 1.9.0
		   Casting from numeric to string types in 'safe' casting mode requires
		   that the string dtype length is long enough to store the maximum
		   integer/float value converted.
		
		See also
		--------
		dtype, result_type
		
		Examples
		--------
		Basic examples
		
		>>> np.can_cast(np.int32, np.int64)
		True
		>>> np.can_cast(np.float64, complex)
		True
		>>> np.can_cast(complex, float)
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
	/**
		cbrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the cube-root of an array, element-wise.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		x : array_like
		    The values whose cube-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the cube
		    cube-root of each element in `x`.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
		
		Examples
		--------
		>>> np.cbrt([1,8,27])
		array([ 1.,  2.,  3.])
	**/
	static public function cbrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		``i >= x``.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		floor, trunc, rint, fix
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clip(x1, x2, x3, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Clip (limit) the values in an array.
		
		Given an interval, values outside the interval are clipped to
		the interval edges.  For example, if an interval of ``[0, 1]``
		is specified, values smaller than 0 become 0, and values larger
		than 1 become 1.
		
		Equivalent to but faster than ``np.minimum(np.maximum(a, a_min), a_max)``.
		
		Parameters
		----------
		a : array_like
		    Array containing elements to clip.
		a_min : array_like
		    Minimum value.
		a_max : array_like
		    Maximum value.
		out : ndarray, optional
		    The results will be placed in this array. It may be the input
		    array for in-place clipping.  `out` must be of the right shape
		    to hold the output.  Its type is preserved.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		See Also
		--------
		numpy.clip :
		    Wrapper that makes the ``a_min`` and ``a_max`` arguments optional,
		    dispatching to one of `~numpy.core.umath.clip`,
		    `~numpy.core.umath.minimum`, and `~numpy.core.umath.maximum`.
		
		Returns
		-------
		clipped_array : ndarray
		    An array with the elements of `a`, but where values
		    < `a_min` are replaced with `a_min`, and those > `a_max`
		    with `a_max`.
	**/
	static public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		compare_chararrays(a1, a2, cmp, rstrip)
		
		Performs element-wise comparison of two string arrays using the
		comparison operator specified by `cmp_op`.
		
		Parameters
		----------
		a1, a2 : array_like
		    Arrays to be compared.
		cmp : {"<", "<=", "==", ">=", ">", "!="}
		    Type of comparison.
		rstrip : Boolean
		    If True, the spaces at the end of Strings are removed before the comparison.
		
		Returns
		-------
		out : ndarray
		    The output array of type Boolean with the same shape as a and b.
		
		Raises
		------
		ValueError
		    If `cmp_op` is not valid.
		TypeError
		    If at least one of `a` or `b` is a non-string array
		
		Examples
		--------
		>>> a = np.array(["a", "b", "cde"])
		>>> b = np.array(["a", "a", "dec"])
		>>> np.compare_chararrays(a, b, ">", True)
		array([False,  True, False])
	**/
	static public function compare_chararrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		concatenate((a1, a2, ...), axis=0, out=None, dtype=None, casting="same_kind")
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		dtype : str or dtype
		    If provided, the destination array will have this dtype. Cannot be
		    provided together with `out`.
		
		    .. versionadded:: 1.20.0
		
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur. Defaults to 'same_kind'.
		
		    .. versionadded:: 1.20.0
		
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
		hsplit : Split array into multiple sub-arrays horizontally (column wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		block : Assemble arrays from blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		
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
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data=[0, --, 2],
		             mask=[False,  True, False],
		       fill_value=999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data=[0, 1, 2, 2, 3, 4],
		             mask=False,
		       fill_value=999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data=[0, --, 2, 2, 3, 4],
		             mask=[False,  True, False, False, False, False],
		       fill_value=999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		`conj` is an alias for `conjugate`:
		
		>>> np.conj is np.conjugate
		True
		
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
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		`conj` is an alias for `conjugate`:
		
		>>> np.conj is np.conjugate
		True
		
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
		copysign(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Change the sign of x1 to that of x2, element-wise.
		
		If `x2` is a scalar, its sign will be copied to all elements of `x1`.
		
		Parameters
		----------
		x1 : array_like
		    Values to change the sign of.
		x2 : array_like
		    The sign of `x2` is copied to `x1`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    The values of `x1` with the sign of `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		copyto(dst, src, casting='same_kind', where=True)
		
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
		cross_correlate(a,v, mode=0)
	**/
	static public function correlate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function correlate2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array of same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
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
	static public function count_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		datetime_as_string(arr, unit=None, timezone='naive', casting='same_kind')
		
		Convert an array of datetimes into an array of strings.
		
		Parameters
		----------
		arr : array_like of datetime64
		    The array of UTC timestamps to format.
		unit : str
		    One of None, 'auto', or a :ref:`datetime unit <arrays.dtypes.dateunits>`.
		timezone : {'naive', 'UTC', 'local'} or tzinfo
		    Timezone information to use when displaying the datetime. If 'UTC', end
		    with a Z to indicate UTC time. If 'local', convert to the local timezone
		    first, and suffix with a +-#### timezone offset. If a tzinfo object,
		    then do as with 'local', but use the specified timezone.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}
		    Casting to allow when changing between datetime units.
		
		Returns
		-------
		str_arr : ndarray
		    An array of strings the same shape as `arr`.
		
		Examples
		--------
		>>> import pytz
		>>> d = np.arange('2002-10-27T04:30', 4*60, 60, dtype='M8[m]')
		>>> d
		array(['2002-10-27T04:30', '2002-10-27T05:30', '2002-10-27T06:30',
		       '2002-10-27T07:30'], dtype='datetime64[m]')
		
		Setting the timezone to UTC shows the same information, but with a Z suffix
		
		>>> np.datetime_as_string(d, timezone='UTC')
		array(['2002-10-27T04:30Z', '2002-10-27T05:30Z', '2002-10-27T06:30Z',
		       '2002-10-27T07:30Z'], dtype='<U35')
		
		Note that we picked datetimes that cross a DST boundary. Passing in a
		``pytz`` timezone object will print the appropriate offset
		
		>>> np.datetime_as_string(d, timezone=pytz.timezone('US/Eastern'))
		array(['2002-10-27T00:30-0400', '2002-10-27T01:30-0400',
		       '2002-10-27T01:30-0500', '2002-10-27T02:30-0500'], dtype='<U39')
		
		Passing in a unit will change the precision
		
		>>> np.datetime_as_string(d, unit='h')
		array(['2002-10-27T04', '2002-10-27T05', '2002-10-27T06', '2002-10-27T07'],
		      dtype='<U32')
		>>> np.datetime_as_string(d, unit='s')
		array(['2002-10-27T04:30:00', '2002-10-27T05:30:00', '2002-10-27T06:30:00',
		       '2002-10-27T07:30:00'], dtype='<U38')
		
		'casting' can be used to specify whether precision can be changed
		
		>>> np.datetime_as_string(d, unit='h', casting='safe')
		Traceback (most recent call last):
		    ...
		TypeError: Cannot create a datetime string as units 'h' from a NumPy
		datetime with units 'm' according to the rule 'safe'
	**/
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		datetime_data(dtype, /)
		
		Get information about the step size of a date or time type.
		
		The returned tuple can be passed as the second argument of `numpy.datetime64` and
		`numpy.timedelta64`.
		
		Parameters
		----------
		dtype : dtype
		    The dtype object, which must be a `datetime64` or `timedelta64` type.
		
		Returns
		-------
		unit : str
		    The :ref:`datetime unit <arrays.dtypes.dateunits>` on which this dtype
		    is based.
		count : int
		    The number of base units in a step.
		
		Examples
		--------
		>>> dt_25s = np.dtype('timedelta64[25s]')
		>>> np.datetime_data(dt_25s)
		('s', 25)
		>>> np.array(10, dt_25s).astype('timedelta64[s]')
		array(250, dtype='timedelta64[s]')
		
		The result can be used to construct a datetime that uses the same units
		as a timedelta
		
		>>> np.datetime64('2010', np.datetime_data(dt_25s))
		numpy.datetime64('2010-01-01T00:00:00','25s')
	**/
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deg2rad(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Angles in degrees.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding angle in radians.
		    This is a scalar if `x` is a scalar.
		
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
		degrees(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from radians to degrees.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray of floats
		    The corresponding degree values; if `out` was supplied this is a
		    reference to it.
		    This is a scalar if `x` is a scalar.
		
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
		>>> r = np.degrees(rad, out)
		>>> np.all(r == out)
		True
	**/
	static public function degrees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		true_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns a true division of the inputs, element-wise.
		
		Unlike 'floor division', true division adjusts the output type
		to present the best answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		In Python, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		The ``/`` operator can be used as a shorthand for ``np.true_divide`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> x / 4
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
	**/
	static public function divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		divmod(x1, x2[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return element-wise quotient and remainder simultaneously.
		
		.. versionadded:: 1.13.0
		
		``np.divmod(x, y)`` is equivalent to ``(x // y, x % y)``, but faster
		because it avoids redundant work. It is used to implement the Python
		built-in function ``divmod`` on NumPy arrays.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out1 : ndarray
		    Element-wise quotient resulting from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		out2 : ndarray
		    Element-wise remainder from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent to Python's ``//`` operator.
		remainder : Equivalent to Python's ``%`` operator.
		modf : Equivalent to ``divmod(x, 1)`` for positive ``x`` with the return
		       values switched.
		
		Examples
		--------
		>>> np.divmod(np.arange(5), 3)
		(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
		
		The `divmod` function can be used as a shorthand for ``np.divmod`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> divmod(x, 3)
		(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
	**/
	static public function divmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays. Specifically,
		
		- If both `a` and `b` are 1-D arrays, it is inner product of vectors
		  (without complex conjugation).
		
		- If both `a` and `b` are 2-D arrays, it is matrix multiplication,
		  but using :func:`matmul` or ``a @ b`` is preferred.
		
		- If either `a` or `b` is 0-D (scalar), it is equivalent to :func:`multiply`
		  and using ``numpy.multiply(a, b)`` or ``a * b`` is preferred.
		
		- If `a` is an N-D array and `b` is a 1-D array, it is a sum product over
		  the last axis of `a` and `b`.
		
		- If `a` is an N-D array and `b` is an M-D array (where ``M>=2``), it is a
		  sum product over the last axis of `a` and the second-to-last axis of `b`::
		
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
		linalg.multi_dot : Chained dot product.
		
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
	static public function dragon4_positional(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dragon4_scientific(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var e : Dynamic;
	/**
		empty(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    Desired output data-type for the array, e.g, `numpy.int8`. Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data of the given shape, dtype, and
		    order.  Object arrays will be initialized to None.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
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
		       [  2.13182611e-314,   3.06959433e-309]])         #uninitialized
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #uninitialized
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty_like(prototype, dtype=None, order='K', subok=True, shape=None)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		prototype : array_like
		    The shape and data-type of `prototype` define these same attributes
		    of the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `prototype` is Fortran
		    contiguous, 'C' otherwise. 'K' means match the layout of `prototype`
		    as closely as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of `prototype`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `prototype`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    # uninitialized
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000], # uninitialized
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 == x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		not_equal, greater_equal, less_equal, greater, less
		
		Examples
		--------
		>>> np.equal([0, 1, 3], np.arange(3))
		array([ True,  True, False])
		
		What is compared are values, not types. So an int (1) and an array of
		length one can evaluate as True:
		
		>>> np.equal(1, np.ones(1))
		array([ True])
		
		The ``==`` operator can be used as a shorthand for ``np.equal`` on
		ndarrays.
		
		>>> a = np.array([2, 4, 6])
		>>> b = np.array([2, 4, 2])
		>>> a == b
		array([ True,  True, False])
	**/
	static public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var euler_gamma : Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       https://personal.math.ubc.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate `2**p` for all `p` in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Element-wise 2 to the power `x`.
		    This is a scalar if `x` is a scalar.
		
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
		expm1(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate ``exp(x) - 1`` for all elements in the array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Element-wise exponential minus one: ``out = exp(x) - 1``.
		    This is a scalar if `x` is a scalar.
		
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
		fabs(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the absolute values element-wise.
		
		This function returns the absolute values (positive magnitude) of the
		data in `x`. Complex values are not handled, use `absolute` to find the
		absolute values of complex data.
		
		Parameters
		----------
		x : array_like
		    The array of numbers for which the absolute values are required. If
		    `x` is a scalar, the result `y` will also be a scalar.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The absolute values of `x`, the returned values are always floats.
		    This is a scalar if `x` is a scalar.
		
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
		float_power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		First array elements raised to powers from second array, element-wise.
		
		Raise each base in `x1` to the positionally-corresponding power in `x2`.
		`x1` and `x2` must be broadcastable to the same shape. This differs from
		the power function in that integers, float16, and float32  are promoted to
		floats with a minimum precision of float64 so that the result is always
		inexact.  The intent is that the function will return a usable result for
		negative powers and seldom overflow for positive powers.
		
		Negative values raised to a non-integral value will return ``nan``.
		To get complex results, cast the input to complex, or specify the
		``dtype`` to be ``complex`` (see the example below).
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		x1 : array_like
		    The bases.
		x2 : array_like
		    The exponents.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The bases in `x1` raised to the exponents in `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		power : power function that preserves type
		
		Examples
		--------
		Cube each element in a list.
		
		>>> x1 = range(6)
		>>> x1
		[0, 1, 2, 3, 4, 5]
		>>> np.float_power(x1, 3)
		array([   0.,    1.,    8.,   27.,   64.,  125.])
		
		Raise the bases to different exponents.
		
		>>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
		>>> np.float_power(x1, x2)
		array([  0.,   1.,   8.,  27.,  16.,   5.])
		
		The effect of broadcasting.
		
		>>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
		>>> x2
		array([[1, 2, 3, 3, 2, 1],
		       [1, 2, 3, 3, 2, 1]])
		>>> np.float_power(x1, x2)
		array([[  0.,   1.,   8.,  27.,  16.,   5.],
		       [  0.,   1.,   8.,  27.,  16.,   5.]])
		
		Negative values raised to a non-integral value will result in ``nan``
		(and a warning will be generated).
		
		>>> x3 = np.array([-1, -4])
		>>> with np.errstate(invalid='ignore'):
		...     p = np.float_power(x3, 1.5)
		...
		>>> p
		array([nan, nan])
		
		To get complex results, give the argument ``dtype=complex``.
		
		>>> np.float_power(x3, 1.5, dtype=complex)
		array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
	**/
	static public function float_power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, trunc, rint, fix
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", where
		``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`. The "floor-towards-zero"
		function is called ``fix`` in NumPy.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the largest integer smaller or equal to the division of the inputs.
		It is equivalent to the Python ``//`` operator and pairs with the
		Python ``%`` (`remainder`), function so that ``a = a % b + b * (a // b)``
		up to roundoff.
		
		Parameters
		----------
		x1 : array_like
		    Numerator.
		x2 : array_like
		    Denominator.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    y = floor(`x1`/`x2`)
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		remainder : Remainder complementary to floor_divide.
		divmod : Simultaneous floor division and remainder.
		divide : Standard division.
		floor : Round a number to the nearest integer toward minus infinity.
		ceil : Round a number to the nearest integer toward infinity.
		
		Examples
		--------
		>>> np.floor_divide(7,3)
		2
		>>> np.floor_divide([1., 2., 3., 4.], 2.5)
		array([ 0.,  0.,  1.,  1.])
		
		The ``//`` operator can be used as a shorthand for ``np.floor_divide``
		on ndarrays.
		
		>>> x1 = np.array([1., 2., 3., 4.])
		>>> x1 // 2.5
		array([0., 0., 1., 1.])
	**/
	static public function floor_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmax(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([ 0.,  0., nan])
	**/
	static public function fmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmin(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([1, 3, 2])
		
		>>> np.fmin(np.eye(2), [0.5, 2])
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.fmin([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ 0.,  0., nan])
	**/
	static public function fmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The remainder of the division of `x1` by `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
	static public function format_longfloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frexp(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Decompose the elements of x into mantissa and twos exponent.
		
		Returns (`mantissa`, `exponent`), where `x = mantissa * 2**exponent``.
		The mantissa lies in the open interval(-1, 1), while the twos
		exponent is a signed integer.
		
		Parameters
		----------
		x : array_like
		    Array of numbers to be decomposed.
		out1 : ndarray, optional
		    Output array for the mantissa. Must have the same shape as `x`.
		out2 : ndarray, optional
		    Output array for the exponent. Must have the same shape as `x`.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		mantissa : ndarray
		    Floating values between -1 and 1.
		    This is a scalar if `x` is a scalar.
		exponent : ndarray
		    Integer exponents of 2.
		    This is a scalar if `x` is a scalar.
		
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
		frombuffer(buffer, dtype=float, count=-1, offset=0, *, like=None)
		
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
		    Start reading the buffer from this offset (in bytes); default: 0.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt) # doctest: +SKIP
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = b'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array([b'w', b'o', b'r', b'l', b'd'], dtype='|S1')
		
		>>> np.frombuffer(b'\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.frombuffer(b'\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromfile(file, dtype=float, count=-1, sep='', offset=0, *, like=None)
		
		Construct an array from data in a text or binary file.
		
		A highly efficient way of reading binary data with a known data-type,
		as well as parsing simply formatted text files.  Data written using the
		`tofile` method can be read using this function.
		
		Parameters
		----------
		file : file or str or Path
		    Open file object or filename.
		
		    .. versionchanged:: 1.17.0
		        `pathlib.Path` objects are now accepted.
		
		dtype : data-type
		    Data type of the returned array.
		    For binary files, it is used to determine the size and byte-order
		    of the items in the file.
		    Most builtin numeric types are supported and extension types may be supported.
		
		    .. versionadded:: 1.18.0
		        Complex dtypes.
		
		count : int
		    Number of items to read. ``-1`` means all items (i.e., the complete
		    file).
		sep : str
		    Separator between items if file is a text file.
		    Empty ("") separator means the file should be treated as binary.
		    Spaces (" ") in the separator match zero or more whitespace characters.
		    A separator consisting only of spaces must match at least one
		    whitespace.
		offset : int
		    The offset (in bytes) from the file's current position. Defaults to 0.
		    Only permitted for binary files.
		
		    .. versionadded:: 1.17.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		See also
		--------
		load, save
		ndarray.tofile
		loadtxt : More flexible way of loading data from a text file.
		
		Notes
		-----
		Do not rely on the combination of `tofile` and `fromfile` for
		data storage, as the binary files generated are not platform
		independent.  In particular, no byte-order or data-type information is
		saved.  Data can be stored in the platform independent ``.npy`` format
		using `save` and `load` instead.
		
		Examples
		--------
		Construct an ndarray:
		
		>>> dt = np.dtype([('time', [('min', np.int64), ('sec', np.int64)]),
		...                ('temp', float)])
		>>> x = np.zeros((1,), dtype=dt)
		>>> x['time']['min'] = 10; x['temp'] = 98.25
		>>> x
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
		
		Save the raw data to disk:
		
		>>> import tempfile
		>>> fname = tempfile.mkstemp()[1]
		>>> x.tofile(fname)
		
		Read the raw data from disk:
		
		>>> np.fromfile(fname, dtype=dt)
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
		
		The recommended way to store and load data:
		
		>>> np.save(fname, x)
		>>> np.load(fname + '.npy')
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
	**/
	static public function fromfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromiter(iter, dtype, count=-1, *, like=None)
		
		Create a new 1-dimensional array from an iterable object.
		
		Parameters
		----------
		iter : iterable object
		    An iterable object providing data for the array.
		dtype : data-type
		    The data-type of the returned array.
		count : int, optional
		    The number of items to read from *iterable*.  The default is -1,
		    which means all data is read.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		>>> np.fromiter(iterable, float)
		array([  0.,   1.,   4.,   9.,  16.])
	**/
	static public function fromiter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frompyfunc(func, /, nin, nout, *[, identity])
		
		Takes an arbitrary Python function and returns a NumPy ufunc.
		
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
		identity : object, optional
		    The value to use for the `~numpy.ufunc.identity` attribute of the resulting
		    object. If specified, this is equivalent to setting the underlying
		    C ``identity`` field to ``PyUFunc_IdentityValue``.
		    If omitted, the identity is set to ``PyUFunc_None``. Note that this is
		    _not_ equivalent to setting the identity to ``None``, which implies the
		    operation is reorderable.
		
		Returns
		-------
		out : ufunc
		    Returns a NumPy universal function (``ufunc``) object.
		
		See Also
		--------
		vectorize : Evaluates pyfunc over input arrays using broadcasting rules of numpy.
		
		Notes
		-----
		The returned ufunc always returns PyObject arrays.
		
		Examples
		--------
		Use frompyfunc to add broadcasting to the Python function ``oct``:
		
		>>> oct_array = np.frompyfunc(oct, 1, 1)
		>>> oct_array(np.array((10, 30, 100)))
		array(['0o12', '0o36', '0o144'], dtype=object)
		>>> np.array((oct(10), oct(30), oct(100))) # for comparison
		array(['0o12', '0o36', '0o144'], dtype='<U5')
	**/
	static public function frompyfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromstring(string, dtype=float, count=-1, *, sep, like=None)
		
		A new 1-D array initialized from text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format. Most builtin numeric types are
		    supported and extension types may be supported.
		
		    .. versionadded:: 1.18.0
		        Complex dtypes.
		
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    The string separating numbers in the data; extra whitespace between
		    elements is also ignored.
		
		    .. deprecated:: 1.14
		        Passing ``sep=''``, the default, is deprecated since it will
		        trigger the deprecated binary mode of this function. This mode
		        interprets `string` as binary bytes, rather than ASCII text with
		        decimal numbers, an operation which is better spelt
		        ``frombuffer(string, dtype, count)``. If `string` contains unicode
		        text, the binary mode of `fromstring` will first encode it into
		        bytes using either utf-8 (python 3) or the default encoding
		        (python 2), neither of which produce sane results.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gcd(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the greatest common divisor of ``|x1|`` and ``|x2|``
		
		Parameters
		----------
		x1, x2 : array_like, int
		    Arrays of values.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		
		Returns
		-------
		y : ndarray or scalar
		    The greatest common divisor of the absolute value of the inputs
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		lcm : The lowest common multiple
		
		Examples
		--------
		>>> np.gcd(12, 20)
		4
		>>> np.gcd.reduce([15, 25, 35])
		5
		>>> np.gcd(np.arange(6), 20)
		array([20,  1,  2,  1,  4,  5])
	**/
	static public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_handler_name(a: ndarray) -> str,None
		
		Return the name of the memory handler used by `a`. If not provided, return
		the name of the memory handler that will be used to allocate data for the
		next `ndarray` in this context. May return None if `a` does not own its
		memory, in which case you can traverse ``a.base`` for a memory handler.
	**/
	static public function get_handler_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_handler_version(a: ndarray) -> int,None
		
		Return the version of the memory handler used by `a`. If not provided,
		return the version of the memory handler that will be used to allocate data
		for the next `ndarray` in this context. May return None if `a` does not own
		its memory, in which case you can traverse ``a.base`` for a memory handler.
	**/
	static public function get_handler_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geterrobj()
		
		Return the current object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in NumPy. `geterrobj` is used internally by the other
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
		[8192, 521, None]
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		...
		>>> old_bufsize = np.setbufsize(20000)
		>>> old_err = np.seterr(divide='raise')
		>>> old_handler = np.seterrcall(err_handler)
		>>> np.geterrobj()
		[8192, 521, <function err_handler at 0x91dcaac>]
		
		>>> old_err = np.seterr(all='ignore')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'0'
		>>> old_err = np.seterr(divide='warn', over='log', under='call',
		...                     invalid='print')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'4351'
	**/
	static public function geterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False])
		
		The ``>`` operator can be used as a shorthand for ``np.greater`` on
		ndarrays.
		
		>>> a = np.array([4, 2])
		>>> b = np.array([2, 2])
		>>> a > b
		array([ True, False])
	**/
	static public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 >= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : bool or ndarray of bool
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater_equal([4, 2, 1], [2, 2, 2])
		array([ True, True, False])
		
		The ``>=`` operator can be used as a shorthand for ``np.greater_equal``
		on ndarrays.
		
		>>> a = np.array([4, 2, 1])
		>>> b = np.array([2, 2, 2])
		>>> a >= b
		array([ True,  True, False])
	**/
	static public function greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heaviside(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the Heaviside step function.
		
		The Heaviside step function is defined as::
		
		                          0   if x1 < 0
		    heaviside(x1, x2) =  x2   if x1 == 0
		                          1   if x1 > 0
		
		where `x2` is often taken to be 0.5, but 0 and 1 are also sometimes used.
		
		Parameters
		----------
		x1 : array_like
		    Input values.
		x2 : array_like
		    The value of the function when x1 is 0.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    The output array, element-wise Heaviside step function of `x1`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		.. versionadded:: 1.13.0
		
		References
		----------
		.. Wikipedia, "Heaviside step function",
		   https://en.wikipedia.org/wiki/Heaviside_step_function
		
		Examples
		--------
		>>> np.heaviside([-1.5, 0, 2.0], 0.5)
		array([ 0. ,  0.5,  1. ])
		>>> np.heaviside([-1.5, 0, 2.0], 1)
		array([ 0.,  1.,  1.])
	**/
	static public function heaviside(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hypot(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Given the "legs" of a right triangle, return its hypotenuse.
		
		Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
		`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
		it is broadcast for use with each element of the other argument.
		(See Examples)
		
		Parameters
		----------
		x1, x2 : array_like
		    Leg of the triangle(s).
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		z : ndarray
		    The hypotenuse of the triangle(s).
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		Implement a function with checks for __array_function__ overrides.
		
		All arguments are required, and can only be passed by position.
		
		Parameters
		----------
		implementation : function
		    Function that implements the operation on NumPy array without
		    overrides when called like ``implementation(*args, **kwargs)``.
		public_api : function
		    Function exposed by NumPy's public API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __array_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : dict
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		Result from calling ``implementation()`` or an ``__array_function__``
		method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
	**/
	static public function implement_array_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inner(a, b, /)
		
		Inner product of two arrays.
		
		Ordinary inner product of vectors for 1-D arrays (without complex
		conjugation), in higher dimensions a sum product over the last axes.
		
		Parameters
		----------
		a, b : array_like
		    If `a` and `b` are nonscalar, their last dimensions must match.
		
		Returns
		-------
		out : ndarray
		    If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    ``out.shape = (*a.shape[:-1], *b.shape[:-1])``
		
		Raises
		------
		ValueError
		    If both `a` and `b` are nonscalar and their last dimensions have
		    different sizes.
		
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
		
		    np.inner(a, b)[i0,...,ir-2,j0,...,js-2]
		         = sum(a[i0,...,ir-2,:]*b[j0,...,js-2,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		Some multidimensional examples:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> c = np.inner(a, b)
		>>> c.shape
		(2, 3)
		>>> c
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		>>> a = np.arange(2).reshape((1,1,2))
		>>> b = np.arange(6).reshape((3,2))
		>>> c = np.inner(a, b)
		>>> c.shape
		(1, 1, 3)
		>>> c
		array([[[1, 3, 5]]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[7., 0.],
		       [0., 7.]])
	**/
	static public function inner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function interp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function interp_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		invert(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		x : array_like
		    Only integer and boolean types are handled.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if `x` is a scalar.
		
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
		    https://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		We've seen that 13 is represented by ``00001101``.
		The invert or bit-wise NOT of 13 is then:
		
		>>> x = np.invert(np.array(13, dtype=np.uint8))
		>>> x
		242
		>>> np.binary_repr(x, width=8)
		'11110010'
		
		The result depends on the bit-width:
		
		>>> x = np.invert(np.array(13, dtype=np.uint16))
		>>> x
		65522
		>>> np.binary_repr(x, width=16)
		'1111111111110010'
		
		When using signed integer types the result is the two's complement of
		the result for the unsigned type:
		
		>>> np.invert(np.array([13], dtype=np.int8))
		array([-14], dtype=int8)
		>>> np.binary_repr(-14, width=8)
		'11110010'
		
		Booleans are accepted as well:
		
		>>> np.invert(np.array([True, False]))
		array([False,  True])
		
		The ``~`` operator can be used as a shorthand for ``np.invert`` on
		ndarrays.
		
		>>> x1 = np.array([True, False])
		>>> ~x1
		array([False,  True])
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
		busdaycalendar : An object that specifies a custom set of valid days.
		busday_offset : Applies an offset counted in valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # The weekdays are Friday, Saturday, and Monday
		... np.is_busday(['2011-07-01', '2011-07-02', '2011-07-18'],
		...                 holidays=['2011-07-01', '2011-07-04', '2011-07-17'])
		array([False, False,  True])
	**/
	static public function is_busday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool (scalar) or boolean ndarray
		    True where ``x`` is positive or negative infinity, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([ True,  True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    True where ``x`` is NaN, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite, isnat
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False])
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnat(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaT (not a time) and return result as a boolean array.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		x : array_like
		    Input array with datetime or timedelta data type.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    True where ``x`` is NaT, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isnan, isinf, isneginf, isposinf, isfinite
		
		Examples
		--------
		>>> np.isnat(np.datetime64("NaT"))
		True
		>>> np.isnat(np.datetime64("2016-01-01"))
		False
		>>> np.isnat(np.array(["NaT", "2016-01-01"], dtype="datetime64[ns]"))
		array([ True, False])
	**/
	static public function isnat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lcm(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the lowest common multiple of ``|x1|`` and ``|x2|``
		
		Parameters
		----------
		x1, x2 : array_like, int
		    Arrays of values.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		
		Returns
		-------
		y : ndarray or scalar
		    The lowest common multiple of the absolute value of the inputs
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		gcd : The greatest common divisor
		
		Examples
		--------
		>>> np.lcm(12, 20)
		60
		>>> np.lcm.reduce([3, 12, 20])
		60
		>>> np.lcm.reduce([40, 12, 20])
		120
		>>> np.lcm(np.arange(6), 20)
		array([ 0, 20, 20, 60, 20, 20])
	**/
	static public function lcm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns x1 * 2**x2, element-wise.
		
		The mantissas `x1` and twos exponents `x2` are used to construct
		floating point numbers ``x1 * 2**x2``.
		
		Parameters
		----------
		x1 : array_like
		    Array of multipliers.
		x2 : array_like, int
		    Array of twos exponents.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The result of ``x1 * 2**x2``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([ 5., 10., 20., 40.], dtype=float16)
		
		>>> x = np.arange(6)
		>>> np.ldexp(*np.frexp(x))
		array([ 0.,  1.,  2.,  3.,  4.,  5.])
	**/
	static public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		left_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : array of integer type
		    Return `x1` with bits shifted `x2` times to the left.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		Note that the dtype of the second argument may change the dtype of the
		result and can lead to unexpected results in some cases (see
		:ref:`Casting Rules <ufuncs.casting>`):
		
		>>> a = np.left_shift(np.uint8(255), 1) # Expect 254
		>>> print(a, type(a)) # Unexpected result due to upcasting
		510 <class 'numpy.int64'>
		>>> b = np.left_shift(np.uint8(255), np.uint8(1))
		>>> print(b, type(b))
		254 <class 'numpy.uint8'>
		
		The ``<<`` operator can be used as a shorthand for ``np.left_shift`` on
		ndarrays.
		
		>>> x1 = 5
		>>> x2 = np.array([1, 2, 3])
		>>> x1 << x2
		array([10, 20, 40])
	**/
	static public function left_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 < x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less_equal, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less([1, 2], [2, 2])
		array([ True, False])
		
		The ``<`` operator can be used as a shorthand for ``np.less`` on ndarrays.
		
		>>> a = np.array([1, 2])
		>>> b = np.array([2, 2])
		>>> a < b
		array([ True, False])
	**/
	static public function less(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 <= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True])
		
		The ``<=`` operator can be used as a shorthand for ``np.less_equal`` on
		ndarrays.
		
		>>> a = np.array([4, 2, 1])
		>>> b = np.array([2, 2, 2])
		>>> a <= b
		array([False,  True,  True])
	**/
	static public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lexsort(keys, axis=-1)
		
		Perform an indirect stable sort using a sequence of keys.
		
		Given multiple sorting keys, which can be interpreted as columns in a
		spreadsheet, lexsort returns an array of integer indices that describes
		the sort order by multiple columns. The last key in the sequence is used
		for the primary sort order, the second-to-last key for the secondary sort
		order, and so on. The keys argument must be a sequence of objects that
		can be converted to arrays of the same shape. If a 2D array is provided
		for the keys argument, its rows are interpreted as the sorting keys and
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
		>>> ind
		array([2, 0, 4, 6, 5, 3, 1])
		
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
		log(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The natural logarithm of `x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  nan])
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the natural logarithm of one plus the input array, element-wise.
		
		Calculates ``log(1 + x)``.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    Natural logarithm of `1 + x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log1p(1e-99)
		1e-99
		>>> np.log(1 + 1e-99)
		0.0
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Base-2 logarithm of `x`.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    Base-2 logarithm of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		logaddexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		result : ndarray
		    Logarithm of ``exp(x1) + exp(x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		logaddexp2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		result : ndarray
		    Base-2 logarithm of ``2**x1 + 2**x2``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		logical_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 AND x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result of the logical AND operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_or, logical_not, logical_xor
		bitwise_and
		
		Examples
		--------
		>>> np.logical_and(True, False)
		False
		>>> np.logical_and([True, False], [False, False])
		array([False, False])
		
		>>> x = np.arange(5)
		>>> np.logical_and(x>1, x<4)
		array([False, False,  True,  True, False])
		
		
		The ``&`` operator can be used as a shorthand for ``np.logical_and`` on
		boolean ndarrays.
		
		>>> a = np.array([True, False])
		>>> b = np.array([False, False])
		>>> a & b
		array([False, False])
	**/
	static public function logical_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_not(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True])
	**/
	static public function logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 OR x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical OR is applied to the elements of `x1` and `x2`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result of the logical OR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_and, logical_not, logical_xor
		bitwise_or
		
		Examples
		--------
		>>> np.logical_or(True, False)
		True
		>>> np.logical_or([True, False], [False, False])
		array([ True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_or(x < 1, x > 3)
		array([ True, False, False, False,  True])
		
		The ``|`` operator can be used as a shorthand for ``np.logical_or`` on
		boolean ndarrays.
		
		>>> a = np.array([True, False])
		>>> b = np.array([False, False])
		>>> a | b
		array([ True, False])
	**/
	static public function logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 XOR x2, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical XOR is applied to the elements of `x1` and `x2`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result of the logical XOR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_and, logical_or, logical_not, bitwise_xor
		
		Examples
		--------
		>>> np.logical_xor(True, False)
		True
		>>> np.logical_xor([True, True, False, False], [True, False, True, False])
		array([False,  True,  True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_xor(x < 1, x > 3)
		array([ True, False, False, False,  True])
		
		Simple example showing support of broadcasting
		
		>>> np.logical_xor(0, np.eye(2))
		array([[ True, False],
		       [False,  True]])
	**/
	static public function logical_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matmul(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj, axes, axis])
		
		Matrix product of two arrays.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays, scalars not allowed.
		out : ndarray, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that matches the signature `(n,k),(k,m)->(n,m)`. If not
		    provided or None, a freshly-allocated array is returned.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		    .. versionadded:: 1.16
		       Now handles ufunc kwargs
		
		Returns
		-------
		y : ndarray
		    The matrix product of the inputs.
		    This is a scalar only when both x1, x2 are 1-d vectors.
		
		Raises
		------
		ValueError
		    If the last dimension of `x1` is not the same size as
		    the second-to-last dimension of `x2`.
		
		    If a scalar value is passed in.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		dot : alternative matrix product with different broadcasting rules.
		
		Notes
		-----
		
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
		
		``matmul`` differs from ``dot`` in two important ways:
		
		- Multiplication by scalars is not allowed, use ``*`` instead.
		- Stacks of matrices are broadcast together as if the matrices
		  were elements, respecting the signature ``(n,k),(k,m)->(n,m)``:
		
		  >>> a = np.ones([9, 5, 7, 4])
		  >>> c = np.ones([9, 5, 4, 3])
		  >>> np.dot(a, c).shape
		  (9, 5, 7, 9, 5, 3)
		  >>> np.matmul(a, c).shape
		  (9, 5, 7, 3)
		  >>> # n is 7, k is 4, m is 3
		
		The matmul function implements the semantics of the ``@`` operator introduced
		in Python 3.5 following :pep:`465`.
		
		Examples
		--------
		For 2-D arrays it is the matrix product:
		
		>>> a = np.array([[1, 0],
		...               [0, 1]])
		>>> b = np.array([[4, 1],
		...               [2, 2]])
		>>> np.matmul(a, b)
		array([[4, 1],
		       [2, 2]])
		
		For 2-D mixed with 1-D, the result is the usual.
		
		>>> a = np.array([[1, 0],
		...               [0, 1]])
		>>> b = np.array([1, 2])
		>>> np.matmul(a, b)
		array([1, 2])
		>>> np.matmul(b, a)
		array([1, 2])
		
		
		Broadcasting is conventional for stacks of arrays
		
		>>> a = np.arange(2 * 2 * 4).reshape((2, 2, 4))
		>>> b = np.arange(2 * 2 * 4).reshape((2, 4, 2))
		>>> np.matmul(a,b).shape
		(2, 2, 2)
		>>> np.matmul(a, b)[0, 1, 1]
		98
		>>> sum(a[0, 1, :] * b[0 , :, 1])
		98
		
		Vector, vector returns the scalar inner product, but neither argument
		is complex-conjugated:
		
		>>> np.matmul([2j, 3j], [2j, 3j])
		(-13+0j)
		
		Scalar multiplication raises an error.
		
		>>> np.matmul([1,2], 3)
		Traceback (most recent call last):
		...
		ValueError: matmul: Input operand 1 does not have enough dimensions ...
		
		The ``@`` operator can be used as a shorthand for ``np.matmul`` on
		ndarrays.
		
		>>> x1 = np.array([2j, 3j])
		>>> x2 = np.array([2j, 3j])
		>>> x1 @ x2
		(-13+0j)
		
		.. versionadded:: 1.10.0
	**/
	static public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([nan, nan, nan])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		may_share_memory(a, b, /, max_work=None)
		
		Determine if two arrays might share memory
		
		A return of True does not necessarily mean that the two arrays
		share any element.  It just means that they *might*.
		
		Only the memory bounds of a and b are checked by default.
		
		Parameters
		----------
		a, b : ndarray
		    Input arrays
		max_work : int, optional
		    Effort to spend on solving the overlap problem.  See
		    `shares_memory` for details.  Default for ``may_share_memory``
		    is to do a bounds check.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		shares_memory
		
		Examples
		--------
		>>> np.may_share_memory(np.array([1,2]), np.array([5,8,9]))
		False
		>>> x = np.zeros([3, 4])
		>>> np.may_share_memory(x[:,0], x[:,1])
		True
	**/
	static public function may_share_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min_scalar_type(a, /)
		
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
		minimum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([nan, nan, nan])
		>>> np.minimum(-np.Inf, 1)
		-inf
	**/
	static public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modf(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the fractional and integral parts of an array, element-wise.
		
		The fractional and integral parts are negative if the given number is
		negative.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y1 : ndarray
		    Fractional part of `x`.
		    This is a scalar if `x` is a scalar.
		y2 : ndarray
		    Integral part of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		For integer input the return values are floats.
		
		See Also
		--------
		divmod : ``divmod(x, 1)`` is equivalent to ``modf`` with the return values
		         switched, except it always has a positive remainder.
		
		Examples
		--------
		>>> np.modf([0, 3.5])
		(array([ 0. ,  0.5]), array([ 0.,  3.]))
		>>> np.modf(-0.5)
		(-0.5, -0)
	**/
	static public function modf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multiply(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``*`` operator can be used as a shorthand for ``np.multiply`` on
		ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 * x2
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		negative(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Numerical negative, element-wise.
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = -x`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.negative([1.,-1.])
		array([-1.,  1.])
		
		The unary ``-`` operator can be used as a shorthand for ``np.negative`` on
		ndarrays.
		
		>>> x1 = np.array(([1., -1.]))
		>>> -x1
		array([-1.,  1.])
	**/
	static public function negative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nested_iters(op, axes, flags=None, op_flags=None, op_dtypes=None,     order="K", casting="safe", buffersize=0)
		
		Create nditers for use in nested loops
		
		Create a tuple of `nditer` objects which iterate in nested loops over
		different axes of the op argument. The first iterator is used in the
		outermost loop, the last in the innermost loop. Advancing one will change
		the subsequent iterators to point at its new element.
		
		Parameters
		----------
		op : ndarray or sequence of array_like
		    The array(s) to iterate over.
		
		axes : list of list of int
		    Each item is used as an "op_axes" argument to an nditer
		
		flags, op_flags, op_dtypes, order, casting, buffersize (optional)
		    See `nditer` parameters of the same name
		
		Returns
		-------
		iters : tuple of nditer
		    An nditer for each item in `axes`, outermost first
		
		See Also
		--------
		nditer
		
		Examples
		--------
		
		Basic usage. Note how y is the "flattened" version of
		[a[:, 0, :], a[:, 1, 0], a[:, 2, :]] since we specified
		the first iter's axes as [1]
		
		>>> a = np.arange(12).reshape(2, 3, 2)
		>>> i, j = np.nested_iters(a, [[1], [0, 2]], flags=["multi_index"])
		>>> for x in i:
		...      print(i.multi_index)
		...      for y in j:
		...          print('', j.multi_index, y)
		(0,)
		 (0, 0) 0
		 (0, 1) 1
		 (1, 0) 6
		 (1, 1) 7
		(1,)
		 (0, 0) 2
		 (0, 1) 3
		 (1, 0) 8
		 (1, 1) 9
		(2,)
		 (0, 0) 4
		 (0, 1) 5
		 (1, 0) 10
		 (1, 1) 11
	**/
	static public function nested_iters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nextafter(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the next floating-point value after x1 towards x2, element-wise.
		
		Parameters
		----------
		x1 : array_like
		    Values to find the next representable value of.
		x2 : array_like
		    The direction where to look for the next representable value of `x1`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    The next representable values of `x1` in the direction of `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Examples
		--------
		>>> eps = np.finfo(np.float64).eps
		>>> np.nextafter(1, 2) == eps + 1
		True
		>>> np.nextafter([1, 2], [2, 1]) == [eps + 1, 2 - eps]
		array([ True,  True])
	**/
	static public function nextafter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normalize_axis_index(axis, ndim, msg_prefix=None)
		
		Normalizes an axis index, `axis`, such that is a valid positive index into
		the shape of array with `ndim` dimensions. Raises an AxisError with an
		appropriate message if this is not possible.
		
		Used internally by all axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int
		    The un-normalized index of the axis. Can be negative
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against
		msg_prefix : str
		    A prefix to put before the message, typically the name of the argument
		
		Returns
		-------
		normalized_axis : int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If the axis index is invalid, when `-ndim <= axis < ndim` is false.
		
		Examples
		--------
		>>> normalize_axis_index(0, ndim=3)
		0
		>>> normalize_axis_index(1, ndim=3)
		1
		>>> normalize_axis_index(-1, ndim=3)
		2
		
		>>> normalize_axis_index(3, ndim=3)
		Traceback (most recent call last):
		...
		AxisError: axis 3 is out of bounds for array of dimension 3
		>>> normalize_axis_index(-4, ndim=3, msg_prefix='axes_arg')
		Traceback (most recent call last):
		...
		AxisError: axes_arg: axis -4 is out of bounds for array of dimension 3
	**/
	static public function normalize_axis_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		not_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True])
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]])
		
		The ``!=`` operator can be used as a shorthand for ``np.not_equal`` on
		ndarrays.
		
		>>> a = np.array([1., 2.])
		>>> b = np.array([1., 3.])
		>>> a != b
		array([False,  True])
	**/
	static public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		packbits(a, /, axis=None, bitorder='big')
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		a : array_like
		    An array of integers or booleans whose elements should be packed to
		    bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		bitorder : {'big', 'little'}, optional
		    The order of the input bits. 'big' will mimic bin(val),
		    ``[0, 0, 0, 0, 0, 0, 1, 1] => 3 = 0b00000011``, 'little' will
		    reverse the order so ``[1, 1, 0, 0, 0, 0, 0, 0] => 3``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		packed : ndarray
		    Array of type uint8 whose elements represent bits corresponding to the
		    logical (0 or nonzero) value of the input elements. The shape of
		    `packed` has the same number of dimensions as the input (unless `axis`
		    is None, in which case the output is 1-D).
		
		See Also
		--------
		unpackbits: Unpacks elements of a uint8 array into a binary-valued output
		            array.
		
		Examples
		--------
		>>> a = np.array([[[1,0,1],
		...                [0,1,0]],
		...               [[1,1,0],
		...                [0,0,1]]])
		>>> b = np.packbits(a, axis=-1)
		>>> b
		array([[[160],
		        [ 64]],
		       [[192],
		        [ 32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var pi : Dynamic;
	/**
		positive(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Numerical positive, element-wise.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = +x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		Equivalent to `x.copy()`, but only defined for types that support
		arithmetic.
		
		Examples
		--------
		
		>>> x1 = np.array(([1., -1.]))
		>>> np.positive(x1)
		array([ 1., -1.])
		
		The unary ``+`` operator can be used as a shorthand for ``np.positive`` on
		ndarrays.
		
		>>> x1 = np.array(([1., -1.]))
		>>> +x1
		array([ 1., -1.])
	**/
	static public function positive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		First array elements raised to powers from second array, element-wise.
		
		Raise each base in `x1` to the positionally-corresponding power in
		`x2`.  `x1` and `x2` must be broadcastable to the same shape.
		
		An integer type raised to a negative integer power will raise a
		``ValueError``.
		
		Negative values raised to a non-integral value will return ``nan``.
		To get complex results, cast the input to complex, or specify the
		``dtype`` to be ``complex`` (see the example below).
		
		Parameters
		----------
		x1 : array_like
		    The bases.
		x2 : array_like
		    The exponents.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The bases in `x1` raised to the exponents in `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		float_power : power function that promotes integers to float
		
		Examples
		--------
		Cube each element in an array.
		
		>>> x1 = np.arange(6)
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
		
		The ``**`` operator can be used as a shorthand for ``np.power`` on
		ndarrays.
		
		>>> x2 = np.array([1, 2, 3, 3, 2, 1])
		>>> x1 = np.arange(6)
		>>> x1 ** x2
		array([ 0,  1,  8, 27, 16,  5])
		
		Negative values raised to a non-integral value will result in ``nan``
		(and a warning will be generated).
		
		>>> x3 = np.array([-1.0, -4.0])
		>>> with np.errstate(invalid='ignore'):
		...     p = np.power(x3, 1.5)
		...
		>>> p
		array([nan, nan])
		
		To get complex results, give the argument ``dtype=complex``.
		
		>>> np.power(x3, 1.5, dtype=complex)
		array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
	**/
	static public function power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		promote_types(type1, type2)
		
		Returns the data type with the smallest size and smallest scalar
		kind to which both ``type1`` and ``type2`` may be safely cast.
		The returned data type is always in native byte order.
		
		This function is symmetric, but rarely associative.
		
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
		
		An example of a non-associative case:
		
		>>> p = np.promote_types
		>>> p('S', p('i1', 'u1'))
		dtype('S6')
		>>> p(p('S', 'i1'), 'u1')
		dtype('S4')
	**/
	static public function promote_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		putmask(a, mask, values)
		
		Changes elements of an array based on conditional and input values.
		
		Sets ``a.flat[n] = values[n]`` for each n where ``mask.flat[n]==True``.
		
		If `values` is not the same size as `a` and `mask` then it will repeat.
		This gives behavior different from ``a[mask] = values``.
		
		Parameters
		----------
		a : ndarray
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
		rad2deg(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from radians to degrees.
		
		Parameters
		----------
		x : array_like
		    Angle in radians.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding angle in degrees.
		    This is a scalar if `x` is a scalar.
		
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
		radians(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Input array in degrees.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding radian values.
		    This is a scalar if `x` is a scalar.
		
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
		ravel_multi_index(multi_index, dims, mode='raise', order='C')
		
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of array_like
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : ndarray
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Examples
		--------
		>>> arr = np.array([[3,6,6],[4,5,1]])
		>>> np.ravel_multi_index(arr, (7,6))
		array([22, 41, 37])
		>>> np.ravel_multi_index(arr, (7,6), order='F')
		array([31, 41, 13])
		>>> np.ravel_multi_index(arr, (4,6), mode='clip')
		array([22, 23, 19])
		>>> np.ravel_multi_index(arr, (4,4), mode=('clip','wrap'))
		array([12, 13, 13])
		
		>>> np.ravel_multi_index((3,1,4,1), (6,7,8,9))
		1621
	**/
	static public function ravel_multi_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reciprocal(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the reciprocal of the argument, element-wise.
		
		Calculates ``1/x``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    Return array.
		    This is a scalar if `x` is a scalar.
		
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
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		right_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray, int
		    Return `x1` with bits shifted `x2` times to the right.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``>>`` operator can be used as a shorthand for ``np.right_shift`` on
		ndarrays.
		
		>>> x1 = 10
		>>> x2 = np.array([1,2,3])
		>>> x1 >> x2
		array([5, 2, 1])
	**/
	static public function right_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rint(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Round elements of the array to the nearest integer.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array is same shape and type as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		fix, ceil, floor, trunc
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.rint(a)
		array([-2., -2., -0.,  0.,  2.,  2.,  2.])
	**/
	static public function rint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scalar(dtype, obj)
		
		Return a new scalar array of the given type initialized with obj.
		
		This function is meant mainly for pickle support. `dtype` must be a
		valid data-type descriptor. If `dtype` corresponds to an object
		descriptor, then `obj` can be any object, otherwise `obj` must be a
		string. If `obj` is not given, it will be interpreted as None for object
		type and as zeros for all other types.
	**/
	static public function scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function set_datetimeparse_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function set_legacy_print_mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_numeric_ops(op1=func1, op2=func2, ...)
		
		Set numerical operators for array objects.
		
		.. deprecated:: 1.16
		
		    For the general case, use :c:func:`PyUFunc_ReplaceLoopBySignature`.
		    For ndarray subclasses, define the ``__array_ufunc__`` method and
		    override the relevant ufunc.
		
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
		set_string_function(f, repr=1)
		
		Internal method to set a function to be used when pretty printing arrays.
	**/
	static public function set_string_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_typeDict(dict)
		
		Set the internal dictionary that can look up an array type using a
		registered code.
	**/
	static public function set_typeDict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		seterrobj(errobj, /)
		
		Set the object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in NumPy. `seterrobj` is used internally by the other
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
		[8192, 521, None]
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
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
		shares_memory(a, b, /, max_work=None)
		
		Determine if two arrays share memory.
		
		.. warning::
		
		   This function can be exponentially slow for some inputs, unless
		   `max_work` is set to a finite number or ``MAY_SHARE_BOUNDS``.
		   If in doubt, use `numpy.may_share_memory` instead.
		
		Parameters
		----------
		a, b : ndarray
		    Input arrays
		max_work : int, optional
		    Effort to spend on solving the overlap problem (maximum number
		    of candidate solutions to consider). The following special
		    values are recognized:
		
		    max_work=MAY_SHARE_EXACT  (default)
		        The problem is solved exactly. In this case, the function returns
		        True only if there is an element shared between the arrays. Finding
		        the exact solution may take extremely long in some cases.
		    max_work=MAY_SHARE_BOUNDS
		        Only the memory bounds of a and b are checked.
		
		Raises
		------
		numpy.TooHardError
		    Exceeded max_work.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		may_share_memory
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 4])
		>>> np.shares_memory(x, np.array([5, 6, 7]))
		False
		>>> np.shares_memory(x[::2], x)
		True
		>>> np.shares_memory(x[::2], x[1::2])
		False
		
		Checking whether two arrays share memory is NP-complete, and
		runtime may increase exponentially in the number of
		dimensions. Hence, `max_work` should generally be set to a finite
		number, as it is possible to construct examples that take
		extremely long to run:
		
		>>> from numpy.lib.stride_tricks import as_strided
		>>> x = np.zeros([192163377], dtype=np.int8)
		>>> x1 = as_strided(x, strides=(36674, 61119, 85569), shape=(1049, 1049, 1049))
		>>> x2 = as_strided(x[64023025:], strides=(12223, 12224, 1), shape=(1049, 1049, 1))
		>>> np.shares_memory(x1, x2, max_work=1000)
		Traceback (most recent call last):
		...
		numpy.TooHardError: Exceeded max_work
		
		Running ``np.shares_memory(x1, x2)`` without `max_work` set takes
		around 1 minute for this case. It is possible to find problems
		that take still significantly longer.
	**/
	static public function shares_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sign(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.  nan
		is returned for nan inputs.
		
		For complex inputs, the `sign` function returns
		``sign(x.real) + 0j if x.real != 0 else sign(x.imag) + 0j``.
		
		complex(nan, 0) is returned for complex nan inputs.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The sign of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		There is more than one definition of sign in common use for complex
		numbers.  The definition used here is equivalent to :math:`x/\sqrt{x*x}`
		which is different from a common alternative, :math:`x/|x|`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
		>>> np.sign(5-2j)
		(1+0j)
	**/
	static public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signbit(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns element-wise True where signbit is set (less than zero).
		
		Parameters
		----------
		x : array_like
		    The input value(s).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		result : ndarray of bool
		    Output array, or reference to `out` if that was supplied.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.signbit(-1.2)
		True
		>>> np.signbit(np.array([1, -2.3, 2.1]))
		array([False,  True, False])
	**/
	static public function signbit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
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
		sinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spacing(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the distance between x and the nearest adjacent number.
		
		Parameters
		----------
		x : array_like
		    Values to find the spacing of.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    The spacing of values of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
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
		
		>>> np.sqrt([4, -1, np.inf])
		array([ 2., nan, inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		square(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the element-wise square of the input.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Element-wise `x*x`, of the same shape and dtype as `x`.
		    This is a scalar if `x` is a scalar.
		
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
		subtract(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Subtract arguments, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be subtracted from each other.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The difference of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``-`` operator can be used as a shorthand for ``np.subtract`` on
		ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 - x2
		array([[0., 0., 0.],
		       [3., 3., 3.],
		       [6., 6., 6.]])
	**/
	static public function subtract(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding tangent values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       https://personal.math.ubc.ca/~cbm/aands/page_83.htm
		
		.. [2] Wikipedia, "Hyperbolic function",
		       https://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var tracemalloc_domain : Dynamic;
	/**
		true_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns a true division of the inputs, element-wise.
		
		Unlike 'floor division', true division adjusts the output type
		to present the best answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		In Python, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		The ``/`` operator can be used as a shorthand for ``np.true_divide`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> x / 4
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
	**/
	static public function true_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trunc(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truncated value of the input, element-wise.
		
		The truncated value of the scalar `x` is the nearest integer `i` which
		is closer to zero than `x` is. In short, the fractional part of the
		signed number `x` is discarded.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The truncated value of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, floor, rint, fix
		
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
	static public var typeinfo : Dynamic;
	/**
		unpackbits(a, /, axis=None, count=None, bitorder='big')
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `a` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is
		either 1-D (if `axis` is ``None``) or the same shape as the input
		array with unpacking done along the axis specified.
		
		Parameters
		----------
		a : ndarray, uint8 type
		   Input array.
		axis : int, optional
		    The dimension over which bit-unpacking is done.
		    ``None`` implies unpacking the flattened array.
		count : int or None, optional
		    The number of elements to unpack along `axis`, provided as a way
		    of undoing the effect of packing a size that is not a multiple
		    of eight. A non-negative number means to only unpack `count`
		    bits. A negative number means to trim off that many bits from
		    the end. ``None`` means to unpack the entire array (the
		    default). Counts larger than the available number of bits will
		    add zero padding to the output. Negative counts must not
		    exceed the available number of bits.
		
		    .. versionadded:: 1.17.0
		
		bitorder : {'big', 'little'}, optional
		    The order of the returned bits. 'big' will mimic bin(val),
		    ``3 = 0b00000011 => [0, 0, 0, 0, 0, 0, 1, 1]``, 'little' will reverse
		    the order to ``[1, 1, 0, 0, 0, 0, 0, 0]``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in
		           a uint8 array.
		
		Examples
		--------
		>>> a = np.array([[2], [7], [23]], dtype=np.uint8)
		>>> a
		array([[ 2],
		       [ 7],
		       [23]], dtype=uint8)
		>>> b = np.unpackbits(a, axis=1)
		>>> b
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1]], dtype=uint8)
		>>> c = np.unpackbits(a, axis=1, count=-3)
		>>> c
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0]], dtype=uint8)
		
		>>> p = np.packbits(b, axis=0)
		>>> np.unpackbits(p, axis=0)
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]], dtype=uint8)
		>>> np.array_equal(b, np.unpackbits(p, axis=0, count=b.shape[0]))
		True
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unravel_index(indices, shape, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``shape``. Before version 1.6.0,
		    this function accepted just one index value.
		shape : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		
		    .. versionchanged:: 1.16.0
		        Renamed from ``dims`` to ``shape``.
		
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
		
		Examples
		--------
		>>> np.unravel_index([22, 41, 37], (7,6))
		(array([3, 6, 6]), array([4, 5, 1]))
		>>> np.unravel_index([31, 41, 13], (7,6), order='F')
		(array([3, 6, 6]), array([4, 5, 1]))
		
		>>> np.unravel_index(1621, (6,7,8,9))
		(3, 1, 4, 1)
	**/
	static public function unravel_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vdot(a, b, /)
		
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
		where(condition, [x, y], /)
		
		Return elements chosen from `x` or `y` depending on `condition`.
		
		.. note::
		    When only `condition` is provided, this function is a shorthand for
		    ``np.asarray(condition).nonzero()``. Using `nonzero` directly should be
		    preferred, as it behaves correctly for subclasses. The rest of this
		    documentation covers only the case where all three arguments are
		    provided.
		
		Parameters
		----------
		condition : array_like, bool
		    Where True, yield `x`, otherwise yield `y`.
		x, y : array_like
		    Values from which to choose. `x`, `y` and `condition` need to be
		    broadcastable to some shape.
		
		Returns
		-------
		out : ndarray
		    An array with elements from `x` where `condition` is True, and elements
		    from `y` elsewhere.
		
		See Also
		--------
		choose
		nonzero : The function that is called when x and y are omitted
		
		Notes
		-----
		If all the arrays are 1-D, `where` is equivalent to::
		
		    [xv if c else yv
		     for c, xv, yv in zip(condition, x, y)]
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.where(a < 5, a, 10*a)
		array([ 0,  1,  2,  3,  4, 50, 60, 70, 80, 90])
		
		This can be used on multidimensional arrays too:
		
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		The shapes of x, y, and the condition are broadcast together:
		
		>>> x, y = np.ogrid[:3, :4]
		>>> np.where(x < y, x, 10 + y)  # both x and 10+y are broadcast
		array([[10,  0,  0,  0],
		       [10, 11,  1,  1],
		       [10, 11, 12,  2]])
		
		>>> a = np.array([[0, 1, 2],
		...               [0, 2, 4],
		...               [0, 3, 6]])
		>>> np.where(a < 4, a, -1)  # -1 is broadcast
		array([[ 0,  1,  2],
		       [ 0,  2, -1],
		       [ 0,  3, -1]])
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zeros(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
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
}