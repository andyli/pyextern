/* This file is generated, do not edit! */
package scipy.signal.bsplines;
@:pythonImport("scipy.signal.bsplines") extern class Bsplines_Module {
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
		B-spline basis function of order n.
		
		Parameters
		----------
		x : array_like
		    a knot vector
		n : int
		    The order of the spline. Must be non-negative, i.e., n >= 0
		
		Returns
		-------
		res : ndarray
		    B-spline basis function values
		
		See Also
		--------
		cubic : A cubic B-spline.
		quadratic : A quadratic B-spline.
		
		Notes
		-----
		Uses numpy.piecewise and automatic function-generator.
		
		Examples
		--------
		We can calculate B-Spline basis function of several orders:
		
		>>> from scipy.signal import bspline, cubic, quadratic
		>>> bspline(0.0, 1)
		1
		
		>>> knots = [-1.0, 0.0, -1.0]
		>>> bspline(knots, 2)
		array([0.125, 0.75, 0.125])
		
		>>> np.array_equal(bspline(knots, 2), quadratic(knots))
		True
		
		>>> np.array_equal(bspline(knots, 3), cubic(knots))
		True
	**/
	static public function bspline(x:Dynamic, n:Dynamic):Dynamic;
	/**
		The number of combinations of N things taken k at a time.
		
		This is often expressed as "N choose k".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		repetition : bool, optional
		    If `repetition` is True, then the number of combinations with
		    repetition is computed.
		
		Returns
		-------
		val : int, float, ndarray
		    The total number of combinations.
		
		See Also
		--------
		binom : Binomial coefficient ufunc
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If N < 0, or k < 0, then 0 is returned.
		- If k > N and repetition=False, then 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120
		>>> comb(10, 3, exact=True, repetition=True)
		220
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		Compute cubic spline coefficients for rank-1 array.
		
		Find the cubic spline coefficients for a 1-D signal assuming
		mirror-symmetric boundary conditions. To obtain the signal back from the
		spline representation mirror-symmetric-convolve these coefficients with a
		length 3 FIR window [1.0, 4.0, 1.0]/ 6.0 .
		
		Parameters
		----------
		signal : ndarray
		    A rank-1 array representing samples of a signal.
		lamb : float, optional
		    Smoothing coefficient, default is 0.0.
		
		Returns
		-------
		c : ndarray
		    Cubic spline coefficients.
		
		See Also
		--------
		cspline1d_eval : Evaluate a cubic spline at the new set of points.
		
		Examples
		--------
		We can filter a signal to reduce and smooth out high-frequency noise with
		a cubic spline:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import cspline1d, cspline1d_eval
		>>> rng = np.random.default_rng()
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> sig += rng.standard_normal(len(sig))*0.05  # add noise
		>>> time = np.linspace(0, len(sig))
		>>> filtered = cspline1d_eval(cspline1d(sig), time)
		>>> plt.plot(sig, label="signal")
		>>> plt.plot(time, filtered, label="filtered")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function cspline1d(signal:Dynamic, ?lamb:Dynamic):Dynamic;
	/**
		Evaluate a cubic spline at the new set of points.
		
		`dx` is the old sample-spacing while `x0` was the old origin. In
		other-words the old-sample points (knot-points) for which the `cj`
		represent spline coefficients were at equally-spaced points of:
		
		  oldx = x0 + j*dx  j=0...N-1, with N=len(cj)
		
		Edges are handled using mirror-symmetric boundary conditions.
		
		Parameters
		----------
		cj : ndarray
		    cublic spline coefficients
		newx : ndarray
		    New set of points.
		dx : float, optional
		    Old sample-spacing, the default value is 1.0.
		x0 : int, optional
		    Old origin, the default value is 0.
		
		Returns
		-------
		res : ndarray
		    Evaluated a cubic spline points.
		
		See Also
		--------
		cspline1d : Compute cubic spline coefficients for rank-1 array.
		
		Examples
		--------
		We can filter a signal to reduce and smooth out high-frequency noise with
		a cubic spline:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import cspline1d, cspline1d_eval
		>>> rng = np.random.default_rng()
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> sig += rng.standard_normal(len(sig))*0.05  # add noise
		>>> time = np.linspace(0, len(sig))
		>>> filtered = cspline1d_eval(cspline1d(sig), time)
		>>> plt.plot(sig, label="signal")
		>>> plt.plot(time, filtered, label="filtered")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function cspline1d_eval(cj:Dynamic, newx:Dynamic, ?dx:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		out = cspline2d(input, lambda=0.0, precision=-1.0)
		
		Coefficients for 2-D cubic (3rd order) B-spline.
		
		Return the third-order B-spline coefficients over a regularly spaced
		input grid for the two-dimensional input image.
		
		Parameters
		----------
		input : ndarray
		    The input signal.
		lambda : float
		    Specifies the amount of smoothing in the transfer function.
		precision : float
		    Specifies the precision for computing the infinite sum needed to apply mirror-
		    symmetric boundary conditions.
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-signal-bsplines>`.
	**/
	static public function cspline2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A cubic B-spline.
		
		This is a special case of `bspline`, and equivalent to ``bspline(x, 3)``.
		
		Parameters
		----------
		x : array_like
		    a knot vector
		
		Returns
		-------
		res : ndarray
		    Cubic B-spline basis function values
		
		See Also
		--------
		bspline : B-spline basis function of order n
		quadratic : A quadratic B-spline.
		
		Examples
		--------
		We can calculate B-Spline basis function of several orders:
		
		>>> from scipy.signal import bspline, cubic, quadratic
		>>> bspline(0.0, 1)
		1
		
		>>> knots = [-1.0, 0.0, -1.0]
		>>> bspline(knots, 2)
		array([0.125, 0.75, 0.125])
		
		>>> np.array_equal(bspline(knots, 2), quadratic(knots))
		True
		
		>>> np.array_equal(bspline(knots, 3), cubic(knots))
		True
	**/
	static public function cubic(x:Dynamic):Dynamic;
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
		Compute the factorial and return as a float
		
		Returns infinity when result is too large for a double
	**/
	static public function float_factorial(n:Dynamic):Dynamic;
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
		Gaussian approximation to B-spline basis function of order n.
		
		Parameters
		----------
		x : array_like
		    a knot vector
		n : int
		    The order of the spline. Must be non-negative, i.e., n >= 0
		
		Returns
		-------
		res : ndarray
		    B-spline basis function values approximated by a zero-mean Gaussian
		    function.
		
		Notes
		-----
		The B-spline basis function can be approximated well by a zero-mean
		Gaussian function with standard-deviation equal to :math:`\sigma=(n+1)/12`
		for large `n` :
		
		.. math::  \frac{1}{\sqrt {2\pi\sigma^2}}exp(-\frac{x^2}{2\sigma})
		
		References
		----------
		.. [1] Bouma H., Vilanova A., Bescos J.O., ter Haar Romeny B.M., Gerritsen
		   F.A. (2007) Fast and Accurate Gaussian Derivatives Based on B-Splines. In:
		   Sgallari F., Murli A., Paragios N. (eds) Scale Space and Variational
		   Methods in Computer Vision. SSVM 2007. Lecture Notes in Computer
		   Science, vol 4485. Springer, Berlin, Heidelberg
		.. [2] http://folk.uio.no/inf3330/scripting/doc/python/SciPy/tutorial/old/node24.html
		
		Examples
		--------
		We can calculate B-Spline basis functions approximated by a gaussian
		distribution:
		
		>>> from scipy.signal import gauss_spline, bspline
		>>> knots = np.array([-1.0, 0.0, -1.0])
		>>> gauss_spline(knots, 3)
		array([0.15418033, 0.6909883, 0.15418033])  # may vary
		
		>>> bspline(knots, 3)
		array([0.16666667, 0.66666667, 0.16666667])  # may vary
	**/
	static public function gauss_spline(x:Dynamic, n:Dynamic):Dynamic;
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
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray or scalar
		    The input domain.
		condlist : list of bool arrays or bool scalars
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) == len(condlist) + 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take a 1d array as input and give an 1d
		    array or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., alpha=1)``, then each function is called as
		    ``f(x, alpha=1)``.
		
		Returns
		-------
		out : ndarray
		    The output is the same shape and type as x and is found by
		    calling the functions in `funclist` on the appropriate portions of `x`,
		    as defined by the boolean arrays in `condlist`.  Portions not covered
		    by any condition have a default value of 0.
		
		
		See Also
		--------
		choose, select, where
		
		Notes
		-----
		This is similar to choose or select, except that functions are
		evaluated on elements of `x` that satisfy the corresponding condition from
		`condlist`.
		
		The result is::
		
		        |--
		        |funclist[0](x[condlist[0]])
		  out = |funclist[1](x[condlist[1]])
		        |...
		        |funclist[n2](x[condlist[n2]])
		        |--
		
		Examples
		--------
		Define the sigma function, which is -1 for ``x < 0`` and +1 for ``x >= 0``.
		
		>>> x = np.linspace(-2.5, 2.5, 6)
		>>> np.piecewise(x, [x < 0, x >= 0], [-1, 1])
		array([-1., -1., -1.,  1.,  1.,  1.])
		
		Define the absolute value, which is ``-x`` for ``x <0`` and ``x`` for
		``x >= 0``.
		
		>>> np.piecewise(x, [x < 0, x >= 0], [lambda x: -x, lambda x: x])
		array([2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
		
		Apply the same function to a scalar value.
		
		>>> y = -2
		>>> np.piecewise(y, [y < 0, y >= 0], [lambda x: -x, lambda x: x])
		array(2)
	**/
	static public function piecewise(x:Dynamic, condlist:Dynamic, funclist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute quadratic spline coefficients for rank-1 array.
		
		Parameters
		----------
		signal : ndarray
		    A rank-1 array representing samples of a signal.
		lamb : float, optional
		    Smoothing coefficient (must be zero for now).
		
		Returns
		-------
		c : ndarray
		    Quadratic spline coefficients.
		
		See Also
		--------
		qspline1d_eval : Evaluate a quadratic spline at the new set of points.
		
		Notes
		-----
		Find the quadratic spline coefficients for a 1-D signal assuming
		mirror-symmetric boundary conditions. To obtain the signal back from the
		spline representation mirror-symmetric-convolve these coefficients with a
		length 3 FIR window [1.0, 6.0, 1.0]/ 8.0 .
		
		Examples
		--------
		We can filter a signal to reduce and smooth out high-frequency noise with
		a quadratic spline:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import qspline1d, qspline1d_eval
		>>> rng = np.random.default_rng()
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> sig += rng.standard_normal(len(sig))*0.05  # add noise
		>>> time = np.linspace(0, len(sig))
		>>> filtered = qspline1d_eval(qspline1d(sig), time)
		>>> plt.plot(sig, label="signal")
		>>> plt.plot(time, filtered, label="filtered")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function qspline1d(signal:Dynamic, ?lamb:Dynamic):Dynamic;
	/**
		Evaluate a quadratic spline at the new set of points.
		
		Parameters
		----------
		cj : ndarray
		    Quadratic spline coefficients
		newx : ndarray
		    New set of points.
		dx : float, optional
		    Old sample-spacing, the default value is 1.0.
		x0 : int, optional
		    Old origin, the default value is 0.
		
		Returns
		-------
		res : ndarray
		    Evaluated a quadratic spline points.
		
		See Also
		--------
		qspline1d : Compute quadratic spline coefficients for rank-1 array.
		
		Notes
		-----
		`dx` is the old sample-spacing while `x0` was the old origin. In
		other-words the old-sample points (knot-points) for which the `cj`
		represent spline coefficients were at equally-spaced points of::
		
		  oldx = x0 + j*dx  j=0...N-1, with N=len(cj)
		
		Edges are handled using mirror-symmetric boundary conditions.
		
		Examples
		--------
		We can filter a signal to reduce and smooth out high-frequency noise with
		a quadratic spline:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import qspline1d, qspline1d_eval
		>>> rng = np.random.default_rng()
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> sig += rng.standard_normal(len(sig))*0.05  # add noise
		>>> time = np.linspace(0, len(sig))
		>>> filtered = qspline1d_eval(qspline1d(sig), time)
		>>> plt.plot(sig, label="signal")
		>>> plt.plot(time, filtered, label="filtered")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function qspline1d_eval(cj:Dynamic, newx:Dynamic, ?dx:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		A quadratic B-spline.
		
		This is a special case of `bspline`, and equivalent to ``bspline(x, 2)``.
		
		Parameters
		----------
		x : array_like
		    a knot vector
		
		Returns
		-------
		res : ndarray
		    Quadratic B-spline basis function values
		
		See Also
		--------
		bspline : B-spline basis function of order n
		cubic : A cubic B-spline.
		
		Examples
		--------
		We can calculate B-Spline basis function of several orders:
		
		>>> from scipy.signal import bspline, cubic, quadratic
		>>> bspline(0.0, 1)
		1
		
		>>> knots = [-1.0, 0.0, -1.0]
		>>> bspline(knots, 2)
		array([0.125, 0.75, 0.125])
		
		>>> np.array_equal(bspline(knots, 2), quadratic(knots))
		True
		
		>>> np.array_equal(bspline(knots, 3), cubic(knots))
		True
	**/
	static public function quadratic(x:Dynamic):Dynamic;
	/**
		out = sepfir2d(input, hrow, hcol)
		
		Convolve with a 2-D separable FIR filter.
		
		Convolve the rank-2 input array with the separable filter defined by the
		rank-1 arrays hrow, and hcol. Mirror symmetric boundary conditions are
		assumed. This function can be used to find an image given its B-spline
		representation.
		
		Parameters
		----------
		input : ndarray
		    The input signal. Must be a rank-2 array.
		hrow : ndarray
		    A rank-1 array defining the row direction of the filter.
		    Must be odd-length
		hcol : ndarray
		    A rank-1 array defining the column direction of the filter.
		    Must be odd-length
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-signal-bsplines>`.
	**/
	static public function sepfir2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Smoothing spline (cubic) filtering of a rank-2 array.
		
		Filter an input data set, `Iin`, using a (cubic) smoothing spline of
		fall-off `lmbda`.
		
		Parameters
		----------
		Iin : array_like
		    input data set
		lmbda : float, optional
		    spline smooghing fall-off value, default is `5.0`.
		
		Returns
		-------
		res : ndarray
		    filterd input data
		
		Examples
		--------
		We can filter an multi dimentional signal (ex: 2D image) using cubic
		B-spline filter:
		
		>>> from scipy.signal import spline_filter
		>>> import matplotlib.pyplot as plt
		>>> orig_img = np.eye(20)  # create an image
		>>> orig_img[10, :] = 1.0
		>>> sp_filter = spline_filter(orig_img, lmbda=0.1)
		>>> f, ax = plt.subplots(1, 2, sharex=True)
		>>> for ind, data in enumerate([[orig_img, "original image"],
		...                             [sp_filter, "spline filter"]]):
		...     ax[ind].imshow(data[0], cmap='gray_r')
		...     ax[ind].set_title(data[1])
		>>> plt.tight_layout()
		>>> plt.show()
	**/
	static public function spline_filter(Iin:Dynamic, ?lmbda:Dynamic):Dynamic;
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
		    type of `a`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		zeros : Return a new array setting values to zero.
		
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
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([0., 1., 2.])
		>>> np.zeros_like(y)
		array([0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
}