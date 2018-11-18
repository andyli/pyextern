/* This file is generated, do not edit! */
package scipy.optimize._lsq.dogbox;
@:pythonImport("scipy.optimize._lsq.dogbox") extern class Dogbox_Module {
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
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Notes
		-----
		If 'A' has no .dtype attribute, the data type is determined by calling
		:func:`LinearOperator.matvec()` - set the .dtype attribute to prevent this
		call upon the linear operator creation.
		
		Examples
		--------
		>>> from scipy.sparse.linalg import aslinearoperator
		>>> M = np.array([[1,2,3],[4,5,6]], dtype=np.int32)
		>>> aslinearoperator(M)
		<2x3 MatrixLinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	/**
		Parameterize a multivariate quadratic function along a line.
		
		The resulting univariate quadratic function is given as follows:
		::
		    f(t) = 0.5 * (s0 + s*t).T * (J.T*J + diag) * (s0 + s*t) +
		           g.T * (s0 + s*t)
		
		Parameters
		----------
		J : ndarray, sparse matrix or LinearOperator shape (m, n)
		    Jacobian matrix, affects the quadratic term.
		g : ndarray, shape (n,)
		    Gradient, defines the linear term.
		s : ndarray, shape (n,)
		    Direction vector of a line.
		diag : None or ndarray with shape (n,), optional
		    Addition diagonal part, affects the quadratic term.
		    If None, assumed to be 0.
		s0 : None or ndarray with shape (n,), optional
		    Initial point. If None, assumed to be 0.
		
		Returns
		-------
		a : float
		    Coefficient for t**2.
		b : float
		    Coefficient for t.
		c : float
		    Free term. Returned only if `s0` is provided.
	**/
	static public function build_quadratic_1d(J:Dynamic, g:Dynamic, s:Dynamic, ?diag:Dynamic, ?s0:Dynamic):Float;
	/**
		Check termination condition for nonlinear least squares.
	**/
	static public function check_termination(dF:Dynamic, F:Dynamic, dx_norm:Dynamic, x_norm:Dynamic, ratio:Dynamic, ftol:Dynamic, xtol:Dynamic):Dynamic;
	/**
		Compute gradient of the least-squares cost function.
	**/
	static public function compute_grad(J:Dynamic, f:Dynamic):Dynamic;
	/**
		Compute variables scale based on the Jacobian matrix.
	**/
	static public function compute_jac_scale(J:Dynamic, ?scale_inv_old:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dogbox(fun:Dynamic, jac:Dynamic, x0:Dynamic, f0:Dynamic, J0:Dynamic, lb:Dynamic, ub:Dynamic, ftol:Dynamic, xtol:Dynamic, gtol:Dynamic, max_nfev:Dynamic, x_scale:Dynamic, loss_function:Dynamic, tr_solver:Dynamic, tr_options:Dynamic, verbose:Dynamic):Dynamic;
	/**
		Find dogleg step in a rectangular region.
		
		Returns
		-------
		step : ndarray, shape (n,)
		    Computed dogleg step.
		bound_hits : ndarray of int, shape (n,)
		    Each component shows whether a corresponding variable hits the
		    initial bound after the step is taken:
		        *  0 - a variable doesn't hit the bound.
		        * -1 - lower bound is hit.
		        *  1 - upper bound is hit.
		tr_hit : bool
		    Whether the step hit the boundary of the trust-region.
	**/
	static public function dogleg_step(x:Dynamic, newton_step:Dynamic, g:Dynamic, a:Dynamic, b:Dynamic, tr_bounds:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Compute values of a quadratic function arising in least squares.
		
		The function is 0.5 * s.T * (J.T * J + diag) * s + g.T * s.
		
		Parameters
		----------
		J : ndarray, sparse matrix or LinearOperator, shape (m, n)
		    Jacobian matrix, affects the quadratic term.
		g : ndarray, shape (n,)
		    Gradient, defines the linear term.
		s : ndarray, shape (k, n) or (n,)
		    Array containing steps as rows.
		diag : ndarray, shape (n,), optional
		    Addition diagonal part, affects the quadratic term.
		    If None, assumed to be 0.
		
		Returns
		-------
		values : ndarray with shape (k,) or float
		    Values of the function. If `s` was 2-dimensional then ndarray is
		    returned, otherwise float is returned.
	**/
	static public function evaluate_quadratic(J:Dynamic, g:Dynamic, s:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Find intersection of trust-region bounds and initial bounds.
		
		Returns
		-------
		lb_total, ub_total : ndarray with shape of x
		    Lower and upper bounds of the intersection region.
		orig_l, orig_u : ndarray of bool with shape of x
		    True means that an original bound is taken as a corresponding bound
		    in the intersection region.
		tr_l, tr_u : ndarray of bool with shape of x
		    True means that a trust-region bound is taken as a corresponding bound
		    in the intersection region.
	**/
	static public function find_intersection(x:Dynamic, tr_bounds:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Check if a point lies within bounds.
	**/
	static public function in_bounds(x:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Iterative solver for least-squares problems.
		
		lsmr solves the system of linear equations ``Ax = b``. If the system
		is inconsistent, it solves the least-squares problem ``min ||b - Ax||_2``.
		A is a rectangular matrix of dimension m-by-n, where all cases are
		allowed: m = n, m > n, or m < n. B is a vector of length m.
		The matrix A may be dense or sparse (usually sparse).
		
		Parameters
		----------
		A : {matrix, sparse matrix, ndarray, LinearOperator}
		    Matrix A in the linear system.
		b : array_like, shape (m,)
		    Vector b in the linear system.
		damp : float
		    Damping factor for regularized least-squares. `lsmr` solves
		    the regularized least-squares problem::
		
		     min ||(b) - (  A   )x||
		         ||(0)   (damp*I) ||_2
		
		    where damp is a scalar.  If damp is None or 0, the system
		    is solved without regularization.
		atol, btol : float, optional
		    Stopping tolerances. `lsmr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, ``lsmr`` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, lsmr terminates when ``norm(A^{T} r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (say),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final x will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of A and B respectively.  For example, if the entries
		    of `A` have 7 correct digits, set atol = 1e-7. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    `lsmr` terminates if an estimate of ``cond(A)`` exceeds
		    `conlim`.  For compatible systems ``Ax = b``, conlim could be
		    as large as 1.0e+12 (say).  For least-squares problems,
		    `conlim` should be less than 1.0e+8. If `conlim` is None, the
		    default value is 1e+8.  Maximum precision can be obtained by
		    setting ``atol = btol = conlim = 0``, but the number of
		    iterations may then be excessive.
		maxiter : int, optional
		    `lsmr` terminates if the number of iterations reaches
		    `maxiter`.  The default is ``maxiter = min(m, n)``.  For
		    ill-conditioned systems, a larger value of `maxiter` may be
		    needed.
		show : bool, optional
		    Print iterations logs if ``show=True``.
		x0 : array_like, shape (n,), optional
		    Initial guess of x, if None zeros are used.
		
		    .. versionadded:: 1.0.0
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.  If x0 was given, then x=x0 is a
		                  solution.
		              = 1 means x is an approximate solution to A*x = B,
		                  according to atol and btol.
		              = 2 means x approximately solves the least-squares problem
		                  according to atol.
		              = 3 means COND(A) seems to be greater than CONLIM.
		              = 4 is the same as 1 with atol = btol = eps (machine
		                  precision)
		              = 5 is the same as 2 with atol = eps.
		              = 6 is the same as 3 with CONLIM = 1/eps.
		              = 7 means ITN reached maxiter before the other stopping
		                  conditions were satisfied.
		
		itn : int
		    Number of iterations used.
		normr : float
		    ``norm(b-Ax)``
		normar : float
		    ``norm(A^T (b - Ax))``
		norma : float
		    ``norm(A)``
		conda : float
		    Condition number of A.
		normx : float
		    ``norm(x)``
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] D. C.-L. Fong and M. A. Saunders,
		       "LSMR: An iterative algorithm for sparse least-squares problems",
		       SIAM J. Sci. Comput., vol. 33, pp. 2950-2971, 2011.
		       http://arxiv.org/abs/1006.0758
		.. [2] LSMR Software, http://web.stanford.edu/group/SOL/software/lsmr/
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import lsmr
		>>> A = csc_matrix([[1., 0.], [1., 1.], [0., 1.]], dtype=float)
		
		The first example has the trivial solution `[0, 0]`
		
		>>> b = np.array([0., 0., 0.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		0
		>>> x
		array([ 0.,  0.])
		
		The stopping code `istop=0` returned indicates that a vector of zeros was
		found as a solution. The returned solution `x` indeed contains `[0., 0.]`.
		The next example has a non-trivial solution:
		
		>>> b = np.array([1., 0., -1.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		1
		>>> x
		array([ 1., -1.])
		>>> itn
		1
		>>> normr
		4.440892098500627e-16
		
		As indicated by `istop=1`, `lsmr` found a solution obeying the tolerance
		limits. The given solution `[1., -1.]` obviously solves the equation. The
		remaining return values include information about the number of iterations
		(`itn=1`) and the remaining difference of left and right side of the solved
		equation.
		The final example demonstrates the behavior in the case where there is no
		solution for the equation:
		
		>>> b = np.array([1., 0.01, -1.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		2
		>>> x
		array([ 1.00333333, -0.99666667])
		>>> A.dot(x)-b
		array([ 0.00333333, -0.00333333,  0.00333333])
		>>> normr
		0.005773502691896255
		
		`istop` indicates that the system is inconsistent and thus `x` is rather an
		approximate solution to the corresponding least-squares problem. `normr`
		contains the minimal distance that was found.
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Compute LinearOperator to use in LSMR by dogbox algorithm.
		
		`active_set` mask is used to excluded active variables from computations
		of matrix-vector products.
	**/
	static public function lsmr_operator(Jop:Dynamic, d:Dynamic, active_set:Dynamic):Dynamic;
	/**
		Return the least-squares solution to a linear matrix equation.
		
		Solves the equation `a x = b` by computing a vector `x` that
		minimizes the Euclidean 2-norm `|| b - a x ||^2`.  The equation may
		be under-, well-, or over- determined (i.e., the number of
		linearly independent rows of `a` can be less than, equal to, or
		greater than its number of linearly independent columns).  If `a`
		is square and of full rank, then `x` (but for round-off error) is
		the "exact" solution of the equation.
		
		Parameters
		----------
		a : (M, N) array_like
		    "Coefficient" matrix.
		b : {(M,), (M, K)} array_like
		    Ordinate or "dependent variable" values. If `b` is two-dimensional,
		    the least-squares solution is calculated for each of the `K` columns
		    of `b`.
		rcond : float, optional
		    Cut-off ratio for small singular values of `a`.
		    For the purposes of rank determination, singular values are treated
		    as zero if they are smaller than `rcond` times the largest singular
		    value of `a`.
		
		    .. versionchanged:: 1.14.0
		       If not set, a FutureWarning is given. The previous default
		       of ``-1`` will use the machine precision as `rcond` parameter,
		       the new default will use the machine precision times `max(M, N)`.
		       To silence the warning and use the new default, use ``rcond=None``,
		       to keep using the old behavior, use ``rcond=-1``.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(1,), (K,), (0,)} ndarray
		    Sums of residuals; squared Euclidean 2-norm for each column in
		    ``b - a*x``.
		    If the rank of `a` is < N or M <= N, this is an empty array.
		    If `b` is 1-dimensional, this is a (1,) shape array.
		    Otherwise the shape is (K,).
		rank : int
		    Rank of matrix `a`.
		s : (min(M, N),) ndarray
		    Singular values of `a`.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		Notes
		-----
		If `b` is a matrix, then all array results are returned as matrices.
		
		Examples
		--------
		Fit a line, ``y = mx + c``, through some noisy data-points:
		
		>>> x = np.array([0, 1, 2, 3])
		>>> y = np.array([-1, 0.2, 0.9, 2.1])
		
		By examining the coefficients, we see that the line should have a
		gradient of roughly 1 and cut the y-axis at, more or less, -1.
		
		We can rewrite the line equation as ``y = Ap``, where ``A = [[x 1]]``
		and ``p = [[m], [c]]``.  Now use `lstsq` to solve for `p`:
		
		>>> A = np.vstack([x, np.ones(len(x))]).T
		>>> A
		array([[ 0.,  1.],
		       [ 1.,  1.],
		       [ 2.,  1.],
		       [ 3.,  1.]])
		
		>>> m, c = np.linalg.lstsq(A, y, rcond=None)[0]
		>>> print(m, c)
		1.0 -0.95
		
		Plot the data along with the fitted line:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o', label='Original data', markersize=10)
		>>> plt.plot(x, m*x + c, 'r', label='Fitted line')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Minimize a 1-d quadratic function subject to bounds.
		
		The free term `c` is 0 by default. Bounds must be finite.
		
		Returns
		-------
		t : float
		    Minimum point.
		y : float
		    Minimum value.
	**/
	static public function minimize_quadratic_1d(a:Dynamic, b:Dynamic, lb:Dynamic, ub:Dynamic, ?c:Dynamic):Float;
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
		
		    .. versionadded:: 1.8.0
		
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
	static public var print_function : Dynamic;
	static public function print_header_nonlinear():Dynamic;
	static public function print_iteration_nonlinear(iteration:Dynamic, nfev:Dynamic, cost:Dynamic, cost_reduction:Dynamic, step_norm:Dynamic, optimality:Dynamic):Dynamic;
	/**
		Scale Jacobian and residuals for a robust loss function.
		
		Arrays are modified in place.
	**/
	static public function scale_for_robust_loss_function(J:Dynamic, f:Dynamic, rho:Dynamic):Dynamic;
	/**
		Compute a min_step size required to reach a bound.
		
		The function computes a positive scalar t, such that x + s * t is on
		the bound.
		
		Returns
		-------
		step : float
		    Computed step. Non-negative value.
		hits : ndarray of int with shape of x
		    Each element indicates whether a corresponding variable reaches the
		    bound:
		         
		         *  0 - the bound was not hit.
		         * -1 - the lower bound was hit.
		         *  1 - the upper bound was hit.
	**/
	static public function step_size_to_bound(x:Dynamic, s:Dynamic, lb:Dynamic, ub:Dynamic):Float;
	static public var string_types : Dynamic;
	/**
		Update the radius of a trust region based on the cost reduction.
		
		Returns
		-------
		Delta : float
		    New radius.
		ratio : float
		    Ratio between actual and predicted reductions. Zero if predicted
		    reduction is zero.
	**/
	static public function update_tr_radius(Delta:Dynamic, actual_reduction:Dynamic, predicted_reduction:Dynamic, step_norm:Dynamic, bound_hit:Dynamic):Float;
}