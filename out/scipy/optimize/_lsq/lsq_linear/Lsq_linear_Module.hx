/* This file is generated, do not edit! */
package scipy.optimize._lsq.lsq_linear;
@:pythonImport("scipy.optimize._lsq.lsq_linear") extern class Lsq_linear_Module {
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
	static public function bvls(A:Dynamic, b:Dynamic, x_lsq:Dynamic, lb:Dynamic, ub:Dynamic, tol:Dynamic, max_iter:Dynamic, verbose:Dynamic):Dynamic;
	/**
		Compute gradient of the least-squares cost function.
	**/
	static public function compute_grad(J:Dynamic, f:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Check if a point lies within bounds.
	**/
	static public function in_bounds(x:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	static public function issparse(x:Dynamic):Dynamic;
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
		
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.
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
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic):Dynamic;
	/**
		Solve a linear least-squares problem with bounds on the variables.
		
		Given a m-by-n design matrix A and a target vector b with m elements,
		`lsq_linear` solves the following optimization problem::
		
		    minimize 0.5 * ||A x - b||**2
		    subject to lb <= x <= ub
		
		This optimization problem is convex, hence a found minimum (if iterations
		have converged) is guaranteed to be global.
		
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
		          an active set method, which requires the number of iterations
		          comparable to the number of variables. Can't be used when `A` is
		          sparse or LinearOperator.
		
		    Default is 'trf'.
		tol : float, optional
		    Tolerance parameter. The algorithm terminates if a relative change
		    of the cost function is less than `tol` on the last iteration.
		    Additionally the first-order optimality measure is considered:
		
		        * ``method='trf'`` terminates if the uniform norm of the gradient,
		          scaled to account for the presence of the bounds, is less than
		          `tol`.
		        * ``method='bvls'`` terminates if Karush-Kuhn-Tucker conditions
		          are satisfied within `tol` tolerance.
		
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
		    Tolerance parameters 'atol' and 'btol' for `scipy.sparse.linalg.lsmr`
		    If None (default), it is set to ``1e-2 * tol``. If 'auto', the
		    tolerance will be adjusted based on the optimality of the current
		    iterate, which can speed up the optimization process, but is not always
		    reliable.
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
		
		    Might be somewhat arbitrary for the `trf` method as it generates a
		    sequence of strictly feasible iterates and active_mask is determined
		    within a tolerance threshold.
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
		Number of iterations 16, initial cost 1.5039e+04, final cost 1.1112e+04,
		first-order optimality 4.66e-08.
	**/
	static public function lsq_linear(A:Dynamic, b:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?tol:Dynamic, ?lsq_solver:Dynamic, ?lsmr_tol:Dynamic, ?max_iter:Dynamic, ?verbose:Dynamic):Float;
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
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(), (1,), (K,)} ndarray
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
		
		>>> m, c = np.linalg.lstsq(A, y)[0]
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
	static public function prepare_bounds(bounds:Dynamic, n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function trf_linear(A:Dynamic, b:Dynamic, x_lsq:Dynamic, lb:Dynamic, ub:Dynamic, tol:Dynamic, lsq_solver:Dynamic, lsmr_tol:Dynamic, max_iter:Dynamic, verbose:Dynamic):Dynamic;
}