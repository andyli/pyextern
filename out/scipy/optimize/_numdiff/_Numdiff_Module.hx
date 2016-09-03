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
		method : {'3-point', '2-point'}, optional
		    Finite difference method to use:
		        - '2-point' - use the fist order accuracy forward or backward
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
		    range of function evaluation.
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
		args, kwargs : tuple and dict, optional
		    Additional arguments passed to `fun`. Both empty by default.
		    The calling signature is ``fun(x, *args, **kwargs)``.
		
		Returns
		-------
		J : ndarray or csr_matrix
		    Finite difference approximation of the Jacobian matrix. If `sparsity`
		    is None then ndarray with shape (m, n) is returned. Although if m=1 it
		    is returned as a gradient with shape (n,). If `sparsity` is not None,
		    csr_matrix with shape (m, n) is returned.
		
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
	static public function approx_derivative(fun:Dynamic, x0:Dynamic, ?method:Dynamic, ?rel_step:Dynamic, ?f0:Dynamic, ?bounds:Dynamic, ?sparsity:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
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
	static public function issparse(x:Dynamic):Dynamic;
}