/* This file is generated, do not edit! */
package scipy.optimize;
@:pythonImport("scipy.optimize") extern class Optimize_Module {
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
	static public var absolute_import : Dynamic;
	/**
		Find a root of a function, using (extended) Anderson mixing.
		
		The Jacobian is formed by for a 'best' solution in the space
		spanned by last `M` vectors. As a result, only a MxM matrix
		inversions and MxN multiplications are required. [Ey]_
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is (-1/alpha).
		M : float, optional
		    Number of previous vectors to retain. Defaults to 5.
		w0 : float, optional
		    Regularization parameter for numerical stability.
		    Compared to unity, good values of the order of 0.01.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		References
		----------
		.. [Ey] V. Eyert, J. Comp. Phys., 124, 271 (1996).
	**/
	static public function anderson(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?w0:Dynamic, ?M:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Finite-difference approximation of the gradient of a scalar function.
		
		Parameters
		----------
		xk : array_like
		    The coordinate vector at which to determine the gradient of `f`.
		f : callable
		    The function of which to determine the gradient (partial derivatives).
		    Should take `xk` as first argument, other arguments to `f` can be
		    supplied in ``*args``.  Should return a scalar, the value of the
		    function at `xk`.
		epsilon : array_like
		    Increment to `xk` to use for determining the function gradient.
		    If a scalar, uses the same finite difference delta for all partial
		    derivatives.  If an array, should contain one value per element of
		    `xk`.
		\*args : args, optional
		    Any other arguments that are to be passed to `f`.
		
		Returns
		-------
		grad : ndarray
		    The partial derivatives of `f` to `xk`.
		
		See Also
		--------
		check_grad : Check correctness of gradient function against approx_fprime.
		
		Notes
		-----
		The function gradient is determined by the forward finite difference
		formula::
		
		             f(xk[i] + epsilon[i]) - f(xk[i])
		    f'[i] = ---------------------------------
		                        epsilon[i]
		
		The main use of `approx_fprime` is in scalar function optimizers like
		`fmin_bfgs`, to determine numerically the Jacobian of a function.
		
		Examples
		--------
		>>> from scipy import optimize
		>>> def func(x, c0, c1):
		...     "Coordinate vector `x` should be an array of size two."
		...     return c0 * x[0]**2 + c1*x[1]**2
		
		>>> x = np.ones(2)
		>>> c0, c1 = (1, 200)
		>>> eps = np.sqrt(np.finfo(np.float).eps)
		>>> optimize.approx_fprime(x, func, [eps, np.sqrt(200) * eps], c0, c1)
		array([   2.        ,  400.00004198])
	**/
	static public function approx_fprime(xk:Dynamic, f:Dynamic, epsilon:Dynamic, args:Dynamic):Dynamic;
	/**
		Find the global minimum of a function using the basin-hopping algorithm
		
		Parameters
		----------
		func : callable ``f(x, *args)``
		    Function to be optimized.  ``args`` can be passed as an optional item
		    in the dict ``minimizer_kwargs``
		x0 : ndarray
		    Initial guess.
		niter : integer, optional
		    The number of basin hopping iterations
		T : float, optional
		    The "temperature" parameter for the accept or reject criterion.  Higher
		    "temperatures" mean that larger jumps in function value will be
		    accepted.  For best results ``T`` should be comparable to the
		    separation
		    (in function value) between local minima.
		stepsize : float, optional
		    initial step size for use in the random displacement.
		minimizer_kwargs : dict, optional
		    Extra keyword arguments to be passed to the minimizer
		    ``scipy.optimize.minimize()`` Some important options could be:
		
		        method : str
		            The minimization method (e.g. ``"L-BFGS-B"``)
		        args : tuple
		            Extra arguments passed to the objective function (``func``) and
		            its derivatives (Jacobian, Hessian).
		
		take_step : callable ``take_step(x)``, optional
		    Replace the default step taking routine with this routine.  The default
		    step taking routine is a random displacement of the coordinates, but
		    other step taking algorithms may be better for some systems.
		    ``take_step`` can optionally have the attribute ``take_step.stepsize``.
		    If this attribute exists, then ``basinhopping`` will adjust
		    ``take_step.stepsize`` in order to try to optimize the global minimum
		    search.
		accept_test : callable, ``accept_test(f_new=f_new, x_new=x_new, f_old=fold, x_old=x_old)``, optional
		    Define a test which will be used to judge whether or not to accept the
		    step.  This will be used in addition to the Metropolis test based on
		    "temperature" ``T``.  The acceptable return values are True,
		    False, or ``"force accept"``.  If the latter, then this will
		    override any other tests in order to accept the step.  This can be
		    used, for example, to forcefully escape from a local minimum that
		    ``basinhopping`` is trapped in.
		callback : callable, ``callback(x, f, accept)``, optional
		    A callback function which will be called for all minima found.  ``x``
		    and ``f`` are the coordinates and function value of the trial minimum,
		    and ``accept`` is whether or not that minimum was accepted.  This can be
		    used, for example, to save the lowest N minima found.  Also,
		    ``callback`` can be used to specify a user defined stop criterion by
		    optionally returning True to stop the ``basinhopping`` routine.
		interval : integer, optional
		    interval for how often to update the ``stepsize``
		disp : bool, optional
		    Set to True to print status messages
		niter_success : integer, optional
		    Stop the run if the global minimum candidate remains the same for this
		    number of iterations.
		
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.  Important
		    attributes are: ``x`` the solution array, ``fun`` the value of the
		    function at the solution, and ``message`` which describes the cause of
		    the termination. See `OptimizeResult` for a description of other attributes.
		
		See Also
		--------
		minimize :
		    The local minimization function called once for each basinhopping step.
		    ``minimizer_kwargs`` is passed to this routine.
		
		Notes
		-----
		Basin-hopping is a stochastic algorithm which attempts to find the global
		minimum of a smooth scalar function of one or more variables [1]_ [2]_ [3]_
		[4]_.  The algorithm in its current form was described by David Wales and
		Jonathan Doye [2]_ http://www-wales.ch.cam.ac.uk/.
		
		The algorithm is iterative with each cycle composed of the following
		features
		
		1) random perturbation of the coordinates
		
		2) local minimization
		
		3) accept or reject the new coordinates based on the minimized function
		   value
		
		The acceptance test used here is the Metropolis criterion of standard Monte
		Carlo algorithms, although there are many other possibilities [3]_.
		
		This global minimization method has been shown to be extremely efficient
		for a wide variety of problems in physics and chemistry.  It is
		particularly useful when the function has many minima separated by large
		barriers. See the Cambridge Cluster Database
		http://www-wales.ch.cam.ac.uk/CCD.html for databases of molecular systems
		that have been optimized primarily using basin-hopping.  This database
		includes minimization problems exceeding 300 degrees of freedom.
		
		See the free software program GMIN (http://www-wales.ch.cam.ac.uk/GMIN) for
		a Fortran implementation of basin-hopping.  This implementation has many
		different variations of the procedure described above, including more
		advanced step taking algorithms and alternate acceptance criterion.
		
		For stochastic global optimization there is no way to determine if the true
		global minimum has actually been found. Instead, as a consistency check,
		the algorithm can be run from a number of different random starting points
		to ensure the lowest minimum found in each example has converged to the
		global minimum.  For this reason ``basinhopping`` will by default simply
		run for the number of iterations ``niter`` and return the lowest minimum
		found.  It is left to the user to ensure that this is in fact the global
		minimum.
		
		Choosing ``stepsize``:  This is a crucial parameter in ``basinhopping`` and
		depends on the problem being solved.  Ideally it should be comparable to
		the typical separation between local minima of the function being
		optimized.  ``basinhopping`` will, by default, adjust ``stepsize`` to find
		an optimal value, but this may take many iterations.  You will get quicker
		results if you set a sensible value for ``stepsize``.
		
		Choosing ``T``: The parameter ``T`` is the temperature used in the
		metropolis criterion.  Basinhopping steps are accepted with probability
		``1`` if ``func(xnew) < func(xold)``, or otherwise with probability::
		
		    exp( -(func(xnew) - func(xold)) / T )
		
		So, for best results, ``T`` should to be comparable to the typical
		difference in function values between local minima.
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Wales, David J. 2003, Energy Landscapes, Cambridge University Press,
		    Cambridge, UK.
		.. [2] Wales, D J, and Doye J P K, Global Optimization by Basin-Hopping and
		    the Lowest Energy Structures of Lennard-Jones Clusters Containing up to
		    110 Atoms.  Journal of Physical Chemistry A, 1997, 101, 5111.
		.. [3] Li, Z. and Scheraga, H. A., Monte Carlo-minimization approach to the
		    multiple-minima problem in protein folding, Proc. Natl. Acad. Sci. USA,
		    1987, 84, 6611.
		.. [4] Wales, D. J. and Scheraga, H. A., Global optimization of clusters,
		    crystals, and biomolecules, Science, 1999, 285, 1368.
		
		Examples
		--------
		The following example is a one-dimensional minimization problem,  with many
		local minima superimposed on a parabola.
		
		>>> from scipy.optimize import basinhopping
		>>> func = lambda x: np.cos(14.5 * x - 0.3) + (x + 0.2) * x
		>>> x0=[1.]
		
		Basinhopping, internally, uses a local minimization algorithm.  We will use
		the parameter ``minimizer_kwargs`` to tell basinhopping which algorithm to
		use and how to set up that minimizer.  This parameter will be passed to
		``scipy.optimize.minimize()``.
		
		>>> minimizer_kwargs = {"method": "BFGS"}
		>>> ret = basinhopping(func, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200)
		>>> print("global minimum: x = %.4f, f(x0) = %.4f" % (ret.x, ret.fun))
		global minimum: x = -0.1951, f(x0) = -1.0009
		
		Next consider a two-dimensional minimization problem. Also, this time we
		will use gradient information to significantly speed up the search.
		
		>>> def func2d(x):
		...     f = np.cos(14.5 * x[0] - 0.3) + (x[1] + 0.2) * x[1] + (x[0] +
		...                                                            0.2) * x[0]
		...     df = np.zeros(2)
		...     df[0] = -14.5 * np.sin(14.5 * x[0] - 0.3) + 2. * x[0] + 0.2
		...     df[1] = 2. * x[1] + 0.2
		...     return f, df
		
		We'll also use a different local minimization algorithm.  Also we must tell
		the minimizer that our function returns both energy and gradient (jacobian)
		
		>>> minimizer_kwargs = {"method":"L-BFGS-B", "jac":True}
		>>> x0 = [1.0, 1.0]
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200)
		>>> print("global minimum: x = [%.4f, %.4f], f(x0) = %.4f" % (ret.x[0],
		...                                                           ret.x[1],
		...                                                           ret.fun))
		global minimum: x = [-0.1951, -0.1000], f(x0) = -1.0109
		
		
		Here is an example using a custom step taking routine.  Imagine you want
		the first coordinate to take larger steps then the rest of the coordinates.
		This can be implemented like so:
		
		>>> class MyTakeStep(object):
		...    def __init__(self, stepsize=0.5):
		...        self.stepsize = stepsize
		...    def __call__(self, x):
		...        s = self.stepsize
		...        x[0] += np.random.uniform(-2.*s, 2.*s)
		...        x[1:] += np.random.uniform(-s, s, x[1:].shape)
		...        return x
		
		Since ``MyTakeStep.stepsize`` exists basinhopping will adjust the magnitude
		of ``stepsize`` to optimize the search.  We'll use the same 2-D function as
		before
		
		>>> mytakestep = MyTakeStep()
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200, take_step=mytakestep)
		>>> print("global minimum: x = [%.4f, %.4f], f(x0) = %.4f" % (ret.x[0],
		...                                                           ret.x[1],
		...                                                           ret.fun))
		global minimum: x = [-0.1951, -0.1000], f(x0) = -1.0109
		
		
		Now let's do an example using a custom callback function which prints the
		value of every minimum found
		
		>>> def print_fun(x, f, accepted):
		...         print("at minimum %.4f accepted %d" % (f, int(accepted)))
		
		We'll run it for only 10 basinhopping steps this time.
		
		>>> np.random.seed(1)
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=10, callback=print_fun)
		at minimum 0.4159 accepted 1
		at minimum -0.9073 accepted 1
		at minimum -0.1021 accepted 1
		at minimum -0.1021 accepted 1
		at minimum 0.9102 accepted 1
		at minimum 0.9102 accepted 1
		at minimum 2.2945 accepted 0
		at minimum -0.1021 accepted 1
		at minimum -1.0109 accepted 1
		at minimum -1.0109 accepted 1
		
		
		The minimum at -1.0109 is actually the global minimum, found already on the
		8th iteration.
		
		Now let's implement bounds on the problem using a custom ``accept_test``:
		
		>>> class MyBounds(object):
		...     def __init__(self, xmax=[1.1,1.1], xmin=[-1.1,-1.1] ):
		...         self.xmax = np.array(xmax)
		...         self.xmin = np.array(xmin)
		...     def __call__(self, **kwargs):
		...         x = kwargs["x_new"]
		...         tmax = bool(np.all(x <= self.xmax))
		...         tmin = bool(np.all(x >= self.xmin))
		...         return tmax and tmin
		
		>>> mybounds = MyBounds()
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=10, accept_test=mybounds)
	**/
	static public function basinhopping(func:Dynamic, x0:Dynamic, ?niter:Dynamic, ?T:Dynamic, ?stepsize:Dynamic, ?minimizer_kwargs:Dynamic, ?take_step:Dynamic, ?accept_test:Dynamic, ?callback:Dynamic, ?interval:Dynamic, ?disp:Dynamic, ?niter_success:Dynamic):Dynamic;
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
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Dynamic;
	/**
		Find root of a function within an interval.
		
		Basic bisection routine to find a zero of the function `f` between the
		arguments `a` and `b`. `f(a)` and `f(b)` cannot have the same signs.
		Slow but sure.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  `f` must be continuous, and
		    f(a) and f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The routine converges when a root is known to lie within `xtol` of the
		    value return. Should be >= 0.  The routine modifies this to take into
		    account the relative precision of doubles.
		rtol : number, optional
		    The routine converges when a root is known to lie within `rtol` times
		    the value returned of the value returned. Should be >= 0. Defaults to
		    ``np.finfo(float).eps * 2``.
		maxiter : number, optional
		    if convergence is not achieved in `maxiter` iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where x is the root, and r is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		brentq, brenth, bisect, newton
		fixed_point : scalar fixed-point finder
		fsolve : n-dimensional root-finding
	**/
	static public function bisect(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Bracket the minimum of the function.
		
		Given a function and distinct initial points, search in the
		downhill direction (as defined by the initital points) and return
		new points xa, xb, xc that bracket the minimum of the function
		f(xa) > f(xb) < f(xc). It doesn't always mean that obtained
		solution will satisfy xa<=x<=xb
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to minimize.
		xa, xb : float, optional
		    Bracketing interval. Defaults `xa` to 0.0, and `xb` to 1.0.
		args : tuple, optional
		    Additional arguments (if present), passed to `func`.
		grow_limit : float, optional
		    Maximum grow limit.  Defaults to 110.0
		maxiter : int, optional
		    Maximum number of iterations to perform. Defaults to 1000.
		
		Returns
		-------
		xa, xb, xc : float
		    Bracket.
		fa, fb, fc : float
		    Objective function values in bracket.
		funcalls : int
		    Number of function evaluations made.
	**/
	static public function bracket(func:Dynamic, ?xa:Dynamic, ?xb:Dynamic, ?args:Dynamic, ?grow_limit:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Given a function of one-variable and a possible bracketing interval,
		return the minimum of the function isolated to a fractional precision of
		tol.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function.
		args : tuple, optional
		    Additional arguments (if present).
		brack : tuple, optional
		    Triple (a,b,c) where (a<b<c) and func(b) <
		    func(a),func(c).  If bracket consists of two numbers (a,c)
		    then they are assumed to be a starting interval for a
		    downhill bracket search (see `bracket`); it doesn't always
		    mean that the obtained solution will satisfy a<=x<=c.
		tol : float, optional
		    Stop if between iteration change is less than `tol`.
		full_output : bool, optional
		    If True, return all output args (xmin, fval, iter,
		    funcalls).
		maxiter : int, optional
		    Maximum number of iterations in solution.
		
		Returns
		-------
		xmin : ndarray
		    Optimum point.
		fval : float
		    Optimum value.
		iter : int
		    Number of iterations.
		funcalls : int
		    Number of objective function evaluations made.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Brent' `method` in particular.
		
		Notes
		-----
		Uses inverse parabolic interpolation when possible to speed up
		convergence of golden section method.
	**/
	static public function brent(func:Dynamic, ?args:Dynamic, ?brack:Dynamic, ?tol:Dynamic, ?full_output:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Find root of f in [a,b].
		
		A variation on the classic Brent routine to find a zero of the function f
		between the arguments a and b that uses hyperbolic extrapolation instead of
		inverse quadratic extrapolation. There was a paper back in the 1980's ...
		f(a) and f(b) cannot have the same signs. Generally on a par with the
		brent routine, but not as heavily tested.  It is a safe version of the
		secant method that uses hyperbolic extrapolation. The version here is by
		Chuck Harris.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The routine converges when a root is known to lie within xtol of the
		    value return. Should be >= 0.  The routine modifies this to take into
		    account the relative precision of doubles.
		rtol : number, optional
		    The routine converges when a root is known to lie within `rtol` times
		    the value returned of the value returned. Should be >= 0. Defaults to
		    ``np.finfo(float).eps * 2``.
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		fmin, fmin_powell, fmin_cg,
		       fmin_bfgs, fmin_ncg : multivariate local optimizers
		
		leastsq : nonlinear least squares minimizer
		
		fmin_l_bfgs_b, fmin_tnc, fmin_cobyla : constrained multivariate optimizers
		
		basinhopping, differential_evolution, brute : global optimizers
		
		fminbound, brent, golden, bracket : local scalar minimizers
		
		fsolve : n-dimensional root-finding
		
		brentq, brenth, ridder, bisect, newton : one-dimensional root-finding
		
		fixed_point : scalar fixed-point finder
	**/
	static public function brenth(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Find a root of a function in given interval.
		
		Return float, a zero of `f` between `a` and `b`.  `f` must be a continuous
		function, and [a,b] must be a sign changing interval.
		
		Description:
		Uses the classic Brent (1973) method to find a zero of the function `f` on
		the sign changing interval [a , b].  Generally considered the best of the
		rootfinding routines here.  It is a safe version of the secant method that
		uses inverse quadratic extrapolation.  Brent's method combines root
		bracketing, interval bisection, and inverse quadratic interpolation.  It is
		sometimes known as the van Wijngaarden-Dekker-Brent method.  Brent (1973)
		claims convergence is guaranteed for functions computable within [a,b].
		
		[Brent1973]_ provides the classic description of the algorithm.  Another
		description can be found in a recent edition of Numerical Recipes, including
		[PressEtal1992]_.  Another description is at
		http://mathworld.wolfram.com/BrentsMethod.html.  It should be easy to
		understand the algorithm just by reading our code.  Our code diverges a bit
		from standard presentations: we choose a different formula for the
		extrapolation step.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The routine converges when a root is known to lie within xtol of the
		    value return. Should be >= 0.  The routine modifies this to take into
		    account the relative precision of doubles.
		rtol : number, optional
		    The routine converges when a root is known to lie within `rtol` times
		    the value returned of the value returned. Should be >= 0. Defaults to
		    ``np.finfo(float).eps * 2``.
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
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
		n-dimensional root-finding
		  `fsolve`
		one-dimensional root-finding
		  `brentq`, `brenth`, `ridder`, `bisect`, `newton`
		scalar fixed-point finder
		  `fixed_point`
		
		Notes
		-----
		`f` must be continuous.  f(a) and f(b) must have opposite signs.
		
		
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
	**/
	static public function brentq(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Find a root of a function, using Broyden's first Jacobian approximation.
		
		This method is also known as \"Broyden's good method\".
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is ``(-1/alpha)``.
		reduction_method : str or tuple, optional
		    Method used in ensuring that the rank of the Broyden matrix
		    stays low. Can either be a string giving the name of the method,
		    or a tuple of the form ``(method, param1, param2, ...)``
		    that gives the name of the method and values for additional parameters.
		
		    Methods available:
		
		        - ``restart``: drop all matrix columns. Has no extra parameters.
		        - ``simple``: drop oldest matrix column. Has no extra parameters.
		        - ``svd``: keep only the most significant SVD components.
		          Takes an extra parameter, ``to_retain``, which determines the
		          number of SVD components to retain when rank reduction is done.
		          Default is ``max_rank - 2``.
		
		max_rank : int, optional
		    Maximum rank for the Broyden matrix.
		    Default is infinity (ie., no rank reduction).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		Notes
		-----
		This algorithm implements the inverse Jacobian Quasi-Newton update
		
		.. math:: H_+ = H + (dx - H df) dx^\dagger H / ( dx^\dagger H df)
		
		which corresponds to Broyden's first Jacobian update
		
		.. math:: J_+ = J + (df - J dx) dx^\dagger / dx^\dagger dx
		
		
		References
		----------
		.. [1] B.A. van der Rotten, PhD thesis,
		   \"A limited memory Broyden method to solve high-dimensional
		   systems of nonlinear equations\". Mathematisch Instituut,
		   Universiteit Leiden, The Netherlands (2003).
		
		   http://www.math.leidenuniv.nl/scripties/Rotten.pdf
	**/
	static public function broyden1(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?reduction_method:Dynamic, ?max_rank:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Find a root of a function, using Broyden's second Jacobian approximation.
		
		This method is also known as "Broyden's bad method".
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is ``(-1/alpha)``.
		reduction_method : str or tuple, optional
		    Method used in ensuring that the rank of the Broyden matrix
		    stays low. Can either be a string giving the name of the method,
		    or a tuple of the form ``(method, param1, param2, ...)``
		    that gives the name of the method and values for additional parameters.
		
		    Methods available:
		
		        - ``restart``: drop all matrix columns. Has no extra parameters.
		        - ``simple``: drop oldest matrix column. Has no extra parameters.
		        - ``svd``: keep only the most significant SVD components.
		          Takes an extra parameter, ``to_retain``, which determines the
		          number of SVD components to retain when rank reduction is done.
		          Default is ``max_rank - 2``.
		
		max_rank : int, optional
		    Maximum rank for the Broyden matrix.
		    Default is infinity (ie., no rank reduction).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		Notes
		-----
		This algorithm implements the inverse Jacobian Quasi-Newton update
		
		.. math:: H_+ = H + (dx - H df) df^\dagger / ( df^\dagger df)
		
		corresponding to Broyden's second method.
		
		References
		----------
		.. [1] B.A. van der Rotten, PhD thesis,
		   "A limited memory Broyden method to solve high-dimensional
		   systems of nonlinear equations". Mathematisch Instituut,
		   Universiteit Leiden, The Netherlands (2003).
		
		   http://www.math.leidenuniv.nl/scripties/Rotten.pdf
	**/
	static public function broyden2(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?reduction_method:Dynamic, ?max_rank:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Minimize a function over a given range by brute force.
		
		Uses the "brute force" method, i.e. computes the function's value
		at each point of a multidimensional grid of points, to find the global
		minimum of the function.
		
		The function is evaluated everywhere in the range with the datatype of the
		first call to the function, as enforced by the ``vectorize`` NumPy
		function.  The value and type of the function evaluation returned when
		``full_output=True`` are affected in addition by the ``finish`` argument
		(see Notes).
		
		Parameters
		----------
		func : callable
		    The objective function to be minimized. Must be in the
		    form ``f(x, *args)``, where ``x`` is the argument in
		    the form of a 1-D array and ``args`` is a tuple of any
		    additional fixed parameters needed to completely specify
		    the function.
		ranges : tuple
		    Each component of the `ranges` tuple must be either a
		    "slice object" or a range tuple of the form ``(low, high)``.
		    The program uses these to create the grid of points on which
		    the objective function will be computed. See `Note 2` for
		    more detail.
		args : tuple, optional
		    Any additional fixed parameters needed to completely specify
		    the function.
		Ns : int, optional
		    Number of grid points along the axes, if not otherwise
		    specified. See `Note2`.
		full_output : bool, optional
		    If True, return the evaluation grid and the objective function's
		    values on it.
		finish : callable, optional
		    An optimization function that is called with the result of brute force
		    minimization as initial guess.  `finish` should take `func` and
		    the initial guess as positional arguments, and take `args` as
		    keyword arguments.  It may additionally take `full_output`
		    and/or `disp` as keyword arguments.  Use None if no "polishing"
		    function is to be used. See Notes for more details.
		disp : bool, optional
		    Set to True to print convergence messages.
		
		Returns
		-------
		x0 : ndarray
		    A 1-D array containing the coordinates of a point at which the
		    objective function had its minimum value. (See `Note 1` for
		    which point is returned.)
		fval : float
		    Function value at the point `x0`. (Returned when `full_output` is
		    True.)
		grid : tuple
		    Representation of the evaluation grid.  It has the same
		    length as `x0`. (Returned when `full_output` is True.)
		Jout : ndarray
		    Function values at each point of the evaluation
		    grid, `i.e.`, ``Jout = func(*grid)``. (Returned
		    when `full_output` is True.)
		
		See Also
		--------
		basinhopping, differential_evolution
		
		Notes
		-----
		*Note 1*: The program finds the gridpoint at which the lowest value
		of the objective function occurs.  If `finish` is None, that is the
		point returned.  When the global minimum occurs within (or not very far
		outside) the grid's boundaries, and the grid is fine enough, that
		point will be in the neighborhood of the gobal minimum.
		
		However, users often employ some other optimization program to
		"polish" the gridpoint values, `i.e.`, to seek a more precise
		(local) minimum near `brute's` best gridpoint.
		The `brute` function's `finish` option provides a convenient way to do
		that.  Any polishing program used must take `brute's` output as its
		initial guess as a positional argument, and take `brute's` input values
		for `args` as keyword arguments, otherwise an error will be raised.
		It may additionally take `full_output` and/or `disp` as keyword arguments.
		
		`brute` assumes that the `finish` function returns either an
		`OptimizeResult` object or a tuple in the form:
		``(xmin, Jmin, ... , statuscode)``, where ``xmin`` is the minimizing
		value of the argument, ``Jmin`` is the minimum value of the objective
		function, "..." may be some other returned values (which are not used
		by `brute`), and ``statuscode`` is the status code of the `finish` program.
		
		Note that when `finish` is not None, the values returned are those
		of the `finish` program, *not* the gridpoint ones.  Consequently,
		while `brute` confines its search to the input grid points,
		the `finish` program's results usually will not coincide with any
		gridpoint, and may fall outside the grid's boundary.
		
		*Note 2*: The grid of points is a `numpy.mgrid` object.
		For `brute` the `ranges` and `Ns` inputs have the following effect.
		Each component of the `ranges` tuple can be either a slice object or a
		two-tuple giving a range of values, such as (0, 5).  If the component is a
		slice object, `brute` uses it directly.  If the component is a two-tuple
		range, `brute` internally converts it to a slice object that interpolates
		`Ns` points from its low-value to its high-value, inclusive.
		
		Examples
		--------
		We illustrate the use of `brute` to seek the global minimum of a function
		of two variables that is given as the sum of a positive-definite
		quadratic and two deep "Gaussian-shaped" craters.  Specifically, define
		the objective function `f` as the sum of three other functions,
		``f = f1 + f2 + f3``.  We suppose each of these has a signature
		``(z, *params)``, where ``z = (x, y)``,  and ``params`` and the functions
		are as defined below.
		
		>>> params = (2, 3, 7, 8, 9, 10, 44, -1, 2, 26, 1, -2, 0.5)
		>>> def f1(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (a * x**2 + b * x * y + c * y**2 + d*x + e*y + f)
		
		>>> def f2(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (-g*np.exp(-((x-h)**2 + (y-i)**2) / scale))
		
		>>> def f3(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (-j*np.exp(-((x-k)**2 + (y-l)**2) / scale))
		
		>>> def f(z, *params):
		...     return f1(z, *params) + f2(z, *params) + f3(z, *params)
		
		Thus, the objective function may have local minima near the minimum
		of each of the three functions of which it is composed.  To
		use `fmin` to polish its gridpoint result, we may then continue as
		follows:
		
		>>> rranges = (slice(-4, 4, 0.25), slice(-4, 4, 0.25))
		>>> from scipy import optimize
		>>> resbrute = optimize.brute(f, rranges, args=params, full_output=True,
		...                           finish=optimize.fmin)
		>>> resbrute[0]  # global minimum
		array([-1.05665192,  1.80834843])
		>>> resbrute[1]  # function value at global minimum
		-3.4085818767
		
		Note that if `finish` had been set to None, we would have gotten the
		gridpoint [-1.0 1.75] where the rounded function value is -2.892.
	**/
	static public function brute(func:Dynamic, ranges:Dynamic, ?args:Dynamic, ?Ns:Dynamic, ?full_output:Dynamic, ?finish:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Check the correctness of a gradient function by comparing it against a
		(forward) finite-difference approximation of the gradient.
		
		Parameters
		----------
		func : callable ``func(x0, *args)``
		    Function whose derivative is to be checked.
		grad : callable ``grad(x0, *args)``
		    Gradient of `func`.
		x0 : ndarray
		    Points to check `grad` against forward difference approximation of grad
		    using `func`.
		args : \*args, optional
		    Extra arguments passed to `func` and `grad`.
		epsilon : float, optional
		    Step size used for the finite difference approximation. It defaults to
		    ``sqrt(numpy.finfo(float).eps)``, which is approximately 1.49e-08.
		
		Returns
		-------
		err : float
		    The square root of the sum of squares (i.e. the 2-norm) of the
		    difference between ``grad(x0, *args)`` and the finite difference
		    approximation of `grad` using func at the points `x0`.
		
		See Also
		--------
		approx_fprime
		
		Examples
		--------
		>>> def func(x):
		...     return x[0]**2 - 0.5 * x[1]**3
		>>> def grad(x):
		...     return [2 * x[0], -1.5 * x[1]**2]
		>>> from scipy.optimize import check_grad
		>>> check_grad(func, grad, [1.5, -1.5])
		2.9802322387695312e-08
	**/
	static public function check_grad(func:Dynamic, grad:Dynamic, x0:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Use non-linear least squares to fit a function, f, to data.
		
		Assumes ``ydata = f(xdata, *params) + eps``
		
		Parameters
		----------
		f : callable
		    The model function, f(x, ...).  It must take the independent
		    variable as the first argument and the parameters to fit as
		    separate remaining arguments.
		xdata : An M-length sequence or an (k,M)-shaped array
		    for functions with k predictors.
		    The independent variable where the data is measured.
		ydata : M-length sequence
		    The dependent data --- nominally f(xdata, ...)
		p0 : None, scalar, or N-length sequence, optional
		    Initial guess for the parameters.  If None, then the initial
		    values will all be 1 (if the number of parameters for the function
		    can be determined using introspection, otherwise a ValueError
		    is raised).
		sigma : None or M-length sequence, optional
		    If not None, the uncertainties in the ydata array. These are used as
		    weights in the least-squares problem
		    i.e. minimising ``np.sum( ((f(xdata, *popt) - ydata) / sigma)**2 )``
		    If None, the uncertainties are assumed to be 1.
		absolute_sigma : bool, optional
		    If False, `sigma` denotes relative weights of the data points.
		    The returned covariance matrix `pcov` is based on *estimated*
		    errors in the data, and is not affected by the overall
		    magnitude of the values in `sigma`. Only the relative
		    magnitudes of the `sigma` values matter.
		
		    If True, `sigma` describes one standard deviation errors of
		    the input data points. The estimated covariance in `pcov` is
		    based on these values.
		check_finite : bool, optional
		    If True, check that the input arrays do not contain nans of infs,
		    and raise a ValueError if they do. Setting this parameter to
		    False may silently produce nonsensical results if the input arrays
		    do contain nans.
		    Default is True.
		
		Returns
		-------
		popt : array
		    Optimal values for the parameters so that the sum of the squared error
		    of ``f(xdata, *popt) - ydata`` is minimized
		pcov : 2d array
		    The estimated covariance of popt. The diagonals provide the variance
		    of the parameter estimate. To compute one standard deviation errors
		    on the parameters use ``perr = np.sqrt(np.diag(pcov))``.
		
		    How the `sigma` parameter affects the estimated covariance
		    depends on `absolute_sigma` argument, as described above.
		
		Raises
		------
		OptimizeWarning
		    if covariance of the parameters can not be estimated.
		
		ValueError
		    if ydata and xdata contain NaNs.
		
		See Also
		--------
		leastsq
		
		Notes
		-----
		The algorithm uses the Levenberg-Marquardt algorithm through `leastsq`.
		Additional keyword arguments are passed directly to that algorithm.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.optimize import curve_fit
		>>> def func(x, a, b, c):
		...     return a * np.exp(-b * x) + c
		
		>>> xdata = np.linspace(0, 4, 50)
		>>> y = func(xdata, 2.5, 1.3, 0.5)
		>>> ydata = y + 0.2 * np.random.normal(size=len(xdata))
		
		>>> popt, pcov = curve_fit(func, xdata, ydata)
	**/
	static public function curve_fit(f:Dynamic, xdata:Dynamic, ydata:Dynamic, ?p0:Dynamic, ?sigma:Dynamic, ?absolute_sigma:Dynamic, ?check_finite:Dynamic, kw:Dynamic):Dynamic;
	/**
		Find a root of a function, using diagonal Broyden Jacobian approximation.
		
		The Jacobian approximation is derived from previous iterations, by
		retaining only the diagonal of Broyden matrices.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is (-1/alpha).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
	**/
	static public function diagbroyden(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Finds the global minimum of a multivariate function.
		Differential Evolution is stochastic in nature (does not use gradient
		methods) to find the minimium, and can search large areas of candidate
		space, but often requires larger numbers of function evaluations than
		conventional gradient based techniques.
		
		The algorithm is due to Storn and Price [1]_.
		
		Parameters
		----------
		func : callable
		    The objective function to be minimized.  Must be in the form
		    ``f(x, *args)``, where ``x`` is the argument in the form of a 1-D array
		    and ``args`` is a  tuple of any additional fixed parameters needed to
		    completely specify the function.
		bounds : sequence
		    Bounds for variables.  ``(min, max)`` pairs for each element in ``x``,
		    defining the lower and upper bounds for the optimizing argument of
		    `func`. It is required to have ``len(bounds) == len(x)``.
		    ``len(bounds)`` is used to determine the number of parameters in ``x``.
		args : tuple, optional
		    Any additional fixed parameters needed to
		    completely specify the objective function.
		strategy : str, optional
		    The differential evolution strategy to use. Should be one of:
		
		        - 'best1bin'
		        - 'best1exp'
		        - 'rand1exp'
		        - 'randtobest1exp'
		        - 'best2exp'
		        - 'rand2exp'
		        - 'randtobest1bin'
		        - 'best2bin'
		        - 'rand2bin'
		        - 'rand1bin'
		
		    The default is 'best1bin'.
		maxiter : int, optional
		    The maximum number of times the entire population is evolved.
		    The maximum number of function evaluations is:
		    ``maxiter * popsize * len(x)``
		popsize : int, optional
		    A multiplier for setting the total population size.  The population has
		    ``popsize * len(x)`` individuals.
		tol : float, optional
		    When the mean of the population energies, multiplied by tol,
		    divided by the standard deviation of the population energies
		    is greater than 1 the solving process terminates:
		    ``convergence = mean(pop) * tol / stdev(pop) > 1``
		mutation : float or tuple(float, float), optional
		    The mutation constant.
		    If specified as a float it should be in the range [0, 2].
		    If specified as a tuple ``(min, max)`` dithering is employed. Dithering
		    randomly changes the mutation constant on a generation by generation
		    basis. The mutation constant for that generation is taken from
		    ``U[min, max)``. Dithering can help speed convergence significantly.
		    Increasing the mutation constant increases the search radius, but will
		    slow down convergence.
		recombination : float, optional
		    The recombination constant, should be in the range [0, 1]. Increasing
		    this value allows a larger number of mutants to progress into the next
		    generation, but at the risk of population stability.
		seed : int or `np.random.RandomState`, optional
		    If `seed` is not specified the `np.RandomState` singleton is used.
		    If `seed` is an int, a new `np.random.RandomState` instance is used,
		    seeded with seed.
		    If `seed` is already a `np.random.RandomState instance`, then that
		    `np.random.RandomState` instance is used.
		    Specify `seed` for repeatable minimizations.
		disp : bool, optional
		    Display status messages
		callback : callable, `callback(xk, convergence=val)`, optional
		    A function to follow the progress of the minimization. ``xk`` is
		    the current value of ``x0``. ``val`` represents the fractional
		    value of the population convergence.  When ``val`` is greater than one
		    the function halts. If callback returns `True`, then the minimization
		    is halted (any polishing is still carried out).
		polish : bool, optional
		    If True (default), then `scipy.optimize.minimize` with the `L-BFGS-B`
		    method is used to polish the best population member at the end, which
		    can improve the minimization slightly.
		init : string, optional
		    Specify how the population initialization is performed. Should be
		    one of:
		
		        - 'latinhypercube'
		        - 'random'
		
		    The default is 'latinhypercube'. Latin Hypercube sampling tries to
		    maximize coverage of the available parameter space. 'random' initializes
		    the population randomly - this has the drawback that clustering can
		    occur, preventing the whole of parameter space being covered.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a `OptimizeResult` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the optimizer exited successfully and
		    ``message`` which describes the cause of the termination. See
		    `OptimizeResult` for a description of other attributes. If `polish`
		    was employed, then OptimizeResult also contains the `jac` attribute.
		
		Notes
		-----
		Differential evolution is a stochastic population based method that is
		useful for global optimization problems. At each pass through the population
		the algorithm mutates each candidate solution by mixing with other candidate
		solutions to create a trial candidate. There are several strategies [2]_ for
		creating trial candidates, which suit some problems more than others. The
		'best1bin' strategy is a good starting point for many systems. In this
		strategy two members of the population are randomly chosen. Their difference
		is used to mutate the best member (the `best` in `best1bin`), :math:`b_0`,
		so far:
		
		.. math::
		
		    b' = b_0 + mutation * (population[rand0] - population[rand1])
		
		A trial vector is then constructed. Starting with a randomly chosen 'i'th
		parameter the trial is sequentially filled (in modulo) with parameters from
		`b'` or the original candidate. The choice of whether to use `b'` or the
		original candidate is made with a binomial distribution (the 'bin' in
		'best1bin') - a random number in [0, 1) is generated.  If this number is
		less than the `recombination` constant then the parameter is loaded from
		`b'`, otherwise it is loaded from the original candidate.  The final
		parameter is always loaded from `b'`.  Once the trial candidate is built
		its fitness is assessed. If the trial is better than the original candidate
		then it takes its place. If it is also better than the best overall
		candidate it also replaces that.
		To improve your chances of finding a global minimum use higher `popsize`
		values, with higher `mutation` and (dithering), but lower `recombination`
		values. This has the effect of widening the search radius, but slowing
		convergence.
		
		.. versionadded:: 0.15.0
		
		Examples
		--------
		Let us consider the problem of minimizing the Rosenbrock function. This
		function is implemented in `rosen` in `scipy.optimize`.
		
		>>> from scipy.optimize import rosen, differential_evolution
		>>> bounds = [(0,2), (0, 2), (0, 2), (0, 2), (0, 2)]
		>>> result = differential_evolution(rosen, bounds)
		>>> result.x, result.fun
		(array([1., 1., 1., 1., 1.]), 1.9216496320061384e-19)
		
		Next find the minimum of the Ackley function
		(http://en.wikipedia.org/wiki/Test_functions_for_optimization).
		
		>>> from scipy.optimize import differential_evolution
		>>> import numpy as np
		>>> def ackley(x):
		...     arg1 = -0.2 * np.sqrt(0.5 * (x[0] ** 2 + x[1] ** 2))
		...     arg2 = 0.5 * (np.cos(2. * np.pi * x[0]) + np.cos(2. * np.pi * x[1]))
		...     return -20. * np.exp(arg1) - np.exp(arg2) + 20. + np.e
		>>> bounds = [(-5, 5), (-5, 5)]
		>>> result = differential_evolution(ackley, bounds)
		>>> result.x, result.fun
		(array([ 0.,  0.]), 4.4408920985006262e-16)
		
		References
		----------
		.. [1] Storn, R and Price, K, Differential Evolution - a Simple and
		       Efficient Heuristic for Global Optimization over Continuous Spaces,
		       Journal of Global Optimization, 1997, 11, 341 - 359.
		.. [2] http://www1.icsi.berkeley.edu/~storn/code.html
		.. [3] http://en.wikipedia.org/wiki/Differential_evolution
	**/
	static public function differential_evolution(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?strategy:Dynamic, ?maxiter:Dynamic, ?popsize:Dynamic, ?tol:Dynamic, ?mutation:Dynamic, ?recombination:Dynamic, ?seed:Dynamic, ?callback:Dynamic, ?disp:Dynamic, ?polish:Dynamic, ?init:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find a root of a function, using a tuned diagonal Jacobian approximation.
		
		The Jacobian matrix is diagonal and is tuned on each iteration.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial Jacobian approximation is (-1/alpha).
		alphamax : float, optional
		    The entries of the diagonal Jacobian are kept in the range
		    ``[alpha, alphamax]``.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
	**/
	static public function excitingmixing(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?alphamax:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Find a fixed point of the function.
		
		Given a function of one or more variables and a starting point, find a
		fixed-point of the function: i.e. where ``func(x0) == x0``.
		
		Parameters
		----------
		func : function
		    Function to evaluate.
		x0 : array_like
		    Fixed point of function.
		args : tuple, optional
		    Extra arguments to `func`.
		xtol : float, optional
		    Convergence tolerance, defaults to 1e-08.
		maxiter : int, optional
		    Maximum number of iterations, defaults to 500.
		
		Notes
		-----
		Uses Steffensen's Method using Aitken's ``Del^2`` convergence acceleration.
		See Burden, Faires, "Numerical Analysis", 5th edition, pg. 80
		
		Examples
		--------
		>>> from scipy import optimize
		>>> def func(x, c1, c2):
		...    return np.sqrt(c1/(x+c2))
		>>> c1 = np.array([10,12.])
		>>> c2 = np.array([3, 5.])
		>>> optimize.fixed_point(func, [1.2, 1.3], args=(c1,c2))
		array([ 1.4920333 ,  1.37228132])
	**/
	static public function fixed_point(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Minimize a function using the downhill simplex algorithm.
		
		This algorithm only uses function values, not derivatives or second
		derivatives.
		
		Parameters
		----------
		func : callable func(x,*args)
		    The objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to func, i.e. ``f(x,*args)``.
		callback : callable, optional
		    Called after each iteration, as callback(xk), where xk is the
		    current parameter vector.
		xtol : float, optional
		    Relative error in xopt acceptable for convergence.
		ftol : number, optional
		    Relative error in func(xopt) acceptable for convergence.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		maxfun : number, optional
		    Maximum number of function evaluations to make.
		full_output : bool, optional
		    Set to True if fopt and warnflag outputs are desired.
		disp : bool, optional
		    Set to True to print convergence messages.
		retall : bool, optional
		    Set to True to return list of solutions at each iteration.
		
		Returns
		-------
		xopt : ndarray
		    Parameter that minimizes function.
		fopt : float
		    Value of function at minimum: ``fopt = func(xopt)``.
		iter : int
		    Number of iterations performed.
		funcalls : int
		    Number of function calls made.
		warnflag : int
		    1 : Maximum number of function evaluations made.
		    2 : Maximum number of iterations reached.
		allvecs : list
		    Solution at each iteration.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'Nelder-Mead' `method` in particular.
		
		Notes
		-----
		Uses a Nelder-Mead simplex algorithm to find the minimum of function of
		one or more variables.
		
		This algorithm has a long history of successful use in applications.
		But it will usually be slower than an algorithm that uses first or
		second derivative information. In practice it can have poor
		performance in high-dimensional problems and is not robust to
		minimizing complicated functions. Additionally, there currently is no
		complete theory describing when the algorithm will successfully
		converge to the minimum, or how fast it will if it does.
		
		References
		----------
		.. [1] Nelder, J.A. and Mead, R. (1965), "A simplex method for function
		       minimization", The Computer Journal, 7, pp. 308-313
		
		.. [2] Wright, M.H. (1996), "Direct Search Methods: Once Scorned, Now
		       Respectable", in Numerical Analysis 1995, Proceedings of the
		       1995 Dundee Biennial Conference in Numerical Analysis, D.F.
		       Griffiths and G.A. Watson (Eds.), Addison Wesley Longman,
		       Harlow, UK, pp. 191-208.
	**/
	static public function fmin(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?maxiter:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using the BFGS algorithm.
		
		Parameters
		----------
		f : callable f(x,*args)
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		fprime : callable f'(x,*args), optional
		    Gradient of f.
		args : tuple, optional
		    Extra arguments passed to f and fprime.
		gtol : float, optional
		    Gradient norm must be less than gtol before successful termination.
		norm : float, optional
		    Order of norm (Inf is max, -Inf is min)
		epsilon : int or ndarray, optional
		    If fprime is approximated, use this value for the step size.
		callback : callable, optional
		    An optional user-supplied function to call after each
		    iteration.  Called as callback(xk), where xk is the
		    current parameter vector.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		full_output : bool, optional
		    If True,return fopt, func_calls, grad_calls, and warnflag
		    in addition to xopt.
		disp : bool, optional
		    Print convergence message if True.
		retall : bool, optional
		    Return a list of results at each iteration if True.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. f(xopt) == fopt.
		fopt : float
		    Minimum value.
		gopt : ndarray
		    Value of gradient at minimum, f'(xopt), which should be near 0.
		Bopt : ndarray
		    Value of 1/f''(xopt), i.e. the inverse hessian matrix.
		func_calls : int
		    Number of function_calls made.
		grad_calls : int
		    Number of gradient calls made.
		warnflag : integer
		    1 : Maximum number of iterations exceeded.
		    2 : Gradient and/or function calls not changing.
		allvecs  :  list
		    `OptimizeResult` at each iteration.  Only returned if retall is True.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'BFGS' `method` in particular.
		
		Notes
		-----
		Optimize the function, f, whose gradient is given by fprime
		using the quasi-Newton method of Broyden, Fletcher, Goldfarb,
		and Shanno (BFGS)
		
		References
		----------
		Wright, and Nocedal 'Numerical Optimization', 1999, pg. 198.
	**/
	static public function fmin_bfgs(f:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using a nonlinear conjugate gradient algorithm.
		
		Parameters
		----------
		f : callable, ``f(x, *args)``
		    Objective function to be minimized.  Here `x` must be a 1-D array of
		    the variables that are to be changed in the search for a minimum, and
		    `args` are the other (fixed) parameters of `f`.
		x0 : ndarray
		    A user-supplied initial estimate of `xopt`, the optimal value of `x`.
		    It must be a 1-D array of values.
		fprime : callable, ``fprime(x, *args)``, optional
		    A function that returns the gradient of `f` at `x`. Here `x` and `args`
		    are as described above for `f`. The returned value must be a 1-D array.
		    Defaults to None, in which case the gradient is approximated
		    numerically (see `epsilon`, below).
		args : tuple, optional
		    Parameter values passed to `f` and `fprime`. Must be supplied whenever
		    additional fixed parameters are needed to completely specify the
		    functions `f` and `fprime`.
		gtol : float, optional
		    Stop when the norm of the gradient is less than `gtol`.
		norm : float, optional
		    Order to use for the norm of the gradient
		    (``-np.Inf`` is min, ``np.Inf`` is max).
		epsilon : float or ndarray, optional
		    Step size(s) to use when `fprime` is approximated numerically. Can be a
		    scalar or a 1-D array.  Defaults to ``sqrt(eps)``, with eps the
		    floating point machine precision.  Usually ``sqrt(eps)`` is about
		    1.5e-8.
		maxiter : int, optional
		    Maximum number of iterations to perform. Default is ``200 * len(x0)``.
		full_output : bool, optional
		    If True, return `fopt`, `func_calls`, `grad_calls`, and `warnflag` in
		    addition to `xopt`.  See the Returns section below for additional
		    information on optional return values.
		disp : bool, optional
		    If True, return a convergence message, followed by `xopt`.
		retall : bool, optional
		    If True, add to the returned values the results of each iteration.
		callback : callable, optional
		    An optional user-supplied function, called after each iteration.
		    Called as ``callback(xk)``, where ``xk`` is the current value of `x0`.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. ``f(xopt) == fopt``.
		fopt : float, optional
		    Minimum value found, f(xopt).  Only returned if `full_output` is True.
		func_calls : int, optional
		    The number of function_calls made.  Only returned if `full_output`
		    is True.
		grad_calls : int, optional
		    The number of gradient calls made. Only returned if `full_output` is
		    True.
		warnflag : int, optional
		    Integer value with warning status, only returned if `full_output` is
		    True.
		
		    0 : Success.
		
		    1 : The maximum number of iterations was exceeded.
		
		    2 : Gradient and/or function calls were not changing.  May indicate
		        that precision was lost, i.e., the routine did not converge.
		
		allvecs : list of ndarray, optional
		    List of arrays, containing the results at each iteration.
		    Only returned if `retall` is True.
		
		See Also
		--------
		minimize : common interface to all `scipy.optimize` algorithms for
		           unconstrained and constrained minimization of multivariate
		           functions.  It provides an alternative way to call
		           ``fmin_cg``, by specifying ``method='CG'``.
		
		Notes
		-----
		This conjugate gradient algorithm is based on that of Polak and Ribiere
		[1]_.
		
		Conjugate gradient methods tend to work better when:
		
		1. `f` has a unique global minimizing point, and no local minima or
		   other stationary points,
		2. `f` is, at least locally, reasonably well approximated by a
		   quadratic function of the variables,
		3. `f` is continuous and has a continuous gradient,
		4. `fprime` is not too large, e.g., has a norm less than 1000,
		5. The initial guess, `x0`, is reasonably close to `f` 's global
		   minimizing point, `xopt`.
		
		References
		----------
		.. [1] Wright & Nocedal, "Numerical Optimization", 1999, pp. 120-122.
		
		Examples
		--------
		Example 1: seek the minimum value of the expression
		``a*u**2 + b*u*v + c*v**2 + d*u + e*v + f`` for given values
		of the parameters and an initial guess ``(u, v) = (0, 0)``.
		
		>>> args = (2, 3, 7, 8, 9, 10)  # parameter values
		>>> def f(x, *args):
		...     u, v = x
		...     a, b, c, d, e, f = args
		...     return a*u**2 + b*u*v + c*v**2 + d*u + e*v + f
		>>> def gradf(x, *args):
		...     u, v = x
		...     a, b, c, d, e, f = args
		...     gu = 2*a*u + b*v + d     # u-component of the gradient
		...     gv = b*u + 2*c*v + e     # v-component of the gradient
		...     return np.asarray((gu, gv))
		>>> x0 = np.asarray((0, 0))  # Initial guess.
		>>> from scipy import optimize
		>>> res1 = optimize.fmin_cg(f, x0, fprime=gradf, args=args)
		>>> print('res1 = ', res1)
		Optimization terminated successfully.
		         Current function value: 1.617021
		         Iterations: 2
		         Function evaluations: 5
		         Gradient evaluations: 5
		res1 =  [-1.80851064 -0.25531915]
		
		Example 2: solve the same problem using the `minimize` function.
		(This `myopts` dictionary shows all of the available options,
		although in practice only non-default values would be needed.
		The returned value will be a dictionary.)
		
		>>> opts = {'maxiter' : None,    # default value.
		...         'disp' : True,    # non-default value.
		...         'gtol' : 1e-5,    # default value.
		...         'norm' : np.inf,  # default value.
		...         'eps' : 1.4901161193847656e-08}  # default value.
		>>> res2 = optimize.minimize(f, x0, jac=gradf, args=args,
		...                          method='CG', options=opts)
		Optimization terminated successfully.
		        Current function value: 1.617021
		        Iterations: 2
		        Function evaluations: 5
		        Gradient evaluations: 5
		>>> res2.x  # minimum found
		array([-1.80851064 -0.25531915])
	**/
	static public function fmin_cg(f:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using the Constrained Optimization BY Linear
		Approximation (COBYLA) method. This method wraps a FORTRAN
		implentation of the algorithm.
		
		Parameters
		----------
		func : callable
		    Function to minimize. In the form func(x, \*args).
		x0 : ndarray
		    Initial guess.
		cons : sequence
		    Constraint functions; must all be ``>=0`` (a single function
		    if only 1 constraint). Each function takes the parameters `x`
		    as its first argument, and it can return either a single number or
		    an array or list of numbers.
		args : tuple, optional
		    Extra arguments to pass to function.
		consargs : tuple, optional
		    Extra arguments to pass to constraint functions (default of None means
		    use same extra arguments as those passed to func).
		    Use ``()`` for no extra arguments.
		rhobeg : float, optional
		    Reasonable initial changes to the variables.
		rhoend : float, optional
		    Final accuracy in the optimization (not precisely guaranteed). This
		    is a lower bound on the size of the trust region.
		iprint : {0, 1, 2, 3}, optional
		    Controls the frequency of output; 0 implies no output.  Deprecated.
		disp : {0, 1, 2, 3}, optional
		    Over-rides the iprint interface.  Preferred.
		maxfun : int, optional
		    Maximum number of function evaluations.
		catol : float, optional
		    Absolute tolerance for constraint violations.
		
		Returns
		-------
		x : ndarray
		    The argument that minimises `f`.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'COBYLA' `method` in particular.
		
		Notes
		-----
		This algorithm is based on linear approximations to the objective
		function and each constraint. We briefly describe the algorithm.
		
		Suppose the function is being minimized over k variables. At the
		jth iteration the algorithm has k+1 points v_1, ..., v_(k+1),
		an approximate solution x_j, and a radius RHO_j.
		(i.e. linear plus a constant) approximations to the objective
		function and constraint functions such that their function values
		agree with the linear approximation on the k+1 points v_1,.., v_(k+1).
		This gives a linear program to solve (where the linear approximations
		of the constraint functions are constrained to be non-negative).
		
		However the linear approximations are likely only good
		approximations near the current simplex, so the linear program is
		given the further requirement that the solution, which
		will become x_(j+1), must be within RHO_j from x_j. RHO_j only
		decreases, never increases. The initial RHO_j is rhobeg and the
		final RHO_j is rhoend. In this way COBYLA's iterations behave
		like a trust region algorithm.
		
		Additionally, the linear program may be inconsistent, or the
		approximation may give poor improvement. For details about
		how these issues are resolved, as well as how the points v_i are
		updated, refer to the source code or the references below.
		
		
		References
		----------
		Powell M.J.D. (1994), "A direct search optimization method that models
		the objective and constraint functions by linear interpolation.", in
		Advances in Optimization and Numerical Analysis, eds. S. Gomez and
		J-P Hennart, Kluwer Academic (Dordrecht), pp. 51-67
		
		Powell M.J.D. (1998), "Direct search algorithms for optimization
		calculations", Acta Numerica 7, 287-336
		
		Powell M.J.D. (2007), "A view of algorithms for optimization without
		derivatives", Cambridge University Technical Report DAMTP 2007/NA03
		
		
		Examples
		--------
		Minimize the objective function f(x,y) = x*y subject
		to the constraints x**2 + y**2 < 1 and y > 0::
		
		    >>> def objective(x):
		    ...     return x[0]*x[1]
		    ...
		    >>> def constr1(x):
		    ...     return 1 - (x[0]**2 + x[1]**2)
		    ...
		    >>> def constr2(x):
		    ...     return x[1]
		    ...
		    >>> from scipy.optimize import fmin_cobyla
		    >>> fmin_cobyla(objective, [0.0, 0.1], [constr1, constr2], rhoend=1e-7)
		
		       Normal return from subroutine COBYLA
		
		       NFVALS =   64   F =-5.000000E-01    MAXCV = 1.998401E-14
		       X =-7.071069E-01   7.071067E-01
		    array([-0.70710685,  0.70710671])
		
		The exact solution is (-sqrt(2)/2, sqrt(2)/2).
	**/
	static public function fmin_cobyla(func:Dynamic, x0:Dynamic, cons:Dynamic, ?args:Dynamic, ?consargs:Dynamic, ?rhobeg:Dynamic, ?rhoend:Dynamic, ?iprint:Dynamic, ?maxfun:Dynamic, ?disp:Dynamic, ?catol:Dynamic):Dynamic;
	/**
		Minimize a function func using the L-BFGS-B algorithm.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Function to minimise.
		x0 : ndarray
		    Initial guess.
		fprime : callable fprime(x,*args), optional
		    The gradient of `func`.  If None, then `func` returns the function
		    value and the gradient (``f, g = func(x, *args)``), unless
		    `approx_grad` is True in which case `func` returns only ``f``.
		args : sequence, optional
		    Arguments to pass to `func` and `fprime`.
		approx_grad : bool, optional
		    Whether to approximate the gradient numerically (in which case
		    `func` returns only the function value).
		bounds : list, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None or +-inf for one of ``min`` or
		    ``max`` when there is no bound in that direction.
		m : int, optional
		    The maximum number of variable metric corrections
		    used to define the limited memory matrix. (The limited memory BFGS
		    method does not store the full hessian but uses this many terms in an
		    approximation to it.)
		factr : float, optional
		    The iteration stops when
		    ``(f^k - f^{k+1})/max{|f^k|,|f^{k+1}|,1} <= factr * eps``,
		    where ``eps`` is the machine precision, which is automatically
		    generated by the code. Typical values for `factr` are: 1e12 for
		    low accuracy; 1e7 for moderate accuracy; 10.0 for extremely
		    high accuracy.
		pgtol : float, optional
		    The iteration will stop when
		    ``max{|proj g_i | i = 1, ..., n} <= pgtol``
		    where ``pg_i`` is the i-th component of the projected gradient.
		epsilon : float, optional
		    Step size used when `approx_grad` is True, for numerically
		    calculating the gradient
		iprint : int, optional
		    Controls the frequency of output. ``iprint < 0`` means no output;
		    ``iprint == 0`` means write messages to stdout; ``iprint > 1`` in
		    addition means write logging information to a file named
		    ``iterate.dat`` in the current working directory.
		disp : int, optional
		    If zero, then no output.  If a positive number, then this over-rides
		    `iprint` (i.e., `iprint` gets the value of `disp`).
		maxfun : int, optional
		    Maximum number of function evaluations.
		maxiter : int, optional
		    Maximum number of iterations.
		callback : callable, optional
		    Called after each iteration, as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		
		Returns
		-------
		x : array_like
		    Estimated position of the minimum.
		f : float
		    Value of `func` at the minimum.
		d : dict
		    Information dictionary.
		
		    * d['warnflag'] is
		
		      - 0 if converged,
		      - 1 if too many function evaluations or too many iterations,
		      - 2 if stopped for another reason, given in d['task']
		
		    * d['grad'] is the gradient at the minimum (should be 0 ish)
		    * d['funcalls'] is the number of function calls made.
		    * d['nit'] is the number of iterations.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'L-BFGS-B' `method` in particular.
		
		Notes
		-----
		License of L-BFGS-B (FORTRAN code):
		
		The version included here (in fortran code) is 3.0
		(released April 25, 2011).  It was written by Ciyou Zhu, Richard Byrd,
		and Jorge Nocedal <nocedal@ece.nwu.edu>. It carries the following
		condition for use:
		
		This software is freely available, but we expect that all publications
		describing work using this software, or all commercial products using it,
		quote at least one of the references given below. This software is released
		under the BSD License.
		
		References
		----------
		* R. H. Byrd, P. Lu and J. Nocedal. A Limited Memory Algorithm for Bound
		  Constrained Optimization, (1995), SIAM Journal on Scientific and
		  Statistical Computing, 16, 5, pp. 1190-1208.
		* C. Zhu, R. H. Byrd and J. Nocedal. L-BFGS-B: Algorithm 778: L-BFGS-B,
		  FORTRAN routines for large scale bound constrained optimization (1997),
		  ACM Transactions on Mathematical Software, 23, 4, pp. 550 - 560.
		* J.L. Morales and J. Nocedal. L-BFGS-B: Remark on Algorithm 778: L-BFGS-B,
		  FORTRAN routines for large scale bound constrained optimization (2011),
		  ACM Transactions on Mathematical Software, 38, 1.
	**/
	static public function fmin_l_bfgs_b(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?approx_grad:Dynamic, ?bounds:Dynamic, ?m:Dynamic, ?factr:Dynamic, ?pgtol:Dynamic, ?epsilon:Dynamic, ?iprint:Dynamic, ?maxfun:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Unconstrained minimization of a function using the Newton-CG method.
		
		Parameters
		----------
		f : callable ``f(x, *args)``
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		fprime : callable ``f'(x, *args)``
		    Gradient of f.
		fhess_p : callable ``fhess_p(x, p, *args)``, optional
		    Function which computes the Hessian of f times an
		    arbitrary vector, p.
		fhess : callable ``fhess(x, *args)``, optional
		    Function to compute the Hessian matrix of f.
		args : tuple, optional
		    Extra arguments passed to f, fprime, fhess_p, and fhess
		    (the same set of extra arguments is supplied to all of
		    these functions).
		epsilon : float or ndarray, optional
		    If fhess is approximated, use this value for the step size.
		callback : callable, optional
		    An optional user-supplied function which is called after
		    each iteration.  Called as callback(xk), where xk is the
		    current parameter vector.
		avextol : float, optional
		    Convergence is assumed when the average relative error in
		    the minimizer falls below this amount.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		full_output : bool, optional
		    If True, return the optional outputs.
		disp : bool, optional
		    If True, print convergence message.
		retall : bool, optional
		    If True, return a list of results at each iteration.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. ``f(xopt) == fopt``.
		fopt : float
		    Value of the function at xopt, i.e. ``fopt = f(xopt)``.
		fcalls : int
		    Number of function calls made.
		gcalls : int
		    Number of gradient calls made.
		hcalls : int
		    Number of hessian calls made.
		warnflag : int
		    Warnings generated by the algorithm.
		    1 : Maximum number of iterations exceeded.
		allvecs : list
		    The result at each iteration, if retall is True (see below).
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'Newton-CG' `method` in particular.
		
		Notes
		-----
		Only one of `fhess_p` or `fhess` need to be given.  If `fhess`
		is provided, then `fhess_p` will be ignored.  If neither `fhess`
		nor `fhess_p` is provided, then the hessian product will be
		approximated using finite differences on `fprime`. `fhess_p`
		must compute the hessian times an arbitrary vector. If it is not
		given, finite-differences on `fprime` are used to compute
		it.
		
		Newton-CG methods are also called truncated Newton methods. This
		function differs from scipy.optimize.fmin_tnc because
		
		1. scipy.optimize.fmin_ncg is written purely in python using numpy
		    and scipy while scipy.optimize.fmin_tnc calls a C function.
		2. scipy.optimize.fmin_ncg is only for unconstrained minimization
		    while scipy.optimize.fmin_tnc is for unconstrained minimization
		    or box constrained minimization. (Box constraints give
		    lower and upper bounds for each variable separately.)
		
		References
		----------
		Wright & Nocedal, 'Numerical Optimization', 1999, pg. 140.
	**/
	static public function fmin_ncg(f:Dynamic, x0:Dynamic, fprime:Dynamic, ?fhess_p:Dynamic, ?fhess:Dynamic, ?args:Dynamic, ?avextol:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using modified Powell's method. This method
		only uses function values, not derivatives.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to func.
		callback : callable, optional
		    An optional user-supplied function, called after each
		    iteration.  Called as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		direc : ndarray, optional
		    Initial direction set.
		xtol : float, optional
		    Line-search error tolerance.
		ftol : float, optional
		    Relative error in ``func(xopt)`` acceptable for convergence.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		maxfun : int, optional
		    Maximum number of function evaluations to make.
		full_output : bool, optional
		    If True, fopt, xi, direc, iter, funcalls, and
		    warnflag are returned.
		disp : bool, optional
		    If True, print convergence messages.
		retall : bool, optional
		    If True, return a list of the solution at each iteration.
		
		Returns
		-------
		xopt : ndarray
		    Parameter which minimizes `func`.
		fopt : number
		    Value of function at minimum: ``fopt = func(xopt)``.
		direc : ndarray
		    Current direction set.
		iter : int
		    Number of iterations.
		funcalls : int
		    Number of function calls made.
		warnflag : int
		    Integer warning flag:
		        1 : Maximum number of function evaluations.
		        2 : Maximum number of iterations.
		allvecs : list
		    List of solutions at each iteration.
		
		See also
		--------
		minimize: Interface to unconstrained minimization algorithms for
		    multivariate functions. See the 'Powell' `method` in particular.
		
		Notes
		-----
		Uses a modification of Powell's method to find the minimum of
		a function of N variables. Powell's method is a conjugate
		direction method.
		
		The algorithm has two loops. The outer loop
		merely iterates over the inner loop. The inner loop minimizes
		over each current direction in the direction set. At the end
		of the inner loop, if certain conditions are met, the direction
		that gave the largest decrease is dropped and replaced with
		the difference between the current estiamted x and the estimated
		x from the beginning of the inner-loop.
		
		The technical conditions for replacing the direction of greatest
		increase amount to checking that
		
		1. No further gain can be made along the direction of greatest increase
		   from that iteration.
		2. The direction of greatest increase accounted for a large sufficient
		   fraction of the decrease in the function value from that iteration of
		   the inner loop.
		
		References
		----------
		Powell M.J.D. (1964) An efficient method for finding the minimum of a
		function of several variables without calculating derivatives,
		Computer Journal, 7 (2):155-162.
		
		Press W., Teukolsky S.A., Vetterling W.T., and Flannery B.P.:
		Numerical Recipes (any edition), Cambridge University Press
	**/
	static public function fmin_powell(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?maxiter:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic, ?direc:Dynamic):Dynamic;
	/**
		Minimize a function using Sequential Least SQuares Programming
		
		Python interface function for the SLSQP Optimization subroutine
		originally implemented by Dieter Kraft.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function.
		x0 : 1-D ndarray of float
		    Initial guess for the independent variable(s).
		eqcons : list, optional
		    A list of functions of length n such that
		    eqcons[j](x,*args) == 0.0 in a successfully optimized
		    problem.
		f_eqcons : callable f(x,*args), optional
		    Returns a 1-D array in which each element must equal 0.0 in a
		    successfully optimized problem.  If f_eqcons is specified,
		    eqcons is ignored.
		ieqcons : list, optional
		    A list of functions of length n such that
		    ieqcons[j](x,*args) >= 0.0 in a successfully optimized
		    problem.
		f_ieqcons : callable f(x,*args), optional
		    Returns a 1-D ndarray in which each element must be greater or
		    equal to 0.0 in a successfully optimized problem.  If
		    f_ieqcons is specified, ieqcons is ignored.
		bounds : list, optional
		    A list of tuples specifying the lower and upper bound
		    for each independent variable [(xl0, xu0),(xl1, xu1),...]
		    Infinite values will be interpreted as large floating values.
		fprime : callable `f(x,*args)`, optional
		    A function that evaluates the partial derivatives of func.
		fprime_eqcons : callable `f(x,*args)`, optional
		    A function of the form `f(x, *args)` that returns the m by n
		    array of equality constraint normals.  If not provided,
		    the normals will be approximated. The array returned by
		    fprime_eqcons should be sized as ( len(eqcons), len(x0) ).
		fprime_ieqcons : callable `f(x,*args)`, optional
		    A function of the form `f(x, *args)` that returns the m by n
		    array of inequality constraint normals.  If not provided,
		    the normals will be approximated. The array returned by
		    fprime_ieqcons should be sized as ( len(ieqcons), len(x0) ).
		args : sequence, optional
		    Additional arguments passed to func and fprime.
		iter : int, optional
		    The maximum number of iterations.
		acc : float, optional
		    Requested accuracy.
		iprint : int, optional
		    The verbosity of fmin_slsqp :
		
		    * iprint <= 0 : Silent operation
		    * iprint == 1 : Print summary upon completion (default)
		    * iprint >= 2 : Print status of each iterate and summary
		disp : int, optional
		    Over-rides the iprint interface (preferred).
		full_output : bool, optional
		    If False, return only the minimizer of func (default).
		    Otherwise, output final objective function and summary
		    information.
		epsilon : float, optional
		    The step size for finite-difference derivative estimates.
		callback : callable, optional
		    Called after each iteration, as ``callback(x)``, where ``x`` is the
		    current parameter vector.
		
		Returns
		-------
		out : ndarray of float
		    The final minimizer of func.
		fx : ndarray of float, if full_output is true
		    The final value of the objective function.
		its : int, if full_output is true
		    The number of iterations.
		imode : int, if full_output is true
		    The exit mode from the optimizer (see below).
		smode : string, if full_output is true
		    Message describing the exit mode from the optimizer.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'SLSQP' `method` in particular.
		
		Notes
		-----
		Exit modes are defined as follows ::
		
		    -1 : Gradient evaluation required (g & a)
		     0 : Optimization terminated successfully.
		     1 : Function evaluation required (f & c)
		     2 : More equality constraints than independent variables
		     3 : More than 3*n iterations in LSQ subproblem
		     4 : Inequality constraints incompatible
		     5 : Singular matrix E in LSQ subproblem
		     6 : Singular matrix C in LSQ subproblem
		     7 : Rank-deficient equality constraint subproblem HFTI
		     8 : Positive directional derivative for linesearch
		     9 : Iteration limit exceeded
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-sqlsp>`.
	**/
	static public function fmin_slsqp(func:Dynamic, x0:Dynamic, ?eqcons:Dynamic, ?f_eqcons:Dynamic, ?ieqcons:Dynamic, ?f_ieqcons:Dynamic, ?bounds:Dynamic, ?fprime:Dynamic, ?fprime_eqcons:Dynamic, ?fprime_ieqcons:Dynamic, ?args:Dynamic, ?iter:Dynamic, ?acc:Dynamic, ?iprint:Dynamic, ?disp:Dynamic, ?full_output:Dynamic, ?epsilon:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function with variables subject to bounds, using
		gradient information in a truncated Newton algorithm. This
		method wraps a C implementation of the algorithm.
		
		Parameters
		----------
		func : callable ``func(x, *args)``
		    Function to minimize.  Must do one of:
		
		    1. Return f and g, where f is the value of the function and g its
		       gradient (a list of floats).
		
		    2. Return the function value but supply gradient function
		       separately as `fprime`.
		
		    3. Return the function value and set ``approx_grad=True``.
		
		    If the function returns None, the minimization
		    is aborted.
		x0 : array_like
		    Initial estimate of minimum.
		fprime : callable ``fprime(x, *args)``, optional
		    Gradient of `func`. If None, then either `func` must return the
		    function value and the gradient (``f,g = func(x, *args)``)
		    or `approx_grad` must be True.
		args : tuple, optional
		    Arguments to pass to function.
		approx_grad : bool, optional
		    If true, approximate the gradient numerically.
		bounds : list, optional
		    (min, max) pairs for each element in x0, defining the
		    bounds on that parameter. Use None or +/-inf for one of
		    min or max when there is no bound in that direction.
		epsilon : float, optional
		    Used if approx_grad is True. The stepsize in a finite
		    difference approximation for fprime.
		scale : array_like, optional
		    Scaling factors to apply to each variable.  If None, the
		    factors are up-low for interval bounded variables and
		    1+|x| for the others.  Defaults to None.
		offset : array_like, optional
		    Value to subtract from each variable.  If None, the
		    offsets are (up+low)/2 for interval bounded variables
		    and x for the others.
		messages : int, optional
		    Bit mask used to select messages display during
		    minimization values defined in the MSGS dict.  Defaults to
		    MGS_ALL.
		disp : int, optional
		    Integer interface to messages.  0 = no message, 5 = all messages
		maxCGit : int, optional
		    Maximum number of hessian*vector evaluations per main
		    iteration.  If maxCGit == 0, the direction chosen is
		    -gradient if maxCGit < 0, maxCGit is set to
		    max(1,min(50,n/2)).  Defaults to -1.
		maxfun : int, optional
		    Maximum number of function evaluation.  if None, maxfun is
		    set to max(100, 10*len(x0)).  Defaults to None.
		eta : float, optional
		    Severity of the line search. if < 0 or > 1, set to 0.25.
		    Defaults to -1.
		stepmx : float, optional
		    Maximum step for the line search.  May be increased during
		    call.  If too small, it will be set to 10.0.  Defaults to 0.
		accuracy : float, optional
		    Relative precision for finite difference calculations.  If
		    <= machine_precision, set to sqrt(machine_precision).
		    Defaults to 0.
		fmin : float, optional
		    Minimum function value estimate.  Defaults to 0.
		ftol : float, optional
		    Precision goal for the value of f in the stoping criterion.
		    If ftol < 0.0, ftol is set to 0.0 defaults to -1.
		xtol : float, optional
		    Precision goal for the value of x in the stopping
		    criterion (after applying x scaling factors).  If xtol <
		    0.0, xtol is set to sqrt(machine_precision).  Defaults to
		    -1.
		pgtol : float, optional
		    Precision goal for the value of the projected gradient in
		    the stopping criterion (after applying x scaling factors).
		    If pgtol < 0.0, pgtol is set to 1e-2 * sqrt(accuracy).
		    Setting it to 0.0 is not recommended.  Defaults to -1.
		rescale : float, optional
		    Scaling factor (in log10) used to trigger f value
		    rescaling.  If 0, rescale at each iteration.  If a large
		    value, never rescale.  If < 0, rescale is set to 1.3.
		callback : callable, optional
		    Called after each iteration, as callback(xk), where xk is the
		    current parameter vector.
		
		Returns
		-------
		x : ndarray
		    The solution.
		nfeval : int
		    The number of function evaluations.
		rc : int
		    Return code, see below
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'TNC' `method` in particular.
		
		Notes
		-----
		The underlying algorithm is truncated Newton, also called
		Newton Conjugate-Gradient. This method differs from
		scipy.optimize.fmin_ncg in that
		
		1. It wraps a C implementation of the algorithm
		2. It allows each variable to be given an upper and lower bound.
		
		The algorithm incoporates the bound constraints by determining
		the descent direction as in an unconstrained truncated Newton,
		but never taking a step-size large enough to leave the space
		of feasible x's. The algorithm keeps track of a set of
		currently active constraints, and ignores them when computing
		the minimum allowable step size. (The x's associated with the
		active constraint are kept fixed.) If the maximum allowable
		step size is zero then a new constraint is added. At the end
		of each iteration one of the constraints may be deemed no
		longer active and removed. A constraint is considered
		no longer active is if it is currently active
		but the gradient for that variable points inward from the
		constraint. The specific constraint removed is the one
		associated with the variable of largest index whose
		constraint is no longer active.
		
		Return codes are defined as follows::
		
		    -1 : Infeasible (lower bound > upper bound)
		     0 : Local minimum reached (|pg| ~= 0)
		     1 : Converged (|f_n-f_(n-1)| ~= 0)
		     2 : Converged (|x_n-x_(n-1)| ~= 0)
		     3 : Max. number of function evaluations reached
		     4 : Linear search failed
		     5 : All lower bounds are equal to the upper bounds
		     6 : Unable to progress
		     7 : User requested end of minimization
		
		References
		----------
		Wright S., Nocedal J. (2006), 'Numerical Optimization'
		
		Nash S.G. (1984), "Newton-Type Minimization Via the Lanczos Method",
		SIAM Journal of Numerical Analysis 21, pp. 770-778
	**/
	static public function fmin_tnc(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?approx_grad:Dynamic, ?bounds:Dynamic, ?epsilon:Dynamic, ?scale:Dynamic, ?offset:Dynamic, ?messages:Dynamic, ?maxCGit:Dynamic, ?maxfun:Dynamic, ?eta:Dynamic, ?stepmx:Dynamic, ?accuracy:Dynamic, ?fmin:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?pgtol:Dynamic, ?rescale:Dynamic, ?disp:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Bounded minimization for scalar functions.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to be minimized (must accept and return scalars).
		x1, x2 : float or array scalar
		    The optimization bounds.
		args : tuple, optional
		    Extra arguments passed to function.
		xtol : float, optional
		    The convergence tolerance.
		maxfun : int, optional
		    Maximum number of function evaluations allowed.
		full_output : bool, optional
		    If True, return optional outputs.
		disp : int, optional
		    If non-zero, print messages.
		        0 : no message printing.
		        1 : non-convergence notification messages only.
		        2 : print a message on convergence too.
		        3 : print iteration results.
		
		
		Returns
		-------
		xopt : ndarray
		    Parameters (over given interval) which minimize the
		    objective function.
		fval : number
		    The function value at the minimum point.
		ierr : int
		    An error flag (0 if converged, 1 if maximum number of
		    function calls reached).
		numfunc : int
		  The number of function calls made.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Bounded' `method` in particular.
		
		Notes
		-----
		Finds a local minimizer of the scalar function `func` in the
		interval x1 < xopt < x2 using Brent's method.  (See `brent`
		for auto-bracketing).
	**/
	static public function fminbound(func:Dynamic, x1:Dynamic, x2:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Find the roots of a function.
		
		Return the roots of the (non-linear) equations defined by
		``func(x) = 0`` given a starting estimate.
		
		Parameters
		----------
		func : callable ``f(x, *args)``
		    A function that takes at least one (possibly vector) argument.
		x0 : ndarray
		    The starting estimate for the roots of ``func(x) = 0``.
		args : tuple, optional
		    Any extra arguments to `func`.
		fprime : callable(x), optional
		    A function to compute the Jacobian of `func` with derivatives
		    across the rows. By default, the Jacobian will be estimated.
		full_output : bool, optional
		    If True, return optional outputs.
		col_deriv : bool, optional
		    Specify whether the Jacobian function computes derivatives down
		    the columns (faster, because there is no transpose operation).
		xtol : float, optional
		    The calculation will terminate if the relative error between two
		    consecutive iterates is at most `xtol`.
		maxfev : int, optional
		    The maximum number of calls to the function. If zero, then
		    ``100*(N+1)`` is the maximum where N is the number of elements
		    in `x0`.
		band : tuple, optional
		    If set to a two-sequence containing the number of sub- and
		    super-diagonals within the band of the Jacobi matrix, the
		    Jacobi matrix is considered banded (only for ``fprime=None``).
		epsfcn : float, optional
		    A suitable step length for the forward-difference
		    approximation of the Jacobian (for ``fprime=None``). If
		    `epsfcn` is less than the machine precision, it is assumed
		    that the relative errors in the functions are of the order of
		    the machine precision.
		factor : float, optional
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``).  Should be in the interval
		    ``(0.1, 100)``.
		diag : sequence, optional
		    N positive entries that serve as a scale factors for the
		    variables.
		
		Returns
		-------
		x : ndarray
		    The solution (or the result of the last iteration for
		    an unsuccessful call).
		infodict : dict
		    A dictionary of optional outputs with the keys:
		
		    ``nfev``
		        number of function calls
		    ``njev``
		        number of Jacobian calls
		    ``fvec``
		        function evaluated at the output
		    ``fjac``
		        the orthogonal matrix, q, produced by the QR
		        factorization of the final approximate Jacobian
		        matrix, stored column wise
		    ``r``
		        upper triangular matrix produced by QR factorization
		        of the same matrix
		    ``qtf``
		        the vector ``(transpose(q) * fvec)``
		
		ier : int
		    An integer flag.  Set to 1 if a solution was found, otherwise refer
		    to `mesg` for more information.
		mesg : str
		    If no solution is found, `mesg` details the cause of failure.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		functions. See the 'hybr' `method` in particular.
		
		Notes
		-----
		``fsolve`` is a wrapper around MINPACK's hybrd and hybrj algorithms.
	**/
	static public function fsolve(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?fprime:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?maxfev:Dynamic, ?band:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Return the minimum of a function of one variable.
		
		Given a function of one variable and a possible bracketing interval,
		return the minimum of the function isolated to a fractional precision of
		tol.
		
		Parameters
		----------
		func : callable func(x,*args)
		    Objective function to minimize.
		args : tuple, optional
		    Additional arguments (if present), passed to func.
		brack : tuple, optional
		    Triple (a,b,c), where (a<b<c) and func(b) <
		    func(a),func(c).  If bracket consists of two numbers (a,
		    c), then they are assumed to be a starting interval for a
		    downhill bracket search (see `bracket`); it doesn't always
		    mean that obtained solution will satisfy a<=x<=c.
		tol : float, optional
		    x tolerance stop criterion
		full_output : bool, optional
		    If True, return optional outputs.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Golden' `method` in particular.
		
		Notes
		-----
		Uses analog of bisection method to decrease the bracketed
		interval.
	**/
	static public function golden(func:Dynamic, ?args:Dynamic, ?brack:Dynamic, ?tol:Dynamic, ?full_output:Dynamic):Dynamic;
	/**
		Minimize the sum of squares of a set of equations.
		
		::
		
		    x = arg min(sum(func(y)**2,axis=0))
		             y
		
		Parameters
		----------
		func : callable
		    should take at least one (possibly length N vector) argument and
		    returns M floating point numbers. It must not return NaNs or
		    fitting might fail.
		x0 : ndarray
		    The starting estimate for the minimization.
		args : tuple, optional
		    Any extra arguments to func are placed in this tuple.
		Dfun : callable, optional
		    A function or method to compute the Jacobian of func with derivatives
		    across the rows. If this is None, the Jacobian will be estimated.
		full_output : bool, optional
		    non-zero to return all optional outputs.
		col_deriv : bool, optional
		    non-zero to specify that the Jacobian function computes derivatives
		    down the columns (faster, because there is no transpose operation).
		ftol : float, optional
		    Relative error desired in the sum of squares.
		xtol : float, optional
		    Relative error desired in the approximate solution.
		gtol : float, optional
		    Orthogonality desired between the function vector and the columns of
		    the Jacobian.
		maxfev : int, optional
		    The maximum number of calls to the function. If `Dfun` is provided
		    then the default `maxfev` is 100*(N+1) where N is the number of elements
		    in x0, otherwise the default `maxfev` is 200*(N+1).
		epsfcn : float, optional
		    A variable used in determining a suitable step length for the forward-
		    difference approximation of the Jacobian (for Dfun=None). 
		    Normally the actual step length will be sqrt(epsfcn)*x
		    If epsfcn is less than the machine precision, it is assumed that the 
		    relative errors are of the order of the machine precision.
		factor : float, optional
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``). Should be in interval ``(0.1, 100)``.
		diag : sequence, optional
		    N positive entries that serve as a scale factors for the variables.
		
		Returns
		-------
		x : ndarray
		    The solution (or the result of the last iteration for an unsuccessful
		    call).
		cov_x : ndarray
		    Uses the fjac and ipvt optional outputs to construct an
		    estimate of the jacobian around the solution. None if a
		    singular matrix encountered (indicates very flat curvature in
		    some direction).  This matrix must be multiplied by the
		    residual variance to get the covariance of the
		    parameter estimates -- see curve_fit.
		infodict : dict
		    a dictionary of optional outputs with the key s:
		
		    ``nfev``
		        The number of function calls
		    ``fvec``
		        The function evaluated at the output
		    ``fjac``
		        A permutation of the R matrix of a QR
		        factorization of the final approximate
		        Jacobian matrix, stored column wise.
		        Together with ipvt, the covariance of the
		        estimate can be approximated.
		    ``ipvt``
		        An integer array of length N which defines
		        a permutation matrix, p, such that
		        fjac*p = q*r, where r is upper triangular
		        with diagonal elements of nonincreasing
		        magnitude. Column j of p is column ipvt(j)
		        of the identity matrix.
		    ``qtf``
		        The vector (transpose(q) * fvec).
		
		mesg : str
		    A string message giving information about the cause of failure.
		ier : int
		    An integer flag.  If it is equal to 1, 2, 3 or 4, the solution was
		    found.  Otherwise, the solution was not found. In either case, the
		    optional output variable 'mesg' gives more information.
		
		Notes
		-----
		"leastsq" is a wrapper around MINPACK's lmdif and lmder algorithms.
		
		cov_x is a Jacobian approximation to the Hessian of the least squares
		objective function.
		This approximation assumes that the objective function is based on the
		difference between some observed target data (ydata) and a (non-linear)
		function of the parameters `f(xdata, params)` ::
		
		       func(params) = ydata - f(xdata, params)
		
		so that the objective function is ::
		
		       min   sum((ydata - f(xdata, params))**2, axis=0)
		     params
	**/
	static public function leastsq(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?Dfun:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?maxfev:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Find alpha that satisfies strong Wolfe conditions.
		
		Parameters
		----------
		f : callable f(x,*args)
		    Objective function.
		myfprime : callable f'(x,*args)
		    Objective function gradient.
		xk : ndarray
		    Starting point.
		pk : ndarray
		    Search direction.
		gfk : ndarray, optional
		    Gradient value for x=xk (xk being the current parameter
		    estimate). Will be recomputed if omitted.
		old_fval : float, optional
		    Function value for x=xk. Will be recomputed if omitted.
		old_old_fval : float, optional
		    Function value for the point preceding x=xk
		args : tuple, optional
		    Additional arguments passed to objective function.
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax : float, optional
		    Maximum step size
		
		Returns
		-------
		alpha : float or None
		    Alpha for which ``x_new = x0 + alpha * pk``,
		    or None if the line search algorithm did not converge.
		fc : int
		    Number of function evaluations made.
		gc : int
		    Number of gradient evaluations made.
		new_fval : float or None
		    New function value ``f(x_new)=f(x0+alpha*pk)``,
		    or None if the line search algorithm did not converge.
		old_fval : float
		    Old function value ``f(x0)``.
		new_slope : float or None
		    The local slope along the search direction at the
		    new value ``<myfprime(x_new), pk>``,
		    or None if the line search algorithm did not converge.
		
		
		Notes
		-----
		Uses the line search algorithm to enforce strong Wolfe
		conditions.  See Wright and Nocedal, 'Numerical Optimization',
		1999, pg. 59-60.
		
		For the zoom phase it uses an algorithm by [...].
	**/
	static public function line_search(f:Dynamic, myfprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic):Dynamic;
	/**
		Find a root of a function, using a scalar Jacobian approximation.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		alpha : float, optional
		    The Jacobian approximation is (-1/alpha).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
	**/
	static public function linearmixing(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Minimize a linear objective function subject to linear
		equality and inequality constraints.
		
		Linear Programming is intended to solve the following problem form:
		
		Minimize:     c^T * x
		
		Subject to:   A_ub * x <= b_ub
		              A_eq * x == b_eq
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    upper-bound inequality constraints at x.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in A_ub.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    equality constraints at x.
		b_eq : array_like, optional
		    1-D array of values representing the RHS of each equality constraint
		    (row) in A_eq.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative)
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		method : str, optional
		    Type of solver.  At this time only 'simplex' is supported
		    :ref:`(see here) <optimize.linprog-simplex>`.
		callback : callable, optional
		    If a callback function is provide, it will be called within each
		    iteration of the simplex algorithm. The callback must have the signature
		    `callback(xk, **kwargs)` where xk is the current solution vector
		    and kwargs is a dictionary containing the following::
		
		        "tableau" : The current Simplex algorithm tableau
		        "nit" : The current iteration.
		        "pivot" : The pivot (row, column) used for the next iteration.
		        "phase" : Whether the algorithm is in Phase 1 or Phase 2.
		        "basis" : The indices of the columns of the basic variables.
		
		options : dict, optional
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see `show_options('linprog')`.
		
		Returns
		-------
		A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
		    slack : ndarray
		        The values of the slack variables.  Each slack variable corresponds
		        to an inequality constraint.  If the slack is zero, then the
		        corresponding constraint is active.
		    success : bool
		        Returns True if the algorithm succeeded in finding an optimal
		        solution.
		    status : int
		        An integer representing the exit status of the optimization::
		
		             0 : Optimization terminated successfully
		             1 : Iteration limit reached
		             2 : Problem appears to be infeasible
		             3 : Problem appears to be unbounded
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
		
		See Also
		--------
		show_options : Additional options accepted by the solvers
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is :ref:`Simplex <optimize.linprog-simplex>`.
		
		Method *Simplex* uses the Simplex algorithm (as it relates to Linear
		Programming, NOT the Nelder-Mead Simplex) [1]_, [2]_. This algorithm
		should be reasonably reliable and fast.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ, 1963
		.. [2] Hillier, S.H. and Lieberman, G.J. (1995), "Introduction to
		       Mathematical Programming", McGraw-Hill, Chapter 4.
		.. [3] Bland, Robert G. New finite pivoting rules for the simplex method.
		       Mathematics of Operations Research (2), 1977: pp. 103-107.
		
		Examples
		--------
		Consider the following problem:
		
		Minimize: f = -1*x[0] + 4*x[1]
		
		Subject to: -3*x[0] + 1*x[1] <= 6
		             1*x[0] + 2*x[1] <= 4
		                        x[1] >= -3
		
		where:  -inf <= x[0] <= inf
		
		This problem deviates from the standard linear programming problem.
		In standard form, linear programming problems assume the variables x are
		non-negative.  Since the variables don't have standard bounds where
		0 <= x <= inf, the bounds of the variables must be explicitly set.
		
		There are two upper-bound constraints, which can be expressed as
		
		dot(A_ub, x) <= b_ub
		
		The input for this problem is as follows:
		
		>>> c = [-1, 4]
		>>> A = [[-3, 1], [1, 2]]
		>>> b = [6, 4]
		>>> x0_bounds = (None, None)
		>>> x1_bounds = (-3, None)
		>>> from scipy.optimize import linprog
		>>> res = linprog(c, A_ub=A, b_ub=b, bounds=(x0_bounds, x1_bounds),
		...               options={"disp": True})
		>>> print(res)
		Optimization terminated successfully.
		     Current function value: -11.428571
		     Iterations: 2
		status: 0
		success: True
		fun: -11.428571428571429
		x: array([-1.14285714,  2.57142857])
		message: 'Optimization terminated successfully.'
		nit: 2
		
		Note the actual objective value is 11.428571.  In this case we minimized
		the negative of the objective function.
	**/
	static public function linprog(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?callback:Dynamic, ?options:Dynamic):Dynamic;
	/**
		A sample callback function demonstrating the linprog callback interface.
		This callback produces detailed output to sys.stdout before each iteration
		and after the final iteration of the simplex algorithm.
		
		Parameters
		----------
		xk : array_like
		    The current solution vector.
		**kwargs : dict
		    A dictionary containing the following parameters:
		
		    tableau : array_like
		        The current tableau of the simplex algorithm.
		        Its structure is defined in _solve_simplex.
		    phase : int
		        The current Phase of the simplex algorithm (1 or 2)
		    nit : int
		        The current iteration number.
		    pivot : tuple(int, int)
		        The index of the tableau selected as the next pivot,
		        or nan if no pivot exists
		    basis : array(int)
		        A list of the current basic variables.
		        Each element contains the name of a basic variable and its value.
		    complete : bool
		        True if the simplex algorithm has completed
		        (and this is the final call to callback), otherwise False.
	**/
	static public function linprog_verbose_callback(xk:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Minimization of scalar function of one or more variables.
		
		In general, the optimization problems are of the form:
		
		minimize f(x)
		
		subject to:
		
		    ``g_i(x) >= 0``, i = 1,...,m
		    ``h_j(x)  = 0``, j = 1,...,p
		
		Where x is a vector of one or more variables.
		``g_i(x)`` are the inequality constraints.
		``h_j(x)`` are the equality constrains.
		
		Optionally, the lower and upper bounds for each element in x can also be specified 
		using the `bounds` argument.
		
		Parameters
		----------
		fun : callable
		    Objective function.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to the objective function and its
		    derivatives (Jacobian, Hessian).
		method : str or callable, optional
		    Type of solver.  Should be one of
		
		        - 'Nelder-Mead' :ref:`(see here) <optimize.minimize-neldermead>`
		        - 'Powell'      :ref:`(see here) <optimize.minimize-powell>`
		        - 'CG'          :ref:`(see here) <optimize.minimize-cg>`
		        - 'BFGS'        :ref:`(see here) <optimize.minimize-bfgs>`
		        - 'Newton-CG'   :ref:`(see here) <optimize.minimize-newtoncg>`
		        - 'L-BFGS-B'    :ref:`(see here) <optimize.minimize-lbfgsb>`
		        - 'TNC'         :ref:`(see here) <optimize.minimize-tnc>`
		        - 'COBYLA'      :ref:`(see here) <optimize.minimize-cobyla>`
		        - 'SLSQP'       :ref:`(see here) <optimize.minimize-slsqp>`
		        - 'dogleg'      :ref:`(see here) <optimize.minimize-dogleg>`
		        - 'trust-ncg'   :ref:`(see here) <optimize.minimize-trustncg>`
		        - custom - a callable object (added in version 0.14.0),
		          see below for description.
		
		    If not given, chosen to be one of ``BFGS``, ``L-BFGS-B``, ``SLSQP``,
		    depending if the problem has constraints or bounds.
		jac : bool or callable, optional
		    Jacobian (gradient) of objective function. Only for CG, BFGS,
		    Newton-CG, L-BFGS-B, TNC, SLSQP, dogleg, trust-ncg.
		    If `jac` is a Boolean and is True, `fun` is assumed to return the
		    gradient along with the objective function. If False, the
		    gradient will be estimated numerically.
		    `jac` can also be a callable returning the gradient of the
		    objective. In this case, it must accept the same arguments as `fun`.
		hess, hessp : callable, optional
		    Hessian (matrix of second-order derivatives) of objective function or
		    Hessian of objective function times an arbitrary vector p.  Only for
		    Newton-CG, dogleg, trust-ncg.
		    Only one of `hessp` or `hess` needs to be given.  If `hess` is
		    provided, then `hessp` will be ignored.  If neither `hess` nor
		    `hessp` is provided, then the Hessian product will be approximated
		    using finite differences on `jac`. `hessp` must compute the Hessian
		    times an arbitrary vector.
		bounds : sequence, optional
		    Bounds for variables (only for L-BFGS-B, TNC and SLSQP).
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction.
		constraints : dict or sequence of dict, optional
		    Constraints definition (only for COBYLA and SLSQP).
		    Each constraint is defined in a dictionary with fields:
		        type : str
		            Constraint type: 'eq' for equality, 'ineq' for inequality.
		        fun : callable
		            The function defining the constraint.
		        jac : callable, optional
		            The Jacobian of `fun` (only for SLSQP).
		        args : sequence, optional
		            Extra arguments to be passed to the function and Jacobian.
		    Equality constraint means that the constraint function result is to
		    be zero whereas inequality means that it is to be non-negative.
		    Note that COBYLA only supports inequality constraints.
		tol : float, optional
		    Tolerance for termination. For detailed control, use solver-specific
		    options.
		options : dict, optional
		    A dictionary of solver options. All methods accept the following
		    generic options:
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		    For method-specific options, see :func:`show_options()`.
		callback : callable, optional
		    Called after each iteration, as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the optimizer exited successfully and
		    ``message`` which describes the cause of the termination. See
		    `OptimizeResult` for a description of other attributes.
		
		
		See also
		--------
		minimize_scalar : Interface to minimization algorithms for scalar
		    univariate functions
		show_options : Additional options accepted by the solvers
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is *BFGS*.
		
		**Unconstrained minimization**
		
		Method :ref:`Nelder-Mead <optimize.minimize-neldermead>` uses the
		Simplex algorithm [1]_, [2]_. This algorithm has been successful
		in many applications but other algorithms using the first and/or
		second derivatives information might be preferred for their better
		performances and robustness in general.
		
		Method :ref:`Powell <optimize.minimize-powell>` is a modification
		of Powell's method [3]_, [4]_ which is a conjugate direction
		method. It performs sequential one-dimensional minimizations along
		each vector of the directions set (`direc` field in `options` and
		`info`), which is updated at each iteration of the main
		minimization loop. The function need not be differentiable, and no
		derivatives are taken.
		
		Method :ref:`CG <optimize.minimize-cg>` uses a nonlinear conjugate
		gradient algorithm by Polak and Ribiere, a variant of the
		Fletcher-Reeves method described in [5]_ pp.  120-122. Only the
		first derivatives are used.
		
		Method :ref:`BFGS <optimize.minimize-bfgs>` uses the quasi-Newton
		method of Broyden, Fletcher, Goldfarb, and Shanno (BFGS) [5]_
		pp. 136. It uses the first derivatives only. BFGS has proven good
		performance even for non-smooth optimizations. This method also
		returns an approximation of the Hessian inverse, stored as
		`hess_inv` in the OptimizeResult object.
		
		Method :ref:`Newton-CG <optimize.minimize-newtoncg>` uses a
		Newton-CG algorithm [5]_ pp. 168 (also known as the truncated
		Newton method). It uses a CG method to the compute the search
		direction. See also *TNC* method for a box-constrained
		minimization with a similar algorithm.
		
		Method :ref:`dogleg <optimize.minimize-dogleg>` uses the dog-leg
		trust-region algorithm [5]_ for unconstrained minimization. This
		algorithm requires the gradient and Hessian; furthermore the
		Hessian is required to be positive definite.
		
		Method :ref:`trust-ncg <optimize.minimize-trustncg>` uses the
		Newton conjugate gradient trust-region algorithm [5]_ for
		unconstrained minimization. This algorithm requires the gradient
		and either the Hessian or a function that computes the product of
		the Hessian with a given vector.
		
		**Constrained minimization**
		
		Method :ref:`L-BFGS-B <optimize.minimize-lbfgsb>` uses the L-BFGS-B
		algorithm [6]_, [7]_ for bound constrained minimization.
		
		Method :ref:`TNC <optimize.minimize-tnc>` uses a truncated Newton
		algorithm [5]_, [8]_ to minimize a function with variables subject
		to bounds. This algorithm uses gradient information; it is also
		called Newton Conjugate-Gradient. It differs from the *Newton-CG*
		method described above as it wraps a C implementation and allows
		each variable to be given upper and lower bounds.
		
		Method :ref:`COBYLA <optimize.minimize-cobyla>` uses the
		Constrained Optimization BY Linear Approximation (COBYLA) method
		[9]_, [10]_, [11]_. The algorithm is based on linear
		approximations to the objective function and each constraint. The
		method wraps a FORTRAN implementation of the algorithm. The
		constraints functions 'fun' may return either a single number
		or an array or list of numbers.
		
		Method :ref:`SLSQP <optimize.minimize-slsqp>` uses Sequential
		Least SQuares Programming to minimize a function of several
		variables with any combination of bounds, equality and inequality
		constraints. The method wraps the SLSQP Optimization subroutine
		originally implemented by Dieter Kraft [12]_. Note that the
		wrapper handles infinite values in bounds by converting them into
		large floating values.
		
		**Custom minimizers**
		
		It may be useful to pass a custom minimization method, for example
		when using a frontend to this method such as `scipy.optimize.basinhopping`
		or a different library.  You can simply pass a callable as the ``method``
		parameter.
		
		The callable is called as ``method(fun, x0, args, **kwargs, **options)``
		where ``kwargs`` corresponds to any other parameters passed to `minimize`
		(such as `callback`, `hess`, etc.), except the `options` dict, which has
		its contents also passed as `method` parameters pair by pair.  Also, if
		`jac` has been passed as a bool type, `jac` and `fun` are mangled so that
		`fun` returns just the function values and `jac` is converted to a function
		returning the Jacobian.  The method shall return an ``OptimizeResult``
		object.
		
		The provided `method` callable must be able to accept (and possibly ignore)
		arbitrary parameters; the set of parameters accepted by `minimize` may
		expand in future versions and then these parameters will be passed to
		the method.  You can find an example in the scipy.optimize tutorial.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Nelder, J A, and R Mead. 1965. A Simplex Method for Function
		    Minimization. The Computer Journal 7: 308-13.
		.. [2] Wright M H. 1996. Direct search methods: Once scorned, now
		    respectable, in Numerical Analysis 1995: Proceedings of the 1995
		    Dundee Biennial Conference in Numerical Analysis (Eds. D F
		    Griffiths and G A Watson). Addison Wesley Longman, Harlow, UK.
		    191-208.
		.. [3] Powell, M J D. 1964. An efficient method for finding the minimum of
		   a function of several variables without calculating derivatives. The
		   Computer Journal 7: 155-162.
		.. [4] Press W, S A Teukolsky, W T Vetterling and B P Flannery.
		   Numerical Recipes (any edition), Cambridge University Press.
		.. [5] Nocedal, J, and S J Wright. 2006. Numerical Optimization.
		   Springer New York.
		.. [6] Byrd, R H and P Lu and J. Nocedal. 1995. A Limited Memory
		   Algorithm for Bound Constrained Optimization. SIAM Journal on
		   Scientific and Statistical Computing 16 (5): 1190-1208.
		.. [7] Zhu, C and R H Byrd and J Nocedal. 1997. L-BFGS-B: Algorithm
		   778: L-BFGS-B, FORTRAN routines for large scale bound constrained
		   optimization. ACM Transactions on Mathematical Software 23 (4):
		   550-560.
		.. [8] Nash, S G. Newton-Type Minimization Via the Lanczos Method.
		   1984. SIAM Journal of Numerical Analysis 21: 770-778.
		.. [9] Powell, M J D. A direct search optimization method that models
		   the objective and constraint functions by linear interpolation.
		   1994. Advances in Optimization and Numerical Analysis, eds. S. Gomez
		   and J-P Hennart, Kluwer Academic (Dordrecht), 51-67.
		.. [10] Powell M J D. Direct search algorithms for optimization
		   calculations. 1998. Acta Numerica 7: 287-336.
		.. [11] Powell M J D. A view of algorithms for optimization without
		   derivatives. 2007.Cambridge University Technical Report DAMTP
		   2007/NA03
		.. [12] Kraft, D. A software package for sequential quadratic
		   programming. 1988. Tech. Rep. DFVLR-FB 88-28, DLR German Aerospace
		   Center -- Institute for Flight Mechanics, Koln, Germany.
		
		Examples
		--------
		Let us consider the problem of minimizing the Rosenbrock function. This
		function (and its respective derivatives) is implemented in `rosen`
		(resp. `rosen_der`, `rosen_hess`) in the `scipy.optimize`.
		
		>>> from scipy.optimize import minimize, rosen, rosen_der
		
		A simple application of the *Nelder-Mead* method is:
		
		>>> x0 = [1.3, 0.7, 0.8, 1.9, 1.2]
		>>> res = minimize(rosen, x0, method='Nelder-Mead')
		>>> res.x
		[ 1.  1.  1.  1.  1.]
		
		Now using the *BFGS* algorithm, using the first derivative and a few
		options:
		
		>>> res = minimize(rosen, x0, method='BFGS', jac=rosen_der,
		...                options={'gtol': 1e-6, 'disp': True})
		Optimization terminated successfully.
		         Current function value: 0.000000
		         Iterations: 52
		         Function evaluations: 64
		         Gradient evaluations: 64
		>>> res.x
		array([ 1.  1.  1.  1.  1.])
		>>> print(res.message)
		Optimization terminated successfully.
		>>> res.hess_inv
		[[ 0.00749589  0.01255155  0.02396251  0.04750988  0.09495377]
		 [ 0.01255155  0.02510441  0.04794055  0.09502834  0.18996269]
		 [ 0.02396251  0.04794055  0.09631614  0.19092151  0.38165151]
		 [ 0.04750988  0.09502834  0.19092151  0.38341252  0.7664427 ]
		 [ 0.09495377  0.18996269  0.38165151  0.7664427   1.53713523]]
		
		
		Next, consider a minimization problem with several constraints (namely
		Example 16.4 from [5]_). The objective function is:
		
		>>> fun = lambda x: (x[0] - 1)**2 + (x[1] - 2.5)**2
		
		There are three constraints defined as:
		
		>>> cons = ({'type': 'ineq', 'fun': lambda x:  x[0] - 2 * x[1] + 2},
		...         {'type': 'ineq', 'fun': lambda x: -x[0] - 2 * x[1] + 6},
		...         {'type': 'ineq', 'fun': lambda x: -x[0] + 2 * x[1] + 2})
		
		And variables must be positive, hence the following bounds:
		
		>>> bnds = ((0, None), (0, None))
		
		The optimization problem is solved using the SLSQP method as:
		
		>>> res = minimize(fun, (2, 0), method='SLSQP', bounds=bnds,
		...                constraints=cons)
		
		It should converge to the theoretical solution (1.4 ,1.7).
	**/
	static public function minimize(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?method:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic, ?bounds:Dynamic, ?constraints:Dynamic, ?tol:Dynamic, ?callback:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Minimization of scalar function of one variable.
		
		Parameters
		----------
		fun : callable
		    Objective function.
		    Scalar function, must return a scalar.
		bracket : sequence, optional
		    For methods 'brent' and 'golden', `bracket` defines the bracketing
		    interval and can either have three items `(a, b, c)` so that `a < b
		    < c` and `fun(b) < fun(a), fun(c)` or two items `a` and `c` which
		    are assumed to be a starting interval for a downhill bracket search
		    (see `bracket`); it doesn't always mean that the obtained solution
		    will satisfy `a <= x <= c`.
		bounds : sequence, optional
		    For method 'bounded', `bounds` is mandatory and must have two items
		    corresponding to the optimization bounds.
		args : tuple, optional
		    Extra arguments passed to the objective function.
		method : str or callable, optional
		    Type of solver.  Should be one of
		
		        - 'Brent'     :ref:`(see here) <optimize.minimize_scalar-brent>`
		        - 'Bounded'   :ref:`(see here) <optimize.minimize_scalar-bounded>`
		        - 'Golden'    :ref:`(see here) <optimize.minimize_scalar-golden>`
		        - custom - a callable object (added in version 0.14.0),
		          see below
		tol : float, optional
		    Tolerance for termination. For detailed control, use solver-specific
		    options.
		options : dict, optional
		    A dictionary of solver options.
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    See :func:`show_options()` for solver-specific options.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the optimizer exited successfully and
		    ``message`` which describes the cause of the termination. See
		    `OptimizeResult` for a description of other attributes.
		
		See also
		--------
		minimize : Interface to minimization algorithms for scalar multivariate
		    functions
		show_options : Additional options accepted by the solvers
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is *Brent*.
		
		Method :ref:`Brent <optimize.minimize_scalar-brent>` uses Brent's
		algorithm to find a local minimum.  The algorithm uses inverse
		parabolic interpolation when possible to speed up convergence of
		the golden section method.
		
		Method :ref:`Golden <optimize.minimize_scalar-golden>` uses the
		golden section search technique. It uses analog of the bisection
		method to decrease the bracketed interval. It is usually
		preferable to use the *Brent* method.
		
		Method :ref:`Bounded <optimize.minimize_scalar-bounded>` can
		perform bounded minimization. It uses the Brent method to find a
		local minimum in the interval x1 < xopt < x2.
		
		**Custom minimizers**
		
		It may be useful to pass a custom minimization method, for example
		when using some library frontend to minimize_scalar.  You can simply
		pass a callable as the ``method`` parameter.
		
		The callable is called as ``method(fun, args, **kwargs, **options)``
		where ``kwargs`` corresponds to any other parameters passed to `minimize`
		(such as `bracket`, `tol`, etc.), except the `options` dict, which has
		its contents also passed as `method` parameters pair by pair.  The method
		shall return an ``OptimizeResult`` object.
		
		The provided `method` callable must be able to accept (and possibly ignore)
		arbitrary parameters; the set of parameters accepted by `minimize` may
		expand in future versions and then these parameters will be passed to
		the method.  You can find an example in the scipy.optimize tutorial.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		Consider the problem of minimizing the following function.
		
		>>> def f(x):
		...     return (x - 2) * x * (x + 2)**2
		
		Using the *Brent* method, we find the local minimum as:
		
		>>> from scipy.optimize import minimize_scalar
		>>> res = minimize_scalar(f)
		>>> res.x
		1.28077640403
		
		Using the *Bounded* method, we find a local minimum with specified
		bounds as:
		
		>>> res = minimize_scalar(f, bounds=(-3, -1), method='bounded')
		>>> res.x
		-2.0000002026
	**/
	static public function minimize_scalar(fun:Dynamic, ?bracket:Dynamic, ?bounds:Dynamic, ?args:Dynamic, ?method:Dynamic, ?tol:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Find a zero using the Newton-Raphson or secant method.
		
		Find a zero of the function `func` given a nearby starting point `x0`.
		The Newton-Raphson method is used if the derivative `fprime` of `func`
		is provided, otherwise the secant method is used.  If the second order
		derivate `fprime2` of `func` is provided, parabolic Halley's method
		is used.
		
		Parameters
		----------
		func : function
		    The function whose zero is wanted. It must be a function of a
		    single variable of the form f(x,a,b,c...), where a,b,c... are extra
		    arguments that can be passed in the `args` parameter.
		x0 : float
		    An initial estimate of the zero that should be somewhere near the
		    actual zero.
		fprime : function, optional
		    The derivative of the function when available and convenient. If it
		    is None (default), then the secant method is used.
		args : tuple, optional
		    Extra arguments to be used in the function call.
		tol : float, optional
		    The allowable error of the zero value.
		maxiter : int, optional
		    Maximum number of iterations.
		fprime2 : function, optional
		    The second order derivative of the function when available and
		    convenient. If it is None (default), then the normal Newton-Raphson
		    or the secant method is used. If it is given, parabolic Halley's
		    method is used.
		
		Returns
		-------
		zero : float
		    Estimated location where function is zero.
		
		See Also
		--------
		brentq, brenth, ridder, bisect
		fsolve : find zeroes in n dimensions.
		
		Notes
		-----
		The convergence rate of the Newton-Raphson method is quadratic,
		the Halley method is cubic, and the secant method is
		sub-quadratic.  This means that if the function is well behaved
		the actual error in the estimated zero is approximately the square
		(cube for Halley) of the requested tolerance up to roundoff
		error. However, the stopping criterion used here is the step size
		and there is no guarantee that a zero has been found. Consequently
		the result should be verified. Safer algorithms are brentq,
		brenth, ridder, and bisect, but they all require that the root
		first be bracketed in an interval where the function changes
		sign. The brentq algorithm is recommended for general use in one
		dimensional problems when such an interval has been found.
	**/
	static public function newton(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?fprime2:Dynamic):Dynamic;
	/**
		Find a root of a function, using Krylov approximation for inverse Jacobian.
		
		This method is suitable for solving large-scale problems.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
		    Initial guess for the solution
		rdiff : float, optional
		    Relative step size to use in numerical differentiation.
		method : {'lgmres', 'gmres', 'bicgstab', 'cgs', 'minres'} or function
		    Krylov method to use to approximate the Jacobian.
		    Can be a string, or a function implementing the same interface as
		    the iterative solvers in `scipy.sparse.linalg`.
		
		    The default is `scipy.sparse.linalg.lgmres`.
		inner_M : LinearOperator or InverseJacobian
		    Preconditioner for the inner Krylov iteration.
		    Note that you can use also inverse Jacobians as (adaptive)
		    preconditioners. For example,
		
		    >>> from scipy.optimize.nonlin import BroydenFirst, KrylovJacobian
		    >>> from scipy.optimize.nonlin import InverseJacobian
		    >>> jac = BroydenFirst()
		    >>> kjac = KrylovJacobian(inner_M=InverseJacobian(jac))
		
		    If the preconditioner has a method named 'update', it will be called
		    as ``update(x, f)`` after each nonlinear step, with ``x`` giving
		    the current point, and ``f`` the current function value.
		inner_tol, inner_maxiter, ...
		    Parameters to pass on to the \"inner\" Krylov solver.
		    See `scipy.sparse.linalg.gmres` for details.
		outer_k : int, optional
		    Size of the subspace kept across LGMRES nonlinear iterations.
		    See `scipy.sparse.linalg.lgmres` for details.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		scipy.sparse.linalg.gmres
		scipy.sparse.linalg.lgmres
		
		Notes
		-----
		This function implements a Newton-Krylov solver. The basic idea is
		to compute the inverse of the Jacobian with an iterative Krylov
		method. These methods require only evaluating the Jacobian-vector
		products, which are conveniently approximated by a finite difference:
		
		.. math:: J v \approx (f(x + \omega*v/|v|) - f(x)) / \omega
		
		Due to the use of iterative matrix inverses, these methods can
		deal with large nonlinear problems.
		
		Scipy's `scipy.sparse.linalg` module offers a selection of Krylov
		solvers to choose from. The default here is `lgmres`, which is a
		variant of restarted GMRES iteration that reuses some of the
		information obtained in the previous Newton steps to invert
		Jacobians in subsequent steps.
		
		For a review on Newton-Krylov methods, see for example [1]_,
		and for the LGMRES sparse inverse method, see [2]_.
		
		References
		----------
		.. [1] D.A. Knoll and D.E. Keyes, J. Comp. Phys. 193, 357 (2003).
		.. [2] A.H. Baker and E.R. Jessup and T. Manteuffel,
		         SIAM J. Matrix Anal. Appl. 26, 962 (2005).
	**/
	static public function newton_krylov(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?rdiff:Dynamic, ?method:Dynamic, ?inner_maxiter:Dynamic, ?inner_M:Dynamic, ?outer_k:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, kw:Dynamic):Dynamic;
	/**
		Solve ``argmin_x || Ax - b ||_2`` for ``x>=0``. This is a wrapper
		for a FORTAN non-negative least squares solver.
		
		Parameters
		----------
		A : ndarray
		    Matrix ``A`` as shown above.
		b : ndarray
		    Right-hand side vector.
		
		Returns
		-------
		x : ndarray
		    Solution vector.
		rnorm : float
		    The residual, ``|| Ax-b ||_2``.
		
		Notes
		-----
		The FORTRAN code was published in the book below. The algorithm
		is an active set method. It solves the KKT (Karush-Kuhn-Tucker)
		conditions for the non-negative least squares problem.
		
		References
		----------
		Lawson C., Hanson R.J., (1987) Solving Least Squares Problems, SIAM
	**/
	static public function nnls(A:Dynamic, b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Find a root of a function in an interval.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The routine converges when a root is known to lie within xtol of the
		    value return. Should be >= 0.  The routine modifies this to take into
		    account the relative precision of doubles.
		rtol : number, optional
		    The routine converges when a root is known to lie within `rtol` times
		    the value returned of the value returned. Should be >= 0. Defaults to
		    ``np.finfo(float).eps * 2``.
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.
		    In particular, ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		brentq, brenth, bisect, newton : one-dimensional root-finding
		fixed_point : scalar fixed-point finder
		
		Notes
		-----
		Uses [Ridders1979]_ method to find a zero of the function `f` between the
		arguments `a` and `b`. Ridders' method is faster than bisection, but not
		generally as fast as the Brent rountines. [Ridders1979]_ provides the
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
	**/
	static public function ridder(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Find a root of a vector function.
		
		Parameters
		----------
		fun : callable
		    A vector function to find a root of.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to the objective function and its Jacobian.
		method : str, optional
		    Type of solver.  Should be one of
		
		        - 'hybr'             :ref:`(see here) <optimize.root-hybr>`
		        - 'lm'               :ref:`(see here) <optimize.root-lm>`
		        - 'broyden1'         :ref:`(see here) <optimize.root-broyden1>`
		        - 'broyden2'         :ref:`(see here) <optimize.root-broyden2>`
		        - 'anderson'         :ref:`(see here) <optimize.root-anderson>`
		        - 'linearmixing'     :ref:`(see here) <optimize.root-linearmixing>`
		        - 'diagbroyden'      :ref:`(see here) <optimize.root-diagbroyden>`
		        - 'excitingmixing'   :ref:`(see here) <optimize.root-excitingmixing>`
		        - 'krylov'           :ref:`(see here) <optimize.root-krylov>`
		        - 'df-sane'          :ref:`(see here) <optimize.root-dfsane>`
		
		jac : bool or callable, optional
		    If `jac` is a Boolean and is True, `fun` is assumed to return the
		    value of Jacobian along with the objective function. If False, the
		    Jacobian will be estimated numerically.
		    `jac` can also be a callable returning the Jacobian of `fun`. In
		    this case, it must accept the same arguments as `fun`.
		tol : float, optional
		    Tolerance for termination. For detailed control, use solver-specific
		    options.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual. For all methods but 'hybr' and 'lm'.
		options : dict, optional
		    A dictionary of solver options. E.g. `xtol` or `maxiter`, see
		    :obj:`show_options()` for details.
		
		Returns
		-------
		sol : OptimizeResult
		    The solution represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the algorithm exited successfully and
		    ``message`` which describes the cause of the termination. See
		    `OptimizeResult` for a description of other attributes.
		
		See also
		--------
		show_options : Additional options accepted by the solvers
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is *hybr*.
		
		Method *hybr* uses a modification of the Powell hybrid method as
		implemented in MINPACK [1]_.
		
		Method *lm* solves the system of nonlinear equations in a least squares
		sense using a modification of the Levenberg-Marquardt algorithm as
		implemented in MINPACK [1]_.
		
		Method *df-sane* is a derivative-free spectral method. [3]_
		
		Methods *broyden1*, *broyden2*, *anderson*, *linearmixing*,
		*diagbroyden*, *excitingmixing*, *krylov* are inexact Newton methods,
		with backtracking or full line searches [2]_. Each method corresponds
		to a particular Jacobian approximations. See `nonlin` for details.
		
		- Method *broyden1* uses Broyden's first Jacobian approximation, it is
		  known as Broyden's good method.
		- Method *broyden2* uses Broyden's second Jacobian approximation, it
		  is known as Broyden's bad method.
		- Method *anderson* uses (extended) Anderson mixing.
		- Method *Krylov* uses Krylov approximation for inverse Jacobian. It
		  is suitable for large-scale problem.
		- Method *diagbroyden* uses diagonal Broyden Jacobian approximation.
		- Method *linearmixing* uses a scalar Jacobian approximation.
		- Method *excitingmixing* uses a tuned diagonal Jacobian
		  approximation.
		
		.. warning::
		
		    The algorithms implemented for methods *diagbroyden*,
		    *linearmixing* and *excitingmixing* may be useful for specific
		    problems, but whether they will work may depend strongly on the
		    problem.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] More, Jorge J., Burton S. Garbow, and Kenneth E. Hillstrom.
		   1980. User Guide for MINPACK-1.
		.. [2] C. T. Kelley. 1995. Iterative Methods for Linear and Nonlinear
		    Equations. Society for Industrial and Applied Mathematics.
		    <http://www.siam.org/books/kelley/>
		.. [3] W. La Cruz, J.M. Martinez, M. Raydan. Math. Comp. 75, 1429 (2006).
		
		Examples
		--------
		The following functions define a system of nonlinear equations and its
		jacobian.
		
		>>> def fun(x):
		...     return [x[0]  + 0.5 * (x[0] - x[1])**3 - 1.0,
		...             0.5 * (x[1] - x[0])**3 + x[1]]
		
		>>> def jac(x):
		...     return np.array([[1 + 1.5 * (x[0] - x[1])**2,
		...                       -1.5 * (x[0] - x[1])**2],
		...                      [-1.5 * (x[1] - x[0])**2,
		...                       1 + 1.5 * (x[1] - x[0])**2]])
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.root(fun, [0, 0], jac=jac, method='hybr')
		>>> sol.x
		array([ 0.8411639,  0.1588361])
	**/
	static public function root(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?method:Dynamic, ?jac:Dynamic, ?tol:Dynamic, ?callback:Dynamic, ?options:Dynamic):Dynamic;
	/**
		The Rosenbrock function.
		
		The function computed is::
		
		    sum(100.0*(x[1:] - x[:-1]**2.0)**2.0 + (1 - x[:-1])**2.0
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Rosenbrock function is to be computed.
		
		Returns
		-------
		f : float
		    The value of the Rosenbrock function.
		
		See Also
		--------
		rosen_der, rosen_hess, rosen_hess_prod
	**/
	static public function rosen(x:Dynamic):Dynamic;
	/**
		The derivative (i.e. gradient) of the Rosenbrock function.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the derivative is to be computed.
		
		Returns
		-------
		rosen_der : (N,) ndarray
		    The gradient of the Rosenbrock function at `x`.
		
		See Also
		--------
		rosen, rosen_hess, rosen_hess_prod
	**/
	static public function rosen_der(x:Dynamic):Dynamic;
	/**
		The Hessian matrix of the Rosenbrock function.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Hessian matrix is to be computed.
		
		Returns
		-------
		rosen_hess : ndarray
		    The Hessian matrix of the Rosenbrock function at `x`.
		
		See Also
		--------
		rosen, rosen_der, rosen_hess_prod
	**/
	static public function rosen_hess(x:Dynamic):Dynamic;
	/**
		Product of the Hessian matrix of the Rosenbrock function with a vector.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Hessian matrix is to be computed.
		p : array_like
		    1-D array, the vector to be multiplied by the Hessian matrix.
		
		Returns
		-------
		rosen_hess_prod : ndarray
		    The Hessian matrix of the Rosenbrock function at `x` multiplied
		    by the vector `p`.
		
		See Also
		--------
		rosen, rosen_der, rosen_hess
	**/
	static public function rosen_hess_prod(x:Dynamic, p:Dynamic):Dynamic;
	/**
		Show documentation for additional options of optimization solvers.
		
		These are method-specific options that can be supplied through the
		``options`` dict.
		
		Parameters
		----------
		solver : str
		    Type of optimization solver. One of 'minimize', 'minimize_scalar',
		    'root', or 'linprog'.
		method : str, optional
		    If not given, shows all methods of the specified solver. Otherwise,
		    show only the options for the specified method. Valid values
		    corresponds to methods' names of respective solver (e.g. 'BFGS' for
		    'minimize').
		disp : bool, optional
		    Whether to print the result rather than returning it.
		
		Returns
		-------
		text
		    Either None (for disp=False) or the text string (disp=True)
		
		Notes
		-----
		The solver-specific methods are:
		
		`scipy.optimize.minimize`
		
		- :ref:`Nelder-Mead <optimize.minimize-neldermead>`
		- :ref:`Powell      <optimize.minimize-powell>`
		- :ref:`CG          <optimize.minimize-cg>`
		- :ref:`BFGS        <optimize.minimize-bfgs>`
		- :ref:`Newton-CG   <optimize.minimize-newtoncg>`
		- :ref:`L-BFGS-B    <optimize.minimize-lbfgsb>`
		- :ref:`TNC         <optimize.minimize-tnc>`
		- :ref:`COBYLA      <optimize.minimize-cobyla>`
		- :ref:`SLSQP       <optimize.minimize-slsqp>`
		- :ref:`dogleg      <optimize.minimize-dogleg>`
		- :ref:`trust-ncg   <optimize.minimize-trustncg>`
		
		`scipy.optimize.root`
		
		- :ref:`hybr              <optimize.root-hybr>`
		- :ref:`lm                <optimize.root-lm>`
		- :ref:`broyden1          <optimize.root-broyden1>`
		- :ref:`broyden2          <optimize.root-broyden2>`
		- :ref:`anderson          <optimize.root-anderson>`
		- :ref:`linearmixing      <optimize.root-linearmixing>`
		- :ref:`diagbroyden       <optimize.root-diagbroyden>`
		- :ref:`excitingmixing    <optimize.root-excitingmixing>`
		- :ref:`krylov            <optimize.root-krylov>`
		- :ref:`df-sane           <optimize.root-dfsane>`
		
		`scipy.optimize.minimize_scalar`
		
		- :ref:`brent       <optimize.minimize_scalar-brent>`
		- :ref:`golden      <optimize.minimize_scalar-golden>`
		- :ref:`bounded     <optimize.minimize_scalar-bounded>`
		
		`scipy.optimize.linprog`
		
		- :ref:`simplex     <optimize.linprog-simplex>`
	**/
	static public function show_options(?solver:Dynamic, ?method:Dynamic, ?disp:Dynamic):Dynamic;
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
}