/* This file is generated, do not edit! */
package scipy.optimize._lsq;
@:pythonImport("scipy.optimize._lsq") extern class _Lsq_Module {
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
	static public var division : Dynamic;
	/**
		Solve a nonlinear least-squares problem with bounds on the variables.
		
		Given the residuals f(x) (an m-dimensional function of n variables) and
		the loss function rho(s) (a scalar function), `least_squares` finds a
		local minimum of the cost function F(x)::
		
		    F(x) = 0.5 * sum(rho(f_i(x)**2), i = 1, ..., m), lb <= x <= ub
		
		The purpose of the loss function rho(s) is to reduce the influence of
		outliers on the solution.
		
		Parameters
		----------
		fun : callable
		    Function which computes the vector of residuals, with the signature
		    ``fun(x, *args, **kwargs)``, i.e., the minimization proceeds with
		    respect to its first argument. The argument ``x`` passed to this
		    function is an ndarray of shape (n,) (never a scalar, even for n=1).
		    It must return a 1-d array_like of shape (m,) or a scalar.
		x0 : array_like with shape (n,) or float
		    Initial guess on independent variables. If float, it will be treated
		    as a 1-d array with one element.
		jac : {'2-point', '3-point', 'cs', callable}, optional
		    Method of computing the Jacobian matrix (an m-by-n matrix, where
		    element (i, j) is the partial derivative of f[i] with respect to
		    x[j]). The keywords select a finite difference scheme for numerical
		    estimation. The scheme '3-point' is more accurate, but requires
		    twice as much operations compared to '2-point' (default). The
		    scheme 'cs' uses complex steps, and while potentially the most
		    accurate, it is applicable only when `fun` correctly handles
		    complex inputs and can be analytically continued to the complex
		    plane. Method 'lm' always uses the '2-point' scheme. If callable,
		    it is used as ``jac(x, *args, **kwargs)`` and should return a
		    good approximation (or the exact value) for the Jacobian as an
		    array_like (np.atleast_2d is applied), a sparse matrix or a
		    `scipy.sparse.linalg.LinearOperator`.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.
		    Each array must match the size of `x0` or be a scalar, in the latter
		    case a bound will be the same for all variables. Use ``np.inf`` with
		    an appropriate sign to disable bounds on all or some variables.
		method : {'trf', 'dogbox', 'lm'}, optional
		    Algorithm to perform minimization.
		
		        * 'trf' : Trust Region Reflective algorithm, particularly suitable
		          for large sparse problems with bounds. Generally robust method.
		        * 'dogbox' : dogleg algorithm with rectangular trust regions,
		          typical use case is small problems with bounds. Not recommended
		          for problems with rank-deficient Jacobian.
		        * 'lm' : Levenberg-Marquardt algorithm as implemented in MINPACK.
		          Doesn't handle bounds and sparse Jacobians. Usually the most
		          efficient method for small unconstrained problems.
		
		    Default is 'trf'. See Notes for more information.
		ftol : float, optional
		    Tolerance for termination by the change of the cost function.
		    Default is the square root of machine epsilon. The optimization process
		    is stopped when ``dF < ftol * F``, and there was an adequate agreement
		    between a local quadratic model and the true model in the last step.
		xtol : float, optional
		    Tolerance for termination by the change of the independent variables.
		    Default is the square root of machine epsilon. The exact condition
		    checked depends on the `method` used:
		
		        * For 'trf' and 'dogbox' : ``norm(dx) < xtol * (xtol + norm(x))``
		        * For 'lm' : ``Delta < xtol * norm(xs)``, where ``Delta`` is
		          a trust-region radius and ``xs`` is the value of ``x``
		          scaled according to `x_scale` parameter (see below).
		
		gtol : float, optional
		    Tolerance for termination by the norm of the gradient. Default is
		    the square root of machine epsilon. The exact condition depends
		    on a `method` used:
		
		        * For 'trf' : ``norm(g_scaled, ord=np.inf) < gtol``, where
		          ``g_scaled`` is the value of the gradient scaled to account for
		          the presence of the bounds [STIR]_.
		        * For 'dogbox' : ``norm(g_free, ord=np.inf) < gtol``, where
		          ``g_free`` is the gradient with respect to the variables which
		          are not in the optimal state on the boundary.
		        * For 'lm' : the maximum absolute value of the cosine of angles
		          between columns of the Jacobian and the residual vector is less
		          than `gtol`, or the residual vector is zero.
		
		x_scale : array_like or 'jac', optional
		    Characteristic scale of each variable. Setting `x_scale` is equivalent
		    to reformulating the problem in scaled variables ``xs = x / x_scale``.
		    An alternative view is that the size of a trust-region along j-th
		    dimension is proportional to ``x_scale[j]``. Improved convergence may
		    be achieved by setting `x_scale` such that a step of a given length
		    along any of the scaled variables has a similar effect on the cost
		    function. If set to 'jac', the scale is iteratively updated using the
		    inverse norms of the columns of the Jacobian matrix (as described in
		    [JJMore]_).
		loss : str or callable, optional
		    Determines the loss function. The following keyword values are allowed:
		
		        * 'linear' (default) : ``rho(z) = z``. Gives a standard
		          least-squares problem.
		        * 'soft_l1' : ``rho(z) = 2 * ((1 + z)**0.5 - 1)``. The smooth
		          approximation of l1 (absolute value) loss. Usually a good
		          choice for robust least squares.
		        * 'huber' : ``rho(z) = z if z <= 1 else z**0.5 - 1``. Works
		          similarly to 'soft_l1'.
		        * 'cauchy' : ``rho(z) = ln(1 + z)``. Severely weakens outliers
		          influence, but may cause difficulties in optimization process.
		        * 'arctan' : ``rho(z) = arctan(z)``. Limits a maximum loss on
		          a single residual, has properties similar to 'cauchy'.
		
		    If callable, it must take a 1-d ndarray ``z=f**2`` and return an
		    array_like with shape (3, m) where row 0 contains function values,
		    row 1 contains first derivatives and row 2 contains second
		    derivatives. Method 'lm' supports only 'linear' loss.
		f_scale : float, optional
		    Value of soft margin between inlier and outlier residuals, default
		    is 1.0. The loss function is evaluated as follows
		    ``rho_(f**2) = C**2 * rho(f**2 / C**2)``, where ``C`` is `f_scale`,
		    and ``rho`` is determined by `loss` parameter. This parameter has
		    no effect with ``loss='linear'``, but for other `loss` values it is
		    of crucial importance.
		max_nfev : None or int, optional
		    Maximum number of function evaluations before the termination.
		    If None (default), the value is chosen automatically:
		
		        * For 'trf' and 'dogbox' : 100 * n.
		        * For 'lm' :  100 * n if `jac` is callable and 100 * n * (n + 1)
		          otherwise (because 'lm' counts function calls in Jacobian
		          estimation).
		
		diff_step : None or array_like, optional
		    Determines the relative step size for the finite difference
		    approximation of the Jacobian. The actual step is computed as
		    ``x * diff_step``. If None (default), then `diff_step` is taken to be
		    a conventional "optimal" power of machine epsilon for the finite
		    difference scheme used [NR]_.
		tr_solver : {None, 'exact', 'lsmr'}, optional
		    Method for solving trust-region subproblems, relevant only for 'trf'
		    and 'dogbox' methods.
		
		        * 'exact' is suitable for not very large problems with dense
		          Jacobian matrices. The computational complexity per iteration is
		          comparable to a singular value decomposition of the Jacobian
		          matrix.
		        * 'lsmr' is suitable for problems with sparse and large Jacobian
		          matrices. It uses the iterative procedure
		          `scipy.sparse.linalg.lsmr` for finding a solution of a linear
		          least-squares problem and only requires matrix-vector product
		          evaluations.
		
		    If None (default) the solver is chosen based on type of Jacobian
		    returned on the first iteration.
		tr_options : dict, optional
		    Keyword options passed to trust-region solver.
		
		        * ``tr_solver='exact'``: `tr_options` are ignored.
		        * ``tr_solver='lsmr'``: options for `scipy.sparse.linalg.lsmr`.
		          Additionally  ``method='trf'`` supports  'regularize' option
		          (bool, default is True) which adds a regularization term to the
		          normal equations, which improves convergence if Jacobian is
		          rank-deficient [Byrd]_ (eq. 3.4).
		
		jac_sparsity : {None, array_like, sparse matrix}, optional
		    Defines the sparsity structure of the Jacobian matrix for finite
		    differences. If the Jacobian has only few non-zeros in *each* row,
		    providing the sparsity structure will greatly speed up the computations
		    [Curtis]_. Should have shape (m, n). A zero entry means that a
		    corresponding element in the Jacobian is identically zero. If provided,
		    forces the use of 'lsmr' trust-region solver. If None (default) then
		    dense differencing will be used. Has no effect for 'lm' method.
		verbose : {0, 1, 2}, optional
		    Level of algorithm's verbosity:
		
		        * 0 (default) : work silently.
		        * 1 : display a termination report.
		        * 2 : display progress during iterations (not supported by 'lm'
		          method).
		
		args, kwargs : tuple and dict, optional
		    Additional arguments passed to `fun` and `jac`. Both empty by default.
		    The calling signature is ``fun(x, *args, **kwargs)`` and the same for
		    `jac`.
		
		Returns
		-------
		`OptimizeResult` with the following fields defined:
		x : ndarray, shape (n,)
		    Solution found.
		cost : float
		    Value of the cost function at the solution.
		fun : ndarray, shape (m,)
		    Vector of residuals at the solution.
		jac : ndarray, sparse matrix or LinearOperator, shape (m, n)
		    Modified Jacobian matrix at the solution, in the sense that J^T J
		    is a Gauss-Newton approximation of the Hessian of the cost function.
		    The type is the same as the one used by the algorithm.
		grad : ndarray, shape (m,)
		    Gradient of the cost function at the solution.
		optimality : float
		    First-order optimality measure. In unconstrained problems, it is always
		    the uniform norm of the gradient. In constrained problems, it is the
		    quantity which was compared with `gtol` during iterations.
		active_mask : ndarray of int, shape (n,)
		    Each component shows whether a corresponding constraint is active
		    (that is, whether a variable is at the bound):
		
		        *  0 : a constraint is not active.
		        * -1 : a lower bound is active.
		        *  1 : an upper bound is active.
		
		    Might be somewhat arbitrary for 'trf' method as it generates a sequence
		    of strictly feasible iterates and `active_mask` is determined within a
		    tolerance threshold.
		nfev : int
		    Number of function evaluations done. Methods 'trf' and 'dogbox' do not
		    count function calls for numerical Jacobian approximation, as opposed
		    to 'lm' method.
		njev : int or None
		    Number of Jacobian evaluations done. If numerical Jacobian
		    approximation is used in 'lm' method, it is set to None.
		status : int
		    The reason for algorithm termination:
		
		        * -1 : improper input parameters status returned from MINPACK.
		        *  0 : the maximum number of function evaluations is exceeded.
		        *  1 : `gtol` termination condition is satisfied.
		        *  2 : `ftol` termination condition is satisfied.
		        *  3 : `xtol` termination condition is satisfied.
		        *  4 : Both `ftol` and `xtol` termination conditions are satisfied.
		
		message : str
		    Verbal description of the termination reason.
		success : bool
		    True if one of the convergence criteria is satisfied (`status` > 0).
		
		See Also
		--------
		leastsq : A legacy wrapper for the MINPACK implementation of the
		          Levenberg-Marquadt algorithm.
		curve_fit : Least-squares minimization applied to a curve fitting problem.
		
		Notes
		-----
		Method 'lm' (Levenberg-Marquardt) calls a wrapper over least-squares
		algorithms implemented in MINPACK (lmder, lmdif). It runs the
		Levenberg-Marquardt algorithm formulated as a trust-region type algorithm.
		The implementation is based on paper [JJMore]_, it is very robust and
		efficient with a lot of smart tricks. It should be your first choice
		for unconstrained problems. Note that it doesn't support bounds. Also
		it doesn't work when m < n.
		
		Method 'trf' (Trust Region Reflective) is motivated by the process of
		solving a system of equations, which constitute the first-order optimality
		condition for a bound-constrained minimization problem as formulated in
		[STIR]_. The algorithm iteratively solves trust-region subproblems
		augmented by a special diagonal quadratic term and with trust-region shape
		determined by the distance from the bounds and the direction of the
		gradient. This enhancements help to avoid making steps directly into bounds
		and efficiently explore the whole space of variables. To further improve
		convergence, the algorithm considers search directions reflected from the
		bounds. To obey theoretical requirements, the algorithm keeps iterates
		strictly feasible. With dense Jacobians trust-region subproblems are
		solved by an exact method very similar to the one described in [JJMore]_
		(and implemented in MINPACK). The difference from the MINPACK
		implementation is that a singular value decomposition of a Jacobian
		matrix is done once per iteration, instead of a QR decomposition and series
		of Givens rotation eliminations. For large sparse Jacobians a 2-d subspace
		approach of solving trust-region subproblems is used [STIR]_, [Byrd]_.
		The subspace is spanned by a scaled gradient and an approximate
		Gauss-Newton solution delivered by `scipy.sparse.linalg.lsmr`. When no
		constraints are imposed the algorithm is very similar to MINPACK and has
		generally comparable performance. The algorithm works quite robust in
		unbounded and bounded problems, thus it is chosen as a default algorithm.
		
		Method 'dogbox' operates in a trust-region framework, but considers
		rectangular trust regions as opposed to conventional ellipsoids [Voglis]_.
		The intersection of a current trust region and initial bounds is again
		rectangular, so on each iteration a quadratic minimization problem subject
		to bound constraints is solved approximately by Powell's dogleg method
		[NumOpt]_. The required Gauss-Newton step can be computed exactly for
		dense Jacobians or approximately by `scipy.sparse.linalg.lsmr` for large
		sparse Jacobians. The algorithm is likely to exhibit slow convergence when
		the rank of Jacobian is less than the number of variables. The algorithm
		often outperforms 'trf' in bounded problems with a small number of
		variables.
		
		Robust loss functions are implemented as described in [BA]_. The idea
		is to modify a residual vector and a Jacobian matrix on each iteration
		such that computed gradient and Gauss-Newton Hessian approximation match
		the true gradient and Hessian approximation of the cost function. Then
		the algorithm proceeds in a normal way, i.e. robust loss functions are
		implemented as a simple wrapper over standard least-squares algorithms.
		
		.. versionadded:: 0.17.0
		
		References
		----------
		.. [STIR] M. A. Branch, T. F. Coleman, and Y. Li, "A Subspace, Interior,
		          and Conjugate Gradient Method for Large-Scale Bound-Constrained
		          Minimization Problems," SIAM Journal on Scientific Computing,
		          Vol. 21, Number 1, pp 1-23, 1999.
		.. [NR] William H. Press et. al., "Numerical Recipes. The Art of Scientific
		        Computing. 3rd edition", Sec. 5.7.
		.. [Byrd] R. H. Byrd, R. B. Schnabel and G. A. Shultz, "Approximate
		          solution of the trust region problem by minimization over
		          two-dimensional subspaces", Math. Programming, 40, pp. 247-263,
		          1988.
		.. [Curtis] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		            sparse Jacobian matrices", Journal of the Institute of
		            Mathematics and its Applications, 13, pp. 117-120, 1974.
		.. [JJMore] J. J. More, "The Levenberg-Marquardt Algorithm: Implementation
		            and Theory," Numerical Analysis, ed. G. A. Watson, Lecture
		            Notes in Mathematics 630, Springer Verlag, pp. 105-116, 1977.
		.. [Voglis] C. Voglis and I. E. Lagaris, "A Rectangular Trust Region
		            Dogleg Approach for Unconstrained and Bound Constrained
		            Nonlinear Optimization", WSEAS International Conference on
		            Applied Mathematics, Corfu, Greece, 2004.
		.. [NumOpt] J. Nocedal and S. J. Wright, "Numerical optimization,
		            2nd edition", Chapter 4.
		.. [BA] B. Triggs et. al., "Bundle Adjustment - A Modern Synthesis",
		        Proceedings of the International Workshop on Vision Algorithms:
		        Theory and Practice, pp. 298-372, 1999.
		
		Examples
		--------
		In this example we find a minimum of the Rosenbrock function without bounds
		on independed variables.
		
		>>> def fun_rosenbrock(x):
		...     return np.array([10 * (x[1] - x[0]**2), (1 - x[0])])
		
		Notice that we only provide the vector of the residuals. The algorithm
		constructs the cost function as a sum of squares of the residuals, which
		gives the Rosenbrock function. The exact minimum is at ``x = [1.0, 1.0]``.
		
		>>> from scipy.optimize import least_squares
		>>> x0_rosenbrock = np.array([2, 2])
		>>> res_1 = least_squares(fun_rosenbrock, x0_rosenbrock)
		>>> res_1.x
		array([ 1.,  1.])
		>>> res_1.cost
		2.4651903288156619e-30
		>>> res_1.optimality
		4.4408921315878507e-14
		
		We now constrain the variables, in such a way that the previous solution
		becomes infeasible. Specifically, we require that ``x[1] >= 1.5``, and
		``x[0]`` left unconstrained. To this end, we specify the `bounds` parameter
		to `least_squares` in the form ``bounds=([-np.inf, 1.5], np.inf)``.
		
		We also provide the analytic Jacobian:
		
		>>> def jac_rosenbrock(x):
		...     return np.array([
		...         [-20 * x[0], 10],
		...         [-1, 0]])
		
		Putting this all together, we see that the new solution lies on the bound:
		
		>>> res_2 = least_squares(fun_rosenbrock, x0_rosenbrock, jac_rosenbrock,
		...                       bounds=([-np.inf, 1.5], np.inf))
		>>> res_2.x
		array([ 1.22437075,  1.5       ])
		>>> res_2.cost
		0.025213093946805685
		>>> res_2.optimality
		1.5885401433157753e-07
		
		Now we solve a system of equations (i.e., the cost function should be zero
		at a minimum) for a Broyden tridiagonal vector-valued function of 100000
		variables:
		
		>>> def fun_broyden(x):
		...     f = (3 - x) * x + 1
		...     f[1:] -= x[:-1]
		...     f[:-1] -= 2 * x[1:]
		...     return f
		
		The corresponding Jacobian matrix is sparse. We tell the algorithm to
		estimate it by finite differences and provide the sparsity structure of
		Jacobian to significantly speed up this process.
		
		>>> from scipy.sparse import lil_matrix
		>>> def sparsity_broyden(n):
		...     sparsity = lil_matrix((n, n), dtype=int)
		...     i = np.arange(n)
		...     sparsity[i, i] = 1
		...     i = np.arange(1, n)
		...     sparsity[i, i - 1] = 1
		...     i = np.arange(n - 1)
		...     sparsity[i, i + 1] = 1
		...     return sparsity
		...
		>>> n = 100000
		>>> x0_broyden = -np.ones(n)
		...
		>>> res_3 = least_squares(fun_broyden, x0_broyden,
		...                       jac_sparsity=sparsity_broyden(n))
		>>> res_3.cost
		4.5687161966109073e-23
		>>> res_3.optimality
		1.1650454296851518e-11
		
		Let's also solve a curve fitting problem using robust loss function to
		take care of outliers in the data. Define the model function as
		``y = a + b * exp(c * t)``, where t is a predictor variable, y is an
		observation and a, b, c are parameters to estimate.
		
		First, define the function which generates the data with noise and
		outliers, define the model parameters, and generate data:
		
		>>> def gen_data(t, a, b, c, noise=0, n_outliers=0, random_state=0):
		...     y = a + b * np.exp(t * c)
		...
		...     rnd = np.random.RandomState(random_state)
		...     error = noise * rnd.randn(t.size)
		...     outliers = rnd.randint(0, t.size, n_outliers)
		...     error[outliers] *= 10
		...
		...     return y + error
		...
		>>> a = 0.5
		>>> b = 2.0
		>>> c = -1
		>>> t_min = 0
		>>> t_max = 10
		>>> n_points = 15
		...
		>>> t_train = np.linspace(t_min, t_max, n_points)
		>>> y_train = gen_data(t_train, a, b, c, noise=0.1, n_outliers=3)
		
		Define function for computing residuals and initial estimate of
		parameters.
		
		>>> def fun(x, t, y):
		...     return x[0] + x[1] * np.exp(x[2] * t) - y
		...
		>>> x0 = np.array([1.0, 1.0, 0.0])
		
		Compute a standard least-squares solution:
		
		>>> res_lsq = least_squares(fun, x0, args=(t_train, y_train))
		
		Now compute two solutions with two different robust loss functions. The
		parameter `f_scale` is set to 0.1, meaning that inlier residuals should
		not significantly exceed 0.1 (the noise level used).
		
		>>> res_soft_l1 = least_squares(fun, x0, loss='soft_l1', f_scale=0.1,
		...                             args=(t_train, y_train))
		>>> res_log = least_squares(fun, x0, loss='cauchy', f_scale=0.1,
		...                         args=(t_train, y_train))
		
		And finally plot all the curves. We see that by selecting an appropriate
		`loss`  we can get estimates close to optimal even in the presence of
		strong outliers. But keep in mind that generally it is recommended to try
		'soft_l1' or 'huber' losses first (if at all necessary) as the other two
		options may cause difficulties in optimization process.
		
		>>> t_test = np.linspace(t_min, t_max, n_points * 10)
		>>> y_true = gen_data(t_test, a, b, c)
		>>> y_lsq = gen_data(t_test, *res_lsq.x)
		>>> y_soft_l1 = gen_data(t_test, *res_soft_l1.x)
		>>> y_log = gen_data(t_test, *res_log.x)
		...
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t_train, y_train, 'o')
		>>> plt.plot(t_test, y_true, 'k', linewidth=2, label='true')
		>>> plt.plot(t_test, y_lsq, label='linear loss')
		>>> plt.plot(t_test, y_soft_l1, label='soft_l1 loss')
		>>> plt.plot(t_test, y_log, label='cauchy loss')
		>>> plt.xlabel("t")
		>>> plt.ylabel("y")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function least_squares(fun:Dynamic, x0:Dynamic, ?jac:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?x_scale:Dynamic, ?loss:Dynamic, ?f_scale:Dynamic, ?diff_step:Dynamic, ?tr_solver:Dynamic, ?tr_options:Dynamic, ?jac_sparsity:Dynamic, ?max_nfev:Dynamic, ?verbose:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Float;
	/**
		Solve a linear least-squares problem with bounds on the variables.
		
		`lsq_linear` finds a minimum of the cost function 0.5 * ||A x - b||**2,
		such that lb <= x <= ub. Where A is an m-by-n design matrix and b is a
		target vector with m elements.
		
		Parameters
		----------
		A : array_like, sparse matrix of LinearOperator, shape (m, n)
		    Design matrix. Can be `scipy.sparse.linalg.LinearOperator`.
		b : array_like, shape (m,)
		    Target vector.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.
		    Each array must have shape (n,) or be a scalar, in the latter
		    case a bound will be the same for all variables. Use ``np.inf`` with
		    an appropriate sign to disable bounds on all or some variables.
		method : 'trf' or 'bvls', optional
		    Method to perform minimization.
		
		        * 'trf' : Trust Region Reflective algorithm adapted for a linear
		          least-squares problem. This is an interior-point-like method
		          and the required number of iterations is weakly correlated with
		          the number of variables.
		        * 'bvls' : Bounded-Variable Least-Squares algorithm. This is
		          an active set method, which requires the number iterations
		          comparable to the number of variables. Does not support sparse
		          matrices.
		
		tol : float, optional
		    Tolerance parameter. The algorithm terminates if the relative change
		    of the cost function is less than `tol` on the last iteration.
		    Additionally the first-order optimality measure is considered:
		
		        * ``method='trf'`` terminates if the uniform norm of the gradient,
		          scaled to account for the presence of the bounds, is less than
		          `tol`.
		        * ``method='bvls'`` terminates if Karush-Kuhn-Tucker conditions
		          are violated by less than `tol`.
		
		lsq_solver : {None, 'exact', 'lsmr'}, optional
		    Method of solving unbounded least-squares problems throughout
		    iterations:
		
		        * 'exact' : Use dense QR or SVD decomposition approach. Can't be
		          used when `A` is sparse or LinearOperator.
		        * 'lsmr' : Use `scipy.sparse.linalg.lsmr` iterative procedure
		          which requires only matrix-vector product evaluations. Can't
		          be used with ``method='bvls'``.
		
		    If None (default) the solver is chosen based on type of `A`.
		lsmr_tol : None, float or 'auto', optional
		    Tolerance parameters 'atol' and 'btol' for 'lsmr' solver. If None
		    (default), it is set to ``1e-2 * tol``. If 'auto', the tolerance will
		    be adjusted based on the optimality of the current iterate. It can
		    speed up the optimization process, but not always reliable.
		max_iter : None or int, optional
		    Maximum number of iterations before termination. If None (default), it
		    is set to 100 for ``method='trf'`` or to the number of variables for
		    ``method='bvls'`` (not counting iterations for 'bvls' initialization).
		verbose : {0, 1, 2}, optional
		    Level of algorithm's verbosity:
		
		        * 0 : work silently (default).
		        * 1 : display a termination report.
		        * 2 : display progress during iterations.
		
		Returns
		-------
		OptimizeResult with the following fields defined:
		x : ndarray, shape (n,)
		    Solution found.
		cost : float
		    Value of the cost function at the solution.
		fun : ndarray, shape (m,)
		    Vector of residuals at the solution.
		optimality : float
		    First-order optimality measure. The exact meaning depends on `method`,
		    refer to the description of `tol` parameter.
		active_mask : ndarray of int, shape (n,)
		    Each component shows whether a corresponding constraint is active
		    (that is, whether a variable is at the bound):
		
		        *  0 : a constraint is not active.
		        * -1 : a lower bound is active.
		        *  1 : an upper bound is active.
		
		    Somewhat arbitrary because it is determined within a tolerance
		    threshold.
		nit : int
		    Number of iterations. Zero if the unconstrained solution is optimal.
		status : int
		    Reason for algorithm termination:
		
		        * -1 : the algorithm was not able to make progress on the last
		          iteration.
		        *  0 : the maximum number of iterations is exceeded.
		        *  1 : the first-order optimality measure is less than `tol`.
		        *  2 : the relative change of the cost function is less than `tol`.
		        *  3 : the unconstrained solution is optimal.
		
		message : str
		    Verbal description of the termination reason.
		success : bool
		    True if one of the convergence criteria is satisfied (`status` > 0).
		
		See Also
		--------
		nnls : Linear least squares with non-negativity constraint.
		least_squares : Nonlinear least squares with bounds on the variables.                    
		
		Notes
		-----
		The algorithm first computes the unconstrained least-squares solution by
		`numpy.linalg.lstsq` or `scipy.sparse.linalg.lsmr` depending on
		`lsq_solver`. This solution is returned as optimal if it lies within the
		bounds.
		
		Method 'trf' runs the adaptation of the algorithm described in [STIR]_ for
		a linear least-squares problem. The iterations are essentially the same as
		in the nonlinear least-squares algorithm, but as the quadratic function
		model is always accurate, we don't need to track or modify the radius of
		a trust region. The line search (backtracking) is used as a safety net
		when a selected step does not decrease the cost function. Read more
		detailed description of the algorithm in `scipy.optimize.least_squares`.
		
		Method 'bvls' runs a Python implementation of the algorithm described in
		[BVLS]_. The algorithm maintains active and free sets of variables, on
		each iteration chooses a new variable to move from the active set to the
		free set and then solves the unconstrained least-squares problem on free
		variables. This algorithm is guaranteed to give an accurate solution
		eventually, but may require up to n iterations for a problem with n
		variables. Additionally, an ad-hoc initialization procedure is
		implemented, that determines which variables to set free or active
		initially. It takes some number of iterations before actual BVLS starts,
		but can significantly reduce the number of further iterations.
		
		References
		----------
		.. [STIR] M. A. Branch, T. F. Coleman, and Y. Li, "A Subspace, Interior,
		          and Conjugate Gradient Method for Large-Scale Bound-Constrained
		          Minimization Problems," SIAM Journal on Scientific Computing,
		          Vol. 21, Number 1, pp 1-23, 1999.
		.. [BVLS] P. B. Start and R. L. Parker, "Bounded-Variable Least-Squares:
		          an Algorithm and Applications", Computational Statistics, 10,
		          129-141, 1995.
		
		Examples
		--------
		In this example a problem with a large sparse matrix and bounds on the
		variables is solved.
		
		>>> from scipy.sparse import rand
		>>> from scipy.optimize import lsq_linear
		...
		>>> np.random.seed(0)
		...
		>>> m = 20000
		>>> n = 10000
		...
		>>> A = rand(m, n, density=1e-4)
		>>> b = np.random.randn(m)
		...
		>>> lb = np.random.randn(n)
		>>> ub = lb + 1
		...
		>>> res = lsq_linear(A, b, bounds=(lb, ub), lsmr_tol='auto', verbose=1)
		# may vary
		The relative change of the cost function is less than `tol`.
		Number of iterations: 16, initial cost: 1.5039e+04,final cost 1.1112e+04, first-order optimality 4.66e-08.
	**/
	static public function lsq_linear(A:Dynamic, b:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?tol:Dynamic, ?lsq_solver:Dynamic, ?lsmr_tol:Dynamic, ?max_iter:Dynamic, ?verbose:Dynamic):Float;
	static public var print_function : Dynamic;
}