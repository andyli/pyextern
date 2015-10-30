/* This file is generated, do not edit! */
package scipy.optimize._root;
@:pythonImport("scipy.optimize._root") extern class _Root_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    alpha : float, optional
		        Initial guess for the Jacobian is (-1/alpha).
		    M : float, optional
		        Number of previous vectors to retain. Defaults to 5.
		    w0 : float, optional
		        Regularization parameter for numerical stability.
		        Compared to unity, good values of the order of 0.01.
	**/
	static public function _root_anderson_doc():Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		        alpha : float, optional
		            Initial guess for the Jacobian is (-1/alpha).
		        reduction_method : str or tuple, optional
		            Method used in ensuring that the rank of the Broyden
		            matrix stays low. Can either be a string giving the
		            name of the method, or a tuple of the form ``(method,
		            param1, param2, ...)`` that gives the name of the
		            method and values for additional parameters.
		
		            Methods available:
		                - ``restart``: drop all matrix columns. Has no
		                    extra parameters.
		                - ``simple``: drop oldest matrix column. Has no
		                    extra parameters.
		                - ``svd``: keep only the most significant SVD
		                    components.
		                  Extra parameters:
		                      - ``to_retain``: number of SVD components to
		                          retain when rank reduction is done.
		                          Default is ``max_rank - 2``.
		        max_rank : int, optional
		            Maximum rank for the Broyden matrix.
		            Default is infinity (ie., no rank reduction).
	**/
	static public function _root_broyden1_doc():Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    alpha : float, optional
		        Initial guess for the Jacobian is (-1/alpha).
		    reduction_method : str or tuple, optional
		        Method used in ensuring that the rank of the Broyden
		        matrix stays low. Can either be a string giving the
		        name of the method, or a tuple of the form ``(method,
		        param1, param2, ...)`` that gives the name of the
		        method and values for additional parameters.
		
		        Methods available:
		            - ``restart``: drop all matrix columns. Has no
		                extra parameters.
		            - ``simple``: drop oldest matrix column. Has no
		                extra parameters.
		            - ``svd``: keep only the most significant SVD
		                components.
		              Extra parameters:
		                  - ``to_retain``: number of SVD components to
		                      retain when rank reduction is done.
		                      Default is ``max_rank - 2``.
		    max_rank : int, optional
		        Maximum rank for the Broyden matrix.
		        Default is infinity (ie., no rank reduction).
	**/
	static public function _root_broyden2_doc():Dynamic;
	/**
		Solve nonlinear equation with the DF-SANE method
		
		Options
		-------
		ftol : float, optional
		    Relative norm tolerance.
		fatol : float, optional
		    Absolute norm tolerance.
		    Algorithm terminates when ``||func(x)|| < fatol + ftol ||func(x_0)||``.
		fnorm : callable, optional
		    Norm to use in the convergence check. If None, 2-norm is used.
		maxfev : int, optional
		    Maximum number of function evaluations.
		disp : bool, optional
		    Whether to print convergence process to stdout.
		eta_strategy : callable, optional
		    Choice of the ``eta_k`` parameter, which gives slack for growth
		    of ``||F||**2``.  Called as ``eta_k = eta_strategy(k, x, F)`` with
		    `k` the iteration number, `x` the current iterate and `F` the current
		    residual. Should satisfy ``eta_k > 0`` and ``sum(eta, k=0..inf) < inf``.
		    Default: ``||F||**2 / (1 + k)**2``.
		sigma_eps : float, optional
		    The spectral coefficient is constrained to ``sigma_eps < sigma < 1/sigma_eps``.
		    Default: 1e-10
		sigma_0 : float, optional
		    Initial spectral coefficient.
		    Default: 1.0
		M : int, optional
		    Number of iterates to include in the nonmonotonic line search.
		    Default: 10
		line_search : {'cruz', 'cheng'}
		    Type of line search to employ. 'cruz' is the original one defined in
		    [Martinez & Raydan. Math. Comp. 75, 1429 (2006)], 'cheng' is
		    a modified search defined in [Cheng & Li. IMA J. Numer. Anal. 29, 814 (2009)].
		    Default: 'cruz'
		
		References
		----------
		.. [1] "Spectral residual method without gradient information for solving
		       large-scale nonlinear systems of equations." W. La Cruz,
		       J.M. Martinez, M. Raydan. Math. Comp. **75**, 1429 (2006).
		.. [2] W. La Cruz, Opt. Meth. Software, 29, 24 (2014).
		.. [3] W. Cheng, D.-H. Li. IMA J. Numer. Anal. **29**, 814 (2009).
	**/
	static public function _root_df_sane(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?ftol:Dynamic, ?fatol:Dynamic, ?maxfev:Dynamic, ?fnorm:Dynamic, ?callback:Dynamic, ?disp:Dynamic, ?M:Dynamic, ?eta_strategy:Dynamic, ?sigma_eps:Dynamic, ?sigma_0:Dynamic, ?line_search:Dynamic, unknown_options:Dynamic):Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    alpha : float, optional
		        initial guess for the jacobian is (-1/alpha).
	**/
	static public function _root_diagbroyden_doc():Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    alpha : float, optional
		        Initial Jacobian approximation is (-1/alpha).
		    alphamax : float, optional
		        The entries of the diagonal Jacobian are kept in the range
		        ``[alpha, alphamax]``.
	**/
	static public function _root_excitingmixing_doc():Dynamic;
	/**
		Find the roots of a multivariate function using MINPACK's hybrd and
		hybrj routines (modified Powell method).
		
		Options
		-------
		col_deriv : bool
		    Specify whether the Jacobian function computes derivatives down
		    the columns (faster, because there is no transpose operation).
		xtol : float
		    The calculation will terminate if the relative error between two
		    consecutive iterates is at most `xtol`.
		maxfev : int
		    The maximum number of calls to the function. If zero, then
		    ``100*(N+1)`` is the maximum where N is the number of elements
		    in `x0`.
		band : tuple
		    If set to a two-sequence containing the number of sub- and
		    super-diagonals within the band of the Jacobi matrix, the
		    Jacobi matrix is considered banded (only for ``fprime=None``).
		eps : float
		    A suitable step length for the forward-difference
		    approximation of the Jacobian (for ``fprime=None``). If
		    `eps` is less than the machine precision, it is assumed
		    that the relative errors in the functions are of the order of
		    the machine precision.
		factor : float
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``).  Should be in the interval
		    ``(0.1, 100)``.
		diag : sequence
		    N positive entries that serve as a scale factors for the
		    variables.
	**/
	static public function _root_hybr(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?maxfev:Dynamic, ?band:Dynamic, ?eps:Dynamic, ?factor:Dynamic, ?diag:Dynamic, ?full_output:Dynamic, unknown_options:Dynamic):Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    rdiff : float, optional
		        Relative step size to use in numerical differentiation.
		    method : {'lgmres', 'gmres', 'bicgstab', 'cgs', 'minres'} or function
		        Krylov method to use to approximate the Jacobian.
		        Can be a string, or a function implementing the same
		        interface as the iterative solvers in
		        `scipy.sparse.linalg`.
		
		        The default is `scipy.sparse.linalg.lgmres`.
		    inner_M : LinearOperator or InverseJacobian
		        Preconditioner for the inner Krylov iteration.
		        Note that you can use also inverse Jacobians as (adaptive)
		        preconditioners. For example,
		
		        >>> jac = BroydenFirst()
		        >>> kjac = KrylovJacobian(inner_M=jac.inverse).
		
		        If the preconditioner has a method named 'update', it will
		        be called as ``update(x, f)`` after each nonlinear step,
		        with ``x`` giving the current point, and ``f`` the current
		        function value.
		    inner_tol, inner_maxiter, ...
		        Parameters to pass on to the "inner" Krylov solver.
		        See `scipy.sparse.linalg.gmres` for details.
		    outer_k : int, optional
		        Size of the subspace kept across LGMRES nonlinear
		        iterations.
		
		        See `scipy.sparse.linalg.lgmres` for details.
	**/
	static public function _root_krylov_doc():Dynamic;
	/**
		Solve for least squares with Levenberg-Marquardt
		
		Options
		-------
		col_deriv : bool
		    non-zero to specify that the Jacobian function computes derivatives
		    down the columns (faster, because there is no transpose operation).
		ftol : float
		    Relative error desired in the sum of squares.
		xtol : float
		    Relative error desired in the approximate solution.
		gtol : float
		    Orthogonality desired between the function vector and the columns
		    of the Jacobian.
		maxiter : int
		    The maximum number of calls to the function. If zero, then
		    100*(N+1) is the maximum where N is the number of elements in x0.
		epsfcn : float
		    A suitable step length for the forward-difference approximation of
		    the Jacobian (for Dfun=None). If epsfcn is less than the machine
		    precision, it is assumed that the relative errors in the functions
		    are of the order of the machine precision.
		factor : float
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``). Should be in interval ``(0.1, 100)``.
		diag : sequence
		    N positive entries that serve as a scale factors for the variables.
	**/
	static public function _root_leastsq(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?gtol:Dynamic, ?maxiter:Dynamic, ?eps:Dynamic, ?factor:Dynamic, ?diag:Dynamic, unknown_options:Dynamic):Dynamic;
	/**
		Options
		-------
		nit : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		disp : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, ``NoConvergence`` is raised.
		ftol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		fatol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		xtol : float, optional
		    Relative minimum step size. If omitted, not used.
		xatol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in
		    the direction given by the Jacobian approximation. Defaults to
		    'armijo'.
		jac_options : dict, optional
		    Options for the respective Jacobian approximation.
		
		    alpha : float, optional
		        initial guess for the jacobian is (-1/alpha).
	**/
	static public function _root_linearmixing_doc():Dynamic;
	static public function _root_nonlin_solve(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?_callback:Dynamic, ?_method:Dynamic, ?nit:Dynamic, ?disp:Dynamic, ?maxiter:Dynamic, ?ftol:Dynamic, ?fatol:Dynamic, ?xtol:Dynamic, ?xatol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?jac_options:Dynamic, unknown_options:Dynamic):Dynamic;
	static public function _warn_jac_unused(jac:Dynamic, method:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
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
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}