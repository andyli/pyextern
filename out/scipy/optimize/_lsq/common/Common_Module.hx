/* This file is generated, do not edit! */
package scipy.optimize._lsq.common;
@:pythonImport("scipy.optimize._lsq.common") extern class Common_Module {
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
		Compute the Cholesky decomposition of a matrix, to use in cho_solve
		
		Returns a matrix containing the Cholesky decomposition,
		``A = L L*`` or ``A = U* U`` of a Hermitian positive-definite matrix `a`.
		The return value can be directly used as the first parameter to cho_solve.
		
		.. warning::
		    The returned matrix also contains random data in the entries not
		    used by the Cholesky decomposition. If you need to zero these
		    entries, use the function `cholesky` instead.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky factorization
		    (Default: upper-triangular)
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Matrix whose upper or lower triangle contains the Cholesky factor
		    of `a`. Other parts of the matrix contain random data.
		lower : bool
		    Flag indicating whether the factor is in the lower or upper triangle
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails.
		
		See also
		--------
		cho_solve : Solve a linear set equations using the Cholesky factorization
		            of a matrix.
		
		Examples
		--------
		>>> from scipy.linalg import cho_factor
		>>> A = np.array([[9, 3, 1, 5], [3, 7, 5, 1], [1, 5, 9, 2], [5, 1, 2, 6]])
		>>> c, low = cho_factor(A)
		>>> c
		array([[3.        , 1.        , 0.33333333, 1.66666667],
		       [3.        , 2.44948974, 1.90515869, -0.27216553],
		       [1.        , 5.        , 2.29330749, 0.8559528 ],
		       [5.        , 1.        , 2.        , 1.55418563]])
		>>> np.allclose(np.triu(c).T @ np. triu(c) - A, np.zeros((4, 4)))
		True
	**/
	static public function cho_factor(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the linear equations A x = b, given the Cholesky factorization of A.
		
		Parameters
		----------
		(c, lower) : tuple, (array, bool)
		    Cholesky factorization of a, as given by cho_factor
		b : array
		    Right-hand side
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    The solution to the system A x = b
		
		See also
		--------
		cho_factor : Cholesky factorization of a matrix
		
		Examples
		--------
		>>> from scipy.linalg import cho_factor, cho_solve
		>>> A = np.array([[9, 3, 1, 5], [3, 7, 5, 1], [1, 5, 9, 2], [5, 1, 2, 6]])
		>>> c, low = cho_factor(A)
		>>> x = cho_solve((c, low), [1, 1, 1, 1])
		>>> np.allclose(A @ x - [1, 1, 1, 1], np.zeros(4))
		True
	**/
	static public function cho_solve(c_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
	/**
		Compute gradient of the least-squares cost function.
	**/
	static public function compute_grad(J:Dynamic, f:Dynamic):Dynamic;
	/**
		Compute variables scale based on the Jacobian matrix.
	**/
	static public function compute_jac_scale(J:Dynamic, ?scale_inv_old:Dynamic):Dynamic;
	/**
		copysign(x, y)
		
		Return a float with the magnitude (absolute value) of x but the sign 
		of y. On platforms that support signed zeros, copysign(1.0, -0.0) 
		returns -1.0.
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Return diag(d) J as LinearOperator.
	**/
	static public function left_multiplied_operator(J:Dynamic, d:Dynamic):Dynamic;
	/**
		Compute diag(d) J.
		
		If `copy` is False, `J` is modified in place (unless being LinearOperator).
	**/
	static public function left_multiply(J:Dynamic, d:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function print_header_nonlinear():Dynamic;
	static public function print_iteration_linear(iteration:Dynamic, cost:Dynamic, cost_reduction:Dynamic, step_norm:Dynamic, optimality:Dynamic):Dynamic;
	static public function print_iteration_nonlinear(iteration:Dynamic, nfev:Dynamic, cost:Dynamic, cost_reduction:Dynamic, step_norm:Dynamic, optimality:Dynamic):Dynamic;
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
		Return J diag(d) as LinearOperator.
	**/
	static public function right_multiplied_operator(J:Dynamic, d:Dynamic):Dynamic;
	/**
		Compute J diag(d).
		
		If `copy` is False, `J` is modified in place (unless being LinearOperator).
	**/
	static public function right_multiply(J:Dynamic, d:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Scale Jacobian and residuals for a robust loss function.
		
		Arrays are modified in place.
	**/
	static public function scale_for_robust_loss_function(J:Dynamic, f:Dynamic, rho:Dynamic):Dynamic;
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
	/**
		Update the radius of a trust region based on the cost reduction.
		
		Returns
		-------
		Delta : float
		    New radius.
		ratio : float
		    Ratio between actual and predicted reductions.
	**/
	static public function update_tr_radius(Delta:Dynamic, actual_reduction:Dynamic, predicted_reduction:Dynamic, step_norm:Dynamic, bound_hit:Dynamic):Float;
}