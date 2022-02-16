/* This file is generated, do not edit! */
package scipy.optimize.linesearch;
@:pythonImport("scipy.optimize.linesearch") extern class Linesearch_Module {
	/**
		As `scalar_search_wolfe1` but do a line search to direction `pk`
		
		Parameters
		----------
		f : callable
		    Function `f(x)`
		fprime : callable
		    Gradient of `f`
		xk : array_like
		    Current point
		pk : array_like
		    Search direction
		
		gfk : array_like, optional
		    Gradient of `f` at point `xk`
		old_fval : float, optional
		    Value of `f` at point `xk`
		old_old_fval : float, optional
		    Value of `f` at point preceding `xk`
		
		The rest of the parameters are the same as for `scalar_search_wolfe1`.
		
		Returns
		-------
		stp, f_count, g_count, fval, old_fval
		    As in `line_search_wolfe1`
		gval : array
		    Gradient of `f` at the final point
	**/
	static public function line_search(f:Dynamic, fprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?amin:Dynamic, ?xtol:Dynamic):Dynamic;
	/**
		Compatibility wrapper for `line_search_armijo`
	**/
	static public function line_search_BFGS(f:Dynamic, xk:Dynamic, pk:Dynamic, gfk:Dynamic, old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?alpha0:Dynamic):Dynamic;
	/**
		Minimize over alpha, the function ``f(xk+alpha pk)``.
		
		Parameters
		----------
		f : callable
		    Function to be minimized.
		xk : array_like
		    Current point.
		pk : array_like
		    Search direction.
		gfk : array_like
		    Gradient of `f` at point `xk`.
		old_fval : float
		    Value of `f` at point `xk`.
		args : tuple, optional
		    Optional arguments.
		c1 : float, optional
		    Value to control stopping criterion.
		alpha0 : scalar, optional
		    Value of `alpha` at start of the optimization.
		
		Returns
		-------
		alpha
		f_count
		f_val_at_alpha
		
		Notes
		-----
		Uses the interpolation algorithm (Armijo backtracking) as suggested by
		Wright and Nocedal in 'Numerical Optimization', 1999, pp. 56-57
	**/
	static public function line_search_armijo(f:Dynamic, xk:Dynamic, pk:Dynamic, gfk:Dynamic, old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?alpha0:Dynamic):Dynamic;
	/**
		As `scalar_search_wolfe1` but do a line search to direction `pk`
		
		Parameters
		----------
		f : callable
		    Function `f(x)`
		fprime : callable
		    Gradient of `f`
		xk : array_like
		    Current point
		pk : array_like
		    Search direction
		
		gfk : array_like, optional
		    Gradient of `f` at point `xk`
		old_fval : float, optional
		    Value of `f` at point `xk`
		old_old_fval : float, optional
		    Value of `f` at point preceding `xk`
		
		The rest of the parameters are the same as for `scalar_search_wolfe1`.
		
		Returns
		-------
		stp, f_count, g_count, fval, old_fval
		    As in `line_search_wolfe1`
		gval : array
		    Gradient of `f` at the final point
	**/
	static public function line_search_wolfe1(f:Dynamic, fprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?amin:Dynamic, ?xtol:Dynamic):Dynamic;
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
		    Function value for the point preceding x=xk.
		args : tuple, optional
		    Additional arguments passed to objective function.
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax : float, optional
		    Maximum step size
		extra_condition : callable, optional
		    A callable of the form ``extra_condition(alpha, x, f, g)``
		    returning a boolean. Arguments are the proposed step ``alpha``
		    and the corresponding ``x``, ``f`` and ``g`` values. The line search
		    accepts the value of ``alpha`` only if this
		    callable returns ``True``. If the callable returns ``False``
		    for the step length, the algorithm will continue with
		    new iterates. The callable is only called for iterates
		    satisfying the strong Wolfe conditions.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		
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
		conditions. See Wright and Nocedal, 'Numerical Optimization',
		1999, pp. 59-61.
		
		Examples
		--------
		>>> from scipy.optimize import line_search
		
		A objective function and its gradient are defined.
		
		>>> def obj_func(x):
		...     return (x[0])**2+(x[1])**2
		>>> def obj_grad(x):
		...     return [2*x[0], 2*x[1]]
		
		We can find alpha that satisfies strong Wolfe conditions.
		
		>>> start_point = np.array([1.8, 1.7])
		>>> search_gradient = np.array([-1.0, -1.0])
		>>> line_search(obj_func, obj_grad, start_point, search_gradient)
		(1.0, 2, 1, 1.1300000000000001, 6.13, [1.6, 1.4])
	**/
	static public function line_search_wolfe2(f:Dynamic, myfprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?extra_condition:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Minimize over alpha, the function ``phi(alpha)``.
		
		Uses the interpolation algorithm (Armijo backtracking) as suggested by
		Wright and Nocedal in 'Numerical Optimization', 1999, pp. 56-57
		
		alpha > 0 is assumed to be a descent direction.
		
		Returns
		-------
		alpha
		phi1
	**/
	static public function scalar_search_armijo(phi:Dynamic, phi0:Dynamic, derphi0:Dynamic, ?c1:Dynamic, ?alpha0:Dynamic, ?amin:Dynamic):Dynamic;
	/**
		Scalar function search for alpha that satisfies strong Wolfe conditions
		
		alpha > 0 is assumed to be a descent direction.
		
		Parameters
		----------
		phi : callable phi(alpha)
		    Function at point `alpha`
		derphi : callable phi'(alpha)
		    Objective function derivative. Returns a scalar.
		phi0 : float, optional
		    Value of phi at 0
		old_phi0 : float, optional
		    Value of phi at previous point
		derphi0 : float, optional
		    Value derphi at 0
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax, amin : float, optional
		    Maximum and minimum step size
		xtol : float, optional
		    Relative tolerance for an acceptable step.
		
		Returns
		-------
		alpha : float
		    Step size, or None if no suitable step was found
		phi : float
		    Value of `phi` at the new point `alpha`
		phi0 : float
		    Value of `phi` at `alpha=0`
		
		Notes
		-----
		Uses routine DCSRCH from MINPACK.
	**/
	static public function scalar_search_wolfe1(phi:Dynamic, derphi:Dynamic, ?phi0:Dynamic, ?old_phi0:Dynamic, ?derphi0:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?amin:Dynamic, ?xtol:Dynamic):Float;
	/**
		Find alpha that satisfies strong Wolfe conditions.
		
		alpha > 0 is assumed to be a descent direction.
		
		Parameters
		----------
		phi : callable phi(alpha)
		    Objective scalar function.
		derphi : callable phi'(alpha)
		    Objective function derivative. Returns a scalar.
		phi0 : float, optional
		    Value of phi at 0.
		old_phi0 : float, optional
		    Value of phi at previous point.
		derphi0 : float, optional
		    Value of derphi at 0
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax : float, optional
		    Maximum step size.
		extra_condition : callable, optional
		    A callable of the form ``extra_condition(alpha, phi_value)``
		    returning a boolean. The line search accepts the value
		    of ``alpha`` only if this callable returns ``True``.
		    If the callable returns ``False`` for the step length,
		    the algorithm will continue with new iterates.
		    The callable is only called for iterates satisfying
		    the strong Wolfe conditions.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		
		Returns
		-------
		alpha_star : float or None
		    Best alpha, or None if the line search algorithm did not converge.
		phi_star : float
		    phi at alpha_star.
		phi0 : float
		    phi at 0.
		derphi_star : float or None
		    derphi at alpha_star, or None if the line search algorithm
		    did not converge.
		
		Notes
		-----
		Uses the line search algorithm to enforce strong Wolfe
		conditions. See Wright and Nocedal, 'Numerical Optimization',
		1999, pp. 59-61.
	**/
	static public function scalar_search_wolfe2(phi:Dynamic, derphi:Dynamic, ?phi0:Dynamic, ?old_phi0:Dynamic, ?derphi0:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?extra_condition:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(message:Dynamic, ?category:Dynamic, ?stacklevel:Dynamic, ?source:Dynamic):Dynamic;
}