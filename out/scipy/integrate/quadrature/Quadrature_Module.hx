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
		Cache roots_legendre results to speed up calls of the fixed_quad
		function.
	**/
	static public function _cached_roots_legendre(n:Dynamic):Dynamic;
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
		Cumulatively integrate y(x) using the composite trapezoidal rule.
		
		Parameters
		----------
		y : array_like
		    Values to integrate.
		x : array_like, optional
		    The coordinate to integrate along.  If None (default), use spacing `dx`
		    between consecutive elements in `y`.
		dx : float, optional
		    Spacing between elements of `y`.  Only used if `x` is None.
		axis : int, optional
		    Specifies the axis to cumulate.  Default is -1 (last axis).
		initial : scalar, optional
		    If given, insert this value at the beginning of the returned result.
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
	static public var division : Dynamic;
	/**
		Compute a definite integral using fixed-order Gaussian quadrature.
		
		Integrate `func` from `a` to `b` using Gaussian quadrature of
		order `n`.
		
		Parameters
		----------
		func : callable
		    A Python function or method to integrate (must accept vector inputs).
		    If integrating a vector-valued function, the returned array must have
		    shape ``(..., len(x))``.
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
		none : None
		    Statically returned value of None
		
		
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
	static public function fixed_quad(func:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?n:Dynamic):Float;
	/**
		gammaln(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Logarithm of the absolute value of the Gamma function.
		
		Parameters
		----------
		x : array-like
		    Values on the real line at which to compute ``gammaln``
		
		Returns
		-------
		gammaln : ndarray
		    Values of ``gammaln`` at x.
		
		See Also
		--------
		gammasgn : sign of the gamma function
		loggamma : principal branch of the logarithm of the gamma function
		
		Notes
		-----
		When used in conjunction with `gammasgn`, this function is useful
		for working in logspace on the real axis without having to deal with
		complex numbers, via the relation ``exp(gammaln(x)) = gammasgn(x)*gamma(x)``.
		
		For complex-valued log-gamma, use `loggamma` instead of `gammaln`.
	**/
	static public function gammaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return weights and error coefficient for Newton-Cotes integration.
		
		Suppose we have (N+1) samples of f at the positions
		x_0, x_1, ..., x_N.  Then an N-point Newton-Cotes formula for the
		integral between x_0 and x_N is:
		
		:math:`\int_{x_0}^{x_N} f(x)dx = \Delta x \sum_{i=0}^{N} a_i f(x_i)
		+ B_N (\Delta x)^{N+2} f^{N+1} (\xi)`
		
		where :math:`\xi \in [x_0,x_N]`
		and :math:`\Delta x = \frac{x_N-x_0}{N}` is the average samples spacing.
		
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
	static public function quadrature(func:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?vec_func:Dynamic, ?miniter:Dynamic):Float;
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
		
		Examples
		--------
		>>> from scipy import integrate
		>>> x = np.arange(10, 14.25, 0.25)
		>>> y = np.arange(3, 12)
		
		>>> integrate.romb(y)
		56.0
		
		>>> y = np.sin(np.power(x, 2.5))
		>>> integrate.romb(y)
		-0.742561336672229
		
		>>> integrate.romb(y, show=True)
		Richardson Extrapolation Table for Romberg Integration       
		====================================================================
		-0.81576 
		4.63862  6.45674 
		-1.10581 -3.02062 -3.65245 
		-2.57379 -3.06311 -3.06595 -3.05664 
		-1.34093 -0.92997 -0.78776 -0.75160 -0.74256 
		====================================================================
		-0.742561336672229
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
	static public function romberg(_function:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?rtol:Dynamic, ?show:Dynamic, ?divmax:Dynamic, ?vec_func:Dynamic):Float;
	/**
		Gauss-Legendre quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function roots_legendre(n:Dynamic, ?mu:Dynamic):Dynamic;
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
		even : str {'avg', 'first', 'last'}, optional
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
		
		Examples
		--------
		>>> from scipy import integrate
		>>> x = np.arange(0, 10)
		>>> y = np.arange(0, 10)
		
		>>> integrate.simps(y, x)
		40.5
		
		>>> y = np.power(x, 3)
		>>> integrate.simps(y, x)
		1642.5
		>>> integrate.quad(lambda x: x**3, 0, 9)[0]
		1640.25
		
		>>> integrate.simps(y, x, even='first')
		1644.5
	**/
	static public function simps(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic, ?even:Dynamic):Dynamic;
	/**
		Integrate along the given axis using the composite trapezoidal rule.
		
		Integrate `y` (`x`) along given axis.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    The sample points corresponding to the `y` values. If `x` is None,
		    the sample points are assumed to be evenly spaced `dx` apart. The
		    default is None.
		dx : scalar, optional
		    The spacing between sample points when `x` is None. The default is 1.
		axis : int, optional
		    The axis along which to integrate.
		
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
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Float;
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
	static public function vectorize1(func:Dynamic, ?args:Dynamic, ?vec_func:Dynamic):haxe.Constraints.Function;
}