/* This file is generated, do not edit! */
package scipy.integrate.quadrature;
@:pythonImport("scipy.integrate.quadrature") extern class Quadrature_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _basic_simps(y:Dynamic, start:Dynamic, stop:Dynamic, x:Dynamic, dx:Dynamic, axis:Dynamic):Dynamic;
	static public var _builtincoeffs : Dynamic;
	/**
		Cache p_roots results for speeding up multiple calls of the fixed_quad function.
	**/
	static public function _cached_p_roots(n:Dynamic):Dynamic;
	/**
		Perform part of the trapezoidal rule to integrate a function.
		Assume that we had called difftrap with all lower powers-of-2
		starting with 1.  Calling difftrap only returns the summation
		of the new ordinates.  It does _not_ multiply by the width
		of the trapezoids.  This must be performed by the caller.
		    'function' is the function to evaluate (must accept vector arguments).
		    'interval' is a sequence with lower and upper limits
		               of integration.
		    'numtraps' is the number of trapezoids to use (must be a
		               power-of-2).
	**/
	static public function _difftrap(_function:Dynamic, interval:Dynamic, numtraps:Dynamic):Dynamic;
	static public function _printresmat(_function:Dynamic, interval:Dynamic, resmat:Dynamic):Dynamic;
	/**
		Compute the differences for the Romberg quadrature corrections.
		See Forman Acton's "Real Computing Made Real," p 143.
	**/
	static public function _romberg_diff(b:Dynamic, c:Dynamic, k:Dynamic):Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Cumulatively integrate y(x) using the composite trapezoidal rule.
		
		Parameters
		----------
		y : array_like
		    Values to integrate.
		x : array_like, optional
		    The coordinate to integrate along.  If None (default), use spacing `dx`
		    between consecutive elements in `y`.
		dx : int, optional
		    Spacing between elements of `y`.  Only used if `x` is None.
		axis : int, optional
		    Specifies the axis to cumulate.  Default is -1 (last axis).
		initial : scalar, optional
		    If given, uses this value as the first value in the returned result.
		    Typically this value should be 0.  Default is None, which means no
		    value at ``x[0]`` is returned and `res` has one element less than `y`
		    along the axis of integration.
		
		Returns
		-------
		res : ndarray
		    The result of cumulative integration of `y` along `axis`.
		    If `initial` is None, the shape is such that the axis of integration
		    has one less value than `y`.  If `initial` is given, the shape is equal
		    to that of `y`.
		
		See Also
		--------
		numpy.cumsum, numpy.cumprod
		quad: adaptive quadrature using QUADPACK
		romberg: adaptive Romberg quadrature
		quadrature: adaptive Gaussian quadrature
		fixed_quad: fixed-order Gaussian quadrature
		dblquad: double integrals
		tplquad: triple integrals
		romb: integrators for sampled data
		ode: ODE integrators
		odeint: ODE integrators
		
		Examples
		--------
		>>> from scipy import integrate
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2, 2, num=20)
		>>> y = x
		>>> y_int = integrate.cumtrapz(y, x, initial=0)
		>>> plt.plot(x, y_int, 'ro', x, y[0] + 0.5 * x**2, 'b-')
		>>> plt.show()
	**/
	static public function cumtrapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic, ?initial:Dynamic):Dynamic;
	/**
		Calculate the n-th order discrete difference along given axis.
		
		The first order difference is given by ``out[n] = a[n+1] - a[n]`` along
		the given axis, higher order differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced.
		axis : int, optional
		    The axis along which the difference is taken, default is the last axis.
		
		Returns
		-------
		diff : ndarray
		    The `n` order differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.diff(x)
		array([ 1,  2,  3, -7])
		>>> np.diff(x, n=2)
		array([  1,   1, -10])
		
		>>> x = np.array([[1, 3, 6, 10], [0, 5, 6, 8]])
		>>> np.diff(x)
		array([[2, 3, 4],
		       [5, 1, 2]])
		>>> np.diff(x, axis=0)
		array([[-1,  2,  0, -2]])
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		Compute a definite integral using fixed-order Gaussian quadrature.
		
		Integrate `func` from `a` to `b` using Gaussian quadrature of
		order `n`.
		
		Parameters
		----------
		func : callable
		    A Python function or method to integrate (must accept vector inputs).
		a : float
		    Lower limit of integration.
		b : float
		    Upper limit of integration.
		args : tuple, optional
		    Extra arguments to pass to function, if any.
		n : int, optional
		    Order of quadrature integration. Default is 5.
		
		Returns
		-------
		val : float
		    Gaussian quadrature approximation to the integral
		
		See Also
		--------
		quad : adaptive quadrature using QUADPACK
		dblquad : double integrals
		tplquad : triple integrals
		romberg : adaptive Romberg quadrature
		quadrature : adaptive Gaussian quadrature
		romb : integrators for sampled data
		simps : integrators for sampled data
		cumtrapz : cumulative integration for sampled data
		ode : ODE integrator
		odeint : ODE integrator
	**/
	static public function fixed_quad(func:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?n:Dynamic):Dynamic;
	/**
		gammaln(x[, out])
		
		gammaln(z)
		
		Logarithm of absolute value of gamma function
		
		Defined as::
		
		    ln(abs(gamma(z)))
		
		See Also
		--------
		gammasgn
	**/
	static public function gammaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function isscalar(num:Dynamic):Dynamic;
	/**
		Return weights and error coefficient for Newton-Cotes integration.
		
		Suppose we have (N+1) samples of f at the positions
		x_0, x_1, ..., x_N.  Then an N-point Newton-Cotes formula for the
		integral between x_0 and x_N is:
		
		:math:`\int_{x_0}^{x_N} f(x)dx = \Delta x \sum_{i=0}^{N} a_i f(x_i)
		+ B_N (\Delta x)^{N+2} f^{N+1} (\xi)`
		
		where :math:`\xi \in [x_0,x_N]` and :math:`\Delta x = \frac{x_N-x_0}{N}`
		is the averages samples spacing.
		
		If the samples are equally-spaced and N is even, then the error
		term is :math:`B_N (\Delta x)^{N+3} f^{N+2}(\xi)`.
		
		Parameters
		----------
		rn : int
		    The integer order for equally-spaced data or the relative positions of
		    the samples with the first sample at 0 and the last at N, where N+1 is
		    the length of `rn`.  N is the order of the Newton-Cotes integration.
		equal : int, optional
		    Set to 1 to enforce equally spaced data.
		
		Returns
		-------
		an : ndarray
		    1-D array of weights to apply to the function at the provided sample
		    positions.
		B : float
		    Error coefficient.
		
		Notes
		-----
		Normally, the Newton-Cotes rules are used on smaller integration
		regions and a composite rule is used to return the total integral.
	**/
	static public function newton_cotes(rn:Dynamic, ?equal:Dynamic):Dynamic;
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
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Gauss-Legendre quadrature
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the `n`th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function p_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute a definite integral using fixed-tolerance Gaussian quadrature.
		
		Integrate `func` from `a` to `b` using Gaussian quadrature
		with absolute tolerance `tol`.
		
		Parameters
		----------
		func : function
		    A Python function or method to integrate.
		a : float
		    Lower limit of integration.
		b : float
		    Upper limit of integration.
		args : tuple, optional
		    Extra arguments to pass to function.
		tol, rtol : float, optional
		    Iteration stops when error between last two iterates is less than
		    `tol` OR the relative change is less than `rtol`.
		maxiter : int, optional
		    Maximum order of Gaussian quadrature.
		vec_func : bool, optional
		    True or False if func handles arrays as arguments (is
		    a "vector" function). Default is True.
		miniter : int, optional
		    Minimum order of Gaussian quadrature.
		
		Returns
		-------
		val : float
		    Gaussian quadrature approximation (within tolerance) to integral.
		err : float
		    Difference between last two estimates of the integral.
		
		See also
		--------
		romberg: adaptive Romberg quadrature
		fixed_quad: fixed-order Gaussian quadrature
		quad: adaptive quadrature using QUADPACK
		dblquad: double integrals
		tplquad: triple integrals
		romb: integrator for sampled data
		simps: integrator for sampled data
		cumtrapz: cumulative integration for sampled data
		ode: ODE integrator
		odeint: ODE integrator
	**/
	static public function quadrature(func:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?vec_func:Dynamic, ?miniter:Dynamic):Dynamic;
	/**
		Return the real part of the elements of the array.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array. If `val` is real, the type of `val` is used for the
		    output.  If `val` has complex elements, the returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([ 1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([ 9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([ 9.+2.j,  8.+4.j,  7.+6.j])
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		Romberg integration using samples of a function.
		
		Parameters
		----------
		y : array_like
		    A vector of ``2**k + 1`` equally-spaced samples of a function.
		dx : float, optional
		    The sample spacing. Default is 1.
		axis : int, optional
		    The axis along which to integrate. Default is -1 (last axis).
		show : bool, optional
		    When `y` is a single 1-D array, then if this argument is True
		    print the table showing Richardson extrapolation from the
		    samples. Default is False.
		
		Returns
		-------
		romb : ndarray
		    The integrated result for `axis`.
		
		See also
		--------
		quad : adaptive quadrature using QUADPACK
		romberg : adaptive Romberg quadrature
		quadrature : adaptive Gaussian quadrature
		fixed_quad : fixed-order Gaussian quadrature
		dblquad : double integrals
		tplquad : triple integrals
		simps : integrators for sampled data
		cumtrapz : cumulative integration for sampled data
		ode : ODE integrators
		odeint : ODE integrators
	**/
	static public function romb(y:Dynamic, ?dx:Dynamic, ?axis:Dynamic, ?show:Dynamic):Dynamic;
	/**
		Romberg integration of a callable function or method.
		
		Returns the integral of `function` (a function of one variable)
		over the interval (`a`, `b`).
		
		If `show` is 1, the triangular array of the intermediate results
		will be printed.  If `vec_func` is True (default is False), then
		`function` is assumed to support vector arguments.
		
		Parameters
		----------
		function : callable
		    Function to be integrated.
		a : float
		    Lower limit of integration.
		b : float
		    Upper limit of integration.
		
		Returns
		-------
		results  : float
		    Result of the integration.
		
		Other Parameters
		----------------
		args : tuple, optional
		    Extra arguments to pass to function. Each element of `args` will
		    be passed as a single argument to `func`. Default is to pass no
		    extra arguments.
		tol, rtol : float, optional
		    The desired absolute and relative tolerances. Defaults are 1.48e-8.
		show : bool, optional
		    Whether to print the results. Default is False.
		divmax : int, optional
		    Maximum order of extrapolation. Default is 10.
		vec_func : bool, optional
		    Whether `func` handles arrays as arguments (i.e whether it is a
		    "vector" function). Default is False.
		
		See Also
		--------
		fixed_quad : Fixed-order Gaussian quadrature.
		quad : Adaptive quadrature using QUADPACK.
		dblquad : Double integrals.
		tplquad : Triple integrals.
		romb : Integrators for sampled data.
		simps : Integrators for sampled data.
		cumtrapz : Cumulative integration for sampled data.
		ode : ODE integrator.
		odeint : ODE integrator.
		
		References
		----------
		.. [1] 'Romberg's method' http://en.wikipedia.org/wiki/Romberg%27s_method
		
		Examples
		--------
		Integrate a gaussian from 0 to 1 and compare to the error function.
		
		>>> from scipy import integrate
		>>> from scipy.special import erf
		>>> gaussian = lambda x: 1/np.sqrt(np.pi) * np.exp(-x**2)
		>>> result = integrate.romberg(gaussian, 0, 1, show=True)
		Romberg integration of <function vfunc at ...> from [0, 1]
		
		::
		
		   Steps  StepSize  Results
		       1  1.000000  0.385872
		       2  0.500000  0.412631  0.421551
		       4  0.250000  0.419184  0.421368  0.421356
		       8  0.125000  0.420810  0.421352  0.421350  0.421350
		      16  0.062500  0.421215  0.421350  0.421350  0.421350  0.421350
		      32  0.031250  0.421317  0.421350  0.421350  0.421350  0.421350  0.421350
		
		The final result is 0.421350396475 after 33 function evaluations.
		
		>>> print("%g %g" % (2*result, erf(1)))
		0.842701 0.842701
	**/
	static public function romberg(_function:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?rtol:Dynamic, ?show:Dynamic, ?divmax:Dynamic, ?vec_func:Dynamic):Dynamic;
	/**
		Integrate y(x) using samples along the given axis and the composite
		Simpson's rule.  If x is None, spacing of dx is assumed.
		
		If there are an even number of samples, N, then there are an odd
		number of intervals (N-1), but Simpson's rule requires an even number
		of intervals.  The parameter 'even' controls how this is handled.
		
		Parameters
		----------
		y : array_like
		    Array to be integrated.
		x : array_like, optional
		    If given, the points at which `y` is sampled.
		dx : int, optional
		    Spacing of integration points along axis of `y`. Only used when
		    `x` is None. Default is 1.
		axis : int, optional
		    Axis along which to integrate. Default is the last axis.
		even : {'avg', 'first', 'str'}, optional
		    'avg' : Average two results:1) use the first N-2 intervals with
		              a trapezoidal rule on the last interval and 2) use the last
		              N-2 intervals with a trapezoidal rule on the first interval.
		
		    'first' : Use Simpson's rule for the first N-2 intervals with
		            a trapezoidal rule on the last interval.
		
		    'last' : Use Simpson's rule for the last N-2 intervals with a
		           trapezoidal rule on the first interval.
		
		See Also
		--------
		quad: adaptive quadrature using QUADPACK
		romberg: adaptive Romberg quadrature
		quadrature: adaptive Gaussian quadrature
		fixed_quad: fixed-order Gaussian quadrature
		dblquad: double integrals
		tplquad: triple integrals
		romb: integrators for sampled data
		cumtrapz: cumulative integration for sampled data
		ode: ODE integrators
		odeint: ODE integrators
		
		Notes
		-----
		For an odd number of samples that are equally spaced the result is
		exact if the function is a polynomial of order 3 or less.  If
		the samples are not equally spaced, then the result is exact only
		if the function is a polynomial of order 2 or less.
	**/
	static public function simps(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic, ?even:Dynamic):Dynamic;
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
		Integrate along the given axis using the composite trapezoidal rule.
		
		Integrate `y` (`x`) along given axis.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    If `x` is None, then spacing between all `y` elements is `dx`.
		dx : scalar, optional
		    If `x` is None, spacing given by `dx` is assumed. Default is 1.
		axis : int, optional
		    Specify the axis.
		
		Returns
		-------
		trapz : float
		    Definite integral as approximated by trapezoidal rule.
		
		See Also
		--------
		sum, cumsum
		
		Notes
		-----
		Image [2]_ illustrates trapezoidal rule -- y-axis locations of points
		will be taken from `y` array, by default x-axis distances between
		points will be 1.0, alternatively they can be provided with `x` array
		or with `dx` scalar.  Return value will be equal to combined area under
		the red lines.
		
		
		References
		----------
		.. [1] Wikipedia page: http://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       http://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([ 1.5,  2.5,  3.5])
		>>> np.trapz(a, axis=1)
		array([ 2.,  8.])
	**/
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Dynamic;
	static public function tupleset(t:Dynamic, i:Dynamic, value:Dynamic):Dynamic;
	/**
		Vectorize the call to a function.
		
		This is an internal utility function used by `romberg` and
		`quadrature` to create a vectorized version of a function.
		
		If `vec_func` is True, the function `func` is assumed to take vector
		arguments.
		
		Parameters
		----------
		func : callable
		    User defined function.
		args : tuple, optional
		    Extra arguments for the function.
		vec_func : bool, optional
		    True if the function func takes vector arguments.
		
		Returns
		-------
		vfunc : callable
		    A function that will take a vector argument and return the
		    result.
	**/
	static public function vectorize1(func:Dynamic, ?args:Dynamic, ?vec_func:Dynamic):Dynamic;
}