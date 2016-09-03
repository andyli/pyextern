/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate") extern class Integrate_Module {
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
		Compute a double integral.
		
		Return the double (definite) integral of ``func(y, x)`` from ``x = a..b``
		and ``y = gfun(x)..hfun(x)``.
		
		Parameters
		----------
		func : callable
		    A Python function or method of at least two variables: y must be the
		    first argument and x the second argument.
		a, b : float
		    The limits of integration in x: `a` < `b`
		gfun : callable
		    The lower boundary curve in y which is a function taking a single
		    floating point argument (x) and returning a floating point result: a
		    lambda function can be useful here.
		hfun : callable
		    The upper boundary curve in y (same requirements as `gfun`).
		args : sequence, optional
		    Extra arguments to pass to `func`.
		epsabs : float, optional
		    Absolute tolerance passed directly to the inner 1-D quadrature
		    integration. Default is 1.49e-8.
		epsrel : float, optional
		    Relative tolerance of the inner 1-D integrals. Default is 1.49e-8.
		
		Returns
		-------
		y : float
		    The resultant integral.
		abserr : float
		    An estimate of the error.
		
		See also
		--------
		quad : single integral
		tplquad : triple integral
		nquad : N-dimensional integrals
		fixed_quad : fixed-order Gaussian quadrature
		quadrature : adaptive Gaussian quadrature
		odeint : ODE integrator
		ode : ODE integrator
		simps : integrator for sampled data
		romb : integrator for sampled data
		scipy.special : for coefficients and roots of orthogonal polynomials
	**/
	static public function dblquad(func:Dynamic, a:Dynamic, b:Dynamic, gfun:Dynamic, hfun:Dynamic, ?args:Dynamic, ?epsabs:Dynamic, ?epsrel:Dynamic):Float;
	static public var division : Dynamic;
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
	/**
		Integration over multiple variables.
		
		Wraps `quad` to enable integration over multiple variables.
		Various options allow improved integration of discontinuous functions, as
		well as the use of weighted integration, and generally finer control of the
		integration process.
		
		Parameters
		----------
		func : callable
		    The function to be integrated. Has arguments of ``x0, ... xn``,
		    ``t0, tm``, where integration is carried out over ``x0, ... xn``, which
		    must be floats.  Function signature should be
		    ``func(x0, x1, ..., xn, t0, t1, ..., tm)``.  Integration is carried out
		    in order.  That is, integration over ``x0`` is the innermost integral,
		    and ``xn`` is the outermost.
		    If performance is a concern, this function may be a ctypes function of
		    the form::
		
		        f(int n, double args[n])
		
		    where ``n`` is the number of extra parameters and args is an array
		    of doubles of the additional parameters.  This function may then
		    be compiled to a dynamic/shared library then imported through
		    ``ctypes``, setting the function's argtypes to ``(c_int, c_double)``,
		    and the function's restype to ``(c_double)``.  Its pointer may then be
		    passed into `nquad` normally.
		    This allows the underlying Fortran library to evaluate the function in
		    the innermost integration calls without callbacks to Python, and also
		    speeds up the evaluation of the function itself.
		ranges : iterable object
		    Each element of ranges may be either a sequence  of 2 numbers, or else
		    a callable that returns such a sequence.  ``ranges[0]`` corresponds to
		    integration over x0, and so on.  If an element of ranges is a callable,
		    then it will be called with all of the integration arguments available,
		    as well as any parametric arguments. e.g. if 
		    ``func = f(x0, x1, x2, t0, t1)``, then ``ranges[0]`` may be defined as
		    either ``(a, b)`` or else as ``(a, b) = range0(x1, x2, t0, t1)``.
		args : iterable object, optional
		    Additional arguments ``t0, ..., tn``, required by `func`, `ranges`, and
		    ``opts``.
		opts : iterable object or dict, optional
		    Options to be passed to `quad`.  May be empty, a dict, or
		    a sequence of dicts or functions that return a dict.  If empty, the
		    default options from scipy.integrate.quad are used.  If a dict, the same
		    options are used for all levels of integraion.  If a sequence, then each
		    element of the sequence corresponds to a particular integration. e.g.
		    opts[0] corresponds to integration over x0, and so on. If a callable, 
		    the signature must be the same as for ``ranges``. The available
		    options together with their default values are:
		
		      - epsabs = 1.49e-08
		      - epsrel = 1.49e-08
		      - limit  = 50
		      - points = None
		      - weight = None
		      - wvar   = None
		      - wopts  = None
		
		    For more information on these options, see `quad` and `quad_explain`.
		
		full_output : bool, optional
		    Partial implementation of ``full_output`` from scipy.integrate.quad. 
		    The number of integrand function evaluations ``neval`` can be obtained 
		    by setting ``full_output=True`` when calling nquad.
		
		Returns
		-------
		result : float
		    The result of the integration.
		abserr : float
		    The maximum of the estimates of the absolute error in the various
		    integration results.
		out_dict : dict, optional
		    A dict containing additional information on the integration. 
		
		See Also
		--------
		quad : 1-dimensional numerical integration
		dblquad, tplquad : double and triple integrals
		fixed_quad : fixed-order Gaussian quadrature
		quadrature : adaptive Gaussian quadrature
		
		Examples
		--------
		>>> from scipy import integrate
		>>> func = lambda x0,x1,x2,x3 : x0**2 + x1*x2 - x3**3 + np.sin(x0) + (
		...                                 1 if (x0-.2*x3-.5-.25*x1>0) else 0)
		>>> points = [[lambda x1,x2,x3 : 0.2*x3 + 0.5 + 0.25*x1], [], [], []]
		>>> def opts0(*args, **kwargs):
		...     return {'points':[0.2*args[2] + 0.5 + 0.25*args[0]]}
		>>> integrate.nquad(func, [[0,1], [-1,1], [.13,.8], [-.15,1]],
		...                 opts=[opts0,{},{},{}], full_output=True)
		(1.5267454070738633, 2.9437360001402324e-14, {'neval': 388962})
		
		>>> scale = .1
		>>> def func2(x0, x1, x2, x3, t0, t1):
		...     return x0*x1*x3**2 + np.sin(x2) + 1 + (1 if x0+t1*x1-t0>0 else 0)
		>>> def lim0(x1, x2, x3, t0, t1):
		...     return [scale * (x1**2 + x2 + np.cos(x3)*t0*t1 + 1) - 1,
		...             scale * (x1**2 + x2 + np.cos(x3)*t0*t1 + 1) + 1]
		>>> def lim1(x2, x3, t0, t1):
		...     return [scale * (t0*x2 + t1*x3) - 1,
		...             scale * (t0*x2 + t1*x3) + 1]
		>>> def lim2(x3, t0, t1):
		...     return [scale * (x3 + t0**2*t1**3) - 1,
		...             scale * (x3 + t0**2*t1**3) + 1]
		>>> def lim3(t0, t1):
		...     return [scale * (t0+t1) - 1, scale * (t0+t1) + 1]
		>>> def opts0(x1, x2, x3, t0, t1):
		...     return {'points' : [t0 - t1*x1]}
		>>> def opts1(x2, x3, t0, t1):
		...     return {}
		>>> def opts2(x3, t0, t1):
		...     return {}
		>>> def opts3(t0, t1):
		...     return {}
		>>> integrate.nquad(func2, [lim0, lim1, lim2, lim3], args=(0,0),
		...                 opts=[opts0, opts1, opts2, opts3])
		(25.066666666666666, 2.7829590483937256e-13)
	**/
	static public function nquad(func:Dynamic, ranges:Dynamic, ?args:Dynamic, ?opts:Dynamic, ?full_output:Dynamic):Float;
	/**
		Integrate a system of ordinary differential equations.
		
		Solve a system of ordinary differential equations using lsoda from the
		FORTRAN library odepack.
		
		Solves the initial value problem for stiff or non-stiff systems
		of first order ode-s::
		
		    dy/dt = func(y, t0, ...)
		
		where y can be a vector.
		
		*Note*: The first two arguments of ``func(y, t0, ...)`` are in the
		opposite order of the arguments in the system definition function used
		by the `scipy.integrate.ode` class.
		
		Parameters
		----------
		func : callable(y, t0, ...)
		    Computes the derivative of y at t0.
		y0 : array
		    Initial condition on y (can be a vector).
		t : array
		    A sequence of time points for which to solve for y.  The initial
		    value point should be the first element of this sequence.
		args : tuple, optional
		    Extra arguments to pass to function.
		Dfun : callable(y, t0, ...)
		    Gradient (Jacobian) of `func`.
		col_deriv : bool, optional
		    True if `Dfun` defines derivatives down columns (faster),
		    otherwise `Dfun` should define derivatives across rows.
		full_output : bool, optional
		    True if to return a dictionary of optional outputs as the second output
		printmessg : bool, optional
		    Whether to print the convergence message
		
		Returns
		-------
		y : array, shape (len(t), len(y0))
		    Array containing the value of y for each desired time in t,
		    with the initial value `y0` in the first row.
		infodict : dict, only returned if full_output == True
		    Dictionary containing additional output information
		
		    =======  ============================================================
		    key      meaning
		    =======  ============================================================
		    'hu'     vector of step sizes successfully used for each time step.
		    'tcur'   vector with the value of t reached for each time step.
		             (will always be at least as large as the input times).
		    'tolsf'  vector of tolerance scale factors, greater than 1.0,
		             computed when a request for too much accuracy was detected.
		    'tsw'    value of t at the time of the last method switch
		             (given for each time step)
		    'nst'    cumulative number of time steps
		    'nfe'    cumulative number of function evaluations for each time step
		    'nje'    cumulative number of jacobian evaluations for each time step
		    'nqu'    a vector of method orders for each successful step.
		    'imxer'  index of the component of largest magnitude in the
		             weighted local error vector (e / ewt) on an error return, -1
		             otherwise.
		    'lenrw'  the length of the double work array required.
		    'leniw'  the length of integer work array required.
		    'mused'  a vector of method indicators for each successful time step:
		             1: adams (nonstiff), 2: bdf (stiff)
		    =======  ============================================================
		
		Other Parameters
		----------------
		ml, mu : int, optional
		    If either of these are not None or non-negative, then the
		    Jacobian is assumed to be banded.  These give the number of
		    lower and upper non-zero diagonals in this banded matrix.
		    For the banded case, `Dfun` should return a matrix whose
		    rows contain the non-zero bands (starting with the lowest diagonal).
		    Thus, the return matrix `jac` from `Dfun` should have shape
		    ``(ml + mu + 1, len(y0))`` when ``ml >=0`` or ``mu >=0``.
		    The data in `jac` must be stored such that ``jac[i - j + mu, j]``
		    holds the derivative of the `i`th equation with respect to the `j`th
		    state variable.  If `col_deriv` is True, the transpose of this
		    `jac` must be returned.
		rtol, atol : float, optional
		    The input parameters `rtol` and `atol` determine the error
		    control performed by the solver.  The solver will control the
		    vector, e, of estimated local errors in y, according to an
		    inequality of the form ``max-norm of (e / ewt) <= 1``,
		    where ewt is a vector of positive error weights computed as
		    ``ewt = rtol * abs(y) + atol``.
		    rtol and atol can be either vectors the same length as y or scalars.
		    Defaults to 1.49012e-8.
		tcrit : ndarray, optional
		    Vector of critical points (e.g. singularities) where integration
		    care should be taken.
		h0 : float, (0: solver-determined), optional
		    The step size to be attempted on the first step.
		hmax : float, (0: solver-determined), optional
		    The maximum absolute step size allowed.
		hmin : float, (0: solver-determined), optional
		    The minimum absolute step size allowed.
		ixpr : bool, optional
		    Whether to generate extra printing at method switches.
		mxstep : int, (0: solver-determined), optional
		    Maximum number of (internally defined) steps allowed for each
		    integration point in t.
		mxhnil : int, (0: solver-determined), optional
		    Maximum number of messages printed.
		mxordn : int, (0: solver-determined), optional
		    Maximum order to be allowed for the non-stiff (Adams) method.
		mxords : int, (0: solver-determined), optional
		    Maximum order to be allowed for the stiff (BDF) method.
		
		See Also
		--------
		ode : a more object-oriented integrator based on VODE.
		quad : for finding the area under a curve.
		
		Examples
		--------
		The second order differential equation for the angle `theta` of a
		pendulum acted on by gravity with friction can be written::
		
		    theta''(t) + b*theta'(t) + c*sin(theta(t)) = 0
		
		where `b` and `c` are positive constants, and a prime (') denotes a
		derivative.  To solve this equation with `odeint`, we must first convert
		it to a system of first order equations.  By defining the angular
		velocity ``omega(t) = theta'(t)``, we obtain the system::
		
		    theta'(t) = omega(t)
		    omega'(t) = -b*omega(t) - c*sin(theta(t))
		
		Let `y` be the vector [`theta`, `omega`].  We implement this system
		in python as:
		
		>>> def pend(y, t, b, c):
		...     theta, omega = y
		...     dydt = [omega, -b*omega - c*np.sin(theta)]
		...     return dydt
		...
		
		We assume the constants are `b` = 0.25 and `c` = 5.0:
		
		>>> b = 0.25
		>>> c = 5.0
		
		For initial conditions, we assume the pendulum is nearly vertical
		with `theta(0)` = `pi` - 0.1, and it initially at rest, so
		`omega(0)` = 0.  Then the vector of initial conditions is
		
		>>> y0 = [np.pi - 0.1, 0.0]
		
		We generate a solution 101 evenly spaced samples in the interval
		0 <= `t` <= 10.  So our array of times is:
		
		>>> t = np.linspace(0, 10, 101)
		
		Call `odeint` to generate the solution.  To pass the parameters
		`b` and `c` to `pend`, we give them to `odeint` using the `args`
		argument.
		
		>>> from scipy.integrate import odeint
		>>> sol = odeint(pend, y0, t, args=(b, c))
		
		The solution is an array with shape (101, 2).  The first column
		is `theta(t)`, and the second is `omega(t)`.  The following code
		plots both components.
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, sol[:, 0], 'b', label='theta(t)')
		>>> plt.plot(t, sol[:, 1], 'g', label='omega(t)')
		>>> plt.legend(loc='best')
		>>> plt.xlabel('t')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function odeint(func:Dynamic, y0:Dynamic, t:Dynamic, ?args:Dynamic, ?Dfun:Dynamic, ?col_deriv:Dynamic, ?full_output:Dynamic, ?ml:Dynamic, ?mu:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?tcrit:Dynamic, ?h0:Dynamic, ?hmax:Dynamic, ?hmin:Dynamic, ?ixpr:Dynamic, ?mxstep:Dynamic, ?mxhnil:Dynamic, ?mxordn:Dynamic, ?mxords:Dynamic, ?printmessg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute a definite integral.
		
		Integrate func from `a` to `b` (possibly infinite interval) using a
		technique from the Fortran library QUADPACK.
		
		Parameters
		----------
		func : function
		    A Python function or method to integrate.  If `func` takes many
		    arguments, it is integrated along the axis corresponding to the
		    first argument.
		    If the user desires improved integration performance, then f may
		    instead be a ``ctypes`` function of the form:
		
		        f(int n, double args[n]),
		
		    where ``args`` is an array of function arguments and ``n`` is the
		    length of ``args``. ``f.argtypes`` should be set to
		    ``(c_int, c_double)``, and ``f.restype`` should be ``(c_double,)``.
		a : float
		    Lower limit of integration (use -numpy.inf for -infinity).
		b : float
		    Upper limit of integration (use numpy.inf for +infinity).
		args : tuple, optional
		    Extra arguments to pass to `func`.
		full_output : int, optional
		    Non-zero to return a dictionary of integration information.
		    If non-zero, warning messages are also suppressed and the
		    message is appended to the output tuple.
		
		Returns
		-------
		y : float
		    The integral of func from `a` to `b`.
		abserr : float
		    An estimate of the absolute error in the result.
		infodict : dict
		    A dictionary containing additional information.
		    Run scipy.integrate.quad_explain() for more information.
		message
		    A convergence message.
		explain
		    Appended only with 'cos' or 'sin' weighting and infinite
		    integration limits, it contains an explanation of the codes in
		    infodict['ierlst']
		
		Other Parameters
		----------------
		epsabs : float or int, optional
		    Absolute error tolerance.
		epsrel : float or int, optional
		    Relative error tolerance.
		limit : float or int, optional
		    An upper bound on the number of subintervals used in the adaptive
		    algorithm.
		points : (sequence of floats,ints), optional
		    A sequence of break points in the bounded integration interval
		    where local difficulties of the integrand may occur (e.g.,
		    singularities, discontinuities). The sequence does not have
		    to be sorted.
		weight : float or int, optional
		    String indicating weighting function. Full explanation for this
		    and the remaining arguments can be found below.
		wvar : optional
		    Variables for use with weighting functions.
		wopts : optional
		    Optional input for reusing Chebyshev moments.
		maxp1 : float or int, optional
		    An upper bound on the number of Chebyshev moments.
		limlst : int, optional
		    Upper bound on the number of cycles (>=3) for use with a sinusoidal
		    weighting and an infinite end-point.
		
		See Also
		--------
		dblquad : double integral
		tplquad : triple integral
		nquad : n-dimensional integrals (uses `quad` recursively)
		fixed_quad : fixed-order Gaussian quadrature
		quadrature : adaptive Gaussian quadrature
		odeint : ODE integrator
		ode : ODE integrator
		simps : integrator for sampled data
		romb : integrator for sampled data
		scipy.special : for coefficients and roots of orthogonal polynomials
		
		Notes
		-----
		
		**Extra information for quad() inputs and outputs**
		
		If full_output is non-zero, then the third output argument
		(infodict) is a dictionary with entries as tabulated below.  For
		infinite limits, the range is transformed to (0,1) and the
		optional outputs are given with respect to this transformed range.
		Let M be the input argument limit and let K be infodict['last'].
		The entries are:
		
		'neval'
		    The number of function evaluations.
		'last'
		    The number, K, of subintervals produced in the subdivision process.
		'alist'
		    A rank-1 array of length M, the first K elements of which are the
		    left end points of the subintervals in the partition of the
		    integration range.
		'blist'
		    A rank-1 array of length M, the first K elements of which are the
		    right end points of the subintervals.
		'rlist'
		    A rank-1 array of length M, the first K elements of which are the
		    integral approximations on the subintervals.
		'elist'
		    A rank-1 array of length M, the first K elements of which are the
		    moduli of the absolute error estimates on the subintervals.
		'iord'
		    A rank-1 integer array of length M, the first L elements of
		    which are pointers to the error estimates over the subintervals
		    with ``L=K`` if ``K<=M/2+2`` or ``L=M+1-K`` otherwise. Let I be the
		    sequence ``infodict['iord']`` and let E be the sequence
		    ``infodict['elist']``.  Then ``E[I[1]], ..., E[I[L]]`` forms a
		    decreasing sequence.
		
		If the input argument points is provided (i.e. it is not None),
		the following additional outputs are placed in the output
		dictionary.  Assume the points sequence is of length P.
		
		'pts'
		    A rank-1 array of length P+2 containing the integration limits
		    and the break points of the intervals in ascending order.
		    This is an array giving the subintervals over which integration
		    will occur.
		'level'
		    A rank-1 integer array of length M (=limit), containing the
		    subdivision levels of the subintervals, i.e., if (aa,bb) is a
		    subinterval of ``(pts[1], pts[2])`` where ``pts[0]`` and ``pts[2]``
		    are adjacent elements of ``infodict['pts']``, then (aa,bb) has level l
		    if ``|bb-aa| = |pts[2]-pts[1]| * 2**(-l)``.
		'ndin'
		    A rank-1 integer array of length P+2.  After the first integration
		    over the intervals (pts[1], pts[2]), the error estimates over some
		    of the intervals may have been increased artificially in order to
		    put their subdivision forward.  This array has ones in slots
		    corresponding to the subintervals for which this happens.
		
		**Weighting the integrand**
		
		The input variables, *weight* and *wvar*, are used to weight the
		integrand by a select list of functions.  Different integration
		methods are used to compute the integral with these weighting
		functions.  The possible values of weight and the corresponding
		weighting functions are.
		
		==========  ===================================   =====================
		``weight``  Weight function used                  ``wvar``
		==========  ===================================   =====================
		'cos'       cos(w*x)                              wvar = w
		'sin'       sin(w*x)                              wvar = w
		'alg'       g(x) = ((x-a)**alpha)*((b-x)**beta)   wvar = (alpha, beta)
		'alg-loga'  g(x)*log(x-a)                         wvar = (alpha, beta)
		'alg-logb'  g(x)*log(b-x)                         wvar = (alpha, beta)
		'alg-log'   g(x)*log(x-a)*log(b-x)                wvar = (alpha, beta)
		'cauchy'    1/(x-c)                               wvar = c
		==========  ===================================   =====================
		
		wvar holds the parameter w, (alpha, beta), or c depending on the weight
		selected.  In these expressions, a and b are the integration limits.
		
		For the 'cos' and 'sin' weighting, additional inputs and outputs are
		available.
		
		For finite integration limits, the integration is performed using a
		Clenshaw-Curtis method which uses Chebyshev moments.  For repeated
		calculations, these moments are saved in the output dictionary:
		
		'momcom'
		    The maximum level of Chebyshev moments that have been computed,
		    i.e., if ``M_c`` is ``infodict['momcom']`` then the moments have been
		    computed for intervals of length ``|b-a| * 2**(-l)``,
		    ``l=0,1,...,M_c``.
		'nnlog'
		    A rank-1 integer array of length M(=limit), containing the
		    subdivision levels of the subintervals, i.e., an element of this
		    array is equal to l if the corresponding subinterval is
		    ``|b-a|* 2**(-l)``.
		'chebmo'
		    A rank-2 array of shape (25, maxp1) containing the computed
		    Chebyshev moments.  These can be passed on to an integration
		    over the same interval by passing this array as the second
		    element of the sequence wopts and passing infodict['momcom'] as
		    the first element.
		
		If one of the integration limits is infinite, then a Fourier integral is
		computed (assuming w neq 0).  If full_output is 1 and a numerical error
		is encountered, besides the error message attached to the output tuple,
		a dictionary is also appended to the output tuple which translates the
		error codes in the array ``info['ierlst']`` to English messages.  The
		output information dictionary contains the following entries instead of
		'last', 'alist', 'blist', 'rlist', and 'elist':
		
		'lst'
		    The number of subintervals needed for the integration (call it ``K_f``).
		'rslst'
		    A rank-1 array of length M_f=limlst, whose first ``K_f`` elements
		    contain the integral contribution over the interval
		    ``(a+(k-1)c, a+kc)`` where ``c = (2*floor(|w|) + 1) * pi / |w|``
		    and ``k=1,2,...,K_f``.
		'erlst'
		    A rank-1 array of length ``M_f`` containing the error estimate
		    corresponding to the interval in the same position in
		    ``infodict['rslist']``.
		'ierlst'
		    A rank-1 integer array of length ``M_f`` containing an error flag
		    corresponding to the interval in the same position in
		    ``infodict['rslist']``.  See the explanation dictionary (last entry
		    in the output tuple) for the meaning of the codes.
		
		Examples
		--------
		Calculate :math:`\int^4_0 x^2 dx` and compare with an analytic result
		
		>>> from scipy import integrate
		>>> x2 = lambda x: x**2
		>>> integrate.quad(x2, 0, 4)
		(21.333333333333332, 2.3684757858670003e-13)
		>>> print(4**3 / 3.)  # analytical result
		21.3333333333
		
		Calculate :math:`\int^\infty_0 e^{-x} dx`
		
		>>> invexp = lambda x: np.exp(-x)
		>>> integrate.quad(invexp, 0, np.inf)
		(1.0, 5.842605999138044e-11)
		
		>>> f = lambda x,a : a*x
		>>> y, err = integrate.quad(f, 0, 1, args=(1,))
		>>> y
		0.5
		>>> y, err = integrate.quad(f, 0, 1, args=(3,))
		>>> y
		1.5
		
		Calculate :math:`\int^1_0 x^2 + y^2 dx` with ctypes, holding
		y parameter as 1::
		
		    testlib.c =>
		        double func(int n, double args[n]){
		            return args[0]*args[0] + args[1]*args[1];}
		    compile to library testlib.*
		
		::
		
		   from scipy import integrate
		   import ctypes
		   lib = ctypes.CDLL('/home/.../testlib.*') #use absolute path
		   lib.func.restype = ctypes.c_double
		   lib.func.argtypes = (ctypes.c_int,ctypes.c_double)
		   integrate.quad(lib.func,0,1,(1))
		   #(1.3333333333333333, 1.4802973661668752e-14)
		   print((1.0**3/3.0 + 1.0) - (0.0**3/3.0 + 0.0)) #Analytic result
		   # 1.3333333333333333
	**/
	static public function quad(func:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?full_output:Dynamic, ?epsabs:Dynamic, ?epsrel:Dynamic, ?limit:Dynamic, ?points:Dynamic, ?weight:Dynamic, ?wvar:Dynamic, ?wopts:Dynamic, ?maxp1:Dynamic, ?limlst:Dynamic):Float;
	/**
		Print extra information about integrate.quad() parameters and returns.
		
		Parameters
		----------
		output : instance with "write" method, optional
		    Information about `quad` is passed to ``output.write()``.
		    Default is ``sys.stdout``.
		
		Returns
		-------
		None
	**/
	static public function quad_explain(?output:Dynamic):Dynamic;
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
		Solve a boundary-value problem for a system of ODEs.
		
		This function numerically solves a first order system of ODEs subject to
		two-point boundary conditions::
		
		    dy / dx = f(x, y, p) + S * y / (x - a), a <= x <= b
		    bc(y(a), y(b), p) = 0
		
		Here x is a 1-dimensional independent variable, y(x) is a n-dimensional
		vector-valued function and p is a k-dimensional vector of unknown
		parameters which is to be found along with y(x). For the problem to be
		determined there must be n + k boundary conditions, i.e. bc must be
		(n + k)-dimensional function.
		
		The last singular term in the right-hand side of the system is optional.
		It is defined by an n-by-n matrix S, such that the solution must satisfy
		S y(a) = 0. This condition will be forced during iterations, so it must not
		contradict boundary conditions. See [2]_ for the explanation how this term
		is handled when solving BVPs numerically.
		
		Problems in a complex domain can be solved as well. In this case y and p
		are considered to be complex, and f and bc are assumed to be complex-valued
		functions, but x stays real. Note that f and bc must be complex
		differentiable (satisfy Cauchy-Riemann equations [4]_), otherwise you
		should rewrite your problem for real and imaginary parts separately. To
		solve a problem in a complex domain, pass an initial guess for y with a
		complex data type (see below).
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system. The calling signature is ``fun(x, y)``,
		    or ``fun(x, y, p)`` if parameters are present. All arguments are
		    ndarray: ``x`` with shape (m,), ``y`` with shape (n, m), meaning that
		    ``y[:, i]`` corresponds to ``x[i]``, and ``p`` with shape (k,). The
		    return value must be an array with shape (n, m) and with the same
		    layout as ``y``.
		bc : callable
		    Function evaluating residuals of the boundary conditions. The calling
		    signature is ``bc(ya, yb)``, or ``bc(ya, yb, p)`` if parameters are
		    present. All arguments are ndarray: ``ya`` and ``yb`` with shape (n,),
		    and ``p`` with shape (k,). The return value must be an array with
		    shape (n + k,).
		x : array_like, shape (m,)
		    Initial mesh. Must be a strictly increasing sequence of real numbers
		    with ``x[0]=a`` and ``x[-1]=b``.
		y : array_like, shape (n, m)
		    Initial guess for the function values at the mesh nodes, i-th column
		    corresponds to ``x[i]``. For problems in a complex domain pass `y`
		    with a complex data type (even if the initial guess is purely real).
		p : array_like with shape (k,) or None, optional
		    Initial guess for the unknown parameters. If None (default), it is
		    assumed that the problem doesn't depend on any parameters.
		S : array_like with shape (n, n) or None
		    Matrix defining the singular term. If None (default), the problem is
		    solved without the singular term.
		fun_jac : callable or None, optional
		    Function computing derivatives of f with respect to y and p. The
		    calling signature is ``fun_jac(x, y)``, or ``fun_jac(x, y, p)`` if
		    parameters are present. The return must contain 1 or 2 elements in the
		    following order:
		
		        * df_dy : array_like with shape (n, n, m) where an element
		          (i, j, q) equals to d f_i(x_q, y_q, p) / d (y_q)_j.
		        * df_dp : array_like with shape (n, k, m) where an element
		          (i, j, q) equals to d f_i(x_q, y_q, p) / d p_j.
		
		    Here q numbers nodes at which x and y are defined, whereas i and j
		    number vector components. If the problem is solved without unknown
		    parameters df_dp should not be returned.
		
		    If `fun_jac` is None (default), the derivatives will be estimated
		    by the forward finite differences.
		bc_jac : callable or None, optional
		    Function computing derivatives of bc with respect to ya, yb and p.
		    The calling signature is ``bc_jac(ya, yb)``, or ``bc_jac(ya, yb, p)``
		    if parameters are present. The return must contain 2 or 3 elements in
		    the following order:
		
		        * dbc_dya : array_like with shape (n, n) where an element (i, j)
		          equals to d bc_i(ya, yb, p) / d ya_j.
		        * dbc_dyb : array_like with shape (n, n) where an element (i, j)
		          equals to d bc_i(ya, yb, p) / d yb_j.
		        * dbc_dp : array_like with shape (n, k) where an element (i, j)
		          equals to d bc_i(ya, yb, p) / d p_j.
		
		    If the problem is solved without unknown parameters dbc_dp should not
		    be returned.
		
		    If `bc_jac` is None (default), the derivatives will be estimated by
		    the forward finite differences.
		tol : float, optional
		    Desired tolerance of the solution. If we define ``r = y' - f(x, y)``
		    where y is the found solution, then the solver tries to achieve on each
		    mesh interval ``norm(r / (1 + abs(f)) < tol``, where ``norm`` is
		    estimated in a root mean squared sense (using a numerical quadrature
		    formula). Default is 1e-3.
		max_nodes : int, optional
		    Maximum allowed number of the mesh nodes. If exceeded, the algorithm
		    terminates. Default is 1000.
		verbose : {0, 1, 2}, optional
		    Level of algorithm's verbosity:
		
		        * 0 (default) : work silently.
		        * 1 : display a termination report.
		        * 2 : display progress during iterations.
		
		Returns
		-------
		Bunch object with the following fields defined:
		sol : PPoly
		    Found solution for y as `scipy.interpolate.PPoly` instance, a C1
		    continuous cubic spline.
		p : ndarray or None, shape (k,)
		    Found parameters. None, if the parameters were not present in the
		    problem.
		x : ndarray, shape (m,)
		    Nodes of the final mesh.
		y : ndarray, shape (n, m)
		    Solution values at the mesh nodes.
		yp : ndarray, shape (n, m)
		    Solution derivatives at the mesh nodes.
		rms_residuals : ndarray, shape (m - 1,)
		    RMS values of the relative residuals over each mesh interval (see the
		    description of `tol` parameter).
		niter : int
		    Number of completed iterations.
		status : int
		    Reason for algorithm termination:
		
		        * 0: The algorithm converged to the desired accuracy.
		        * 1: The maximum number of mesh nodes is exceeded.
		        * 2: A singular Jacobian encountered when solving the collocation
		          system.
		
		message : string
		    Verbal description of the termination reason.
		success : bool
		    True if the algorithm converged to the desired accuracy (``status=0``).
		
		Notes
		-----
		This function implements a 4-th order collocation algorithm with the
		control of residuals similar to [1]_. A collocation system is solved
		by a damped Newton method with an affine-invariant criterion function as
		described in [3]_.
		
		Note that in [1]_  integral residuals are defined without normalization
		by interval lengths. So their definition is different by a multiplier of
		h**0.5 (h is an interval length) from the definition used here.
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] J. Kierzenka, L. F. Shampine, "A BVP Solver Based on Residual
		       Control and the Maltab PSE", ACM Trans. Math. Softw., Vol. 27,
		       Number 3, pp. 299-316, 2001.
		.. [2] L.F. Shampine, P. H. Muir and H. Xu, "A User-Friendly Fortran BVP
		       Solver".
		.. [3] U. Ascher, R. Mattheij and R. Russell "Numerical Solution of
		       Boundary Value Problems for Ordinary Differential Equations".
		.. [4] `Cauchy-Riemann equations
		        <https://en.wikipedia.org/wiki/Cauchy-Riemann_equations>`_ on
		        Wikipedia.
		
		Examples
		--------
		In the first example we solve Bratu's problem::
		
		    y'' + k * exp(y) = 0
		    y(0) = y(1) = 0
		
		for k = 1.
		
		We rewrite the equation as a first order system and implement its
		right-hand side evaluation::
		
		    y1' = y2
		    y2' = -exp(y1)
		
		>>> def fun(x, y):
		...     return np.vstack((y[1], -np.exp(y[0])))
		
		Implement evaluation of the boundary condition residuals:
		
		>>> def bc(ya, yb):
		...     return np.array([ya[0], yb[0]])
		
		Define the initial mesh with 5 nodes:
		
		>>> x = np.linspace(0, 1, 5)
		
		This problem is known to have two solutions. To obtain both of them we
		use two different initial guesses for y. We denote them by subscripts
		a and b.
		
		>>> y_a = np.zeros((2, x.size))
		>>> y_b = np.zeros((2, x.size))
		>>> y_b[0] = 3
		
		Now we are ready to run the solver.
		
		>>> from scipy.integrate import solve_bvp
		>>> res_a = solve_bvp(fun, bc, x, y_a)
		>>> res_b = solve_bvp(fun, bc, x, y_b)
		
		Let's plot the two found solutions. We take an advantage of having the
		solution in a spline form to produce a smooth plot.
		
		>>> x_plot = np.linspace(0, 1, 100)
		>>> y_plot_a = res_a.sol(x_plot)[0]
		>>> y_plot_b = res_b.sol(x_plot)[0]
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x_plot, y_plot_a, label='y_a')
		>>> plt.plot(x_plot, y_plot_b, label='y_b')
		>>> plt.legend()
		>>> plt.xlabel("x")
		>>> plt.ylabel("y")
		>>> plt.show()
		
		We see that the two solutions have similar shape, but differ in scale
		significantly.
		
		In the second example we solve a simple Sturm-Liouville problem::
		
		    y'' + k**2 * y = 0
		    y(0) = y(1) = 0
		
		It is known that a non-trivial solution y = A * sin(k * x) is possible for
		k = pi * n, where n is an integer. To establish the normalization constant
		A = 1 we add a boundary condition::
		
		    y'(0) = k
		
		Again we rewrite our equation as a first order system and implement its
		right-hand side evaluation::
		
		    y1' = y2
		    y2' = -k**2 * y1
		
		>>> def fun(x, y, p):
		...     k = p[0]
		...     return np.vstack((y[1], -k**2 * y[0]))
		
		Note that parameters p are passed as a vector (with one element in our
		case).
		
		Implement the boundary conditions:
		
		>>> def bc(ya, yb, p):
		...     k = p[0]
		...     return np.array([ya[0], yb[0], ya[1] - k])
		
		Setup the initial mesh and guess for y. We aim to find the solution for
		k = 2 * pi, to achieve that we set values of y to approximately follow
		sin(2 * pi * x):
		
		>>> x = np.linspace(0, 1, 5)
		>>> y = np.zeros((2, x.size))
		>>> y[0, 1] = 1
		>>> y[0, 3] = -1
		
		Run the solver with 6 as an initial guess for k.
		
		>>> sol = solve_bvp(fun, bc, x, y, p=[6])
		
		We see that the found k is approximately correct:
		
		>>> sol.p[0]
		6.28329460046
		
		And finally plot the solution to see the anticipated sinusoid:
		
		>>> x_plot = np.linspace(0, 1, 100)
		>>> y_plot = sol.sol(x_plot)[0]
		>>> plt.plot(x_plot, y_plot)
		>>> plt.xlabel("x")
		>>> plt.ylabel("y")
		>>> plt.show()
	**/
	static public function solve_bvp(fun:Dynamic, bc:Dynamic, x:Dynamic, y:Dynamic, ?p:Dynamic, ?S:Dynamic, ?fun_jac:Dynamic, ?bc_jac:Dynamic, ?tol:Dynamic, ?max_nodes:Dynamic, ?verbose:Dynamic):Dynamic;
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
		Compute a triple (definite) integral.
		
		Return the triple integral of ``func(z, y, x)`` from ``x = a..b``,
		``y = gfun(x)..hfun(x)``, and ``z = qfun(x,y)..rfun(x,y)``.
		
		Parameters
		----------
		func : function
		    A Python function or method of at least three variables in the
		    order (z, y, x).
		a, b : float
		    The limits of integration in x: `a` < `b`
		gfun : function
		    The lower boundary curve in y which is a function taking a single
		    floating point argument (x) and returning a floating point result:
		    a lambda function can be useful here.
		hfun : function
		    The upper boundary curve in y (same requirements as `gfun`).
		qfun : function
		    The lower boundary surface in z.  It must be a function that takes
		    two floats in the order (x, y) and returns a float.
		rfun : function
		    The upper boundary surface in z. (Same requirements as `qfun`.)
		args : tuple, optional
		    Extra arguments to pass to `func`.
		epsabs : float, optional
		    Absolute tolerance passed directly to the innermost 1-D quadrature
		    integration. Default is 1.49e-8.
		epsrel : float, optional
		    Relative tolerance of the innermost 1-D integrals. Default is 1.49e-8.
		
		Returns
		-------
		y : float
		    The resultant integral.
		abserr : float
		    An estimate of the error.
		
		See Also
		--------
		quad: Adaptive quadrature using QUADPACK
		quadrature: Adaptive Gaussian quadrature
		fixed_quad: Fixed-order Gaussian quadrature
		dblquad: Double integrals
		nquad : N-dimensional integrals
		romb: Integrators for sampled data
		simps: Integrators for sampled data
		ode: ODE integrators
		odeint: ODE integrators
		scipy.special: For coefficients and roots of orthogonal polynomials
	**/
	static public function tplquad(func:Dynamic, a:Dynamic, b:Dynamic, gfun:Dynamic, hfun:Dynamic, qfun:Dynamic, rfun:Dynamic, ?args:Dynamic, ?epsabs:Dynamic, ?epsrel:Dynamic):Float;
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
}