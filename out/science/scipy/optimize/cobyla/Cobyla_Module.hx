/* This file is generated, do not edit! */
package scipy.optimize.cobyla;
@:pythonImport("scipy.optimize.cobyla") extern class Cobyla_Module {
	/**
		Factory function that returns a new reentrant lock.
		
		A reentrant lock must be released by the thread that acquired it. Once a
		thread has acquired a reentrant lock, the same thread may acquire it again
		without blocking; the thread must release it once for each time it has
		acquired it.
	**/
	static public function RLock(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimize a function using the Constrained Optimization By Linear
		Approximation (COBYLA) method. This method wraps a FORTRAN
		implementation of the algorithm.
		
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
		disp : {0, 1, 2, 3}, optional
		    Controls the frequency of output; 0 implies no output.
		maxfun : int, optional
		    Maximum number of function evaluations.
		catol : float, optional
		    Absolute tolerance for constraint violations.
		callback : callable, optional
		    Called after each iteration, as ``callback(x)``, where ``x`` is the
		    current parameter vector.
		
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
		(i.e., linear plus a constant) approximations to the objective
		function and constraint functions such that their function values
		agree with the linear approximation on the k+1 points v_1,.., v_(k+1).
		This gives a linear program to solve (where the linear approximations
		of the constraint functions are constrained to be non-negative).
		
		However, the linear approximations are likely only good
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
		    array([-0.70710685,  0.70710671])
		
		The exact solution is (-sqrt(2)/2, sqrt(2)/2).
	**/
	static public function fmin_cobyla(func:Dynamic, x0:Dynamic, cons:Dynamic, ?args:Dynamic, ?consargs:Dynamic, ?rhobeg:Dynamic, ?rhoend:Dynamic, ?maxfun:Dynamic, ?disp:Dynamic, ?catol:Dynamic, ?callback:Dynamic):Dynamic;
	static public function synchronized(func:Dynamic):Dynamic;
}