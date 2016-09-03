/* This file is generated, do not edit! */
package scipy.integrate._bvp;
@:pythonImport("scipy.integrate._bvp") extern class _Bvp_Module {
	static public var EPS : Dynamic;
	static public var TERMINATION_MESSAGES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Evaluate collocation residuals.
		
		This function lies in the core of the method. The solution is sought
		as a cubic C1 continuous spline with derivatives matching the ODE rhs
		at given nodes `x`. Collocation conditions are formed from the equality
		of the spline derivatives and rhs of the ODE system in the middle points
		between nodes.
		
		Such method is classified to Lobbato IIIA family in ODE literature.
		Refer to [1]_ for the formula and some discussion.
		
		Returns
		-------
		col_res : ndarray, shape (n, m - 1)
		    Collocation residuals at the middle points of the mesh intervals.
		y_middle : ndarray, shape (n, m - 1)
		    Values of the cubic spline evaluated at the middle points of the mesh
		    intervals.
		f : ndarray, shape (n, m)
		    RHS of the ODE system evaluated at the mesh nodes.
		f_middle : ndarray, shape (n, m - 1)
		    RHS of the ODE system evaluated at the middle points of the mesh
		    intervals (and using `y_middle`).
		
		References
		----------
		.. [1] J. Kierzenka, L. F. Shampine, "A BVP Solver Based on Residual
		       Control and the Maltab PSE", ACM Trans. Math. Softw., Vol. 27,
		       Number 3, pp. 299-316, 2001.
	**/
	static public function collocation_fun(fun:Dynamic, y:Dynamic, p:Dynamic, x:Dynamic, h:Dynamic):Dynamic;
	/**
		Compute indices for the collocation system Jacobian construction.
		
		See `construct_global_jac` for the explanation.
	**/
	static public function compute_jac_indices(n:Dynamic, m:Dynamic, k:Dynamic):Dynamic;
	/**
		Construct the Jacobian of the collocation system.
		
		There are n * m + k functions: m - 1 collocations residuals, each
		containing n components, followed by n + k boundary condition residuals.
		
		There are n * m + k variables: m vectors of y, each containing n
		components, followed by k values of vector p.
		
		For example, let m = 4, n = 2 and k = 1, then the Jacobian will have
		the following sparsity structure:
		
		    1 1 2 2 0 0 0 0  5
		    1 1 2 2 0 0 0 0  5
		    0 0 1 1 2 2 0 0  5
		    0 0 1 1 2 2 0 0  5
		    0 0 0 0 1 1 2 2  5
		    0 0 0 0 1 1 2 2  5
		
		    3 3 0 0 0 0 4 4  6
		    3 3 0 0 0 0 4 4  6
		    3 3 0 0 0 0 4 4  6
		
		Zeros denote identically zero values, other values denote different kinds
		of blocks in the matrix (see below). The blank row indicates the separation
		of collocation residuals from boundary conditions. And the blank column
		indicates the separation of y values from p values.
		
		Refer to [1]_  (p. 306) for the formula of n x n blocks for derivatives
		of collocation residuals with respect to y.
		
		Parameters
		----------
		n : int
		    Number of equations in the ODE system.
		m : int
		    Number of nodes in the mesh.
		k : int
		    Number of the unknown parameters.
		i_jac, j_jac : ndarray
		    Row and column indices returned by `compute_jac_indices`. They
		    represent different blocks in the Jacobian matrix in the following
		    order (see the scheme above):
		
		        * 1: m - 1 diagonal n x n blocks for the collocation residuals.
		        * 2: m - 1 off-diagonal n x n blocks for the collocation residuals.
		        * 3 : (n + k) x n block for the dependency of the boundary
		          conditions on ya.
		        * 4: (n + k) x n block for the dependency of the boundary
		          conditions on yb.
		        * 5: (m - 1) * n x k block for the dependency of the collocation
		          residuals on p.
		        * 6: (n + k) x k block for the dependency of the boundary
		          conditions on p.
		
		df_dy : ndarray, shape (n, n, m)
		    Jacobian of f with respect to y computed at the mesh nodes.
		df_dy_middle : ndarray, shape (n, n, m - 1)
		    Jacobian of f with respect to y computed at the middle between the
		    mesh nodes.
		df_dp : ndarray with shape (n, k, m) or None
		    Jacobian of f with respect to p computed at the mesh nodes.
		df_dp_middle: ndarray with shape (n, k, m - 1) or None
		    Jacobian of f with respect to p computed at the middle between the
		    mesh nodes.
		dbc_dya, dbc_dyb : ndarray, shape (n, n)
		    Jacobian of bc with respect to ya and yb.
		dbc_dp: ndarray with shape (n, k) or None
		    Jacobian of bc with respect to p.
		
		Returns
		-------
		J : csc_matrix, shape (n * m + k, n * m + k)
		    Jacobian of the collocation system in a sparse form.
		
		References
		----------
		.. [1] J. Kierzenka, L. F. Shampine, "A BVP Solver Based on Residual
		   Control and the Maltab PSE", ACM Trans. Math. Softw., Vol. 27,
		   Number 3, pp. 299-316, 2001.
	**/
	static public function construct_global_jac(n:Dynamic, m:Dynamic, k:Dynamic, i_jac:Dynamic, j_jac:Dynamic, h:Dynamic, df_dy:Dynamic, df_dy_middle:Dynamic, df_dp:Dynamic, df_dp_middle:Dynamic, dbc_dya:Dynamic, dbc_dyb:Dynamic, dbc_dp:Dynamic):Dynamic;
	/**
		Create a cubic spline given values and derivatives.
		
		Formulas for the coefficients are taken from interpolate.CubicSpline.
		
		Returns
		-------
		sol : PPoly
		    Constructed spline as a PPoly instance.
	**/
	static public function create_spline(y:Dynamic, yp:Dynamic, x:Dynamic, h:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Estimate derivatives of boundary conditions with forward differences.
		
		Returns
		-------
		dbc_dya : ndarray, shape (n + k, n)
		    Derivatives with respect to ya. An element (i, j) corresponds to
		    d bc_i / d ya_j.
		dbc_dyb : ndarray, shape (n + k, n)
		    Derivatives with respect to yb. An element (i, j) corresponds to
		    d bc_i / d ya_j.
		dbc_dp : ndarray with shape (n + k, k) or None
		    Derivatives with respect to p. An element (i, j) corresponds to
		    d bc_i / d p_j. If `p` is empty, None is returned.
	**/
	static public function estimate_bc_jac(bc:Dynamic, ya:Dynamic, yb:Dynamic, p:Dynamic, ?bc0:Dynamic):Dynamic;
	/**
		Estimate derivatives of an ODE system rhs with forward differences.
		
		Returns
		-------
		df_dy : ndarray, shape (n, n, m)
		    Derivatives with respect to y. An element (i, j, q) corresponds to
		    d f_i(x_q, y_q) / d (y_q)_j.
		df_dp : ndarray with shape (n, k, m) or None
		    Derivatives with respect to p. An element (i, j, q) corresponds to
		    d f_i(x_q, y_q, p) / d p_j. If `p` is empty, None is returned.
	**/
	static public function estimate_fun_jac(fun:Dynamic, x:Dynamic, y:Dynamic, p:Dynamic, ?f0:Dynamic):Dynamic;
	/**
		Estimate rms values of collocation residuals using Lobatto quadrature.
		
		The residuals are defined as the difference between the derivatives of
		our solution and rhs of the ODE system. We use relative residuals, i.e.
		normalized by 1 + np.abs(f). RMS values are computed as sqrt from the
		normalized integrals of the squared relative residuals over each interval.
		Integrals are estimated using 5-point Lobatto quadrature [1]_, we use the
		fact that residuals at the mesh nodes are identically zero.
		
		In [2] they don't normalize integrals by interval lengths, which gives
		a higher rate of convergence of the residuals by the factor of h**0.5.
		I chose to do such normalization for an ease of interpretation of return
		values as RMS estimates.
		
		Returns
		-------
		rms_res : ndarray, shape (m - 1,)
		    Estimated rms values of the relative residuals over each interval.
		
		References
		----------
		.. [1] http://mathworld.wolfram.com/LobattoQuadrature.html
		.. [2] J. Kierzenka, L. F. Shampine, "A BVP Solver Based on Residual
		   Control and the Maltab PSE", ACM Trans. Math. Softw., Vol. 27,
		   Number 3, pp. 299-316, 2001.
	**/
	static public function estimate_rms_residuals(fun:Dynamic, sol:Dynamic, x:Dynamic, h:Dynamic, p:Dynamic, r_middle:Dynamic, f_middle:Dynamic):Dynamic;
	/**
		Insert nodes into a mesh.
		
		Nodes removal logic is not established, its impact on the solver is
		presumably negligible. So only insertion is done in this function.
		
		Parameters
		----------
		x : ndarray, shape (m,)
		    Mesh nodes.
		insert_1 : ndarray
		    Intervals to each insert 1 new node in the middle.
		insert_2 : ndarray
		    Intervals to each insert 2 new nodes, such that divide an interval
		    into 3 equal parts.
		
		Returns
		-------
		x_new : ndarray
		    New mesh nodes.
		
		Notes
		-----
		`insert_1` and `insert_2` should not have common values.
	**/
	static public function modify_mesh(x:Dynamic, insert_1:Dynamic, insert_2:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		nan
		>>> LA.norm(b, -2)
		1.8570331885190563e-016
		>>> LA.norm(a, 3)
		5.8480354764257312
		>>> LA.norm(a, -3)
		nan
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate the generalized inverse of a matrix using its
		singular-value decomposition (SVD) and including all
		*large* singular values.
		
		Parameters
		----------
		a : (M, N) array_like
		  Matrix to be pseudo-inverted.
		rcond : float
		  Cutoff for small singular values.
		  Singular values smaller (in modulus) than
		  `rcond` * largest_singular_value (again, in modulus)
		  are set to zero.
		
		Returns
		-------
		B : (N, M) ndarray
		  The pseudo-inverse of `a`. If `a` is a `matrix` instance, then so
		  is `B`.
		
		Raises
		------
		LinAlgError
		  If the SVD computation does not converge.
		
		Notes
		-----
		The pseudo-inverse of a matrix A, denoted :math:`A^+`, is
		defined as: "the matrix that 'solves' [the least-squares problem]
		:math:`Ax = b`," i.e., if :math:`\bar{x}` is said solution, then
		:math:`A^+` is that matrix such that :math:`\bar{x} = A^+b`.
		
		It can be shown that if :math:`Q_1 \Sigma Q_2^T = A` is the singular
		value decomposition of A, then
		:math:`A^+ = Q_2 \Sigma^+ Q_1^T`, where :math:`Q_{1,2}` are
		orthogonal matrices, :math:`\Sigma` is a diagonal matrix consisting
		of A's so-called singular values, (followed, typically, by
		zeros), and then :math:`\Sigma^+` is simply the diagonal matrix
		consisting of the reciprocals of A's singular values
		(again, followed by zeros). [1]_
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pp. 139-142.
		
		Examples
		--------
		The following example checks that ``a * a+ * a == a`` and
		``a+ * a * a+ == a+``:
		
		>>> a = np.random.randn(9, 6)
		>>> B = np.linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Create the function and the Jacobian for the collocation system.
	**/
	static public function prepare_sys(n:Dynamic, m:Dynamic, k:Dynamic, fun:Dynamic, bc:Dynamic, fun_jac:Dynamic, bc_jac:Dynamic, x:Dynamic, h:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function print_iteration_header():Dynamic;
	static public function print_iteration_progress(iteration:Dynamic, residual:Dynamic, total_nodes:Dynamic, nodes_added:Dynamic):Dynamic;
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
		Solve the nonlinear collocation system by a Newton method.
		
		This is a simple Newton method with a backtracking line search. As
		advised in [1]_, an affine-invariant criterion function F = ||J^-1 r||^2
		is used, where J is the Jacobian matrix at the current iteration and r is
		the vector or collocation residuals (values of the system lhs).
		
		The method alters between full Newton iterations and the fixed-Jacobian
		iterations based
		
		There are other tricks proposed in [1]_, but they are not used as they
		don't seem to improve anything significantly, and even break the
		convergence on some test problems I tried.
		
		All important parameters of the algorithm are defined inside the function.
		
		Parameters
		----------
		n : int
		    Number of equations in the ODE system.
		m : int
		    Number of nodes in the mesh.
		h : ndarray, shape (m-1,)
		    Mesh intervals.
		col_fun : callable
		    Function computing collocation residuals.
		bc : callable
		    Function computing boundary condition residuals.
		jac : callable
		    Function computing the Jacobian of the whole system (including
		    collocation and boundary condition residuals). It is supposed to
		    return csc_matrix.
		y : ndarray, shape (n, m)
		    Initial guess for the function values at the mesh nodes.
		p : ndarray, shape (k,)
		    Initial guess for the unknown parameters.
		B : ndarray with shape (n, n) or None
		    Matrix to force the S y(a) = 0 condition for a problems with the
		    singular term. If None, the singular term is assumed to be absent.
		bvp_tol : float
		    Tolerance to which we want to solve a BVP.
		
		Returns
		-------
		y : ndarray, shape (n, m)
		    Final iterate for the function values at the mesh nodes.
		p : ndarray, shape (k,)
		    Final iterate for the unknown parameters.
		singular : bool
		    True, if the LU decomposition failed because Jacobian turned out
		    to be singular.
		
		References
		----------
		.. [1]  U. Ascher, R. Mattheij and R. Russell "Numerical Solution of
		   Boundary Value Problems for Ordinary Differential Equations"
	**/
	static public function solve_newton(n:Dynamic, m:Dynamic, h:Dynamic, col_fun:Dynamic, bc:Dynamic, jac:Dynamic, y:Dynamic, p:Dynamic, B:Dynamic, bvp_tol:Dynamic):Dynamic;
	/**
		Compute the LU decomposition of a sparse, square matrix.
		
		Parameters
		----------
		A : sparse matrix
		    Sparse matrix to factorize. Should be in CSR or CSC format.
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		
		diag_pivot_thresh : float, optional
		    Threshold used for a diagonal entry to be an acceptable pivot.
		    See SuperLU user's guide for details [1]_
		drop_tol : float, optional
		    (deprecated) No effect.
		relax : int, optional
		    Expert option for customizing the degree of relaxing supernodes.
		    See SuperLU user's guide for details [1]_
		panel_size : int, optional
		    Expert option for customizing the panel size.
		    See SuperLU user's guide for details [1]_
		options : dict, optional
		    Dictionary containing additional expert options to SuperLU.
		    See SuperLU user guide [1]_ (section 2.4 on the 'Options' argument)
		    for more details. For example, you can specify
		    ``options=dict(Equil=False, IterRefine='SINGLE'))``
		    to turn equilibration off and perform a single iterative refinement.
		
		Returns
		-------
		invA : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		spilu : incomplete LU decomposition
		
		Notes
		-----
		This function uses the SuperLU library.
		
		References
		----------
		.. [1] SuperLU http://crd.lbl.gov/~xiaoye/SuperLU/
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?drop_tol:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Stacked matrix multiply: out[i,:,:] = np.dot(a[i,:,:], b[i,:,:]).
		
		In our case a[i, :, :] and b[i, :, :] are always square.
	**/
	static public function stacked_matmul(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap functions for unified usage in the solver.
	**/
	static public function wrap_functions(fun:Dynamic, bc:Dynamic, fun_jac:Dynamic, bc_jac:Dynamic, k:Dynamic, a:Dynamic, S:Dynamic, D:Dynamic, dtype:Dynamic):Dynamic;
}