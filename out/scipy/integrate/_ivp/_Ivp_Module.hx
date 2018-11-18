/* This file is generated, do not edit! */
package scipy.integrate._ivp;
@:pythonImport("scipy.integrate._ivp") extern class _Ivp_Module {
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
	static public var print_function : Dynamic;
	/**
		Solve an initial value problem for a system of ODEs.
		
		This function numerically integrates a system of ordinary differential
		equations given an initial value::
		
		    dy / dt = f(t, y)
		    y(t0) = y0
		
		Here t is a one-dimensional independent variable (time), y(t) is an
		n-dimensional vector-valued function (state), and an n-dimensional
		vector-valued function f(t, y) determines the differential equations.
		The goal is to find y(t) approximately satisfying the differential
		equations, given an initial value y(t0)=y0.
		
		Some of the solvers support integration in the complex domain, but note that
		for stiff ODE solvers, the right-hand side must be complex-differentiable
		(satisfy Cauchy-Riemann equations [11]_). To solve a problem in the complex
		domain, pass y0 with a complex data type. Another option is always to
		rewrite your problem for real and imaginary parts separately.
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system. The calling signature is ``fun(t, y)``.
		    Here ``t`` is a scalar, and there are two options for the ndarray ``y``:
		    It can either have shape (n,); then ``fun`` must return array_like with
		    shape (n,). Alternatively it can have shape (n, k); then ``fun``
		    must return an array_like with shape (n, k), i.e. each column
		    corresponds to a single column in ``y``. The choice between the two
		    options is determined by `vectorized` argument (see below). The
		    vectorized implementation allows a faster approximation of the Jacobian
		    by finite differences (required for stiff solvers).
		t_span : 2-tuple of floats
		    Interval of integration (t0, tf). The solver starts with t=t0 and
		    integrates until it reaches t=tf.
		y0 : array_like, shape (n,)
		    Initial state. For problems in the complex domain, pass `y0` with a
		    complex data type (even if the initial guess is purely real).
		method : string or `OdeSolver`, optional
		    Integration method to use:
		
		        * 'RK45' (default): Explicit Runge-Kutta method of order 5(4) [1]_.
		          The error is controlled assuming accuracy of the fourth-order
		          method, but steps are taken using the fifth-order accurate formula
		          (local extrapolation is done). A quartic interpolation polynomial
		          is used for the dense output [2]_. Can be applied in the complex domain.
		        * 'RK23': Explicit Runge-Kutta method of order 3(2) [3]_. The error
		          is controlled assuming accuracy of the second-order method, but
		          steps are taken using the third-order accurate formula (local
		          extrapolation is done). A cubic Hermite polynomial is used for the
		          dense output. Can be applied in the complex domain.
		        * 'Radau': Implicit Runge-Kutta method of the Radau IIA family of
		          order 5 [4]_. The error is controlled with a third-order accurate
		          embedded formula. A cubic polynomial which satisfies the
		          collocation conditions is used for the dense output.
		        * 'BDF': Implicit multi-step variable-order (1 to 5) method based
		          on a backward differentiation formula for the derivative
		          approximation [5]_. The implementation follows the one described
		          in [6]_. A quasi-constant step scheme is used and accuracy is
		          enhanced using the NDF modification. Can be applied in the complex
		          domain.
		        * 'LSODA': Adams/BDF method with automatic stiffness detection and
		          switching [7]_, [8]_. This is a wrapper of the Fortran solver
		          from ODEPACK.
		
		    You should use the 'RK45' or 'RK23' method for non-stiff problems and
		    'Radau' or 'BDF' for stiff problems [9]_. If not sure, first try to run
		    'RK45'. If needs unusually many iterations, diverges, or fails, your
		    problem is likely to be stiff and you should use 'Radau' or 'BDF'.
		    'LSODA' can also be a good universal choice, but it might be somewhat
		    less convenient to work with as it wraps old Fortran code.
		
		    You can also pass an arbitrary class derived from `OdeSolver` which
		    implements the solver.
		dense_output : bool, optional
		    Whether to compute a continuous solution. Default is False.
		t_eval : array_like or None, optional
		    Times at which to store the computed solution, must be sorted and lie
		    within `t_span`. If None (default), use points selected by the solver.
		events : callable, list of callables or None, optional
		    Types of events to track. Each is defined by a continuous function of
		    time and state that becomes zero value in case of an event. Each function
		    must have the signature ``event(t, y)`` and return a float. The solver will
		    find an accurate value of ``t`` at which ``event(t, y(t)) = 0`` using a
		    root-finding algorithm. Additionally each ``event`` function might have
		    the following attributes:
		
		        * terminal: bool, whether to terminate integration if this
		          event occurs. Implicitly False if not assigned.
		        * direction: float, direction of a zero crossing. If `direction`
		          is positive, `event` must go from negative to positive, and
		          vice versa if `direction` is negative. If 0, then either direction
		          will count. Implicitly 0 if not assigned.
		
		    You can assign attributes like ``event.terminal = True`` to any
		    function in Python. If None (default), events won't be tracked.
		vectorized : bool, optional
		    Whether `fun` is implemented in a vectorized fashion. Default is False.
		options
		    Options passed to a chosen solver. All options available for already
		    implemented solvers are listed below.
		max_step : float, optional
		    Maximum allowed step size. Default is np.inf, i.e. the step size is not
		    bounded and determined solely by the solver.
		rtol, atol : float and array_like, optional
		    Relative and absolute tolerances. The solver keeps the local error
		    estimates less than ``atol + rtol * abs(y)``. Here `rtol` controls a
		    relative accuracy (number of correct digits). But if a component of `y`
		    is approximately below `atol`, the error only needs to fall within
		    the same `atol` threshold, and the number of correct digits is not
		    guaranteed. If components of y have different scales, it might be
		    beneficial to set different `atol` values for different components by
		    passing array_like with shape (n,) for `atol`. Default values are
		    1e-3 for `rtol` and 1e-6 for `atol`.
		jac : {None, array_like, sparse_matrix, callable}, optional
		    Jacobian matrix of the right-hand side of the system with respect to
		    y, required by the 'Radau', 'BDF' and 'LSODA' method. The Jacobian matrix
		    has shape (n, n) and its element (i, j) is equal to ``d f_i / d y_j``.
		    There are three ways to define the Jacobian:
		
		        * If array_like or sparse_matrix, the Jacobian is assumed to
		          be constant. Not supported by 'LSODA'.
		        * If callable, the Jacobian is assumed to depend on both
		          t and y; it will be called as ``jac(t, y)`` as necessary.
		          For the 'Radau' and 'BDF' methods, the return value might be a
		          sparse matrix.
		        * If None (default), the Jacobian will be approximated by
		          finite differences.
		
		    It is generally recommended to provide the Jacobian rather than
		    relying on a finite-difference approximation.
		jac_sparsity : {None, array_like, sparse matrix}, optional
		    Defines a sparsity structure of the Jacobian matrix for a
		    finite-difference approximation. Its shape must be (n, n). This argument
		    is ignored if `jac` is not `None`. If the Jacobian has only few non-zero
		    elements in *each* row, providing the sparsity structure will greatly
		    speed up the computations [10]_. A zero entry means that a corresponding
		    element in the Jacobian is always zero. If None (default), the Jacobian
		    is assumed to be dense.
		    Not supported by 'LSODA', see `lband` and `uband` instead.
		lband, uband : int or None
		    Parameters defining the bandwidth of the Jacobian for the 'LSODA' method,
		    i.e., ``jac[i, j] != 0 only for i - lband <= j <= i + uband``. Setting
		    these requires your jac routine to return the Jacobian in the packed format:
		    the returned array must have ``n`` columns and ``uband + lband + 1``
		    rows in which Jacobian diagonals are written. Specifically
		    ``jac_packed[uband + i - j , j] = jac[i, j]``. The same format is used
		    in `scipy.linalg.solve_banded` (check for an illustration).
		    These parameters can be also used with ``jac=None`` to reduce the
		    number of Jacobian elements estimated by finite differences.
		min_step, first_step : float, optional
		    The minimum allowed step size and the initial step size respectively
		    for 'LSODA' method. By default `min_step` is zero and `first_step` is
		    selected automatically.
		
		Returns
		-------
		Bunch object with the following fields defined:
		t : ndarray, shape (n_points,)
		    Time points.
		y : ndarray, shape (n, n_points)
		    Values of the solution at `t`.
		sol : `OdeSolution` or None
		    Found solution as `OdeSolution` instance; None if `dense_output` was
		    set to False.
		t_events : list of ndarray or None
		    Contains for each event type a list of arrays at which an event of
		    that type event was detected. None if `events` was None.
		nfev : int
		    Number of evaluations of the right-hand side.
		njev : int
		    Number of evaluations of the Jacobian.
		nlu : int
		    Number of LU decompositions.
		status : int
		    Reason for algorithm termination:
		
		        * -1: Integration step failed.
		        *  0: The solver successfully reached the end of `tspan`.
		        *  1: A termination event occurred.
		
		message : string
		    Human-readable description of the termination reason.
		success : bool
		    True if the solver reached the interval end or a termination event
		    occurred (``status >= 0``).
		
		References
		----------
		.. [1] J. R. Dormand, P. J. Prince, "A family of embedded Runge-Kutta
		       formulae", Journal of Computational and Applied Mathematics, Vol. 6,
		       No. 1, pp. 19-26, 1980.
		.. [2] L. W. Shampine, "Some Practical Runge-Kutta Formulas", Mathematics
		       of Computation,, Vol. 46, No. 173, pp. 135-150, 1986.
		.. [3] P. Bogacki, L.F. Shampine, "A 3(2) Pair of Runge-Kutta Formulas",
		       Appl. Math. Lett. Vol. 2, No. 4. pp. 321-325, 1989.
		.. [4] E. Hairer, G. Wanner, "Solving Ordinary Differential Equations II:
		       Stiff and Differential-Algebraic Problems", Sec. IV.8.
		.. [5] `Backward Differentiation Formula
		        <https://en.wikipedia.org/wiki/Backward_differentiation_formula>`_
		        on Wikipedia.
		.. [6] L. F. Shampine, M. W. Reichelt, "THE MATLAB ODE SUITE", SIAM J. SCI.
		       COMPUTE., Vol. 18, No. 1, pp. 1-22, January 1997.
		.. [7] A. C. Hindmarsh, "ODEPACK, A Systematized Collection of ODE
		       Solvers," IMACS Transactions on Scientific Computation, Vol 1.,
		       pp. 55-64, 1983.
		.. [8] L. Petzold, "Automatic selection of methods for solving stiff and
		       nonstiff systems of ordinary differential equations", SIAM Journal
		       on Scientific and Statistical Computing, Vol. 4, No. 1, pp. 136-148,
		       1983.
		.. [9] `Stiff equation <https://en.wikipedia.org/wiki/Stiff_equation>`_ on
		       Wikipedia.
		.. [10] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		        sparse Jacobian matrices", Journal of the Institute of Mathematics
		        and its Applications, 13, pp. 117-120, 1974.
		.. [11] `Cauchy-Riemann equations
		         <https://en.wikipedia.org/wiki/Cauchy-Riemann_equations>`_ on
		         Wikipedia.
		
		Examples
		--------
		Basic exponential decay showing automatically chosen time points.
		
		>>> from scipy.integrate import solve_ivp
		>>> def exponential_decay(t, y): return -0.5 * y
		>>> sol = solve_ivp(exponential_decay, [0, 10], [2, 4, 8])
		>>> print(sol.t)
		[  0.           0.11487653   1.26364188   3.06061781   4.85759374
		   6.65456967   8.4515456   10.        ]
		>>> print(sol.y)
		[[2.         1.88836035 1.06327177 0.43319312 0.17648948 0.0719045
		  0.02929499 0.01350938]
		 [4.         3.7767207  2.12654355 0.86638624 0.35297895 0.143809
		  0.05858998 0.02701876]
		 [8.         7.5534414  4.25308709 1.73277247 0.7059579  0.287618
		  0.11717996 0.05403753]]
		
		Specifying points where the solution is desired.
		
		>>> sol = solve_ivp(exponential_decay, [0, 10], [2, 4, 8],
		...                 t_eval=[0, 1, 2, 4, 10])
		>>> print(sol.t)
		[ 0  1  2  4 10]
		>>> print(sol.y)
		[[2.         1.21305369 0.73534021 0.27066736 0.01350938]
		 [4.         2.42610739 1.47068043 0.54133472 0.02701876]
		 [8.         4.85221478 2.94136085 1.08266944 0.05403753]]
		
		Cannon fired upward with terminal event upon impact. The ``terminal`` and
		``direction`` fields of an event are applied by monkey patching a function.
		Here ``y[0]`` is position and ``y[1]`` is velocity. The projectile starts at
		position 0 with velocity +10. Note that the integration never reaches t=100
		because the event is terminal.
		
		>>> def upward_cannon(t, y): return [y[1], -0.5]
		>>> def hit_ground(t, y): return y[1]
		>>> hit_ground.terminal = True
		>>> hit_ground.direction = -1
		>>> sol = solve_ivp(upward_cannon, [0, 100], [0, 10], events=hit_ground)
		>>> print(sol.t_events)
		[array([ 20.])]
		>>> print(sol.t)
		[0.00000000e+00 9.99900010e-05 1.09989001e-03 1.10988901e-02
		 1.11088891e-01 1.11098890e+00 1.11099890e+01 2.00000000e+01]
	**/
	static public function solve_ivp(fun:Dynamic, t_span:Dynamic, y0:Dynamic, ?method:Dynamic, ?t_eval:Dynamic, ?dense_output:Dynamic, ?events:Dynamic, ?vectorized:Dynamic, ?options:python.KwArgs<Dynamic>):Dynamic;
}