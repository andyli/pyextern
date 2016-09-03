/* This file is generated, do not edit! */
package scipy.optimize._lsq.trf;
@:pythonImport("scipy.optimize._lsq.trf") extern class Trf_Module {
	/**
		Compute Coleman-Li scaling vector and its derivatives.
		
		Components of a vector v are defined as follows:
		::
		           | ub[i] - x[i], if g[i] < 0 and ub[i] < np.inf
		    v[i] = | x[i] - lb[i], if g[i] > 0 and lb[i] > -np.inf
		           | 1,           otherwise
		
		According to this definition v[i] >= 0 for all i. It differs from the
		definition in paper [1]_ (eq. (2.2)), where the absolute value of v is
		used. Both definitions are equivalent down the line.
		Derivatives of v with respect to x take value 1, -1 or 0 depending on a
		case.
		
		Returns
		-------
		v : ndarray with shape of x
		    Scaling vector.
		dv : ndarray with shape of x
		    Derivatives of v[i] with respect to x[i], diagonal elements of v's
		    Jacobian.
		
		References
		----------
		.. [1] M.A. Branch, T.F. Coleman, and Y. Li, "A Subspace, Interior,
		       and Conjugate Gradient Method for Large-Scale Bound-Constrained
		       Minimization Problems," SIAM Journal on Scientific Computing,
		       Vol. 21, Number 1, pp 1-23, 1999.
	**/
	static public function CL_scaling_vector(x:Dynamic, g:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
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
		Determine which constraints are active in a given point.
		
		The threshold is computed using `rtol` and the absolute value of the
		closest bound.
		
		Returns
		-------
		active : ndarray of int with shape of x
		    Each component shows whether the corresponding constraint is active:
		         
		         *  0 - a constraint is not active.
		         * -1 - a lower bound is active.
		         *  1 - a upper bound is active.
	**/
	static public function find_active_constraints(x:Dynamic, lb:Dynamic, ub:Dynamic, ?rtol:Dynamic):Dynamic;
	/**
		Check if a point lies within bounds.
	**/
	static public function in_bounds(x:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Find the intersection of a line with the boundary of a trust region.
		
		This function solves the quadratic equation with respect to t
		||(x + s*t)||**2 = Delta**2.
		
		Returns
		-------
		t_neg, t_pos : tuple of float
		    Negative and positive roots.
		
		Raises
		------
		ValueError
		    If `s` is zero or `x` is not within the trust region.
	**/
	static public function intersect_trust_region(x:Dynamic, s:Dynamic, Delta:Dynamic):Dynamic;
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
		Shift a point to the interior of a feasible region.
		
		Each element of the returned vector is at least at a relative distance
		`rstep` from the closest bound. If ``rstep=0`` then `np.nextafter` is used.
	**/
	static public function make_strictly_feasible(x:Dynamic, lb:Dynamic, ub:Dynamic, ?rstep:Dynamic):Dynamic;
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
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in Scipy 0.11) makes the function return two matrices
		    (Q, TAU) in the internal format used by LAPACK.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition. If pivoting, compute the decomposition
		    ``A P = Q R`` as above, but where P is chosen such that the diagonal
		    of R is non-increasing.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		Q : float or complex ndarray
		    Of shape (M, M), or (M, K) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``.  ``K = min(M, N)``.
		P : int ndarray
		    Of shape (N,) for ``pivoting=True``. Not returned if
		    ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, zungqr, dgeqp3, and zgeqp3.
		
		If ``mode=economic``, the shapes of Q and R are (M, K) and (K, N) instead
		of (M,M) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import random, linalg, dot, diag, all, allclose
		>>> a = random.randn(9, 6)
		
		>>> q, r = linalg.qr(a)
		>>> allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = abs(diag(r4))
		>>> all(d[1:] <= d[:-1])
		True
		>>> allclose(a[:, p4], dot(q4, r4))
		True
		>>> q4.shape, r4.shape, p4.shape
		((9, 9), (9, 6), (6,))
		
		>>> q5, r5, p5 = linalg.qr(a, mode='economic', pivoting=True)
		>>> q5.shape, r5.shape, p5.shape
		((9, 6), (6, 6), (6,))
	**/
	static public function qr(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return a matrix arising in regularized least squares as LinearOperator.
		
		The matrix is
		    [ J ]
		    [ D ]
		where D is diagonal matrix with elements from `diag`.
	**/
	static public function regularized_lsq_operator(J:Dynamic, diag:Dynamic):Dynamic;
	/**
		Return J diag(d) as LinearOperator.
	**/
	static public function right_multiplied_operator(J:Dynamic, d:Dynamic):Dynamic;
	/**
		Scale Jacobian and residuals for a robust loss function.
		
		Arrays are modified in place.
	**/
	static public function scale_for_robust_loss_function(J:Dynamic, f:Dynamic, rho:Dynamic):Dynamic;
	/**
		Select the best step according to Trust Region Reflective algorithm.
	**/
	static public function select_step(x:Dynamic, J_h:Dynamic, diag_h:Dynamic, g_h:Dynamic, p:Dynamic, p_h:Dynamic, d:Dynamic, Delta:Dynamic, lb:Dynamic, ub:Dynamic, theta:Dynamic):Dynamic;
	/**
		Solve a trust-region problem arising in least-squares minimization.
		
		This function implements a method described by J. J. More [1]_ and used
		in MINPACK, but it relies on a single SVD of Jacobian instead of series
		of Cholesky decompositions. Before running this function, compute:
		``U, s, VT = svd(J, full_matrices=False)``.
		
		Parameters
		----------
		n : int
		    Number of variables.
		m : int
		    Number of residuals.
		uf : ndarray
		    Computed as U.T.dot(f).
		s : ndarray
		    Singular values of J.
		V : ndarray
		    Transpose of VT.
		Delta : float
		    Radius of a trust region.
		initial_alpha : float, optional
		    Initial guess for alpha, which might be available from a previous
		    iteration. If None, determined automatically.
		rtol : float, optional
		    Stopping tolerance for the root-finding procedure. Namely, the
		    solution ``p`` will satisfy ``abs(norm(p) - Delta) < rtol * Delta``.
		max_iter : int, optional
		    Maximum allowed number of iterations for the root-finding procedure.
		
		Returns
		-------
		p : ndarray, shape (n,)
		    Found solution of a trust-region problem.
		alpha : float
		    Positive value such that (J.T*J + alpha*I)*p = -J.T*f.
		    Sometimes called Levenberg-Marquardt parameter.
		n_iter : int
		    Number of iterations made by root-finding procedure. Zero means
		    that Gauss-Newton step was selected as the solution.
		
		References
		----------
		.. [1] More, J. J., "The Levenberg-Marquardt Algorithm: Implementation
		       and Theory," Numerical Analysis, ed. G. A. Watson, Lecture Notes
		       in Mathematics 630, Springer Verlag, pp. 105-116, 1977.
	**/
	static public function solve_lsq_trust_region(n:Dynamic, m:Dynamic, uf:Dynamic, s:Dynamic, V:Dynamic, Delta:Dynamic, ?initial_alpha:Dynamic, ?rtol:Dynamic, ?max_iter:Dynamic):Dynamic;
	/**
		Solve a general trust-region problem in 2 dimensions.
		
		The problem is reformulated as a 4-th order algebraic equation,
		the solution of which is found by numpy.roots.
		
		Parameters
		----------
		B : ndarray, shape (2, 2)
		    Symmetric matrix, defines a quadratic term of the function.
		g : ndarray, shape (2,)
		    Defines a linear term of the function.
		Delta : float
		    Radius of a trust region.
		
		Returns
		-------
		p : ndarray, shape (2,)
		    Found solution.
		newton_step : bool
		    Whether the returned solution is the Newton step which lies within
		    the trust region.
	**/
	static public function solve_trust_region_2d(B:Dynamic, g:Dynamic, Delta:Dynamic):Dynamic;
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
		Singular Value Decomposition.
		
		Factorizes the matrix a into two unitary matrices U and Vh, and
		a 1-D array s of singular values (real, non-negative) such that
		``a == U*S*Vh``, where S is a suitably shaped matrix of zeros with
		main diagonal s.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True, `U` and `Vh` are of shape ``(M,M)``, ``(N,N)``.
		    If False, the shapes are ``(M,K)`` and ``(K,N)``, where
		    ``K = min(M,N)``.
		compute_uv : bool, optional
		    Whether to compute also `U` and `Vh` in addition to `s`.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : {'gesdd', 'gesvd'}, optional
		    Whether to use the more efficient divide-and-conquer approach
		    (``'gesdd'``) or general rectangular approach (``'gesvd'``)
		    to compute the SVD. MATLAB and Octave use the ``'gesvd'`` approach.
		    Default is ``'gesdd'``.
		
		    .. versionadded:: 0.18
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M,M)`` or ``(M,K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N,N)`` or ``(K,N)`` depending on `full_matrices`.
		
		For ``compute_uv=False``, only `s` is returned.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See also
		--------
		svdvals : Compute singular values of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6) + 1.j*np.random.randn(9, 6)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape, Vh.shape, s.shape
		((9, 9), (6, 6), (6,))
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, Vh.shape, s.shape
		((9, 6), (6, 6), (6,))
		>>> S = linalg.diagsvd(s, 6, 6)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	static public function trf(fun:Dynamic, jac:Dynamic, x0:Dynamic, f0:Dynamic, J0:Dynamic, lb:Dynamic, ub:Dynamic, ftol:Dynamic, xtol:Dynamic, gtol:Dynamic, max_nfev:Dynamic, x_scale:Dynamic, loss_function:Dynamic, tr_solver:Dynamic, tr_options:Dynamic, verbose:Dynamic):Dynamic;
	static public function trf_bounds(fun:Dynamic, jac:Dynamic, x0:Dynamic, f0:Dynamic, J0:Dynamic, lb:Dynamic, ub:Dynamic, ftol:Dynamic, xtol:Dynamic, gtol:Dynamic, max_nfev:Dynamic, x_scale:Dynamic, loss_function:Dynamic, tr_solver:Dynamic, tr_options:Dynamic, verbose:Dynamic):Dynamic;
	static public function trf_no_bounds(fun:Dynamic, jac:Dynamic, x0:Dynamic, f0:Dynamic, J0:Dynamic, ftol:Dynamic, xtol:Dynamic, gtol:Dynamic, max_nfev:Dynamic, x_scale:Dynamic, loss_function:Dynamic, tr_solver:Dynamic, tr_options:Dynamic, verbose:Dynamic):Dynamic;
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