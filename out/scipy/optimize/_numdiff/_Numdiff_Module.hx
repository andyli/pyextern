/* This file is generated, do not edit! */
package scipy.optimize._numdiff;
@:pythonImport("scipy.optimize._numdiff") extern class _Numdiff_Module {
	static public var EPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adjust final difference scheme to the presence of bounds.
		
		Parameters
		----------
		x0 : ndarray, shape (n,)
		    Point at which we wish to estimate derivative.
		h : ndarray, shape (n,)
		    Desired finite difference steps.
		num_steps : int
		    Number of `h` steps in one direction required to implement finite
		    difference scheme. For example, 2 means that we need to evaluate
		    f(x0 + 2 * h) or f(x0 - 2 * h)
		scheme : {'1-sided', '2-sided'}
		    Whether steps in one or both directions are required. In other
		    words '1-sided' applies to forward and backward schemes, '2-sided'
		    applies to center schemes.
		lb : ndarray, shape (n,)
		    Lower bounds on independent variables.
		ub : ndarray, shape (n,)
		    Upper bounds on independent variables.
		
		Returns
		-------
		h_adjusted : ndarray, shape (n,)
		    Adjusted step sizes. Step size decreases only if a sign flip or
		    switching to one-sided scheme doesn't allow to take a full step.
		use_one_sided : ndarray of bool, shape (n,)
		    Whether to switch to one-sided scheme. Informative only for
		    ``scheme='2-sided'``.
	**/
	static public function _adjust_scheme_to_bounds(x0:Dynamic, h:Dynamic, num_steps:Dynamic, scheme:Dynamic, lb:Dynamic, ub:Dynamic):Dynamic;
	static public function _compute_absolute_step(rel_step:Dynamic, x0:Dynamic, method:Dynamic):Dynamic;
	static public function _dense_difference(fun:Dynamic, x0:Dynamic, f0:Dynamic, h:Dynamic, use_one_sided:Dynamic, method:Dynamic):Dynamic;
	static public function _linear_operator_difference(fun:Dynamic, x0:Dynamic, f0:Dynamic, h:Dynamic, method:Dynamic):Dynamic;
	static public function _prepare_bounds(bounds:Dynamic, x0:Dynamic):Dynamic;
	static public function _sparse_difference(fun:Dynamic, x0:Dynamic, f0:Dynamic, h:Dynamic, use_one_sided:Dynamic, structure:Dynamic, groups:Dynamic, method:Dynamic):Dynamic;
	/**
		Compute finite difference approximation of the derivatives of a
		vector-valued function.
		
		If a function maps from R^n to R^m, its derivatives form m-by-n matrix
		called the Jacobian, where an element (i, j) is a partial derivative of
		f[i] with respect to x[j].
		
		Parameters
		----------
		fun : callable
		    Function of which to estimate the derivatives. The argument x
		    passed to this function is ndarray of shape (n,) (never a scalar
		    even if n=1). It must return 1-d array_like of shape (m,) or a scalar.
		x0 : array_like of shape (n,) or float
		    Point at which to estimate the derivatives. Float will be converted
		    to a 1-d array.
		method : {'3-point', '2-point', 'cs'}, optional
		    Finite difference method to use:
		        - '2-point' - use the first order accuracy forward or backward
		                      difference.
		        - '3-point' - use central difference in interior points and the
		                      second order accuracy forward or backward difference
		                      near the boundary.
		        - 'cs' - use a complex-step finite difference scheme. This assumes
		                 that the user function is real-valued and can be
		                 analytically continued to the complex plane. Otherwise,
		                 produces bogus results.
		rel_step : None or array_like, optional
		    Relative step size to use. The absolute step size is computed as
		    ``h = rel_step * sign(x0) * max(1, abs(x0))``, possibly adjusted to
		    fit into the bounds. For ``method='3-point'`` the sign of `h` is
		    ignored. If None (default) then step is selected automatically,
		    see Notes.
		f0 : None or array_like, optional
		    If not None it is assumed to be equal to ``fun(x0)``, in  this case
		    the ``fun(x0)`` is not called. Default is None.
		bounds : tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.
		    Each bound must match the size of `x0` or be a scalar, in the latter
		    case the bound will be the same for all variables. Use it to limit the
		    range of function evaluation. Bounds checking is not implemented
		    when `as_linear_operator` is True.
		sparsity : {None, array_like, sparse matrix, 2-tuple}, optional
		    Defines a sparsity structure of the Jacobian matrix. If the Jacobian
		    matrix is known to have only few non-zero elements in each row, then
		    it's possible to estimate its several columns by a single function
		    evaluation [3]_. To perform such economic computations two ingredients
		    are required:
		
		    * structure : array_like or sparse matrix of shape (m, n). A zero
		      element means that a corresponding element of the Jacobian
		      identically equals to zero.
		    * groups : array_like of shape (n,). A column grouping for a given
		      sparsity structure, use `group_columns` to obtain it.
		
		    A single array or a sparse matrix is interpreted as a sparsity
		    structure, and groups are computed inside the function. A tuple is
		    interpreted as (structure, groups). If None (default), a standard
		    dense differencing will be used.
		
		    Note, that sparse differencing makes sense only for large Jacobian
		    matrices where each row contains few non-zero elements.
		as_linear_operator : bool, optional
		    When True the function returns an `scipy.sparse.linalg.LinearOperator`.
		    Otherwise it returns a dense array or a sparse matrix depending on
		    `sparsity`. The linear operator provides an efficient way of computing
		    ``J.dot(p)`` for any vector ``p`` of shape (n,), but does not allow
		    direct access to individual elements of the matrix. By default
		    `as_linear_operator` is False.
		args, kwargs : tuple and dict, optional
		    Additional arguments passed to `fun`. Both empty by default.
		    The calling signature is ``fun(x, *args, **kwargs)``.
		
		Returns
		-------
		J : {ndarray, sparse matrix, LinearOperator}
		    Finite difference approximation of the Jacobian matrix.
		    If `as_linear_operator` is True returns a LinearOperator
		    with shape (m, n). Otherwise it returns a dense array or sparse
		    matrix depending on how `sparsity` is defined. If `sparsity`
		    is None then a ndarray with shape (m, n) is returned. If
		    `sparsity` is not None returns a csr_matrix with shape (m, n).
		    For sparse matrices and linear operators it is always returned as
		    a 2-dimensional structure, for ndarrays, if m=1 it is returned
		    as a 1-dimensional gradient array with shape (n,).
		
		See Also
		--------
		check_derivative : Check correctness of a function computing derivatives.
		
		Notes
		-----
		If `rel_step` is not provided, it assigned to ``EPS**(1/s)``, where EPS is
		machine epsilon for float64 numbers, s=2 for '2-point' method and s=3 for
		'3-point' method. Such relative step approximately minimizes a sum of
		truncation and round-off errors, see [1]_.
		
		A finite difference scheme for '3-point' method is selected automatically.
		The well-known central difference scheme is used for points sufficiently
		far from the boundary, and 3-point forward or backward scheme is used for
		points near the boundary. Both schemes have the second-order accuracy in
		terms of Taylor expansion. Refer to [2]_ for the formulas of 3-point
		forward and backward difference schemes.
		
		For dense differencing when m=1 Jacobian is returned with a shape (n,),
		on the other hand when n=1 Jacobian is returned with a shape (m, 1).
		Our motivation is the following: a) It handles a case of gradient
		computation (m=1) in a conventional way. b) It clearly separates these two
		different cases. b) In all cases np.atleast_2d can be called to get 2-d
		Jacobian with correct dimensions.
		
		References
		----------
		.. [1] W. H. Press et. al. "Numerical Recipes. The Art of Scientific
		       Computing. 3rd edition", sec. 5.7.
		
		.. [2] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		       sparse Jacobian matrices", Journal of the Institute of Mathematics
		       and its Applications, 13 (1974), pp. 117-120.
		
		.. [3] B. Fornberg, "Generation of Finite Difference Formulas on
		       Arbitrarily Spaced Grids", Mathematics of Computation 51, 1988.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.optimize import approx_derivative
		>>>
		>>> def f(x, c1, c2):
		...     return np.array([x[0] * np.sin(c1 * x[1]),
		...                      x[0] * np.cos(c2 * x[1])])
		...
		>>> x0 = np.array([1.0, 0.5 * np.pi])
		>>> approx_derivative(f, x0, args=(1, 2))
		array([[ 1.,  0.],
		       [-1.,  0.]])
		
		Bounds can be used to limit the region of function evaluation.
		In the example below we compute left and right derivative at point 1.0.
		
		>>> def g(x):
		...     return x**2 if x >= 1 else x
		...
		>>> x0 = 1.0
		>>> approx_derivative(g, x0, bounds=(-np.inf, 1.0))
		array([ 1.])
		>>> approx_derivative(g, x0, bounds=(1.0, np.inf))
		array([ 2.])
	**/
	static public function approx_derivative(fun:Dynamic, x0:Dynamic, ?method:Dynamic, ?rel_step:Dynamic, ?f0:Dynamic, ?bounds:Dynamic, ?sparsity:Dynamic, ?as_linear_operator:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Check correctness of a function computing derivatives (Jacobian or
		gradient) by comparison with a finite difference approximation.
		
		Parameters
		----------
		fun : callable
		    Function of which to estimate the derivatives. The argument x
		    passed to this function is ndarray of shape (n,) (never a scalar
		    even if n=1). It must return 1-d array_like of shape (m,) or a scalar.
		jac : callable
		    Function which computes Jacobian matrix of `fun`. It must work with
		    argument x the same way as `fun`. The return value must be array_like
		    or sparse matrix with an appropriate shape.
		x0 : array_like of shape (n,) or float
		    Point at which to estimate the derivatives. Float will be converted
		    to 1-d array.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.
		    Each bound must match the size of `x0` or be a scalar, in the latter
		    case the bound will be the same for all variables. Use it to limit the
		    range of function evaluation.
		args, kwargs : tuple and dict, optional
		    Additional arguments passed to `fun` and `jac`. Both empty by default.
		    The calling signature is ``fun(x, *args, **kwargs)`` and the same
		    for `jac`.
		
		Returns
		-------
		accuracy : float
		    The maximum among all relative errors for elements with absolute values
		    higher than 1 and absolute errors for elements with absolute values
		    less or equal than 1. If `accuracy` is on the order of 1e-6 or lower,
		    then it is likely that your `jac` implementation is correct.
		
		See Also
		--------
		approx_derivative : Compute finite difference approximation of derivative.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.optimize import check_derivative
		>>>
		>>>
		>>> def f(x, c1, c2):
		...     return np.array([x[0] * np.sin(c1 * x[1]),
		...                      x[0] * np.cos(c2 * x[1])])
		...
		>>> def jac(x, c1, c2):
		...     return np.array([
		...         [np.sin(c1 * x[1]),  c1 * x[0] * np.cos(c1 * x[1])],
		...         [np.cos(c2 * x[1]), -c2 * x[0] * np.sin(c2 * x[1])]
		...     ])
		...
		>>>
		>>> x0 = np.array([1.0, 0.5 * np.pi])
		>>> check_derivative(f, jac, x0, args=(1, 2))
		2.4492935982947064e-16
	**/
	static public function check_derivative(fun:Dynamic, jac:Dynamic, x0:Dynamic, ?bounds:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Float;
	static public var division : Dynamic;
	/**
		Return the indices and values of the nonzero elements of a matrix
		
		Parameters
		----------
		A : dense or sparse matrix
		    Matrix whose nonzero elements are desired.
		
		Returns
		-------
		(I,J,V) : tuple of arrays
		    I,J, and V contain the row indices, column indices, and values
		    of the nonzero matrix entries.
		
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, find
		>>> A = csr_matrix([[7.0, 8.0, 0],[0, 0, 9.0]])
		>>> find(A)
		(array([0, 0, 1], dtype=int32), array([0, 1, 2], dtype=int32), array([ 7.,  8.,  9.]))
	**/
	static public function find(A:Dynamic):Dynamic;
	/**
		Group columns of a 2-d matrix for sparse finite differencing [1]_.
		
		Two columns are in the same group if in each row at least one of them
		has zero. A greedy sequential algorithm is used to construct groups.
		
		Parameters
		----------
		A : array_like or sparse matrix, shape (m, n)
		    Matrix of which to group columns.
		order : int, iterable of int with shape (n,) or None
		    Permutation array which defines the order of columns enumeration.
		    If int or None, a random permutation is used with `order` used as
		    a random seed. Default is 0, that is use a random permutation but
		    guarantee repeatability.
		
		Returns
		-------
		groups : ndarray of int, shape (n,)
		    Contains values from 0 to n_groups-1, where n_groups is the number
		    of found groups. Each value ``groups[i]`` is an index of a group to
		    which i-th column assigned. The procedure was helpful only if
		    n_groups is significantly less than n.
		
		References
		----------
		.. [1] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		       sparse Jacobian matrices", Journal of the Institute of Mathematics
		       and its Applications, 13 (1974), pp. 117-120.
	**/
	static public function group_columns(A:Dynamic, ?order:Dynamic):Dynamic;
	static public function group_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_sparse(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var relative_step : Dynamic;
}