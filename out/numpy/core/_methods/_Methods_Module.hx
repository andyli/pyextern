/* This file is generated, do not edit! */
package numpy.core._methods;
@:pythonImport("numpy.core._methods") extern class _Methods_Module {
	static public var _NoValue : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public function _amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public function _any(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _count_reduce_items(arr:Dynamic, axis:Dynamic):Dynamic;
	static public function _mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public function _ptp(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _std(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public function _var(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or column-major
		    (Fortran-style) memory representation.  Defaults to 'C'.
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_any(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False, initial)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If not provided or `None`,
		    a freshly-allocated array is returned. For consistency with
		    :ref:`ufunc.__call__`, if given as a keyword, this may be wrapped in a
		    1-element tuple.
		
		    .. versionchanged:: 1.13.0
		       Tuples are allowed for keyword argument.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		initial : scalar, optional
		    The value with which to start the reduction.
		    If the ufunc has no identity or the dtype is object, this defaults
		    to None - otherwise it defaults to ufunc.identity.
		    If ``None`` is given, the first element of the reduction is used,
		    and an error is thrown if the reduction is empty.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
		
		You can use the ``initial`` keyword argument to initialize the reduction with a
		different value.
		
		>>> np.add.reduce([10], initial=5)
		15
		>>> np.add.reduce(np.ones((2, 2, 2)), axis=(0, 2), initializer=10)
		array([14., 14.])
		
		Allows reductions of empty arrays where they would normally fail, i.e.
		for ufuncs without an identity.
		
		>>> np.minimum.reduce([], initial=np.inf)
		inf
		>>> np.minimum.reduce([])
		Traceback (most recent call last):
		    ...
		ValueError: zero-size array to reduction operation minimum which has no identity
	**/
	static public function umr_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
}