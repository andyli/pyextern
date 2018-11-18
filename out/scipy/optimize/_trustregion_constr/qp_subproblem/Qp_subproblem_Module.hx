/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.qp_subproblem;
@:pythonImport("scipy.optimize._trustregion_constr.qp_subproblem") extern class Qp_subproblem_Module {
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
	/**
		Build a sparse matrix from sparse sub-blocks
		
		Parameters
		----------
		blocks : array_like
		    Grid of sparse matrices with compatible shapes.
		    An entry of None implies an all-zero matrix.
		format : {'bsr', 'coo', 'csc', 'csr', 'dia', 'dok', 'lil'}, optional
		    The sparse format of the result (e.g. "csr").  By default an
		    appropriate sparse matrix format is returned.
		    This choice is subject to change.
		dtype : dtype, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		Returns
		-------
		bmat : sparse matrix
		
		See Also
		--------
		block_diag, diags
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, bmat
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5], [6]])
		>>> C = coo_matrix([[7]])
		>>> bmat([[A, B], [None, C]]).toarray()
		array([[1, 2, 5],
		       [3, 4, 6],
		       [0, 0, 7]])
		
		>>> bmat([[A, None], [None, C]]).toarray()
		array([[1, 2, 0],
		       [3, 4, 0],
		       [0, 0, 7]])
	**/
	static public function bmat(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Find the intersection between segment (or line) and box constraints.
		
		Find the intersection between the segment (or line) defined by the
		parametric  equation ``x(t) = z + t*d`` and the rectangular box
		``lb <= x <= ub``.
		
		Parameters
		----------
		z : array_like, shape (n,)
		    Initial point.
		d : array_like, shape (n,)
		    Direction.
		lb : array_like, shape (n,)
		    Lower bounds to each one of the components of ``x``. Used
		    to delimit the rectangular box.
		ub : array_like, shape (n, )
		    Upper bounds to each one of the components of ``x``. Used
		    to delimit the rectangular box.
		entire_line : bool, optional
		    When ``True`` the function returns the intersection between the line
		    ``x(t) = z + t*d`` (``t`` can assume any value) and the rectangular
		    box. When ``False`` returns the intersection between the segment
		    ``x(t) = z + t*d``, ``0 <= t <= 1``, and the rectangular box.
		
		Returns
		-------
		ta, tb : float
		    The line/segment ``x(t) = z + t*d`` is inside the box for
		    for ``ta <= t <= tb``.
		intersect : bool
		    When ``True`` there is a intersection between the line (or segment)
		    and the rectangular box. On the other hand, when ``False``, there is no
		    intersection.
	**/
	static public function box_intersections(z:Dynamic, d:Dynamic, lb:Dynamic, ub:Dynamic, ?entire_line:Dynamic):Float;
	/**
		Find the intersection between segment (or line) and box/sphere constraints.
		
		Find the intersection between the segment (or line) defined by the
		parametric  equation ``x(t) = z + t*d``,  the rectangular box
		``lb <= x <= ub`` and the ball ``||x|| <= trust_radius``.
		
		Parameters
		----------
		z : array_like, shape (n,)
		    Initial point.
		d : array_like, shape (n,)
		    Direction.
		lb : array_like, shape (n,)
		    Lower bounds to each one of the components of ``x``. Used
		    to delimit the rectangular box.
		ub : array_like, shape (n, )
		    Upper bounds to each one of the components of ``x``. Used
		    to delimit the rectangular box.
		trust_radius : float
		    Ball radius.
		entire_line : bool, optional
		    When ``True`` the function returns the intersection between the line
		    ``x(t) = z + t*d`` (``t`` can assume any value) and the constraints.
		    When ``False`` returns the intersection between the segment
		    ``x(t) = z + t*d``, ``0 <= t <= 1`` and the constraints.
		extra_info : bool, optional
		    When ``True`` returns ``intersect_sphere`` and ``intersect_box``.
		
		Returns
		-------
		ta, tb : float
		    The line/segment ``x(t) = z + t*d`` is inside the rectangular box and
		    inside the ball for for ``ta <= t <= tb``.
		intersect : bool
		    When ``True`` there is a intersection between the line (or segment)
		    and both constraints. On the other hand, when ``False``, there is no
		    intersection.
		sphere_info : dict, optional
		    Dictionary ``{ta, tb, intersect}`` containing the interval ``[ta, tb]``
		    for which the line intercept the ball. And a boolean value indicating
		    whether the sphere is intersected by the line.
		box_info : dict, optional
		    Dictionary ``{ta, tb, intersect}`` containing the interval ``[ta, tb]``
		    for which the line intercept the box. And a boolean value indicating
		    whether the box is intersected by the line.
	**/
	static public function box_sphere_intersections(z:Dynamic, d:Dynamic, lb:Dynamic, ub:Dynamic, trust_radius:Dynamic, ?entire_line:Dynamic, ?extra_info:Dynamic):Float;
	/**
		copysign(x, y)
		
		Return a float with the magnitude (absolute value) of x but the sign 
		of y. On platforms that support signed zeros, copysign(1.0, -0.0) 
		returns -1.0.
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Solve equality-constrained quadratic programming (EQP) problem.
		
		Solve ``min 1/2 x.T H x + x.t c``  subject to ``A x + b = 0``
		using direct factorization of the KKT system.
		
		Parameters
		----------
		H : sparse matrix, shape (n, n)
		    Hessian matrix of the EQP problem.
		c : array_like, shape (n,)
		    Gradient of the quadratic objective function.
		A : sparse matrix
		    Jacobian matrix of the EQP problem.
		b : array_like, shape (m,)
		    Right-hand side of the constraint equation.
		
		Returns
		-------
		x : array_like, shape (n,)
		    Solution of the KKT problem.
		lagrange_multipliers : ndarray, shape (m,)
		    Lagrange multipliers of the KKT problem.
	**/
	static public function eqp_kktfact(H:Dynamic, c:Dynamic, A:Dynamic, b:Dynamic):Dynamic;
	/**
		Check if lb <= x <= ub.
	**/
	static public function inside_box_boundaries(x:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Approximately  minimize ``1/2*|| A x + b ||^2`` inside trust-region.
		
		Approximately solve the problem of minimizing ``1/2*|| A x + b ||^2``
		subject to ``||x|| < Delta`` and ``lb <= x <= ub`` using a modification
		of the classical dogleg approach.
		
		Parameters
		----------
		A : LinearOperator (or sparse matrix or ndarray), shape (m, n)
		    Matrix ``A`` in the minimization problem. It should have
		    dimension ``(m, n)`` such that ``m < n``.
		Y : LinearOperator (or sparse matrix or ndarray), shape (n, m)
		    LinearOperator that apply the projection matrix
		    ``Q = A.T inv(A A.T)`` to the vector.  The obtained vector
		    ``y = Q x`` being the minimum norm solution of ``A y = x``.
		b : array_like, shape (m,)
		    Vector ``b``in the minimization problem.
		trust_radius: float
		    Trust radius to be considered. Delimits a sphere boundary
		    to the problem.
		lb : array_like, shape (n,)
		    Lower bounds to each one of the components of ``x``.
		    It is expected that ``lb <= 0``, otherwise the algorithm
		    may fail. If ``lb[i] = -Inf`` the lower
		    bound for the i-th component is just ignored.
		ub : array_like, shape (n, )
		    Upper bounds to each one of the components of ``x``.
		    It is expected that ``ub >= 0``, otherwise the algorithm
		    may fail. If ``ub[i] = Inf`` the upper bound for the i-th
		    component is just ignored.
		
		Returns
		-------
		x : array_like, shape (n,)
		    Solution to the problem.
		
		Notes
		-----
		Based on implementations described in p.p. 885-886 from [1]_.
		
		References
		----------
		.. [1] Byrd, Richard H., Mary E. Hribar, and Jorge Nocedal.
		       "An interior point algorithm for large-scale nonlinear
		       programming." SIAM Journal on Optimization 9.4 (1999): 877-900.
	**/
	static public function modified_dogleg(A:Dynamic, Y:Dynamic, b:Dynamic, trust_radius:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
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
	/**
		Solve EQP problem with projected CG method.
		
		Solve equality-constrained quadratic programming problem
		``min 1/2 x.T H x + x.t c``  subject to ``A x + b = 0`` and,
		possibly, to trust region constraints ``||x|| < trust_radius``
		and box constraints ``lb <= x <= ub``.
		
		Parameters
		----------
		H : LinearOperator (or sparse matrix or ndarray), shape (n, n)
		    Operator for computing ``H v``.
		c : array_like, shape (n,)
		    Gradient of the quadratic objective function.
		Z : LinearOperator (or sparse matrix or ndarray), shape (n, n)
		    Operator for projecting ``x`` into the null space of A.
		Y : LinearOperator,  sparse matrix, ndarray, shape (n, m)
		    Operator that, for a given a vector ``b``, compute smallest
		    norm solution of ``A x + b = 0``.
		b : array_like, shape (m,)
		    Right-hand side of the constraint equation.
		trust_radius : float, optional
		    Trust radius to be considered. By default uses ``trust_radius=inf``,
		    which means no trust radius at all.
		lb : array_like, shape (n,), optional
		    Lower bounds to each one of the components of ``x``.
		    If ``lb[i] = -Inf`` the lower bound for the i-th
		    component is just ignored (default).
		ub : array_like, shape (n, ), optional
		    Upper bounds to each one of the components of ``x``.
		    If ``ub[i] = Inf`` the upper bound for the i-th
		    component is just ignored (default).
		tol : float, optional
		    Tolerance used to interrupt the algorithm.
		max_iter : int, optional
		    Maximum algorithm iterations. Where ``max_inter <= n-m``.
		    By default uses ``max_iter = n-m``.
		max_infeasible_iter : int, optional
		    Maximum infeasible (regarding box constraints) iterations the
		    algorithm is allowed to take.
		    By default uses ``max_infeasible_iter = n-m``.
		return_all : bool, optional
		    When ``true`` return the list of all vectors through the iterations.
		
		Returns
		-------
		x : array_like, shape (n,)
		    Solution of the EQP problem.
		info : Dict
		    Dictionary containing the following:
		
		        - niter : Number of iterations.
		        - stop_cond : Reason for algorithm termination:
		            1. Iteration limit was reached;
		            2. Reached the trust-region boundary;
		            3. Negative curvature detected;
		            4. Tolerance was satisfied.
		        - allvecs : List containing all intermediary vectors (optional).
		        - hits_boundary : True if the proposed step is on the boundary
		          of the trust region.
		
		Notes
		-----
		Implementation of Algorithm 6.2 on [1]_.
		
		In the absence of spherical and box constraints, for sufficient
		iterations, the method returns a truly optimal result.
		In the presence of those constraints the value returned is only
		a inexpensive approximation of the optimal value.
		
		References
		----------
		.. [1] Gould, Nicholas IM, Mary E. Hribar, and Jorge Nocedal.
		       "On the solution of equality constrained quadratic
		        programming problems arising in optimization."
		        SIAM Journal on Scientific Computing 23.4 (2001): 1376-1395.
	**/
	static public function projected_cg(H:Dynamic, c:Dynamic, Z:Dynamic, Y:Dynamic, b:Dynamic, ?trust_radius:Dynamic, ?lb:Dynamic, ?ub:Dynamic, ?tol:Dynamic, ?max_iter:Dynamic, ?max_infeasible_iter:Dynamic, ?return_all:Dynamic):Dynamic;
	/**
		Return clipped value of x
	**/
	static public function reinforce_box_boundaries(x:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		Find the intersection between segment (or line) and spherical constraints.
		
		Find the intersection between the segment (or line) defined by the
		parametric  equation ``x(t) = z + t*d`` and the ball
		``||x|| <= trust_radius``.
		
		Parameters
		----------
		z : array_like, shape (n,)
		    Initial point.
		d : array_like, shape (n,)
		    Direction.
		trust_radius : float
		    Ball radius.
		entire_line : bool, optional
		    When ``True`` the function returns the intersection between the line
		    ``x(t) = z + t*d`` (``t`` can assume any value) and the ball
		    ``||x|| <= trust_radius``. When ``False`` returns the intersection
		    between the segment ``x(t) = z + t*d``, ``0 <= t <= 1``, and the ball.
		
		Returns
		-------
		ta, tb : float
		    The line/segment ``x(t) = z + t*d`` is inside the ball for
		    for ``ta <= t <= tb``.
		intersect : bool
		    When ``True`` there is a intersection between the line/segment
		    and the sphere. On the other hand, when ``False``, there is no
		    intersection.
	**/
	static public function sphere_intersections(z:Dynamic, d:Dynamic, trust_radius:Dynamic, ?entire_line:Dynamic):Float;
}