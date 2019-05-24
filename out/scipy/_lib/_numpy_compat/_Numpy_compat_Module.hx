/* This file is generated, do not edit! */
package scipy._lib._numpy_compat;
@:pythonImport("scipy._lib._numpy_compat") extern class _Numpy_compat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Fail unless the given callable throws the specified warning.
		
		A warning of class warning_class should be thrown by the callable when
		invoked with arguments args and keyword arguments kwargs.
		If a different type of warning is thrown, it will not be caught.
		
		If called with all arguments other than the warning class omitted, may be
		used as a context manager:
		
		    with assert_warns(SomeWarning):
		        do_something()
		
		The ability to be used as a context manager is new in NumPy v1.11.0.
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		warning_class : class
		    The class defining the warning that `func` is expected to throw.
		func : callable
		    The callable to test.
		\*args : Arguments
		    Arguments passed to `func`.
		\*\*kwargs : Kwargs
		    Keyword arguments passed to `func`.
		
		Returns
		-------
		The value returned by `func`.
	**/
	static public function _assert_warns(warning_class:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple
		    The shape of the desired array.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcast : array
		    A readonly view on the original array with the given shape. It is
		    typically not contiguous. Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.
		
		Raises
		------
		ValueError
		    If the array is not compatible with the new shape according to NumPy's
		    broadcasting rules.
		
		Notes
		-----
		.. versionadded:: 1.10.0
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> np.broadcast_to(x, (3, 3))
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]])
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Array<Dynamic>;
	/**
		Estimate a covariance matrix, given data and weights.
		
		Covariance indicates the level to which two variables vary together.
		If we examine N-dimensional samples, :math:`X = [x_1, x_2, ... x_N]^T`,
		then the covariance matrix element :math:`C_{ij}` is the covariance of
		:math:`x_i` and :math:`x_j`. The element :math:`C_{ii}` is the variance
		of :math:`x_i`.
		
		See the notes for an outline of the algorithm.
		
		Parameters
		----------
		m : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `m` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same form
		    as that of `m`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : bool, optional
		    Default normalization (False) is by ``(N - 1)``, where ``N`` is the
		    number of observations given (unbiased estimate). If `bias` is True,
		    then normalization is by ``N``. These values can be overridden by using
		    the keyword ``ddof`` in numpy versions >= 1.5.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    Note that ``ddof=1`` will return the unbiased estimate, even if both
		    `fweights` and `aweights` are specified, and ``ddof=0`` will return
		    the simple average. See the notes for the details. The default value
		    is ``None``.
		
		    .. versionadded:: 1.5
		fweights : array_like, int, optional
		    1-D array of integer frequency weights; the number of times each
		    observation vector should be repeated.
		
		    .. versionadded:: 1.10
		aweights : array_like, optional
		    1-D array of observation vector weights. These relative weights are
		    typically large for observations considered "important" and smaller for
		    observations considered less "important". If ``ddof=0`` the array of
		    weights can be used to assign probabilities to observation vectors.
		
		    .. versionadded:: 1.10
		
		Returns
		-------
		out : ndarray
		    The covariance matrix of the variables.
		
		See Also
		--------
		corrcoef : Normalized covariance matrix
		
		Notes
		-----
		Assume that the observations are in the columns of the observation
		array `m` and let ``f = fweights`` and ``a = aweights`` for brevity. The
		steps to compute the weighted covariance are as follows::
		
		    >>> w = f * a
		    >>> v1 = np.sum(w)
		    >>> v2 = np.sum(w * a)
		    >>> m -= np.sum(m * w, axis=1, keepdims=True) / v1
		    >>> cov = np.dot(m * w, m.T) * v1 / (v1**2 - ddof * v2)
		
		Note that when ``a == 1``, the normalization factor
		``v1 / (v1**2 - ddof * v2)`` goes over to ``1 / (np.sum(f) - ddof)``
		as it should.
		
		Examples
		--------
		Consider two variables, :math:`x_0` and :math:`x_1`, which
		correlate perfectly, but in opposite directions:
		
		>>> x = np.array([[0, 2], [1, 1], [2, 0]]).T
		>>> x
		array([[0, 1, 2],
		       [2, 1, 0]])
		
		Note how :math:`x_0` increases while :math:`x_1` decreases. The covariance
		matrix shows this clearly:
		
		>>> np.cov(x)
		array([[ 1., -1.],
		       [-1.,  1.]])
		
		Note that element :math:`C_{0,1}`, which shows the correlation between
		:math:`x_0` and :math:`x_1`, is negative.
		
		Further, note how `x` and `y` are combined:
		
		>>> x = [-2.1, -1,  4.3]
		>>> y = [3,  1.1,  0.12]
		>>> X = np.stack((x, y), axis=0)
		>>> print(np.cov(X))
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print(np.cov(x, y))
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print(np.cov(x))
		11.71
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_randint(random_state:Dynamic):Dynamic;
	/**
		Evaluate a polynomial specified by its roots at points x.
		
		If `r` is of length `N`, this function returns the value
		
		.. math:: p(x) = \prod_{n=1}^{N} (x - r_n)
		
		The parameter `x` is converted to an array only if it is a tuple or a
		list, otherwise it is treated as a scalar. In either case, either `x`
		or its elements must support multiplication and addition both with
		themselves and with the elements of `r`.
		
		If `r` is a 1-D array, then `p(x)` will have the same shape as `x`.  If `r`
		is multidimensional, then the shape of the result depends on the value of
		`tensor`. If `tensor is ``True`` the shape will be r.shape[1:] + x.shape;
		that is, each polynomial is evaluated at every value of `x`. If `tensor` is
		``False``, the shape will be r.shape[1:]; that is, each polynomial is
		evaluated only for the corresponding broadcast value of `x`. Note that
		scalars have shape (,).
		
		.. versionadded:: 1.12
		
		Parameters
		----------
		x : array_like, compatible object
		    If `x` is a list or tuple, it is converted to an ndarray, otherwise
		    it is left unchanged and treated as a scalar. In either case, `x`
		    or its elements must support addition and multiplication with
		    with themselves and with the elements of `r`.
		r : array_like
		    Array of roots. If `r` is multidimensional the first index is the
		    root index, while the remaining indices enumerate multiple
		    polynomials. For instance, in the two dimensional case the roots
		    of each polynomial may be thought of as stored in the columns of `r`.
		tensor : boolean, optional
		    If True, the shape of the roots array is extended with ones on the
		    right, one for each dimension of `x`. Scalars have dimension 0 for this
		    action. The result is that every column of coefficients in `r` is
		    evaluated for every element of `x`. If False, `x` is broadcast over the
		    columns of `r` for the evaluation.  This keyword is useful when `r` is
		    multidimensional. The default value is True.
		
		Returns
		-------
		values : ndarray, compatible object
		    The shape of the returned array is described above.
		
		See Also
		--------
		polyroots, polyfromroots, polyval
		
		Examples
		--------
		>>> from numpy.polynomial.polynomial import polyvalfromroots
		>>> polyvalfromroots(1, [1,2,3])
		0.0
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> polyvalfromroots(a, [-1, 0, 1])
		array([[ -0.,   0.],
		       [  6.,  24.]])
		>>> r = np.arange(-2, 2).reshape(2,2) # multidimensional coefficients
		>>> r # each column of r defines one polynomial
		array([[-2, -1],
		       [ 0,  1]])
		>>> b = [-2, 1]
		>>> polyvalfromroots(b, r, tensor=True)
		array([[-0.,  3.],
		       [ 3., 0.]])
		>>> polyvalfromroots(b, r, tensor=False)
		array([-0.,  0.])
	**/
	static public function polyvalfromroots(x:Dynamic, r:Dynamic, ?tensor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements:
		
		* the indices of the input array that give the unique values
		* the indices of the unique array that reconstruct the input array
		* the number of times each unique value comes up in the input array
		
		Parameters
		----------
		ar : array_like
		    Input array. Unless `axis` is specified, this will be flattened if it
		    is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` (along the specified axis,
		    if provided, or in the flattened array) that result in the unique array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array (for the specified
		    axis, if provided) that can be used to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique item appears
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		axis : int or None, optional
		    The axis to operate on. If None, `ar` will be flattened. If an integer,
		    the subarrays indexed by the given axis will be flattened and treated
		    as the elements of a 1-D array with the dimension of the given axis,
		    see the notes for more details.  Object arrays or structured arrays
		    that contain objects are not supported if the `axis` kwarg is used. The
		    default is None.
		
		    .. versionadded:: 1.13.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		When an axis is specified the subarrays indexed by the axis are sorted.
		This is done by making the specified axis the first dimension of the array
		and then flattening the subarrays in C order. The flattened subarrays are
		then viewed as a structured type with each element given a label, with the
		effect that we end up with a 1-D array of structured types that can be
		treated in the same way as any other 1-D array. The result is that the
		flattened subarrays are sorted in lexicographic order starting with the
		first element.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the unique rows of a 2D array
		
		>>> a = np.array([[1, 0, 0], [1, 0, 0], [2, 3, 4]])
		>>> np.unique(a, axis=0)
		array([[1, 0, 0], [2, 3, 4]])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'],
		       dtype='|S1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'],
		       dtype='|S1')
		
		Reconstruct the input array from the unique values:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}