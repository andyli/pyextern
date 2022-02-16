/* This file is generated, do not edit! */
package scipy.optimize.zeros;
@:pythonImport("scipy.optimize.zeros") extern class Zeros_Module {
	static public var CONVERGED : Dynamic;
	static public var CONVERR : Dynamic;
	static public var INPROGRESS : Dynamic;
	static public var SIGNERR : Dynamic;
	static public var VALUEERR : Dynamic;
	/**
		Find root of a function within an interval using bisection.
		
		Basic bisection routine to find a zero of the function `f` between the
		arguments `a` and `b`. `f(a)` and `f(b)` cannot have the same signs.
		Slow but sure.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  `f` must be continuous, and
		    f(a) and f(b) must have opposite signs.
		a : scalar
		    One end of the bracketing interval [a,b].
		b : scalar
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``.
		maxiter : int, optional
		    If convergence is not achieved in `maxiter` iterations, an error is
		    raised. Must be >= 0.
		args : tuple, optional
		    Containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned. If `full_output` is
		    True, the return value is ``(x, r)``, where x is the root, and r is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		    Otherwise, the convergence status is recorded in a `RootResults`
		    return object.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : `RootResults` (present if ``full_output = True``)
		    Object containing information about the convergence. In particular,
		    ``r.converged`` is True if the routine converged.
		
		Examples
		--------
		
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.bisect(f, 0, 2)
		>>> root
		1.0
		
		>>> root = optimize.bisect(f, -2, 0)
		>>> root
		-1.0
		
		See Also
		--------
		brentq, brenth, bisect, newton
		fixed_point : scalar fixed-point finder
		fsolve : n-dimensional root-finding
	**/
	static public function bisect(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		Find a root of a function in a bracketing interval using Brent's
		method with hyperbolic extrapolation.
		
		A variation on the classic Brent routine to find a zero of the function f
		between the arguments a and b that uses hyperbolic extrapolation instead of
		inverse quadratic extrapolation. Bus & Dekker (1975) guarantee convergence
		for this method, claiming that the upper bound of function evaluations here
		is 4 or 5 times lesser than that for bisection.
		f(a) and f(b) cannot have the same signs. Generally, on a par with the
		brent routine, but not as heavily tested. It is a safe version of the
		secant method that uses hyperbolic extrapolation.
		The version here is by Chuck Harris, and implements Algorithm M of
		[BusAndDekker1975]_, where further details (convergence properties,
		additional remarks and such) can be found
		
		Parameters
		----------
		f : function
		    Python function returning a number. f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : scalar
		    One end of the bracketing interval [a,b].
		b : scalar
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative. As with `brentq`, for nice
		    functions the method will often satisfy the above condition
		    with ``xtol/2`` and ``rtol/2``.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``. As with `brentq`, for nice functions
		    the method will often satisfy the above condition with
		    ``xtol/2`` and ``rtol/2``.
		maxiter : int, optional
		    If convergence is not achieved in `maxiter` iterations, an error is
		    raised. Must be >= 0.
		args : tuple, optional
		    Containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned. If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		    Otherwise, the convergence status is recorded in any `RootResults`
		    return object.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : `RootResults` (present if ``full_output = True``)
		    Object containing information about the convergence. In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		fmin, fmin_powell, fmin_cg, fmin_bfgs, fmin_ncg : multivariate local optimizers
		leastsq : nonlinear least squares minimizer
		fmin_l_bfgs_b, fmin_tnc, fmin_cobyla : constrained multivariate optimizers
		basinhopping, differential_evolution, brute : global optimizers
		fminbound, brent, golden, bracket : local scalar minimizers
		fsolve : N-D root-finding
		brentq, brenth, ridder, bisect, newton : 1-D root-finding
		fixed_point : scalar fixed-point finder
		
		References
		----------
		.. [BusAndDekker1975]
		   Bus, J. C. P., Dekker, T. J.,
		   "Two Efficient Algorithms with Guaranteed Convergence for Finding a Zero
		   of a Function", ACM Transactions on Mathematical Software, Vol. 1, Issue
		   4, Dec. 1975, pp. 330-345. Section 3: "Algorithm M".
		   :doi:`10.1145/355656.355659`
		
		Examples
		--------
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.brenth(f, -2, 0)
		>>> root
		-1.0
		
		>>> root = optimize.brenth(f, 0, 2)
		>>> root
		1.0
	**/
	static public function brenth(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		Find a root of a function in a bracketing interval using Brent's method.
		
		Uses the classic Brent's method to find a zero of the function `f` on
		the sign changing interval [a , b]. Generally considered the best of the
		rootfinding routines here. It is a safe version of the secant method that
		uses inverse quadratic extrapolation. Brent's method combines root
		bracketing, interval bisection, and inverse quadratic interpolation. It is
		sometimes known as the van Wijngaarden-Dekker-Brent method. Brent (1973)
		claims convergence is guaranteed for functions computable within [a,b].
		
		[Brent1973]_ provides the classic description of the algorithm. Another
		description can be found in a recent edition of Numerical Recipes, including
		[PressEtal1992]_. A third description is at
		http://mathworld.wolfram.com/BrentsMethod.html. It should be easy to
		understand the algorithm just by reading our code. Our code diverges a bit
		from standard presentations: we choose a different formula for the
		extrapolation step.
		
		Parameters
		----------
		f : function
		    Python function returning a number. The function :math:`f`
		    must be continuous, and :math:`f(a)` and :math:`f(b)` must
		    have opposite signs.
		a : scalar
		    One end of the bracketing interval :math:`[a, b]`.
		b : scalar
		    The other end of the bracketing interval :math:`[a, b]`.
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative. For nice functions, Brent's
		    method will often satisfy the above condition with ``xtol/2``
		    and ``rtol/2``. [Brent1973]_
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``. For nice functions, Brent's
		    method will often satisfy the above condition with ``xtol/2``
		    and ``rtol/2``. [Brent1973]_
		maxiter : int, optional
		    If convergence is not achieved in `maxiter` iterations, an error is
		    raised. Must be >= 0.
		args : tuple, optional
		    Containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned. If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		    Otherwise, the convergence status is recorded in any `RootResults`
		    return object.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : `RootResults` (present if ``full_output = True``)
		    Object containing information about the convergence. In particular,
		    ``r.converged`` is True if the routine converged.
		
		Notes
		-----
		`f` must be continuous.  f(a) and f(b) must have opposite signs.
		
		Related functions fall into several classes:
		
		multivariate local optimizers
		  `fmin`, `fmin_powell`, `fmin_cg`, `fmin_bfgs`, `fmin_ncg`
		nonlinear least squares minimizer
		  `leastsq`
		constrained multivariate optimizers
		  `fmin_l_bfgs_b`, `fmin_tnc`, `fmin_cobyla`
		global optimizers
		  `basinhopping`, `brute`, `differential_evolution`
		local scalar minimizers
		  `fminbound`, `brent`, `golden`, `bracket`
		N-D root-finding
		  `fsolve`
		1-D root-finding
		  `brenth`, `ridder`, `bisect`, `newton`
		scalar fixed-point finder
		  `fixed_point`
		
		References
		----------
		.. [Brent1973]
		   Brent, R. P.,
		   *Algorithms for Minimization Without Derivatives*.
		   Englewood Cliffs, NJ: Prentice-Hall, 1973. Ch. 3-4.
		
		.. [PressEtal1992]
		   Press, W. H.; Flannery, B. P.; Teukolsky, S. A.; and Vetterling, W. T.
		   *Numerical Recipes in FORTRAN: The Art of Scientific Computing*, 2nd ed.
		   Cambridge, England: Cambridge University Press, pp. 352-355, 1992.
		   Section 9.3:  "Van Wijngaarden-Dekker-Brent Method."
		
		Examples
		--------
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.brentq(f, -2, 0)
		>>> root
		-1.0
		
		>>> root = optimize.brentq(f, 0, 2)
		>>> root
		1.0
	**/
	static public function brentq(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	static public var flag_map : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Find a zero of a real or complex function using the Newton-Raphson
		(or secant or Halley's) method.
		
		Find a zero of the scalar-valued function `func` given a nearby scalar
		starting point `x0`.
		The Newton-Raphson method is used if the derivative `fprime` of `func`
		is provided, otherwise the secant method is used. If the second order
		derivative `fprime2` of `func` is also provided, then Halley's method is
		used.
		
		If `x0` is a sequence with more than one item, `newton` returns an array:
		the zeros of the function from each (scalar) starting point in `x0`.
		In this case, `func` must be vectorized to return a sequence or array of
		the same shape as its first argument. If `fprime` (`fprime2`) is given,
		then its return must also have the same shape: each element is the first
		(second) derivative of `func` with respect to its only variable evaluated
		at each element of its first argument.
		
		`newton` is for finding roots of a scalar-valued functions of a single
		variable. For problems involving several variables, see `root`.
		
		Parameters
		----------
		func : callable
		    The function whose zero is wanted. It must be a function of a
		    single variable of the form ``f(x,a,b,c...)``, where ``a,b,c...``
		    are extra arguments that can be passed in the `args` parameter.
		x0 : float, sequence, or ndarray
		    An initial estimate of the zero that should be somewhere near the
		    actual zero. If not scalar, then `func` must be vectorized and return
		    a sequence or array of the same shape as its first argument.
		fprime : callable, optional
		    The derivative of the function when available and convenient. If it
		    is None (default), then the secant method is used.
		args : tuple, optional
		    Extra arguments to be used in the function call.
		tol : float, optional
		    The allowable error of the zero value. If `func` is complex-valued,
		    a larger `tol` is recommended as both the real and imaginary parts
		    of `x` contribute to ``|x - x0|``.
		maxiter : int, optional
		    Maximum number of iterations.
		fprime2 : callable, optional
		    The second order derivative of the function when available and
		    convenient. If it is None (default), then the normal Newton-Raphson
		    or the secant method is used. If it is not None, then Halley's method
		    is used.
		x1 : float, optional
		    Another estimate of the zero that should be somewhere near the
		    actual zero. Used if `fprime` is not provided.
		rtol : float, optional
		    Tolerance (relative) for termination.
		full_output : bool, optional
		    If `full_output` is False (default), the root is returned.
		    If True and `x0` is scalar, the return value is ``(x, r)``, where ``x``
		    is the root and ``r`` is a `RootResults` object.
		    If True and `x0` is non-scalar, the return value is ``(x, converged,
		    zero_der)`` (see Returns section for details).
		disp : bool, optional
		    If True, raise a RuntimeError if the algorithm didn't converge, with
		    the error message containing the number of iterations and current
		    function value. Otherwise, the convergence status is recorded in a
		    `RootResults` return object.
		    Ignored if `x0` is not scalar.
		    *Note: this has little to do with displaying, however,
		    the `disp` keyword cannot be renamed for backwards compatibility.*
		
		Returns
		-------
		root : float, sequence, or ndarray
		    Estimated location where function is zero.
		r : `RootResults`, optional
		    Present if ``full_output=True`` and `x0` is scalar.
		    Object containing information about the convergence. In particular,
		    ``r.converged`` is True if the routine converged.
		converged : ndarray of bool, optional
		    Present if ``full_output=True`` and `x0` is non-scalar.
		    For vector functions, indicates which elements converged successfully.
		zero_der : ndarray of bool, optional
		    Present if ``full_output=True`` and `x0` is non-scalar.
		    For vector functions, indicates which elements had a zero derivative.
		
		See Also
		--------
		root_scalar : interface to root solvers for scalar functions
		root : interface to root solvers for multi-input, multi-output functions
		
		Notes
		-----
		The convergence rate of the Newton-Raphson method is quadratic,
		the Halley method is cubic, and the secant method is
		sub-quadratic. This means that if the function is well-behaved
		the actual error in the estimated zero after the nth iteration
		is approximately the square (cube for Halley) of the error
		after the (n-1)th step. However, the stopping criterion used
		here is the step size and there is no guarantee that a zero
		has been found. Consequently, the result should be verified.
		Safer algorithms are brentq, brenth, ridder, and bisect,
		but they all require that the root first be bracketed in an
		interval where the function changes sign. The brentq algorithm
		is recommended for general use in one dimensional problems
		when such an interval has been found.
		
		When `newton` is used with arrays, it is best suited for the following
		types of problems:
		
		* The initial guesses, `x0`, are all relatively the same distance from
		  the roots.
		* Some or all of the extra arguments, `args`, are also arrays so that a
		  class of similar problems can be solved together.
		* The size of the initial guesses, `x0`, is larger than O(100) elements.
		  Otherwise, a naive loop may perform as well or better than a vector.
		
		Examples
		--------
		>>> from scipy import optimize
		>>> import matplotlib.pyplot as plt
		
		>>> def f(x):
		...     return (x**3 - 1)  # only one real root at x = 1
		
		``fprime`` is not provided, use the secant method:
		
		>>> root = optimize.newton(f, 1.5)
		>>> root
		1.0000000000000016
		>>> root = optimize.newton(f, 1.5, fprime2=lambda x: 6 * x)
		>>> root
		1.0000000000000016
		
		Only ``fprime`` is provided, use the Newton-Raphson method:
		
		>>> root = optimize.newton(f, 1.5, fprime=lambda x: 3 * x**2)
		>>> root
		1.0
		
		Both ``fprime2`` and ``fprime`` are provided, use Halley's method:
		
		>>> root = optimize.newton(f, 1.5, fprime=lambda x: 3 * x**2,
		...                        fprime2=lambda x: 6 * x)
		>>> root
		1.0
		
		When we want to find zeros for a set of related starting values and/or
		function parameters, we can provide both of those as an array of inputs:
		
		>>> f = lambda x, a: x**3 - a
		>>> fder = lambda x, a: 3 * x**2
		>>> rng = np.random.default_rng()
		>>> x = rng.standard_normal(100)
		>>> a = np.arange(-50, 50)
		>>> vec_res = optimize.newton(f, x, fprime=fder, args=(a, ), maxiter=200)
		
		The above is the equivalent of solving for each value in ``(x, a)``
		separately in a for-loop, just faster:
		
		>>> loop_res = [optimize.newton(f, x0, fprime=fder, args=(a0,),
		...                             maxiter=200)
		...             for x0, a0 in zip(x, a)]
		>>> np.allclose(vec_res, loop_res)
		True
		
		Plot the results found for all values of ``a``:
		
		>>> analytical_result = np.sign(a) * np.abs(a)**(1/3)
		>>> fig, ax = plt.subplots()
		>>> ax.plot(a, analytical_result, 'o')
		>>> ax.plot(a, vec_res, '.')
		>>> ax.set_xlabel('$a$')
		>>> ax.set_ylabel('$x$ where $f(x, a)=0$')
		>>> plt.show()
	**/
	static public function newton(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?fprime2:Dynamic, ?x1:Dynamic, ?rtol:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	static public function results_c(full_output:Dynamic, r:Dynamic):Dynamic;
	/**
		Find a root of a function in an interval using Ridder's method.
		
		Parameters
		----------
		f : function
		    Python function returning a number. f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : scalar
		    One end of the bracketing interval [a,b].
		b : scalar
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``.
		maxiter : int, optional
		    If convergence is not achieved in `maxiter` iterations, an error is
		    raised. Must be >= 0.
		args : tuple, optional
		    Containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned. If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		    Otherwise, the convergence status is recorded in any `RootResults`
		    return object.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : `RootResults` (present if ``full_output = True``)
		    Object containing information about the convergence.
		    In particular, ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		brentq, brenth, bisect, newton : 1-D root-finding
		fixed_point : scalar fixed-point finder
		
		Notes
		-----
		Uses [Ridders1979]_ method to find a zero of the function `f` between the
		arguments `a` and `b`. Ridders' method is faster than bisection, but not
		generally as fast as the Brent routines. [Ridders1979]_ provides the
		classic description and source of the algorithm. A description can also be
		found in any recent edition of Numerical Recipes.
		
		The routine used here diverges slightly from standard presentations in
		order to be a bit more careful of tolerance.
		
		References
		----------
		.. [Ridders1979]
		   Ridders, C. F. J. "A New Algorithm for Computing a
		   Single Root of a Real Continuous Function."
		   IEEE Trans. Circuits Systems 26, 979-980, 1979.
		
		Examples
		--------
		
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.ridder(f, 0, 2)
		>>> root
		1.0
		
		>>> root = optimize.ridder(f, -2, 0)
		>>> root
		-1.0
	**/
	static public function ridder(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		Find a zero using TOMS Algorithm 748 method.
		
		Implements the Algorithm 748 method of Alefeld, Potro and Shi to find a
		zero of the function `f` on the interval `[a , b]`, where `f(a)` and
		`f(b)` must have opposite signs.
		
		It uses a mixture of inverse cubic interpolation and
		"Newton-quadratic" steps. [APS1995].
		
		Parameters
		----------
		f : function
		    Python function returning a scalar. The function :math:`f`
		    must be continuous, and :math:`f(a)` and :math:`f(b)`
		    have opposite signs.
		a : scalar,
		    lower boundary of the search interval
		b : scalar,
		    upper boundary of the search interval
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``f(x, *args)``.
		k : int, optional
		    The number of Newton quadratic steps to perform each
		    iteration. ``k>=1``.
		xtol : scalar, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative.
		rtol : scalar, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root.
		maxiter : int, optional
		    If convergence is not achieved in `maxiter` iterations, an error is
		    raised. Must be >= 0.
		full_output : bool, optional
		    If `full_output` is False, the root is returned. If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		    Otherwise, the convergence status is recorded in the `RootResults`
		    return object.
		
		Returns
		-------
		x0 : float
		    Approximate Zero of `f`
		r : `RootResults` (present if ``full_output = True``)
		    Object containing information about the convergence. In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		brentq, brenth, ridder, bisect, newton
		fsolve : find zeroes in N dimensions.
		
		Notes
		-----
		`f` must be continuous.
		Algorithm 748 with ``k=2`` is asymptotically the most efficient
		algorithm known for finding roots of a four times continuously
		differentiable function.
		In contrast with Brent's algorithm, which may only decrease the length of
		the enclosing bracket on the last step, Algorithm 748 decreases it each
		iteration with the same asymptotic efficiency as it finds the root.
		
		For easy statement of efficiency indices, assume that `f` has 4
		continuouous deriviatives.
		For ``k=1``, the convergence order is at least 2.7, and with about
		asymptotically 2 function evaluations per iteration, the efficiency
		index is approximately 1.65.
		For ``k=2``, the order is about 4.6 with asymptotically 3 function
		evaluations per iteration, and the efficiency index 1.66.
		For higher values of `k`, the efficiency index approaches
		the kth root of ``(3k-2)``, hence ``k=1`` or ``k=2`` are
		usually appropriate.
		
		References
		----------
		.. [APS1995]
		   Alefeld, G. E. and Potra, F. A. and Shi, Yixun,
		   *Algorithm 748: Enclosing Zeros of Continuous Functions*,
		   ACM Trans. Math. Softw. Volume 221(1995)
		   doi = {10.1145/210089.210111}
		
		Examples
		--------
		>>> def f(x):
		...     return (x**3 - 1)  # only one real root at x = 1
		
		>>> from scipy import optimize
		>>> root, results = optimize.toms748(f, 0, 2, full_output=True)
		>>> root
		1.0
		>>> results
		      converged: True
		           flag: 'converged'
		 function_calls: 11
		     iterations: 5
		           root: 1.0
	**/
	static public function toms748(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?k:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
}