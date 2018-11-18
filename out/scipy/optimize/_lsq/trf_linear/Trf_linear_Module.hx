/* This file is generated, do not edit! */
package scipy.optimize._lsq.trf_linear;
@:pythonImport("scipy.optimize._lsq.trf_linear") extern class Trf_linear_Module {
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
	static public var EPS : Dynamic;
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
		Find an appropriate step size using backtracking line search.
	**/
	static public function backtracking(A:Dynamic, g:Dynamic, x:Dynamic, p:Dynamic, theta:Dynamic, p_dot_g:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
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
		Compute gradient of the least-squares cost function.
	**/
	static public function compute_grad(J:Dynamic, f:Dynamic):Dynamic;
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
		Zero out a diagonal block of a matrix by series of Givens rotations.
		
		The matrix has the structure::
		
		    [ S ]
		    [ D ]
		
		Where S is an upper triangular matrix with shape (n, n) and D is a
		diagonal matrix with shape (n, n) with elements from `diag`. This function
		applies Givens rotations to it such that the resulting matrix has zeros
		in place of D.
		
		Array `S` will be modified in-place.
		
		Array `v` of shape (n,) is the part of the full vector with shape (2*n,)::
		
		    [ v ]
		    [ 0 ]
		
		to which Givens rotations are applied. This array is modified in place,
		such that on exit it contains the first n components of the above
		mentioned vector after rotations were applied.
	**/
	static public function givens_elimination(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function print_header_linear():Dynamic;
	static public function print_iteration_linear(iteration:Dynamic, cost:Dynamic, cost_reduction:Dynamic, step_norm:Dynamic, optimality:Dynamic):Dynamic;
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
		Compute reflective transformation and its gradient.
	**/
	static public function reflective_transformation(y:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Return a matrix arising in regularized least squares as LinearOperator.
		
		The matrix is
		    [ J ]
		    [ D ]
		where D is diagonal matrix with elements from `diag`.
	**/
	static public function regularized_lsq_operator(J:Dynamic, diag:Dynamic):Dynamic;
	/**
		Solve regularized least squares using information from QR-decomposition.
		
		The initial problem is to solve the following system in a least-squares
		sense:
		::
		
		    A x = b
		    D x = 0
		
		Where D is diagonal matrix. The method is based on QR decomposition
		of the form A P = Q R, where P is a column permutation matrix, Q is an
		orthogonal matrix and R is an upper triangular matrix.
		
		Parameters
		----------
		m, n : int
		    Initial shape of A.
		R : ndarray, shape (n, n)
		    Upper triangular matrix from QR decomposition of A.
		QTb : ndarray, shape (n,)
		    First n components of Q^T b.
		perm : ndarray, shape (n,)
		    Array defining column permutation of A, such that i-th column of
		    P is perm[i]-th column of identity matrix.
		diag : ndarray, shape (n,)
		    Array containing diagonal elements of D.
		
		Returns
		-------
		x : ndarray, shape (n,)
		    Found least-squares solution.
	**/
	static public function regularized_lsq_with_qr(m:Dynamic, n:Dynamic, R:Dynamic, QTb:Dynamic, perm:Dynamic, diag:Dynamic, ?copy_R:Dynamic):Dynamic;
	/**
		Return J diag(d) as LinearOperator.
	**/
	static public function right_multiplied_operator(J:Dynamic, d:Dynamic):Dynamic;
	/**
		Select the best step according to Trust Region Reflective algorithm.
	**/
	static public function select_step(x:Dynamic, A_h:Dynamic, g_h:Dynamic, c_h:Dynamic, p:Dynamic, p_h:Dynamic, d:Dynamic, lb:Dynamic, ub:Dynamic, theta:Dynamic):Dynamic;
	/**
		Solve the equation `a x = b` for `x`, assuming a is a triangular matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A triangular matrix
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in `a x = b`
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`.
		    Default is to use upper triangle.
		trans : {0, 1, 2, 'N', 'T', 'C'}, optional
		    Type of system to solve:
		
		    ========  =========
		    trans     system
		    ========  =========
		    0 or 'N'  a x  = b
		    1 or 'T'  a^T x = b
		    2 or 'C'  a^H x = b
		    ========  =========
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and
		    will not be referenced.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system `a x = b`.  Shape of return matches `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular
		
		Notes
		-----
		.. versionadded:: 0.9.0
		
		Examples
		--------
		Solve the lower triangular system a x = b, where::
		
		         [3  0  0  0]       [4]
		    a =  [2  1  0  0]   b = [2]
		         [1  0  1  0]       [4]
		         [1  1  1  1]       [2]
		
		>>> from scipy.linalg import solve_triangular
		>>> a = np.array([[3, 0, 0, 0], [2, 1, 0, 0], [1, 0, 1, 0], [1, 1, 1, 1]])
		>>> b = np.array([4, 2, 4, 2])
		>>> x = solve_triangular(a, b, lower=True)
		>>> x
		array([ 1.33333333, -0.66666667,  2.66666667, -1.33333333])
		>>> a.dot(x)  # Check the result
		array([ 4.,  2.,  4.,  2.])
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
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
	static public function trf_linear(A:Dynamic, b:Dynamic, x_lsq:Dynamic, lb:Dynamic, ub:Dynamic, tol:Dynamic, lsq_solver:Dynamic, lsmr_tol:Dynamic, max_iter:Dynamic, verbose:Dynamic):Dynamic;
}