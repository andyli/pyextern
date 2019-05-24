/* This file is generated, do not edit! */
package scipy.optimize._root_scalar;
@:pythonImport("scipy.optimize._root_scalar") extern class _Root_scalar_Module {
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
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_bisect_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_brenth_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_brentq_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function and its derivatives.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		x0 : float, required
		    Initial guess.
		fprime : bool or callable, required
		    If `fprime` is a boolean and is True, `f` is assumed to return the
		    value of derivative along with the objective function.
		    `fprime` can also be a callable returning the derivative of `f`. In
		    this case, it must accept the same arguments as `f`.
		fprime2 : bool or callable, required
		    If `fprime2` is a boolean and is True, `f` is assumed to return the
		    value of 1st and 2nd derivatives along with the objective function.
		    `fprime2` can also be a callable returning the 2nd derivative of `f`.
		    In this case, it must accept the same arguments as `f`.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_halley_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function and its derivative.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		x0 : float, required
		    Initial guess.
		fprime : bool or callable, optional
		    If `fprime` is a boolean and is True, `f` is assumed to return the
		    value of derivative along with the objective function.
		    `fprime` can also be a callable returning the derivative of `f`. In
		    this case, it must accept the same arguments as `f`.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_newton_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_ridder_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		x0 : float, required
		    Initial guess.
		x1 : float, required
		    A second guess.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_secant_doc():Dynamic;
	/**
		Options
		-------
		args : tuple, optional
		    Extra arguments passed to the objective function.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options: dict, optional
		    Specifies any method-specific options not covered above
	**/
	static public function _root_scalar_toms748_doc():Dynamic;
	static public var absolute_import : Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Find a root of a scalar function.
		
		Parameters
		----------
		f : callable
		    A function to find a root of.
		args : tuple, optional
		    Extra arguments passed to the objective function and its derivative(s).
		method : str, optional
		    Type of solver.  Should be one of
		
		        - 'bisect'    :ref:`(see here) <optimize.root_scalar-bisect>`
		        - 'brentq'    :ref:`(see here) <optimize.root_scalar-brentq>`
		        - 'brenth'    :ref:`(see here) <optimize.root_scalar-brenth>`
		        - 'ridder'    :ref:`(see here) <optimize.root_scalar-ridder>`
		        - 'toms748'    :ref:`(see here) <optimize.root_scalar-toms748>`
		        - 'newton'    :ref:`(see here) <optimize.root_scalar-newton>`
		        - 'secant'    :ref:`(see here) <optimize.root_scalar-secant>`
		        - 'halley'    :ref:`(see here) <optimize.root_scalar-halley>`
		
		bracket: A sequence of 2 floats, optional
		    An interval bracketing a root.  `f(x, *args)` must have different
		    signs at the two endpoints.
		x0 : float, optional
		    Initial guess.
		x1 : float, optional
		    A second guess.
		fprime : bool or callable, optional
		    If `fprime` is a boolean and is True, `f` is assumed to return the
		    value of the objective function and of the derivative.
		    `fprime` can also be a callable returning the derivative of `f`. In
		    this case, it must accept the same arguments as `f`.
		fprime2 : bool or callable, optional
		    If `fprime2` is a boolean and is True, `f` is assumed to return the
		    value of the objective function and of the
		    first and second derivatives.
		    `fprime2` can also be a callable returning the second derivative of `f`.
		    In this case, it must accept the same arguments as `f`.
		xtol : float, optional
		    Tolerance (absolute) for termination.
		rtol : float, optional
		    Tolerance (relative) for termination.
		maxiter : int, optional
		    Maximum number of iterations.
		options : dict, optional
		    A dictionary of solver options. E.g. ``k``, see
		    :obj:`show_options()` for details.
		
		Returns
		-------
		sol : RootResults
		    The solution represented as a ``RootResults`` object.
		    Important attributes are: ``root`` the solution , ``converged`` a
		    boolean flag indicating if the algorithm exited successfully and
		    ``flag`` which describes the cause of the termination. See
		    `RootResults` for a description of other attributes.
		
		See also
		--------
		show_options : Additional options accepted by the solvers
		root : Find a root of a vector function.
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter.
		
		The default is to use the best method available for the situation
		presented.
		If a bracket is provided, it may use one of the bracketing methods.
		If a derivative and an initial value are specified, it may
		select one of the derivative-based methods.
		If no method is judged applicable, it will raise an Exception.
		
		
		Examples
		--------
		
		Find the root of a simple cubic
		
		>>> from scipy import optimize
		>>> def f(x):
		...     return (x**3 - 1)  # only one real root at x = 1
		
		>>> def fprime(x):
		...     return 3*x**2
		
		The `brentq` method takes as input a bracket
		
		>>> sol = optimize.root_scalar(f, bracket=[0, 3], method='brentq')
		>>> sol.root, sol.iterations, sol.function_calls
		(1.0, 10, 11)
		
		The `newton` method takes as input a single point and uses the derivative(s)
		
		>>> sol = optimize.root_scalar(f, x0=0.2, fprime=fprime, method='newton')
		>>> sol.root, sol.iterations, sol.function_calls
		(1.0, 11, 22)
		
		The function can provide the value and derivative(s) in a single call.
		
		>>> def f_p_pp(x):
		...     return (x**3 - 1), 3*x**2, 6*x
		
		>>> sol = optimize.root_scalar(f_p_pp, x0=0.2, fprime=True, method='newton')
		>>> sol.root, sol.iterations, sol.function_calls
		(1.0, 11, 11)
		
		>>> sol = optimize.root_scalar(f_p_pp, x0=0.2, fprime=True, fprime2=True, method='halley')
		>>> sol.root, sol.iterations, sol.function_calls
		(1.0, 7, 8)
	**/
	static public function root_scalar(f:Dynamic, ?args:Dynamic, ?method:Dynamic, ?bracket:Dynamic, ?fprime:Dynamic, ?fprime2:Dynamic, ?x0:Dynamic, ?x1:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?options:Dynamic):Dynamic;
}