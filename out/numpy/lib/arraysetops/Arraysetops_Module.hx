/* This file is generated, do not edit! */
package numpy.lib.arraysetops;
@:pythonImport("numpy.lib.arraysetops") extern class Arraysetops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Find the unique elements of an array, ignoring shape.
	**/
	static public function _unique1d(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		The differences between consecutive elements of an array.
		
		Parameters
		----------
		ary : array_like
		    If necessary, will be flattened before the differences are taken.
		to_end : array_like, optional
		    Number(s) to append at the end of the returned differences.
		to_begin : array_like, optional
		    Number(s) to prepend at the beginning of the returned differences.
		
		Returns
		-------
		ediff1d : ndarray
		    The differences. Loosely, this is ``ary.flat[1:] - ary.flat[:-1]``.
		
		See Also
		--------
		diff, gradient
		
		Notes
		-----
		When applied to masked arrays, this function drops the mask information
		if the `to_begin` and/or `to_end` parameters are used.
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.ediff1d(x)
		array([ 1,  2,  3, -7])
		
		>>> np.ediff1d(x, to_begin=-99, to_end=np.array([88, 99]))
		array([-99,   1,   2,   3,  -7,  88,  99])
		
		The returned array is always 1D.
		
		>>> y = [[1, 2, 4], [1, 6, 24]]
		>>> np.ediff1d(y)
		array([ 1,  2, -3,  5, 18])
	**/
	static public function ediff1d(ary:Dynamic, ?to_end:Dynamic, ?to_begin:Dynamic):numpy.Ndarray;
	/**
		Test whether each element of a 1-D array is also present in a second array.
		
		Returns a boolean array the same length as `ar1` that is True
		where an element of `ar1` is in `ar2` and False otherwise.
		
		We recommend using :func:`isin` instead of `in1d` for new code.
		
		Parameters
		----------
		ar1 : (M,) array_like
		    Input array.
		ar2 : array_like
		    The values against which to test each value of `ar1`.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted (that is,
		    False where an element of `ar1` is in `ar2` and True otherwise).
		    Default is False. ``np.in1d(a, b, invert=True)`` is equivalent
		    to (but is faster than) ``np.invert(in1d(a, b))``.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		in1d : (M,) ndarray, bool
		    The values `ar1[in1d]` are in `ar2`.
		
		See Also
		--------
		isin                  : Version of this function that preserves the
		                        shape of ar1.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		`in1d` can be considered as an element-wise function version of the
		python keyword `in`, for 1-D sequences. ``in1d(a, b)`` is roughly
		equivalent to ``np.array([item in b for item in a])``.
		However, this idea fails if `ar2` is a set, or similar (non-sequence)
		container:  As ``ar2`` is converted to an array, in those cases
		``asarray(ar2)`` is an object array rather than the expected array of
		contained values.
		
		.. versionadded:: 1.4.0
		
		Examples
		--------
		>>> test = np.array([0, 1, 2, 5, 0])
		>>> states = [0, 2]
		>>> mask = np.in1d(test, states)
		>>> mask
		array([ True, False,  True, False,  True], dtype=bool)
		>>> test[mask]
		array([0, 2, 0])
		>>> mask = np.in1d(test, states, invert=True)
		>>> mask
		array([False,  True, False,  True, False], dtype=bool)
		>>> test[mask]
		array([1, 5])
	**/
	static public function in1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	/**
		Find the intersection of two arrays.
		
		Return the sorted, unique values that are in both of the input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		intersect1d : ndarray
		    Sorted 1D array of common and unique elements.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.intersect1d([1, 3, 4, 3], [3, 1, 2, 1])
		array([1, 3])
		
		To intersect more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.intersect1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([3])
	**/
	static public function intersect1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Calculates `element in test_elements`, broadcasting over `element` only.
		Returns a boolean array of the same shape as `element` that is True
		where an element of `element` is in `test_elements` and False otherwise.
		
		Parameters
		----------
		element : array_like
		    Input array.
		test_elements : array_like
		    The values against which to test each value of `element`.
		    This argument is flattened if it is an array or array_like.
		    See notes for behavior with non-array-like parameters.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted, as if
		    calculating `element not in test_elements`. Default is False.
		    ``np.isin(a, b, invert=True)`` is equivalent to (but faster
		    than) ``np.invert(np.isin(a, b))``.
		
		Returns
		-------
		isin : ndarray, bool
		    Has the same shape as `element`. The values `element[isin]`
		    are in `test_elements`.
		
		See Also
		--------
		in1d                  : Flattened version of this function.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		
		`isin` is an element-wise function version of the python keyword `in`.
		``isin(a, b)`` is roughly equivalent to
		``np.array([item in b for item in a])`` if `a` and `b` are 1-D sequences.
		
		`element` and `test_elements` are converted to arrays if they are not
		already. If `test_elements` is a set (or other non-sequence collection)
		it will be converted to an object array with one element, rather than an
		array of the values contained in `test_elements`. This is a consequence
		of the `array` constructor's way of handling non-sequence collections.
		Converting the set to a list usually gives the desired behavior.
		
		.. versionadded:: 1.13.0
		
		Examples
		--------
		>>> element = 2*np.arange(4).reshape((2, 2))
		>>> element
		array([[0, 2],
		       [4, 6]])
		>>> test_elements = [1, 2, 4, 8]
		>>> mask = np.isin(element, test_elements)
		>>> mask
		array([[ False,  True],
		       [ True,  False]], dtype=bool)
		>>> element[mask]
		array([2, 4])
		>>> mask = np.isin(element, test_elements, invert=True)
		>>> mask
		array([[ True, False],
		       [ False, True]], dtype=bool)
		>>> element[mask]
		array([0, 6])
		
		Because of how `array` handles sets, the following does not
		work as expected:
		
		>>> test_set = {1, 2, 4, 8}
		>>> np.isin(element, test_set)
		array([[ False, False],
		       [ False, False]], dtype=bool)
		
		Casting the set to a list gives the expected result:
		
		>>> np.isin(element, list(test_set))
		array([[ False,  True],
		       [ True,  False]], dtype=bool)
	**/
	static public function isin(element:Dynamic, test_elements:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Find the set difference of two arrays.
		
		Return the sorted, unique values in `ar1` that are not in `ar2`.
		
		Parameters
		----------
		ar1 : array_like
		    Input array.
		ar2 : array_like
		    Input comparison array.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setdiff1d : ndarray
		    Sorted 1D array of values in `ar1` that are not in `ar2`.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4, 1])
		>>> b = np.array([3, 4, 5, 6])
		>>> np.setdiff1d(a, b)
		array([1, 2])
	**/
	static public function setdiff1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Find the set exclusive-or of two arrays.
		
		Return the sorted, unique values that are in only one (not both) of the
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setxor1d : ndarray
		    Sorted 1D array of unique values that are in only one of the input
		    arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4])
		>>> b = np.array([2, 3, 5, 7, 5])
		>>> np.setxor1d(a,b)
		array([1, 4, 5, 7])
	**/
	static public function setxor1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Find the union of two arrays.
		
		Return the unique, sorted array of values that are in either of the two
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays. They are flattened if they are not already 1D.
		
		Returns
		-------
		union1d : ndarray
		    Unique, sorted union of the input arrays.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.union1d([-1, 0, 1], [-2, 0, 2])
		array([-2, -1,  0,  1,  2])
		
		To find the union of more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.union1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([1, 2, 3, 4, 6])
	**/
	static public function union1d(ar1:Dynamic, ar2:Dynamic):numpy.Ndarray;
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
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?axis:Dynamic):numpy.Ndarray;
}