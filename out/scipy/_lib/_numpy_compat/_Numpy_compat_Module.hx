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
		Fail unless an exception of class exception_class and with message that
		matches expected_regexp is thrown by callable when invoked with arguments
		args and keyword arguments kwargs.
		Name of this function adheres to Python 3.2+ reference, but should work in
		all versions down to 2.6.
		Notes
		-----
		.. versionadded:: 1.8.0
	**/
	static public function assert_raises_regex(exception_class:Dynamic, expected_regexp:Dynamic, ?callable_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var division : Dynamic;
	/**
		Import nose only when needed.
		    
	**/
	static public function import_nose():Dynamic;
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
		outputs in addition to the unique elements: the indices of the input array
		that give the unique values, the indices of the unique array that
		reconstruct the input array, and the number of times each unique value
		comes up in the input array.
		
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
		    The axis to operate on. If None, `ar` will be flattened beforehand.
		    Otherwise, duplicate items will be removed along the provided axis,
		    with all the other axes belonging to the each of the unique elements.
		    Object arrays or structured arrays that contain objects are not
		    supported if the `axis` kwarg is used.
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
}