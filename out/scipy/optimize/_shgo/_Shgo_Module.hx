/* This file is generated, do not edit! */
package scipy.optimize._shgo;
@:pythonImport("scipy.optimize._shgo") extern class _Shgo_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Minimization of scalar function of one or more variables.
		
		Parameters
		----------
		fun : callable
		    The objective function to be minimized.
		
		        ``fun(x, *args) -> float``
		
		    where x is an 1-D array with shape (n,) and `args`
		    is a tuple of the fixed parameters needed to completely
		    specify the function.
		x0 : ndarray, shape (n,)
		    Initial guess. Array of real elements of size (n,),
		    where 'n' is the number of independent variables.
		args : tuple, optional
		    Extra arguments passed to the objective function and its
		    derivatives (`fun`, `jac` and `hess` functions).
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
		        - 'trust-constr':ref:`(see here) <optimize.minimize-trustconstr>`
		        - 'dogleg'      :ref:`(see here) <optimize.minimize-dogleg>`
		        - 'trust-ncg'   :ref:`(see here) <optimize.minimize-trustncg>`
		        - 'trust-exact' :ref:`(see here) <optimize.minimize-trustexact>`
		        - 'trust-krylov' :ref:`(see here) <optimize.minimize-trustkrylov>`
		        - custom - a callable object (added in version 0.14.0),
		          see below for description.
		
		    If not given, chosen to be one of ``BFGS``, ``L-BFGS-B``, ``SLSQP``,
		    depending if the problem has constraints or bounds.
		jac : {callable,  '2-point', '3-point', 'cs', bool}, optional
		    Method for computing the gradient vector. Only for CG, BFGS,
		    Newton-CG, L-BFGS-B, TNC, SLSQP, dogleg, trust-ncg, trust-krylov,
		    trust-exact and trust-constr. If it is a callable, it should be a
		    function that returns the gradient vector:
		
		        ``jac(x, *args) -> array_like, shape (n,)``
		
		    where x is an array with shape (n,) and `args` is a tuple with
		    the fixed parameters. Alternatively, the keywords
		    {'2-point', '3-point', 'cs'} select a finite
		    difference scheme for numerical estimation of the gradient. Options
		    '3-point' and 'cs' are available only to 'trust-constr'.
		    If `jac` is a Boolean and is True, `fun` is assumed to return the
		    gradient along with the objective function. If False, the gradient
		    will be estimated using '2-point' finite difference estimation.
		hess : {callable, '2-point', '3-point', 'cs', HessianUpdateStrategy},  optional
		    Method for computing the Hessian matrix. Only for Newton-CG, dogleg,
		    trust-ncg,  trust-krylov, trust-exact and trust-constr. If it is
		    callable, it should return the  Hessian matrix:
		
		        ``hess(x, *args) -> {LinearOperator, spmatrix, array}, (n, n)``
		
		    where x is a (n,) ndarray and `args` is a tuple with the fixed
		    parameters. LinearOperator and sparse matrix returns are
		    allowed only for 'trust-constr' method. Alternatively, the keywords
		    {'2-point', '3-point', 'cs'} select a finite difference scheme
		    for numerical estimation. Or, objects implementing
		    `HessianUpdateStrategy` interface can be used to approximate
		    the Hessian. Available quasi-Newton methods implementing
		    this interface are:
		
		        - `BFGS`;
		        - `SR1`.
		
		    Whenever the gradient is estimated via finite-differences,
		    the Hessian cannot be estimated with options
		    {'2-point', '3-point', 'cs'} and needs to be
		    estimated using one of the quasi-Newton strategies.
		    Finite-difference options {'2-point', '3-point', 'cs'} and
		    `HessianUpdateStrategy` are available only for 'trust-constr' method.
		hessp : callable, optional
		    Hessian of objective function times an arbitrary vector p. Only for
		    Newton-CG, trust-ncg, trust-krylov, trust-constr.
		    Only one of `hessp` or `hess` needs to be given.  If `hess` is
		    provided, then `hessp` will be ignored.  `hessp` must compute the
		    Hessian times an arbitrary vector:
		
		        ``hessp(x, p, *args) ->  ndarray shape (n,)``
		
		    where x is a (n,) ndarray, p is an arbitrary vector with
		    dimension (n,) and `args` is a tuple with the fixed
		    parameters.
		bounds : sequence or `Bounds`, optional
		    Bounds on variables for L-BFGS-B, TNC, SLSQP and
		    trust-constr methods. There are two ways to specify the bounds:
		
		        1. Instance of `Bounds` class.
		        2. Sequence of ``(min, max)`` pairs for each element in `x`. None
		           is used to specify no bound.
		
		constraints : {Constraint, dict} or List of {Constraint, dict}, optional
		    Constraints definition (only for COBYLA, SLSQP and trust-constr).
		    Constraints for 'trust-constr' are defined as a single object or a
		    list of objects specifying constraints to the optimization problem.
		    Available constraints are:
		
		        - `LinearConstraint`
		        - `NonlinearConstraint`
		
		    Constraints for COBYLA, SLSQP are defined as a list of dictionaries.
		    Each dictionary with fields:
		
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
		    Called after each iteration. For 'trust-constr' it is a callable with
		    the signature:
		
		        ``callback(xk, OptimizeResult state) -> bool``
		
		    where ``xk`` is the current parameter vector. and ``state``
		    is an `OptimizeResult` object, with the same fields
		    as the ones from the return.  If callback returns True
		    the algorithm execution is terminated.
		    For all the other methods, the signature is:
		
		        ``callback(xk)``
		
		    where ``xk`` is the current parameter vector.
		
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
		Simplex algorithm [1]_, [2]_. This algorithm is robust in many
		applications. However, if numerical computation of derivative can be
		trusted, other algorithms using the first and/or second derivatives
		information might be preferred for their better performance in
		general.
		
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
		minimization with a similar algorithm. Suitable for large-scale
		problems.
		
		Method :ref:`dogleg <optimize.minimize-dogleg>` uses the dog-leg
		trust-region algorithm [5]_ for unconstrained minimization. This
		algorithm requires the gradient and Hessian; furthermore the
		Hessian is required to be positive definite.
		
		Method :ref:`trust-ncg <optimize.minimize-trustncg>` uses the
		Newton conjugate gradient trust-region algorithm [5]_ for
		unconstrained minimization. This algorithm requires the gradient
		and either the Hessian or a function that computes the product of
		the Hessian with a given vector. Suitable for large-scale problems.
		
		Method :ref:`trust-krylov <optimize.minimize-trustkrylov>` uses
		the Newton GLTR trust-region algorithm [14]_, [15]_ for unconstrained
		minimization. This algorithm requires the gradient
		and either the Hessian or a function that computes the product of
		the Hessian with a given vector. Suitable for large-scale problems.
		On indefinite problems it requires usually less iterations than the
		`trust-ncg` method and is recommended for medium and large-scale problems.
		
		Method :ref:`trust-exact <optimize.minimize-trustexact>`
		is a trust-region method for unconstrained minimization in which
		quadratic subproblems are solved almost exactly [13]_. This
		algorithm requires the gradient and the Hessian (which is
		*not* required to be positive definite). It is, in many
		situations, the Newton method to converge in fewer iteraction
		and the most recommended for small and medium-size problems.
		
		**Bound-Constrained minimization**
		
		Method :ref:`L-BFGS-B <optimize.minimize-lbfgsb>` uses the L-BFGS-B
		algorithm [6]_, [7]_ for bound constrained minimization.
		
		Method :ref:`TNC <optimize.minimize-tnc>` uses a truncated Newton
		algorithm [5]_, [8]_ to minimize a function with variables subject
		to bounds. This algorithm uses gradient information; it is also
		called Newton Conjugate-Gradient. It differs from the *Newton-CG*
		method described above as it wraps a C implementation and allows
		each variable to be given upper and lower bounds.
		
		**Constrained Minimization**
		
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
		
		Method :ref:`trust-constr <optimize.minimize-trustconstr>` is a
		trust-region algorithm for constrained optimization. It swiches
		between two implementations depending on the problem definition.
		It is the most versatile constrained minimization algorithm
		implemented in SciPy and the most appropriate for large-scale problems.
		For equality constrained problems it is an implementation of Byrd-Omojokun
		Trust-Region SQP method described in [17]_ and in [5]_, p. 549. When
		inequality constraints  are imposed as well, it swiches to the trust-region
		interior point  method described in [16]_. This interior point algorithm,
		in turn, solves inequality constraints by introducing slack variables
		and solving a sequence of equality-constrained barrier problems
		for progressively smaller values of the barrier parameter.
		The previously described equality constrained SQP method is
		used to solve the subproblems with increasing levels of accuracy
		as the iterate gets closer to a solution.
		
		**Finite-Difference Options**
		
		For Method :ref:`trust-constr <optimize.minimize-trustconstr>`
		the gradient and the Hessian may be approximated using
		three finite-difference schemes: {'2-point', '3-point', 'cs'}.
		The scheme 'cs' is, potentially, the most accurate but it
		requires the function to correctly handles complex inputs and to
		be differentiable in the complex plane. The scheme '3-point' is more
		accurate than '2-point' but requires twice as much operations.
		
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
		returning the Jacobian.  The method shall return an `OptimizeResult`
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
		.. [13] Conn, A. R., Gould, N. I., and Toint, P. L.
		   Trust region methods. 2000. Siam. pp. 169-200.
		.. [14] F. Lenders, C. Kirches, A. Potschka: "trlib: A vector-free
		   implementation of the GLTR method for iterative solution of
		   the trust region problem", https://arxiv.org/abs/1611.04718
		.. [15] N. Gould, S. Lucidi, M. Roma, P. Toint: "Solving the
		   Trust-Region Subproblem using the Lanczos Method",
		   SIAM J. Optim., 9(2), 504--525, (1999).
		.. [16] Byrd, Richard H., Mary E. Hribar, and Jorge Nocedal. 1999.
		    An interior point algorithm for large-scale nonlinear  programming.
		    SIAM Journal on Optimization 9.4: 877-900.
		.. [17] Lalee, Marucha, Jorge Nocedal, and Todd Plantega. 1998. On the
		    implementation of an algorithm for large-scale equality constrained
		    optimization. SIAM Journal on Optimization 8.3: 682-706.
		
		Examples
		--------
		Let us consider the problem of minimizing the Rosenbrock function. This
		function (and its respective derivatives) is implemented in `rosen`
		(resp. `rosen_der`, `rosen_hess`) in the `scipy.optimize`.
		
		>>> from scipy.optimize import minimize, rosen, rosen_der
		
		A simple application of the *Nelder-Mead* method is:
		
		>>> x0 = [1.3, 0.7, 0.8, 1.9, 1.2]
		>>> res = minimize(rosen, x0, method='Nelder-Mead', tol=1e-6)
		>>> res.x
		array([ 1.,  1.,  1.,  1.,  1.])
		
		Now using the *BFGS* algorithm, using the first derivative and a few
		options:
		
		>>> res = minimize(rosen, x0, method='BFGS', jac=rosen_der,
		...                options={'gtol': 1e-6, 'disp': True})
		Optimization terminated successfully.
		         Current function value: 0.000000
		         Iterations: 26
		         Function evaluations: 31
		         Gradient evaluations: 31
		>>> res.x
		array([ 1.,  1.,  1.,  1.,  1.])
		>>> print(res.message)
		Optimization terminated successfully.
		>>> res.hess_inv
		array([[ 0.00749589,  0.01255155,  0.02396251,  0.04750988,  0.09495377],  # may vary
		       [ 0.01255155,  0.02510441,  0.04794055,  0.09502834,  0.18996269],
		       [ 0.02396251,  0.04794055,  0.09631614,  0.19092151,  0.38165151],
		       [ 0.04750988,  0.09502834,  0.19092151,  0.38341252,  0.7664427 ],
		       [ 0.09495377,  0.18996269,  0.38165151,  0.7664427,   1.53713523]])
		
		
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
	static public var print_function : Dynamic;
	/**
		Finds the global minimum of a function using SHG optimization.
		
		SHGO stands for "simplicial homology global optimization".
		
		Parameters
		----------
		func : callable
		    The objective function to be minimized.  Must be in the form
		    ``f(x, *args)``, where ``x`` is the argument in the form of a 1-D array
		    and ``args`` is a tuple of any additional fixed parameters needed to
		    completely specify the function.
		bounds : sequence
		    Bounds for variables.  ``(min, max)`` pairs for each element in ``x``,
		    defining the lower and upper bounds for the optimizing argument of
		    `func`. It is required to have ``len(bounds) == len(x)``.
		    ``len(bounds)`` is used to determine the number of parameters in ``x``.
		    Use ``None`` for one of min or max when there is no bound in that
		    direction. By default bounds are ``(None, None)``.
		args : tuple, optional
		    Any additional fixed parameters needed to completely specify the
		    objective function.
		constraints : dict or sequence of dict, optional
		    Constraints definition.
		    Function(s) ``R**n`` in the form::
		
		        g(x) <= 0 applied as g : R^n -> R^m
		        h(x) == 0 applied as h : R^n -> R^p
		
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
		
		    .. note::
		
		       Only the COBYLA and SLSQP local minimize methods currently
		       support constraint arguments. If the ``constraints`` sequence
		       used in the local optimization problem is not defined in
		       ``minimizer_kwargs`` and a constrained method is used then the
		       global ``constraints`` will be used.
		       (Defining a ``constraints`` sequence in ``minimizer_kwargs``
		       means that ``constraints`` will not be added so if equality
		       constraints and so forth need to be added then the inequality
		       functions in ``constraints`` need to be added to
		       ``minimizer_kwargs`` too).
		
		n : int, optional
		    Number of sampling points used in the construction of the simplicial
		    complex. Note that this argument is only used for ``sobol`` and other
		    arbitrary `sampling_methods`.
		iters : int, optional
		    Number of iterations used in the construction of the simplicial complex.
		callback : callable, optional
		    Called after each iteration, as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		minimizer_kwargs : dict, optional
		    Extra keyword arguments to be passed to the minimizer
		    ``scipy.optimize.minimize`` Some important options could be:
		
		        * method : str
		            The minimization method (e.g. ``SLSQP``).
		        * args : tuple
		            Extra arguments passed to the objective function (``func``) and
		            its derivatives (Jacobian, Hessian).
		        * options : dict, optional
		            Note that by default the tolerance is specified as
		            ``{ftol: 1e-12}``
		
		options : dict, optional
		    A dictionary of solver options. Many of the options specified for the
		    global routine are also passed to the scipy.optimize.minimize routine.
		    The options that are also passed to the local routine are marked with
		    "(L)".
		
		    Stopping criteria, the algorithm will terminate if any of the specified
		    criteria are met. However, the default algorithm does not require any to
		    be specified:
		
		    * maxfev : int (L)
		        Maximum number of function evaluations in the feasible domain.
		        (Note only methods that support this option will terminate
		        the routine at precisely exact specified value. Otherwise the
		        criterion will only terminate during a global iteration)
		    * f_min
		        Specify the minimum objective function value, if it is known.
		    * f_tol : float
		        Precision goal for the value of f in the stopping
		        criterion. Note that the global routine will also
		        terminate if a sampling point in the global routine is
		        within this tolerance.
		    * maxiter : int
		        Maximum number of iterations to perform.
		    * maxev : int
		        Maximum number of sampling evaluations to perform (includes
		        searching in infeasible points).
		    * maxtime : float
		        Maximum processing runtime allowed
		    * minhgrd : int
		        Minimum homology group rank differential. The homology group of the
		        objective function is calculated (approximately) during every
		        iteration. The rank of this group has a one-to-one correspondence
		        with the number of locally convex subdomains in the objective
		        function (after adequate sampling points each of these subdomains
		        contain a unique global minimum). If the difference in the hgr is 0
		        between iterations for ``maxhgrd`` specified iterations the
		        algorithm will terminate.
		
		    Objective function knowledge:
		
		    * symmetry : bool
		        Specify True if the objective function contains symmetric variables.
		        The search space (and therefore performance) is decreased by O(n!).
		
		    * jac : bool or callable, optional
		        Jacobian (gradient) of objective function. Only for CG, BFGS,
		        Newton-CG, L-BFGS-B, TNC, SLSQP, dogleg, trust-ncg. If ``jac`` is a
		        boolean and is True, ``fun`` is assumed to return the gradient along
		        with the objective function. If False, the gradient will be
		        estimated numerically. ``jac`` can also be a callable returning the
		        gradient of the objective. In this case, it must accept the same
		        arguments as ``fun``. (Passed to `scipy.optimize.minmize` automatically)
		
		    * hess, hessp : callable, optional
		        Hessian (matrix of second-order derivatives) of objective function
		        or Hessian of objective function times an arbitrary vector p.
		        Only for Newton-CG, dogleg, trust-ncg. Only one of ``hessp`` or
		        ``hess`` needs to be given. If ``hess`` is provided, then
		        ``hessp`` will be ignored. If neither ``hess`` nor ``hessp`` is
		        provided, then the Hessian product will be approximated using
		        finite differences on ``jac``. ``hessp`` must compute the Hessian
		        times an arbitrary vector. (Passed to `scipy.optimize.minmize`
		        automatically)
		
		    Algorithm settings:
		
		    * minimize_every_iter : bool
		        If True then promising global sampling points will be passed to a
		        local minimisation routine every iteration. If False then only the
		        final minimiser pool will be run. Defaults to False.
		    * local_iter : int
		        Only evaluate a few of the best minimiser pool candidates every
		        iteration. If False all potential points are passed to the local
		        minimisation routine.
		    * infty_constraints: bool
		        If True then any sampling points generated which are outside will
		        the feasible domain will be saved and given an objective function
		        value of ``inf``. If False then these points will be discarded.
		        Using this functionality could lead to higher performance with
		        respect to function evaluations before the global minimum is found,
		        specifying False will use less memory at the cost of a slight
		        decrease in performance. Defaults to True.
		
		    Feedback:
		
		    * disp : bool (L)
		        Set to True to print convergence messages.
		
		sampling_method : str or function, optional
		    Current built in sampling method options are ``sobol`` and
		    ``simplicial``. The default ``simplicial`` uses less memory and provides
		    the theoretical guarantee of convergence to the global minimum in finite
		    time. The ``sobol`` method is faster in terms of sampling point
		    generation at the cost of higher memory resources and the loss of
		    guaranteed convergence. It is more appropriate for most "easier"
		    problems where the convergence is relatively fast.
		    User defined sampling functions must accept two arguments of ``n``
		    sampling points of dimension ``dim`` per call and output an array of
		    sampling points with shape `n x dim`. 
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a `OptimizeResult` object.
		    Important attributes are:
		    ``x`` the solution array corresponding to the global minimum,
		    ``fun`` the function output at the global solution,
		    ``xl`` an ordered list of local minima solutions,
		    ``funl`` the function output at the corresponding local solutions,
		    ``success`` a Boolean flag indicating if the optimizer exited
		    successfully,
		    ``message`` which describes the cause of the termination,
		    ``nfev`` the total number of objective function evaluations including
		    the sampling calls,
		    ``nlfev`` the total number of objective function evaluations
		    culminating from all local search optimisations,
		    ``nit`` number of iterations performed by the global routine.
		
		Notes
		-----
		Global optimization using simplicial homology global optimisation [1]_.
		Appropriate for solving general purpose NLP and blackbox optimisation
		problems to global optimality (low dimensional problems).
		
		In general, the optimization problems are of the form::
		
		    minimize f(x) subject to
		
		    g_i(x) >= 0,  i = 1,...,m
		    h_j(x)  = 0,  j = 1,...,p
		
		where x is a vector of one or more variables. ``f(x)`` is the objective
		function ``R^n -> R``, ``g_i(x)`` are the inequality constraints, and
		``h_j(x)`` are the equality constraints.
		
		Optionally, the lower and upper bounds for each element in x can also be
		specified using the `bounds` argument.
		
		While most of the theoretical advantages of SHGO are only proven for when
		``f(x)`` is a Lipschitz smooth function. The algorithm is also proven to
		converge to the global optimum for the more general case where ``f(x)`` is
		non-continuous, non-convex and non-smooth, if the default sampling method
		is used [1]_.
		
		The local search method may be specified using the ``minimizer_kwargs``
		parameter which is passed on to ``scipy.optimize.minimize``. By default
		the ``SLSQP`` method is used. In general it is recommended to use the
		``SLSQP`` or ``COBYLA`` local minimization if inequality constraints
		are defined for the problem since the other methods do not use constraints.
		
		The ``sobol`` method points are generated using the Sobol (1967) [2]_
		sequence. The primitive polynomials and various sets of initial direction
		numbers for generating Sobol sequences is provided by [3]_ by Frances Kuo
		and Stephen Joe. The original program sobol.cc (MIT) is available and
		described at http://web.maths.unsw.edu.au/~fkuo/sobol/ translated to
		Python 3 by Carl Sandrock 2016-03-31.
		
		References
		----------
		.. [1] Endres, SC, Sandrock, C, Focke, WW (2018) "A simplicial homology
		       algorithm for lipschitz optimisation", Journal of Global Optimization.
		.. [2] Sobol, IM (1967) "The distribution of points in a cube and the
		       approximate evaluation of integrals", USSR Comput. Math. Math. Phys.
		       7, 86-112.
		.. [3] Joe, SW and Kuo, FY (2008) "Constructing Sobol sequences with
		       better  two-dimensional projections", SIAM J. Sci. Comput. 30,
		       2635-2654.
		.. [4] Hoch, W and Schittkowski, K (1981) "Test examples for nonlinear
		       programming codes", Lecture Notes in Economics and mathematical
		       Systems, 187. Springer-Verlag, New York.
		       http://www.ai7.uni-bayreuth.de/test_problem_coll.pdf
		.. [5] Wales, DJ (2015) "Perspective: Insight into reaction coordinates and
		       dynamics from the potential energy landscape",
		       Journal of Chemical Physics, 142(13), 2015.
		
		Examples
		--------
		First consider the problem of minimizing the Rosenbrock function, `rosen`:
		
		>>> from scipy.optimize import rosen, shgo
		>>> bounds = [(0,2), (0, 2), (0, 2), (0, 2), (0, 2)]
		>>> result = shgo(rosen, bounds)
		>>> result.x, result.fun
		(array([ 1.,  1.,  1.,  1.,  1.]), 2.9203923741900809e-18)
		
		Note that bounds determine the dimensionality of the objective
		function and is therefore a required input, however you can specify
		empty bounds using ``None`` or objects like ``np.inf`` which will be
		converted to large float numbers.
		
		>>> bounds = [(None, None), ]*4
		>>> result = shgo(rosen, bounds)
		>>> result.x
		array([ 0.99999851,  0.99999704,  0.99999411,  0.9999882 ])
		
		Next we consider the Eggholder function, a problem with several local
		minima and one global minimum. We will demonstrate the use of arguments and
		the capabilities of `shgo`.
		(https://en.wikipedia.org/wiki/Test_functions_for_optimization)
		
		>>> def eggholder(x):
		...     return (-(x[1] + 47.0)
		...             * np.sin(np.sqrt(abs(x[0]/2.0 + (x[1] + 47.0))))
		...             - x[0] * np.sin(np.sqrt(abs(x[0] - (x[1] + 47.0))))
		...             )
		...
		>>> bounds = [(-512, 512), (-512, 512)]
		
		`shgo` has two built-in low discrepancy sampling sequences.  First we will
		input 30 initial sampling points of the Sobol sequence:
		
		>>> result = shgo(eggholder, bounds, n=30, sampling_method='sobol')
		>>> result.x, result.fun
		(array([ 512.        ,  404.23180542]), -959.64066272085051)
		
		`shgo` also has a return for any other local minima that was found, these
		can be called using:
		
		>>> result.xl
		array([[ 512.        ,  404.23180542],
		       [ 283.07593402, -487.12566542],
		       [-294.66820039, -462.01964031],
		       [-105.87688985,  423.15324143],
		       [-242.97923629,  274.38032063],
		       [-506.25823477,    6.3131022 ],
		       [-408.71981195, -156.10117154],
		       [ 150.23210485,  301.31378508],
		       [  91.00922754, -391.28375925],
		       [ 202.8966344 , -269.38042147],
		       [ 361.66625957, -106.96490692],
		       [-219.40615102, -244.06022436],
		       [ 151.59603137, -100.61082677]])
		
		>>> result.funl
		array([-959.64066272, -718.16745962, -704.80659592, -565.99778097,
		       -559.78685655, -557.36868733, -507.87385942, -493.9605115 ,
		       -426.48799655, -421.15571437, -419.31194957, -410.98477763,
		       -202.53912972])
		
		These results are useful in applications where there are many global minima
		and the values of other global minima are desired or where the local minima
		can provide insight into the system (for example morphologies
		in physical chemistry [5]_).
		
		If we want to find a larger number of local minima, we can increase the
		number of sampling points or the number of iterations. We'll increase the
		number of sampling points to 60 and the number of iterations from the
		default of 1 to 5. This gives us 60 x 5 = 300 initial sampling points.
		
		>>> result_2 = shgo(eggholder, bounds, n=60, iters=5, sampling_method='sobol')
		>>> len(result.xl), len(result_2.xl)
		(13, 39)
		
		Note the difference between, e.g., ``n=180, iters=1`` and ``n=60, iters=3``.
		In the first case the promising points contained in the minimiser pool
		is processed only once. In the latter case it is processed every 60 sampling
		points for a total of 3 times.
		
		To demonstrate solving problems with non-linear constraints consider the
		following example from Hock and Schittkowski problem 73 (cattle-feed) [4]_::
		
		    minimize: f = 24.55 * x_1 + 26.75 * x_2 + 39 * x_3 + 40.50 * x_4
		
		    subject to: 2.3 * x_1 + 5.6 * x_2 + 11.1 * x_3 + 1.3 * x_4 - 5     >= 0,
		
		                12 * x_1 + 11.9 * x_2 + 41.8 * x_3 + 52.1 * x_4 - 21
		                    -1.645 * sqrt(0.28 * x_1**2 + 0.19 * x_2**2 +
		                                  20.5 * x_3**2 + 0.62 * x_4**2)       >= 0,
		
		                x_1 + x_2 + x_3 + x_4 - 1                              == 0,
		
		                1 >= x_i >= 0 for all i
		
		The approximate answer given in [4]_ is::
		
		    f([0.6355216, -0.12e-11, 0.3127019, 0.05177655]) = 29.894378
		
		>>> def f(x):  # (cattle-feed)
		...     return 24.55*x[0] + 26.75*x[1] + 39*x[2] + 40.50*x[3]
		...
		>>> def g1(x):
		...     return 2.3*x[0] + 5.6*x[1] + 11.1*x[2] + 1.3*x[3] - 5  # >=0
		...
		>>> def g2(x):
		...     return (12*x[0] + 11.9*x[1] +41.8*x[2] + 52.1*x[3] - 21
		...             - 1.645 * np.sqrt(0.28*x[0]**2 + 0.19*x[1]**2
		...                             + 20.5*x[2]**2 + 0.62*x[3]**2)
		...             ) # >=0
		...
		>>> def h1(x):
		...     return x[0] + x[1] + x[2] + x[3] - 1  # == 0
		...
		>>> cons = ({'type': 'ineq', 'fun': g1},
		...         {'type': 'ineq', 'fun': g2},
		...         {'type': 'eq', 'fun': h1})
		>>> bounds = [(0, 1.0),]*4
		>>> res = shgo(f, bounds, iters=3, constraints=cons)
		>>> res
		     fun: 29.894378159142136
		    funl: array([29.89437816])
		 message: 'Optimization terminated successfully.'
		    nfev: 119
		     nit: 3
		   nlfev: 40
		   nlhev: 0
		   nljev: 5
		 success: True
		       x: array([6.35521569e-01, 1.13700270e-13, 3.12701881e-01, 5.17765506e-02])
		      xl: array([[6.35521569e-01, 1.13700270e-13, 3.12701881e-01, 5.17765506e-02]])
		
		>>> g1(res.x), g2(res.x), h1(res.x)
		(-5.0626169922907138e-14, -2.9594104944408173e-12, 0.0)
	**/
	static public function shgo(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?constraints:Dynamic, ?n:Dynamic, ?iters:Dynamic, ?callback:Dynamic, ?minimizer_kwargs:Dynamic, ?options:Dynamic, ?sampling_method:Dynamic):Dynamic;
}