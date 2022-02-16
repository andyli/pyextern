/* This file is generated, do not edit! */
package scipy.optimize.slsqp;
@:pythonImport("scipy.optimize.slsqp") extern class Slsqp_Module {
	/**
		Append values to the end of an array.
		
		Parameters
		----------
		arr : array_like
		    Values are appended to a copy of this array.
		values : array_like
		    These values are appended to a copy of `arr`.  It must be of the
		    correct shape (the same shape as `arr`, excluding `axis`).  If
		    `axis` is not specified, `values` can be any shape and will be
		    flattened before use.
		axis : int, optional
		    The axis along which `values` are appended.  If `axis` is not
		    given, both `arr` and `values` are flattened before use.
		
		Returns
		-------
		append : ndarray
		    A copy of `arr` with `values` appended to `axis`.  Note that
		    `append` does not occur in-place: a new array is allocated and
		    filled.  If `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		delete : Delete elements from an array.
		
		Examples
		--------
		>>> np.append([1, 2, 3], [[4, 5, 6], [7, 8, 9]])
		array([1, 2, 3, ..., 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		    ...
		ValueError: all the input arrays must have same number of dimensions, but
		the array at index 0 has 2 dimension(s) and the array at index 1 has 1
		dimension(s)
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
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
		    even if n=1). It must return 1-D array_like of shape (m,) or a scalar.
		x0 : array_like of shape (n,) or float
		    Point at which to estimate the derivatives. Float will be converted
		    to a 1-D array.
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
		    Relative step size to use. If None (default) the absolute step size is
		    computed as ``h = rel_step * sign(x0) * max(1, abs(x0))``, with
		    `rel_step` being selected automatically, see Notes. Otherwise
		    ``h = rel_step * sign(x0) * abs(x0)``. For ``method='3-point'`` the
		    sign of `h` is ignored. The calculated step size is possibly adjusted
		    to fit into the bounds.
		abs_step : array_like, optional
		    Absolute step size to use, possibly adjusted to fit into the bounds.
		    For ``method='3-point'`` the sign of `abs_step` is ignored. By default
		    relative steps are used, only if ``abs_step is not None`` are absolute
		    steps used.
		f0 : None or array_like, optional
		    If not None it is assumed to be equal to ``fun(x0)``, in this case
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
		    a 2-D structure, for ndarrays, if m=1 it is returned
		    as a 1-D gradient array with shape (n,).
		
		See Also
		--------
		check_derivative : Check correctness of a function computing derivatives.
		
		Notes
		-----
		If `rel_step` is not provided, it assigned as ``EPS**(1/s)``, where EPS is
		determined from the smallest floating point dtype of `x0` or `fun(x0)`,
		``np.finfo(x0.dtype).eps``, s=2 for '2-point' method and
		s=3 for '3-point' method. Such relative step approximately minimizes a sum
		of truncation and round-off errors, see [1]_. Relative steps are used by
		default. However, absolute steps are used when ``abs_step is not None``.
		If any of the absolute or relative steps produces an indistinguishable
		difference from the original `x0`, ``(x0 + dx) - x0 == 0``, then a
		automatic step size is substituted for that particular entry.
		
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
		different cases. b) In all cases np.atleast_2d can be called to get 2-D
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
	static public function approx_derivative(fun:Dynamic, x0:Dynamic, ?method:Dynamic, ?rel_step:Dynamic, ?abs_step:Dynamic, ?f0:Dynamic, ?bounds:Dynamic, ?sparsity:Dynamic, ?as_linear_operator:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Approximate the Jacobian matrix of a callable function.
		
		Parameters
		----------
		x : array_like
		    The state vector at which to compute the Jacobian matrix.
		func : callable f(x,*args)
		    The vector-valued function.
		epsilon : float
		    The perturbation used to determine the partial derivatives.
		args : sequence
		    Additional arguments passed to func.
		
		Returns
		-------
		An array of dimensions ``(lenf, lenx)`` where ``lenf`` is the length
		of the outputs of `func`, and ``lenx`` is the number of elements in
		`x`.
		
		Notes
		-----
		The approximation is done using forward differences.
	**/
	static public function approx_jacobian(x:Dynamic, func:Dynamic, epsilon:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array converted to a float type.
		
		Parameters
		----------
		a : array_like
		    The input array.
		dtype : str or dtype object, optional
		    Float type code to coerce input array `a`.  If `dtype` is one of the
		    'int' dtypes, it is replaced with float64.
		
		Returns
		-------
		out : ndarray
		    The input `a` as a float ndarray.
		
		Examples
		--------
		>>> np.asfarray([2, 3])
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[0., 1., 2.],
		       [3., 4., 5.],
		       [6., 7., 8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		concatenate((a1, a2, ...), axis=0, out=None, dtype=None, casting="same_kind")
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		dtype : str or dtype
		    If provided, the destination array will have this dtype. Cannot be
		    provided together with `out`.
		
		    .. versionadded:: 1.20.0
		
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur. Defaults to 'same_kind'.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		block : Assemble arrays from blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data=[0, --, 2],
		             mask=[False,  True, False],
		       fill_value=999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data=[0, 1, 2, 2, 3, 4],
		             mask=False,
		       fill_value=999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data=[0, --, 2, 2, 3, 4],
		             mask=[False,  True, False, False, False, False],
		       fill_value=999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       https://personal.math.ubc.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Minimize a function using Sequential Least Squares Programming
		
		Python interface function for the SLSQP Optimization subroutine
		originally implemented by Dieter Kraft.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function.  Must return a scalar.
		x0 : 1-D ndarray of float
		    Initial guess for the independent variable(s).
		eqcons : list, optional
		    A list of functions of length n such that
		    eqcons[j](x,*args) == 0.0 in a successfully optimized
		    problem.
		f_eqcons : callable f(x,*args), optional
		    Returns a 1-D array in which each element must equal 0.0 in a
		    successfully optimized problem. If f_eqcons is specified,
		    eqcons is ignored.
		ieqcons : list, optional
		    A list of functions of length n such that
		    ieqcons[j](x,*args) >= 0.0 in a successfully optimized
		    problem.
		f_ieqcons : callable f(x,*args), optional
		    Returns a 1-D ndarray in which each element must be greater or
		    equal to 0.0 in a successfully optimized problem. If
		    f_ieqcons is specified, ieqcons is ignored.
		bounds : list, optional
		    A list of tuples specifying the lower and upper bound
		    for each independent variable [(xl0, xu0),(xl1, xu1),...]
		    Infinite values will be interpreted as large floating values.
		fprime : callable `f(x,*args)`, optional
		    A function that evaluates the partial derivatives of func.
		fprime_eqcons : callable `f(x,*args)`, optional
		    A function of the form `f(x, *args)` that returns the m by n
		    array of equality constraint normals. If not provided,
		    the normals will be approximated. The array returned by
		    fprime_eqcons should be sized as ( len(eqcons), len(x0) ).
		fprime_ieqcons : callable `f(x,*args)`, optional
		    A function of the form `f(x, *args)` that returns the m by n
		    array of inequality constraint normals. If not provided,
		    the normals will be approximated. The array returned by
		    fprime_ieqcons should be sized as ( len(ieqcons), len(x0) ).
		args : sequence, optional
		    Additional arguments passed to func and fprime.
		iter : int, optional
		    The maximum number of iterations.
		acc : float, optional
		    Requested accuracy.
		iprint : int, optional
		    The verbosity of fmin_slsqp :
		
		    * iprint <= 0 : Silent operation
		    * iprint == 1 : Print summary upon completion (default)
		    * iprint >= 2 : Print status of each iterate and summary
		disp : int, optional
		    Overrides the iprint interface (preferred).
		full_output : bool, optional
		    If False, return only the minimizer of func (default).
		    Otherwise, output final objective function and summary
		    information.
		epsilon : float, optional
		    The step size for finite-difference derivative estimates.
		callback : callable, optional
		    Called after each iteration, as ``callback(x)``, where ``x`` is the
		    current parameter vector.
		
		Returns
		-------
		out : ndarray of float
		    The final minimizer of func.
		fx : ndarray of float, if full_output is true
		    The final value of the objective function.
		its : int, if full_output is true
		    The number of iterations.
		imode : int, if full_output is true
		    The exit mode from the optimizer (see below).
		smode : string, if full_output is true
		    Message describing the exit mode from the optimizer.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'SLSQP' `method` in particular.
		
		Notes
		-----
		Exit modes are defined as follows ::
		
		    -1 : Gradient evaluation required (g & a)
		     0 : Optimization terminated successfully
		     1 : Function evaluation required (f & c)
		     2 : More equality constraints than independent variables
		     3 : More than 3*n iterations in LSQ subproblem
		     4 : Inequality constraints incompatible
		     5 : Singular matrix E in LSQ subproblem
		     6 : Singular matrix C in LSQ subproblem
		     7 : Rank-deficient equality constraint subproblem HFTI
		     8 : Positive directional derivative for linesearch
		     9 : Iteration limit reached
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-sqlsp>`.
	**/
	static public function fmin_slsqp(func:Dynamic, x0:Dynamic, ?eqcons:Dynamic, ?f_eqcons:Dynamic, ?ieqcons:Dynamic, ?f_ieqcons:Dynamic, ?bounds:Dynamic, ?fprime:Dynamic, ?fprime_eqcons:Dynamic, ?fprime_ieqcons:Dynamic, ?args:Dynamic, ?iter:Dynamic, ?acc:Dynamic, ?iprint:Dynamic, ?disp:Dynamic, ?full_output:Dynamic, ?epsilon:Dynamic, ?callback:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the old bounds representation to the new one.
		
		The new representation is a tuple (lb, ub) and the old one is a list
		containing n tuples, ith containing lower and upper bound on a ith
		variable.
		If any of the entries in lb/ub are None they are replaced by
		-np.inf/np.inf.
	**/
	static public function old_bound_to_new(bounds:Dynamic):Dynamic;
	/**
		slsqp(m,meq,x,xl,xu,f,c,g,a,acc,iter,mode,w,jw,alpha,f0,gs,h1,h2,h3,h4,t,t0,tol,iexact,incons,ireset,itermx,line,n1,n2,n3,[la,n,l_w,l_jw])
		
		Wrapper for ``slsqp``.
		
		Parameters
		----------
		m : input int
		meq : input int
		x : in/output rank-1 array('d') with bounds (n)
		xl : input rank-1 array('d') with bounds (n)
		xu : input rank-1 array('d') with bounds (n)
		f : input float
		c : input rank-1 array('d') with bounds (la)
		g : input rank-1 array('d') with bounds (n + 1)
		a : input rank-2 array('d') with bounds (la,n + 1)
		acc : in/output rank-0 array(float,'d')
		iter : in/output rank-0 array(int,'i')
		mode : in/output rank-0 array(int,'i')
		w : input rank-1 array('d') with bounds (l_w)
		jw : input rank-1 array('i') with bounds (l_jw)
		alpha : in/output rank-0 array(float,'d')
		f0 : in/output rank-0 array(float,'d')
		gs : in/output rank-0 array(float,'d')
		h1 : in/output rank-0 array(float,'d')
		h2 : in/output rank-0 array(float,'d')
		h3 : in/output rank-0 array(float,'d')
		h4 : in/output rank-0 array(float,'d')
		t : in/output rank-0 array(float,'d')
		t0 : in/output rank-0 array(float,'d')
		tol : in/output rank-0 array(float,'d')
		iexact : in/output rank-0 array(int,'i')
		incons : in/output rank-0 array(int,'i')
		ireset : in/output rank-0 array(int,'i')
		itermx : in/output rank-0 array(int,'i')
		line : in/output rank-0 array(int,'i')
		n1 : in/output rank-0 array(int,'i')
		n2 : in/output rank-0 array(int,'i')
		n3 : in/output rank-0 array(int,'i')
		
		Other Parameters
		----------------
		la : input int, optional
		    Default: len(c)
		n : input int, optional
		    Default: len(x)
		l_w : input int, optional
		    Default: len(w)
		l_jw : input int, optional
		    Default: len(jw)
	**/
	static public function slsqp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, np.inf])
		array([ 2., nan, inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stack arrays in sequence vertically (row wise).
		
		This is equivalent to concatenation along the first axis after 1-D arrays
		of shape `(N,)` have been reshaped to `(1,N)`. Rebuilds arrays divided by
		`vsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the first axis.
		    1-D arrays must have the same length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 2-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		vsplit : Split an array into multiple sub-arrays vertically (row-wise).
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[4], [5], [6]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [4],
		       [5],
		       [6]])
	**/
	static public function vstack(tup:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
}