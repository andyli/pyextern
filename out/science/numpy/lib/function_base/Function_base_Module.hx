/* This file is generated, do not edit! */
package numpy.lib.function_base;
@:pythonImport("numpy.lib.function_base") extern class Function_base_Module {
	static public var _ARGUMENT : Dynamic;
	static public var _ARGUMENT_LIST : Dynamic;
	static public var _CORE_DIMENSION_LIST : Dynamic;
	static public var _DIMENSION_NAME : Dynamic;
	static public var _QuantileMethods : Dynamic;
	static public var _SIGNATURE : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _angle_dispatcher(z:Dynamic, ?deg:Dynamic):Dynamic;
	static public function _append_dispatcher(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _average_dispatcher(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		Helper for calculating broadcast shapes with core dimensions.
	**/
	static public function _calculate_shapes(broadcast_shape:Dynamic, dim_sizes:Dynamic, list_of_core_dims:Dynamic):Dynamic;
	static public function _chbevl(x:Dynamic, vals:Dynamic):Dynamic;
	static public function _check_interpolation_as_method(method:Dynamic, interpolation:Dynamic, fname:Dynamic):Dynamic;
	static public function _closest_observation(n:Dynamic, quantiles:Dynamic):Dynamic;
	/**
		Compute the floating point indexes of an array for the linear
		interpolation of quantiles.
		n : array_like
		    The sample sizes.
		quantiles : array_like
		    The quantiles values.
		alpha : float
		    A constant used to correct the index computed.
		beta : float
		    A constant used to correct the index computed.
		
		alpha and beta values depend on the chosen method
		(see quantile documentation)
		
		Reference:
		Hyndman&Fan paper "Sample Quantiles in Statistical Packages",
		DOI: 10.1080/00031305.1996.10473566
	**/
	static public function _compute_virtual_index(n:Dynamic, quantiles:Dynamic, alpha:Dynamic, beta:Dynamic):Dynamic;
	static public function _copy_dispatcher(a:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
	static public function _corrcoef_dispatcher(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _cov_dispatcher(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Helper for creating output arrays in vectorize.
	**/
	static public function _create_arrays(broadcast_shape:Dynamic, dim_sizes:Dynamic, list_of_core_dims:Dynamic, dtypes:Dynamic, ?results:Dynamic):Dynamic;
	static public function _delete_dispatcher(arr:Dynamic, obj:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _diff_dispatcher(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?prepend:Dynamic, ?append:Dynamic):Dynamic;
	static public function _digitize_dispatcher(x:Dynamic, bins:Dynamic, ?right:Dynamic):Dynamic;
	static public function _discret_interpolation_to_boundaries(index:Dynamic, gamma_condition_fun:Dynamic):Dynamic;
	static public function _extract_dispatcher(condition:Dynamic, arr:Dynamic):Dynamic;
	static public function _flip_dispatcher(m:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute gamma (a.k.a 'm' or 'weight') for the linear interpolation
		of quantiles.
		
		virtual_indexes : array_like
		    The indexes where the percentile is supposed to be found in the sorted
		    sample.
		previous_indexes : array_like
		    The floor values of virtual_indexes.
		interpolation : dict
		    The interpolation method chosen, which may have a specific rule
		    modifying gamma.
		
		gamma is usually the fractional part of virtual_indexes but can be modified
		by the interpolation method.
	**/
	static public function _get_gamma(virtual_indexes:Dynamic, previous_indexes:Dynamic, method:Dynamic):Dynamic;
	static public function _get_gamma_mask(shape:Dynamic, default_value:Dynamic, conditioned_value:Dynamic, where:Dynamic):Dynamic;
	/**
		Get the valid indexes of arr neighbouring virtual_indexes.
		Note
		This is a companion function to linear interpolation of
		Quantiles
		
		Returns
		-------
		(previous_indexes, next_indexes): Tuple
		    A Tuple of virtual_indexes neighbouring indexes
	**/
	static public function _get_indexes(arr:Dynamic, virtual_indexes:Dynamic, valid_values_count:Dynamic):Dynamic;
	static public function _gradient_dispatcher(f:Dynamic, ?varargs:python.VarArgs<Dynamic>, ?axis:Dynamic, ?edge_order:Dynamic):Dynamic;
	static public var _i0A : Dynamic;
	static public var _i0B : Dynamic;
	static public function _i0_1(x:Dynamic):Dynamic;
	static public function _i0_2(x:Dynamic):Dynamic;
	static public function _i0_dispatcher(x:Dynamic):Dynamic;
	/**
		Insert vals sequentially into equivalent 1-d positions indicated by mask.
	**/
	static public function _insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _insert_dispatcher(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _interp_dispatcher(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
	static public function _inverted_cdf(n:Dynamic, quantiles:Dynamic):Dynamic;
	/**
		Compute the linear interpolation weighted by gamma on each point of
		two same shape array.
		
		a : array_like
		    Left bound.
		b : array_like
		    Right bound.
		t : array_like
		    The interpolation weight.
		out : array_like
		    Output array.
	**/
	static public function _lerp(a:Dynamic, b:Dynamic, t:Dynamic, ?out:Dynamic):Dynamic;
	static public function _median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	static public function _median_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _meshgrid_dispatcher(?xi:python.VarArgs<Dynamic>, ?copy:Dynamic, ?sparse:Dynamic, ?indexing:Dynamic):Dynamic;
	static public function _monotonicity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _msort_dispatcher(a:Dynamic):Dynamic;
	/**
		Parse string signatures for a generalized universal function.
		
		Arguments
		---------
		signature : string
		    Generalized universal function signature, e.g., ``(m,n),(n,p)->(m,p)``
		    for ``np.matmul``.
		
		Returns
		-------
		Tuple of input and output core dimensions parsed from the signature, each
		of the form List[Tuple[str, ...]].
	**/
	static public function _parse_gufunc_signature(signature:Dynamic):Dynamic;
	/**
		Parse broadcast and core dimensions for vectorize with a signature.
		
		Arguments
		---------
		args : Tuple[ndarray, ...]
		    Tuple of input arguments to examine.
		input_core_dims : List[Tuple[str, ...]]
		    List of core dimensions corresponding to each input.
		
		Returns
		-------
		broadcast_shape : Tuple[int, ...]
		    Common shape to broadcast all non-core dimensions to.
		dim_sizes : Dict[str, int]
		    Common sizes for named core dimensions.
	**/
	static public function _parse_input_dimensions(args:Dynamic, input_core_dims:Dynamic):Dynamic;
	static public function _percentile_dispatcher(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public function _piecewise_dispatcher(x:Dynamic, condlist:Dynamic, funclist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function _place_dispatcher(arr:Dynamic, mask:Dynamic, vals:Dynamic):Dynamic;
	/**
		Private function that doesn't support extended axis or keepdims.
		These methods are extended to this function using _ureduce
		See nanpercentile for parameter usage
		It computes the quantiles of the array for the given axis.
		A linear interpolation is performed based on the `interpolation`.
		
		By default, the method is "linear" where alpha == beta == 1 which
		performs the 7th method of Hyndman&Fan.
		With "median_unbiased" we get alpha == beta == 1/3
		thus the 8th method of Hyndman&Fan.
	**/
	static public function _quantile(arr:Dynamic, quantiles:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?out:Dynamic):Dynamic;
	static public function _quantile_dispatcher(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public function _quantile_is_valid(q:Dynamic):Dynamic;
	/**
		Assumes that q is in [0, 1], and is an ndarray
	**/
	static public function _quantile_unchecked(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _quantile_ureduce_func(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic):Dynamic;
	static public function _rot90_dispatcher(m:Dynamic, ?k:Dynamic, ?axes:Dynamic):Dynamic;
	static public function _select_dispatcher(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):Dynamic;
	static public function _sinc_dispatcher(x:Dynamic):Dynamic;
	static public function _sort_complex(a:Dynamic):Dynamic;
	static public function _trapz_dispatcher(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	static public function _unwrap_dispatcher(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic, ?period:Dynamic):Dynamic;
	/**
		Incrementally check and update core dimension sizes for a single argument.
		
		Arguments
		---------
		dim_sizes : Dict[str, int]
		    Sizes of existing core dimensions. Will be updated in-place.
		arg : ndarray
		    Argument to examine.
		core_dims : Tuple[str, ...]
		    Core dimensions for this argument.
	**/
	static public function _update_dim_sizes(dim_sizes:Dynamic, arg:Dynamic, core_dims:Dynamic):Dynamic;
	/**
		Internal Function.
		Call `func` with `a` as first argument swapping the axes to use extended
		axis on functions that don't support it natively.
		
		Returns result and a.shape with axis dims set to 1.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		func : callable
		    Reduction function capable of receiving a single axis argument.
		    It is called with `a` as first argument followed by `kwargs`.
		kwargs : keyword arguments
		    additional keyword arguments to pass to `func`.
		
		Returns
		-------
		result : tuple
		    Result of func(a, **kwargs) and a.shape with axis dims set to 1
		    which can be used to reshape the result to the same shape a ufunc with
		    keepdims=True would produce.
	**/
	static public function _ureduce(a:Dynamic, func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):python.Tuple<Dynamic>;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
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
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
		
		The `abs` function can be used as a shorthand for ``np.absolute`` on
		ndarrays.
		
		>>> x = np.array([-1.2, 1.2])
		>>> abs(x)
		array([1.2, 1.2])
	**/
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` + `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.add(1.0, 4.0)
		5.0
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.add(x1, x2)
		array([[  0.,   2.,   4.],
		       [  3.,   5.,   7.],
		       [  6.,   8.,  10.]])
		
		The ``+`` operator can be used as a shorthand for ``np.add`` on ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 + x2
		array([[ 0.,  2.,  4.],
		       [ 3.,  5.,  7.],
		       [ 6.,  8., 10.]])
	**/
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Add documentation to an existing object, typically one defined in C
		
		The purpose is to allow easier editing of the docstrings without requiring
		a re-compile. This exists primarily for internal use within numpy itself.
		
		Parameters
		----------
		place : str
		    The absolute name of the module to import from
		obj : str
		    The name of the object to add documentation to, typically a class or
		    function name
		doc : {str, Tuple[str, str], List[Tuple[str, str]]}
		    If a string, the documentation to apply to `obj`
		
		    If a tuple, then the first element is interpreted as an attribute of
		    `obj` and the second as the docstring to apply - ``(method, docstring)``
		
		    If a list, then each element of the list should be a tuple of length
		    two - ``[(method1, docstring1), (method2, docstring2), ...]``
		warn_on_python : bool
		    If True, the default, emit `UserWarning` if this is used to attach
		    documentation to a pure-python object.
		
		Notes
		-----
		This routine never raises an error if the docstring can't be written, but
		will raise an error if the object being documented does not exist.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		
		Since this function grabs the ``char *`` from a c-level str object and puts
		it into the ``tp_doc`` slot of the type of `obj`, it violates a number of
		C-API best-practices, by:
		
		- modifying a `PyTypeObject` after calling `PyType_Ready`
		- calling `Py_INCREF` on the str and losing the reference, so the str
		  will never be released
		
		If possible it should be avoided.
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic, ?warn_on_python:Dynamic):Dynamic;
	/**
		add_ufunc_docstring(ufunc, new_docstring)
		
		Replace the docstring for a ufunc with new_docstring.
		This method will only work if the current docstring for
		the ufunc is NULL. (At the C level, i.e. when ufunc->doc is NULL.)
		
		Parameters
		----------
		ufunc : numpy.ufunc
		    A ufunc whose current doc is NULL.
		new_docstring : string
		    The new docstring for the ufunc.
		
		Notes
		-----
		This method allocates memory for new_docstring on
		the heap. Technically this creates a mempory leak, since this
		memory will not be reclaimed until the end of the program
		even if the ufunc itself is removed. However this will only
		be a problem if the user is repeatedly creating ufuncs with
		no documentation, adding documentation via add_newdoc_ufunc,
		and then throwing away the ufunc.
	**/
	static public function add_newdoc_ufunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the angle of the complex argument.
		
		Parameters
		----------
		z : array_like
		    A complex number or sequence of complex numbers.
		deg : bool, optional
		    Return angle in degrees if True, radians if False (default).
		
		Returns
		-------
		angle : ndarray or scalar
		    The counterclockwise angle from the positive real axis on the complex
		    plane in the range ``(-pi, pi]``, with dtype as numpy.float64.
		
		    .. versionchanged:: 1.16.0
		        This function works on subclasses of ndarray like `ma.array`.
		
		See Also
		--------
		arctan2
		absolute
		
		Notes
		-----
		Although the angle of the complex number 0 is undefined, ``numpy.angle(0)``
		returns the value 0.
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816]) # may vary
		>>> np.angle(1+1j, deg=True)                  # in degrees
		45.0
	**/
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (``axis=None``) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `any` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in checking for any `True` values.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False])
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> np.any([[True, False], [False, False]], where=[[False], [True]])
		False
		
		>>> o=np.array(False)
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array(True), array(True))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
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
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		arange([start,] stop[, step,], dtype=None, *, like=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, it is often better to use
		`numpy.linspace`. See the warnings section below for more information.
		
		Parameters
		----------
		start : integer or real, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : integer or real
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : integer or real, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		Warnings
		--------
		The length of the output might not be numerically stable.
		
		Another stability issue is due to the internal implementation of
		`numpy.arange`.
		The actual step value used to populate the array is
		``dtype(start + step) - dtype(start)`` and not `step`. Precision loss
		can occur here, due to casting or due to using floating points when
		`start` is much larger than `step`. This can lead to unexpected
		behaviour. For example::
		
		  >>> np.arange(0, 5, 0.5, dtype=int)
		  array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		  >>> np.arange(-3, 3, 0.5, dtype=int)
		  array([-3, -2, -1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		In such cases, the use of `numpy.linspace` should be preferred.
		
		See Also
		--------
		numpy.linspace : Evenly spaced numbers with careful handling of endpoints.
		numpy.ogrid: Arrays of evenly spaced numbers in N-dimensions.
		numpy.mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise arc tangent of ``x1/x2`` choosing the quadrant correctly.
		
		The quadrant (i.e., branch) is chosen so that ``arctan2(x1, x2)`` is
		the signed angle in radians between the ray ending at the origin and
		passing through the point (1,0), and the ray ending at the origin and
		passing through the point (`x2`, `x1`).  (Note the role reversal: the
		"`y`-coordinate" is the first function parameter, the "`x`-coordinate"
		is the second.)  By IEEE convention, this function is defined for
		`x2` = +/-0 and for either or both of `x1` and `x2` = +/-inf (see
		Notes for specific values).
		
		This function is not defined for complex-valued arguments; for the
		so-called argument of complex values, use `angle`.
		
		Parameters
		----------
		x1 : array_like, real-valued
		    `y`-coordinates.
		x2 : array_like, real-valued
		    `x`-coordinates.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		arctan, tan, angle
		
		Notes
		-----
		*arctan2* is identical to the `atan2` function of the underlying
		C library.  The following special values are defined in the C
		standard: [1]_
		
		====== ====== ================
		`x1`   `x2`   `arctan2(x1,x2)`
		====== ====== ================
		+/- 0  +0     +/- 0
		+/- 0  -0     +/- pi
		 > 0   +/-inf +0 / +pi
		 < 0   +/-inf -0 / -pi
		+/-inf +inf   +/- (pi/4)
		+/-inf -inf   +/- (3*pi/4)
		====== ====== ================
		
		Note that +0 and -0 are distinct floating point numbers, as are +inf
		and -inf.
		
		References
		----------
		.. [1] ISO/IEC standard 9899:1999, "Programming language C."
		
		Examples
		--------
		Consider four points in different quadrants:
		
		>>> x = np.array([-1, +1, +1, -1])
		>>> y = np.array([-1, -1, +1, +1])
		>>> np.arctan2(y, x) * 180 / np.pi
		array([-135.,  -45.,   45.,  135.])
		
		Note the order of the parameters. `arctan2` is defined also when `x2` = 0
		and at several other special points, obtaining values in
		the range ``[-pi, pi]``:
		
		>>> np.arctan2([1., -1.], [0., 0.])
		array([ 1.57079633, -1.57079633])
		>>> np.arctan2([0., 0., np.inf], [+0., -0., np.inf])
		array([ 0.        ,  3.14159265,  0.78539816])
	**/
	static public function arctan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		asanyarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
	static public function asanyarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'K'.
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
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print('ValueError')
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Compute the weighted average along the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing data to be averaged. If `a` is not an array, a
		    conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to average `a`.  The default,
		    axis=None, will average over all of the elements of the input array.
		    If axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, averaging is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		weights : array_like, optional
		    An array of weights associated with the values in `a`. Each value in
		    `a` contributes to the average according to its associated weight.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If `weights=None`, then all data in `a` are assumed to have a
		    weight equal to one.  The 1-D calculation is::
		
		        avg = sum(a * weights) / sum(weights)
		
		    The only constraint on `weights` is that `sum(weights)` must not be 0.
		returned : bool, optional
		    Default is `False`. If `True`, the tuple (`average`, `sum_of_weights`)
		    is returned, otherwise only the average is returned.
		    If `weights=None`, `sum_of_weights` is equivalent to the number of
		    elements over which the average is taken.
		
		Returns
		-------
		retval, [sum_of_weights] : array_type or double
		    Return the average along the specified axis. When `returned` is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. `sum_of_weights` is of the
		    same type as `retval`. The result dtype follows a genereal pattern.
		    If `weights` is None, the result dtype will be that of `a` , or ``float64``
		    if `a` is integral. Otherwise, if `weights` is not None and `a` is non-
		    integral, the result type will be the type of lowest precision capable of
		    representing values of both `a` and `weights`. If `a` happens to be
		    integral, the previous rules still applies but the result dtype will
		    at least be ``float64``.
		
		Raises
		------
		ZeroDivisionError
		    When all weights along axis are zero. See `numpy.ma.average` for a
		    version robust to this type of error.
		TypeError
		    When the length of 1D `weights` is not the same as the shape of `a`
		    along axis.
		
		See Also
		--------
		mean
		
		ma.average : average for masked arrays -- useful if your data contains
		             "missing" values
		numpy.result_type : Returns the type that results from applying the
		                    numpy type promotion rules to the arguments.
		
		Examples
		--------
		>>> data = np.arange(1, 5)
		>>> data
		array([1, 2, 3, 4])
		>>> np.average(data)
		2.5
		>>> np.average(np.arange(1, 11), weights=np.arange(10, 0, -1))
		4.0
		
		>>> data = np.arange(6).reshape((3,2))
		>>> data
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> np.average(data, axis=1, weights=[1./4, 3./4])
		array([0.75, 2.75, 4.75])
		>>> np.average(data, weights=[1./4, 3./4])
		Traceback (most recent call last):
		    ...
		TypeError: Axis must be specified when shapes of a and weights differ.
		
		>>> a = np.ones(5, dtype=np.float128)
		>>> w = np.ones(5, dtype=np.complex64)
		>>> avg = np.average(a, weights=w)
		>>> print(avg.dtype)
		complex256
	**/
	static public function average(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		Return the Bartlett window.
		
		The Bartlett window is very similar to a triangular window, except
		that the end points are at zero.  It is often used in signal
		processing for tapering a signal, without generating too much
		ripple in the frequency domain.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : array
		    The triangular window, with the maximum value normalized to one
		    (the value one appears only if the number of samples is odd), with
		    the first and last samples equal to zero.
		
		See Also
		--------
		blackman, hamming, hanning, kaiser
		
		Notes
		-----
		The Bartlett window is defined as
		
		.. math:: w(n) = \frac{2}{M-1} \left(
		          \frac{M-1}{2} - \left|n - \frac{M-1}{2}\right|
		          \right)
		
		Most references to the Bartlett window come from the signal
		processing literature, where it is used as one of many windowing
		functions for smoothing values.  Note that convolution with this
		window produces linear interpolation.  It is also known as an
		apodization (which means"removing the foot", i.e. smoothing
		discontinuities at the beginning and end of the sampled signal) or
		tapering function. The fourier transform of the Bartlett is the product
		of two sinc functions.
		Note the excellent discussion in Kanasewich.
		
		References
		----------
		.. [1] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
		       Biometrika 37, 1-16, 1950.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 109-110.
		.. [3] A.V. Oppenheim and R.W. Schafer, "Discrete-Time Signal
		       Processing", Prentice-Hall, 1999, pp. 468-471.
		.. [4] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.bartlett(12)
		array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273, # may vary
		        0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
		        0.18181818,  0.        ])
		
		Plot the window and its frequency response (requires SciPy and matplotlib):
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.bartlett(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Bartlett window")
		Text(0.5, 1.0, 'Bartlett window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Bartlett window")
		Text(0.5, 1.0, 'Frequency response of Bartlett window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function bartlett(M:Dynamic):Array<Dynamic>;
	/**
		bincount(x, /, weights=None, minlength=0)
		
		Count number of occurrences of each value in array of non-negative ints.
		
		The number of bins (of size 1) is one larger than the largest value in
		`x`. If `minlength` is specified, there will be at least this number
		of bins in the output array (though it will be longer if necessary,
		depending on the contents of `x`).
		Each bin gives the number of occurrences of its index value in `x`.
		If `weights` is specified the input array is weighted by it, i.e. if a
		value ``n`` is found at position ``i``, ``out[n] += weight[i]`` instead
		of ``out[n] += 1``.
		
		Parameters
		----------
		x : array_like, 1 dimension, nonnegative ints
		    Input array.
		weights : array_like, optional
		    Weights, array of the same shape as `x`.
		minlength : int, optional
		    A minimum number of bins for the output array.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		out : ndarray of ints
		    The result of binning the input array.
		    The length of `out` is equal to ``np.amax(x)+1``.
		
		Raises
		------
		ValueError
		    If the input is not 1-dimensional, or contains elements with negative
		    values, or if `minlength` is negative.
		TypeError
		    If the type of the input is float or complex.
		
		See Also
		--------
		histogram, digitize, unique
		
		Examples
		--------
		>>> np.bincount(np.arange(5))
		array([1, 1, 1, 1, 1])
		>>> np.bincount(np.array([0, 1, 1, 3, 2, 1, 7]))
		array([1, 3, 1, 1, 0, 0, 0, 1])
		
		>>> x = np.array([0, 1, 1, 3, 2, 1, 7, 23])
		>>> np.bincount(x).size == np.amax(x)+1
		True
		
		The input array needs to be of integer dtype, otherwise a
		TypeError is raised:
		
		>>> np.bincount(np.arange(5, dtype=float))
		Traceback (most recent call last):
		  ...
		TypeError: Cannot cast array data from dtype('float64') to dtype('int64')
		according to the rule 'safe'
		
		A possible use of ``bincount`` is to perform sums over
		variable-size chunks of an array, using the ``weights`` keyword.
		
		>>> w = np.array([0.3, 0.5, 0.2, 0.7, 1., -0.6]) # weights
		>>> x = np.array([0, 1, 1, 2, 2, 2])
		>>> np.bincount(x,  weights=w)
		array([ 0.3,  0.7,  1.1])
	**/
	static public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Blackman window.
		
		The Blackman window is a taper formed by using the first three
		terms of a summation of cosines. It was designed to have close to the
		minimal leakage possible.  It is close to optimal, only slightly worse
		than a Kaiser window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value one
		    appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, hamming, hanning, kaiser
		
		Notes
		-----
		The Blackman window is defined as
		
		.. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
		
		Most references to the Blackman window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function. It is known as a
		"near optimal" tapering function, almost as good (by some measures)
		as the kaiser window.
		
		References
		----------
		Blackman, R.B. and Tukey, J.W., (1958) The measurement of power spectra,
		Dover Publications, New York.
		
		Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
		Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.blackman(12)
		array([-1.38777878e-17,   3.26064346e-02,   1.59903635e-01, # may vary
		        4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
		        9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
		        1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.blackman(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Blackman window")
		Text(0.5, 1.0, 'Blackman window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Blackman window")
		Text(0.5, 1.0, 'Frequency response of Blackman window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function blackman(M:Dynamic):numpy.Ndarray;
	static public function compiled_interp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function compiled_interp_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return an array copy of the given object.
		
		Parameters
		----------
		a : array_like
		    Input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the copy. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible. (Note that this function and :meth:`ndarray.copy` are very
		    similar, but have different default values for their order=
		    arguments.)
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise the
		    returned array will be forced to be a base-class array (defaults to False).
		
		    .. versionadded:: 1.19.0
		
		Returns
		-------
		arr : ndarray
		    Array interpretation of `a`.
		
		See Also
		--------
		ndarray.copy : Preferred method for creating an array copy
		
		Notes
		-----
		This is equivalent to:
		
		>>> np.array(a, copy=True)  #doctest: +SKIP
		
		Examples
		--------
		Create an array x, with a reference y and a copy z:
		
		>>> x = np.array([1, 2, 3])
		>>> y = x
		>>> z = np.copy(x)
		
		Note that, when we modify x, y changes, but not z:
		
		>>> x[0] = 10
		>>> x[0] == y[0]
		True
		>>> x[0] == z[0]
		False
		
		Note that, np.copy clears previously set WRITEABLE=False flag.
		
		>>> a = np.array([1, 2, 3])
		>>> a.flags["WRITEABLE"] = False
		>>> b = np.copy(a)
		>>> b.flags["WRITEABLE"]
		True
		>>> b[0] = 3
		>>> b
		array([3, 2, 3])
		
		Note that np.copy is a shallow copy and will not copy object
		elements within arrays. This is mainly important for arrays
		containing Python objects. The new array will contain the
		same object which may lead to surprises if that object can
		be modified (is mutable):
		
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> b = np.copy(a)
		>>> b[2][0] = 10
		>>> a
		array([1, 'm', list([10, 3, 4])], dtype=object)
		
		To ensure all elements within an ``object`` array are copied,
		use `copy.deepcopy`:
		
		>>> import copy
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> c = copy.deepcopy(a)
		>>> c[2][0] = 10
		>>> c
		array([1, 'm', list([10, 3, 4])], dtype=object)
		>>> a
		array([1, 'm', list([2, 3, 4])], dtype=object)
	**/
	static public function copy(a:Dynamic, ?order:Dynamic, ?subok:Dynamic):numpy.Ndarray;
	/**
		Return Pearson product-moment correlation coefficients.
		
		Please refer to the documentation for `cov` for more detail.  The
		relationship between the correlation coefficient matrix, `R`, and the
		covariance matrix, `C`, is
		
		.. math:: R_{ij} = \frac{ C_{ij} } { \sqrt{ C_{ii} * C_{jj} } }
		
		The values of `R` are between -1 and 1, inclusive.
		
		Parameters
		----------
		x : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `x` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same
		    shape as `x`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		ddof : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
		Returns
		-------
		R : ndarray
		    The correlation coefficient matrix of the variables.
		
		See Also
		--------
		cov : Covariance matrix
		
		Notes
		-----
		Due to floating point rounding the resulting array may not be Hermitian,
		the diagonal elements may not be 1, and the elements may not satisfy the
		inequality abs(a) <= 1. The real and imaginary parts are clipped to the
		interval [-1,  1] in an attempt to improve on that situation but is not
		much help in the complex case.
		
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
		
		Examples
		--------
		In this example we generate two random arrays, ``xarr`` and ``yarr``, and
		compute the row-wise and column-wise Pearson correlation coefficients,
		``R``. Since ``rowvar`` is  true by  default, we first find the row-wise
		Pearson correlation coefficients between the variables of ``xarr``.
		
		>>> import numpy as np
		>>> rng = np.random.default_rng(seed=42)
		>>> xarr = rng.random((3, 3))
		>>> xarr
		array([[0.77395605, 0.43887844, 0.85859792],
		       [0.69736803, 0.09417735, 0.97562235],
		       [0.7611397 , 0.78606431, 0.12811363]])
		>>> R1 = np.corrcoef(xarr)
		>>> R1
		array([[ 1.        ,  0.99256089, -0.68080986],
		       [ 0.99256089,  1.        , -0.76492172],
		       [-0.68080986, -0.76492172,  1.        ]])
		
		If we add another set of variables and observations ``yarr``, we can
		compute the row-wise Pearson correlation coefficients between the
		variables in ``xarr`` and ``yarr``.
		
		>>> yarr = rng.random((3, 3))
		>>> yarr
		array([[0.45038594, 0.37079802, 0.92676499],
		       [0.64386512, 0.82276161, 0.4434142 ],
		       [0.22723872, 0.55458479, 0.06381726]])
		>>> R2 = np.corrcoef(xarr, yarr)
		>>> R2
		array([[ 1.        ,  0.99256089, -0.68080986,  0.75008178, -0.934284  ,
		        -0.99004057],
		       [ 0.99256089,  1.        , -0.76492172,  0.82502011, -0.97074098,
		        -0.99981569],
		       [-0.68080986, -0.76492172,  1.        , -0.99507202,  0.89721355,
		         0.77714685],
		       [ 0.75008178,  0.82502011, -0.99507202,  1.        , -0.93657855,
		        -0.83571711],
		       [-0.934284  , -0.97074098,  0.89721355, -0.93657855,  1.        ,
		         0.97517215],
		       [-0.99004057, -0.99981569,  0.77714685, -0.83571711,  0.97517215,
		         1.        ]])
		
		Finally if we use the option ``rowvar=False``, the columns are now
		being treated as the variables and we will find the column-wise Pearson
		correlation coefficients between variables in ``xarr`` and ``yarr``.
		
		>>> R3 = np.corrcoef(xarr, yarr, rowvar=False)
		>>> R3
		array([[ 1.        ,  0.77598074, -0.47458546, -0.75078643, -0.9665554 ,
		         0.22423734],
		       [ 0.77598074,  1.        , -0.92346708, -0.99923895, -0.58826587,
		        -0.44069024],
		       [-0.47458546, -0.92346708,  1.        ,  0.93773029,  0.23297648,
		         0.75137473],
		       [-0.75078643, -0.99923895,  0.93773029,  1.        ,  0.55627469,
		         0.47536961],
		       [-0.9665554 , -0.58826587,  0.23297648,  0.55627469,  1.        ,
		        -0.46666491],
		       [ 0.22423734, -0.44069024,  0.75137473,  0.47536961, -0.46666491,
		         1.        ]])
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
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
		    The corresponding cosine values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
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
		
		    >>> m = np.arange(10, dtype=np.float64)
		    >>> f = np.arange(10) * 2
		    >>> a = np.arange(10) ** 2.
		    >>> ddof = 1
		    >>> w = f * a
		    >>> v1 = np.sum(w)
		    >>> v2 = np.sum(w * a)
		    >>> m -= np.sum(m * w, axis=None, keepdims=True) / v1
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
		>>> np.cov(X)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x, y)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x)
		array(11.71)
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Return a new array with sub-arrays along an axis deleted. For a one
		dimensional array, this returns those entries not returned by
		`arr[obj]`.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : slice, int or array of ints
		    Indicate indices of sub-arrays to remove along the specified axis.
		
		    .. versionchanged:: 1.19.0
		        Boolean indices are now treated as a mask of elements to remove,
		        rather than being cast to the integers 0 and 1.
		
		axis : int, optional
		    The axis along which to delete the subarray defined by `obj`.
		    If `axis` is None, `obj` is applied to the flattened array.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with the elements specified by `obj` removed. Note
		    that `delete` does not occur in-place. If `axis` is None, `out` is
		    a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		append : Append elements at the end of an array.
		
		Notes
		-----
		Often it is preferable to use a boolean mask. For example:
		
		>>> arr = np.arange(12) + 1
		>>> mask = np.ones(len(arr), dtype=bool)
		>>> mask[[0,2,4]] = False
		>>> result = arr[mask,...]
		
		Is equivalent to `np.delete(arr, [0,2,4], axis=0)`, but allows further
		use of `mask`.
		
		Examples
		--------
		>>> arr = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
		>>> arr
		array([[ 1,  2,  3,  4],
		       [ 5,  6,  7,  8],
		       [ 9, 10, 11, 12]])
		>>> np.delete(arr, 1, 0)
		array([[ 1,  2,  3,  4],
		       [ 9, 10, 11, 12]])
		
		>>> np.delete(arr, np.s_[::2], 1)
		array([[ 2,  4],
		       [ 6,  8],
		       [10, 12]])
		>>> np.delete(arr, [1,3,5], None)
		array([ 1,  3,  5,  7,  8,  9, 10, 11, 12])
	**/
	static public function delete(arr:Dynamic, obj:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Calculate the n-th discrete difference along the given axis.
		
		The first difference is given by ``out[i] = a[i+1] - a[i]`` along
		the given axis, higher differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced. If zero, the input
		    is returned as-is.
		axis : int, optional
		    The axis along which the difference is taken, default is the
		    last axis.
		prepend, append : array_like, optional
		    Values to prepend or append to `a` along axis prior to
		    performing the difference.  Scalar values are expanded to
		    arrays with length 1 in the direction of axis and the shape
		    of the input array in along all other axes.  Otherwise the
		    dimension and shape must match `a` except along axis.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		diff : ndarray
		    The n-th differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`. The
		    type of the output is the same as the type of the difference
		    between any two elements of `a`. This is the same as the type of
		    `a` in most cases. A notable exception is `datetime64`, which
		    results in a `timedelta64` output array.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
		Notes
		-----
		Type is preserved for boolean arrays, so the result will contain
		`False` when consecutive elements are the same and `True` when they
		differ.
		
		For unsigned integer arrays, the results will also be unsigned. This
		should not be surprising, as the result is consistent with
		calculating the difference directly:
		
		>>> u8_arr = np.array([1, 0], dtype=np.uint8)
		>>> np.diff(u8_arr)
		array([255], dtype=uint8)
		>>> u8_arr[1,...] - u8_arr[0,...]
		255
		
		If this is not desirable, then the array should be cast to a larger
		integer type first:
		
		>>> i16_arr = u8_arr.astype(np.int16)
		>>> np.diff(i16_arr)
		array([-1], dtype=int16)
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.diff(x)
		array([ 1,  2,  3, -7])
		>>> np.diff(x, n=2)
		array([  1,   1, -10])
		
		>>> x = np.array([[1, 3, 6, 10], [0, 5, 6, 8]])
		>>> np.diff(x)
		array([[2, 3, 4],
		       [5, 1, 2]])
		>>> np.diff(x, axis=0)
		array([[-1,  2,  0, -2]])
		
		>>> x = np.arange('1066-10-13', '1066-10-16', dtype=np.datetime64)
		>>> np.diff(x)
		array([1, 1], dtype='timedelta64[D]')
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?prepend:Dynamic, ?append:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the bins to which each value in input array belongs.
		
		=========  =============  ============================
		`right`    order of bins  returned index `i` satisfies
		=========  =============  ============================
		``False``  increasing     ``bins[i-1] <= x < bins[i]``
		``True``   increasing     ``bins[i-1] < x <= bins[i]``
		``False``  decreasing     ``bins[i-1] > x >= bins[i]``
		``True``   decreasing     ``bins[i-1] >= x > bins[i]``
		=========  =============  ============================
		
		If values in `x` are beyond the bounds of `bins`, 0 or ``len(bins)`` is
		returned as appropriate.
		
		Parameters
		----------
		x : array_like
		    Input array to be binned. Prior to NumPy 1.10.0, this array had to
		    be 1-dimensional, but can now have any shape.
		bins : array_like
		    Array of bins. It has to be 1-dimensional and monotonic.
		right : bool, optional
		    Indicating whether the intervals include the right or the left bin
		    edge. Default behavior is (right==False) indicating that the interval
		    does not include the right edge. The left bin end is open in this
		    case, i.e., bins[i-1] <= x < bins[i] is the default behavior for
		    monotonically increasing bins.
		
		Returns
		-------
		indices : ndarray of ints
		    Output array of indices, of same shape as `x`.
		
		Raises
		------
		ValueError
		    If `bins` is not monotonic.
		TypeError
		    If the type of the input is complex.
		
		See Also
		--------
		bincount, histogram, unique, searchsorted
		
		Notes
		-----
		If values in `x` are such that they fall outside the bin range,
		attempting to index `bins` with the indices that `digitize` returns
		will result in an IndexError.
		
		.. versionadded:: 1.10.0
		
		`np.digitize` is  implemented in terms of `np.searchsorted`. This means
		that a binary search is used to bin the values, which scales much better
		for larger number of bins than the previous linear search. It also removes
		the requirement for the input array to be 1-dimensional.
		
		For monotonically _increasing_ `bins`, the following are equivalent::
		
		    np.digitize(x, bins, right=True)
		    np.searchsorted(bins, x, side='left')
		
		Note that as the order of the arguments are reversed, the side must be too.
		The `searchsorted` call is marginally faster, as it does not do any
		monotonicity checks. Perhaps more importantly, it supports all dtypes.
		
		Examples
		--------
		>>> x = np.array([0.2, 6.4, 3.0, 1.6])
		>>> bins = np.array([0.0, 1.0, 2.5, 4.0, 10.0])
		>>> inds = np.digitize(x, bins)
		>>> inds
		array([1, 4, 3, 2])
		>>> for n in range(x.size):
		...   print(bins[inds[n]-1], "<=", x[n], "<", bins[inds[n]])
		...
		0.0 <= 0.2 < 1.0
		4.0 <= 6.4 < 10.0
		2.5 <= 3.0 < 4.0
		1.0 <= 1.6 < 2.5
		
		>>> x = np.array([1.2, 10.0, 12.4, 15.5, 20.])
		>>> bins = np.array([0, 5, 10, 15, 20])
		>>> np.digitize(x,bins,right=True)
		array([1, 2, 3, 4, 4])
		>>> np.digitize(x,bins,right=False)
		array([1, 3, 3, 4, 5])
	**/
	static public function digitize(x:Dynamic, bins:Dynamic, ?right:Dynamic):Dynamic;
	/**
		Display a message on a device.
		
		Parameters
		----------
		mesg : str
		    Message to display.
		device : object
		    Device to write message. If None, defaults to ``sys.stdout`` which is
		    very similar to ``print``. `device` needs to have ``write()`` and
		    ``flush()`` methods.
		linefeed : bool, optional
		    Option whether to print a line feed or not. Defaults to True.
		
		Raises
		------
		AttributeError
		    If `device` does not have a ``write()`` or ``flush()`` method.
		
		Examples
		--------
		Besides ``sys.stdout``, a file-like object can also be used as it has
		both required methods:
		
		>>> from io import StringIO
		>>> buf = StringIO()
		>>> np.disp(u'"Display" in a file', device=buf)
		>>> buf.getvalue()
		'"Display" in a file\n'
	**/
	static public function disp(mesg:Dynamic, ?device:Dynamic, ?linefeed:Dynamic):Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays. Specifically,
		
		- If both `a` and `b` are 1-D arrays, it is inner product of vectors
		  (without complex conjugation).
		
		- If both `a` and `b` are 2-D arrays, it is matrix multiplication,
		  but using :func:`matmul` or ``a @ b`` is preferred.
		
		- If either `a` or `b` is 0-D (scalar), it is equivalent to :func:`multiply`
		  and using ``numpy.multiply(a, b)`` or ``a * b`` is preferred.
		
		- If `a` is an N-D array and `b` is a 1-D array, it is a sum product over
		  the last axis of `a` and `b`.
		
		- If `a` is an N-D array and `b` is an M-D array (where ``M>=2``), it is a
		  sum product over the last axis of `a` and the second-to-last axis of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		linalg.multi_dot : Chained dot product.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    Desired output data-type for the array, e.g, `numpy.int8`. Default is
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
		    Array of uninitialized (arbitrary) data of the given shape, dtype, and
		    order.  Object arrays will be initialized to None.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #uninitialized
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #uninitialized
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return the elements of an array that satisfy some condition.
		
		This is equivalent to ``np.compress(ravel(condition), ravel(arr))``.  If
		`condition` is boolean ``np.extract`` is equivalent to ``arr[condition]``.
		
		Note that `place` does the exact opposite of `extract`.
		
		Parameters
		----------
		condition : array_like
		    An array whose nonzero or True entries indicate the elements of `arr`
		    to extract.
		arr : array_like
		    Input array of the same size as `condition`.
		
		Returns
		-------
		extract : ndarray
		    Rank 1 array of values from `arr` where `condition` is True.
		
		See Also
		--------
		take, put, copyto, compress, place
		
		Examples
		--------
		>>> arr = np.arange(12).reshape((3, 4))
		>>> arr
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11]])
		>>> condition = np.mod(arr, 3)==0
		>>> condition
		array([[ True, False, False,  True],
		       [False, False,  True, False],
		       [False,  True, False, False]])
		>>> np.extract(condition, arr)
		array([0, 3, 6, 9])
		
		
		If `condition` is boolean:
		
		>>> arr[condition]
		array([0, 3, 6, 9])
	**/
	static public function extract(condition:Dynamic, arr:Dynamic):numpy.Ndarray;
	/**
		Reverse the order of elements in an array along the given axis.
		
		The shape of the array is preserved, but the elements are reordered.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		m : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		     Axis or axes along which to flip over. The default,
		     axis=None, will flip over all of the axes of the input array.
		     If axis is negative it counts from the last to the first axis.
		
		     If axis is a tuple of ints, flipping is performed on all of the axes
		     specified in the tuple.
		
		     .. versionchanged:: 1.15.0
		        None and tuples of axes are supported
		
		Returns
		-------
		out : array_like
		    A view of `m` with the entries of axis reversed.  Since a view is
		    returned, this operation is done in constant time.
		
		See Also
		--------
		flipud : Flip an array vertically (axis=0).
		fliplr : Flip an array horizontally (axis=1).
		
		Notes
		-----
		flip(m, 0) is equivalent to flipud(m).
		
		flip(m, 1) is equivalent to fliplr(m).
		
		flip(m, n) corresponds to ``m[...,::-1,...]`` with ``::-1`` at position n.
		
		flip(m) corresponds to ``m[::-1,::-1,...,::-1]`` with ``::-1`` at all
		positions.
		
		flip(m, (0, 1)) corresponds to ``m[::-1,::-1,...]`` with ``::-1`` at
		position 0 and position 1.
		
		Examples
		--------
		>>> A = np.arange(8).reshape((2,2,2))
		>>> A
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.flip(A, 0)
		array([[[4, 5],
		        [6, 7]],
		       [[0, 1],
		        [2, 3]]])
		>>> np.flip(A, 1)
		array([[[2, 3],
		        [0, 1]],
		       [[6, 7],
		        [4, 5]]])
		>>> np.flip(A)
		array([[[7, 6],
		        [5, 4]],
		       [[3, 2],
		        [1, 0]]])
		>>> np.flip(A, (0, 2))
		array([[[5, 4],
		        [7, 6]],
		       [[1, 0],
		        [3, 2]]])
		>>> A = np.random.randn(3,4,5)
		>>> np.all(np.flip(A,2) == A[:,:,::-1,...])
		True
	**/
	static public function flip(m:Dynamic, ?axis:Dynamic):python.NativeIterable<Dynamic>;
	/**
		frompyfunc(func, /, nin, nout, *[, identity])
		
		Takes an arbitrary Python function and returns a NumPy ufunc.
		
		Can be used, for example, to add broadcasting to a built-in Python
		function (see Examples section).
		
		Parameters
		----------
		func : Python function object
		    An arbitrary Python function.
		nin : int
		    The number of input arguments.
		nout : int
		    The number of objects returned by `func`.
		identity : object, optional
		    The value to use for the `~numpy.ufunc.identity` attribute of the resulting
		    object. If specified, this is equivalent to setting the underlying
		    C ``identity`` field to ``PyUFunc_IdentityValue``.
		    If omitted, the identity is set to ``PyUFunc_None``. Note that this is
		    _not_ equivalent to setting the identity to ``None``, which implies the
		    operation is reorderable.
		
		Returns
		-------
		out : ufunc
		    Returns a NumPy universal function (``ufunc``) object.
		
		See Also
		--------
		vectorize : Evaluates pyfunc over input arrays using broadcasting rules of numpy.
		
		Notes
		-----
		The returned ufunc always returns PyObject arrays.
		
		Examples
		--------
		Use frompyfunc to add broadcasting to the Python function ``oct``:
		
		>>> oct_array = np.frompyfunc(oct, 1, 1)
		>>> oct_array(np.array((10, 30, 100)))
		array(['0o12', '0o36', '0o144'], dtype=object)
		>>> np.array((oct(10), oct(30), oct(100))) # for comparison
		array(['0o12', '0o36', '0o144'], dtype='<U5')
	**/
	static public function frompyfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the gradient of an N-dimensional array.
		
		The gradient is computed using second order accurate central differences
		in the interior points and either first or second order accurate one-sides
		(forward or backwards) differences at the boundaries.
		The returned gradient hence has the same shape as the input array.
		
		Parameters
		----------
		f : array_like
		    An N-dimensional array containing samples of a scalar function.
		varargs : list of scalar or array, optional
		    Spacing between f values. Default unitary spacing for all dimensions.
		    Spacing can be specified using:
		
		    1. single scalar to specify a sample distance for all dimensions.
		    2. N scalars to specify a constant sample distance for each dimension.
		       i.e. `dx`, `dy`, `dz`, ...
		    3. N arrays to specify the coordinates of the values along each
		       dimension of F. The length of the array must match the size of
		       the corresponding dimension
		    4. Any combination of N scalars/arrays with the meaning of 2. and 3.
		
		    If `axis` is given, the number of varargs must equal the number of axes.
		    Default: 1.
		
		edge_order : {1, 2}, optional
		    Gradient is calculated using N-th order accurate differences
		    at the boundaries. Default: 1.
		
		    .. versionadded:: 1.9.1
		
		axis : None or int or tuple of ints, optional
		    Gradient is calculated only along the given axis or axes
		    The default (axis = None) is to calculate the gradient for all the axes
		    of the input array. axis may be negative, in which case it counts from
		    the last to the first axis.
		
		    .. versionadded:: 1.11.0
		
		Returns
		-------
		gradient : ndarray or list of ndarray
		    A list of ndarrays (or a single ndarray if there is only one dimension)
		    corresponding to the derivatives of f with respect to each dimension.
		    Each derivative has the same shape as f.
		
		Examples
		--------
		>>> f = np.array([1, 2, 4, 7, 11, 16], dtype=float)
		>>> np.gradient(f)
		array([1. , 1.5, 2.5, 3.5, 4.5, 5. ])
		>>> np.gradient(f, 2)
		array([0.5 ,  0.75,  1.25,  1.75,  2.25,  2.5 ])
		
		Spacing can be also specified with an array that represents the coordinates
		of the values F along the dimensions.
		For instance a uniform spacing:
		
		>>> x = np.arange(f.size)
		>>> np.gradient(f, x)
		array([1. ,  1.5,  2.5,  3.5,  4.5,  5. ])
		
		Or a non uniform one:
		
		>>> x = np.array([0., 1., 1.5, 3.5, 4., 6.], dtype=float)
		>>> np.gradient(f, x)
		array([1. ,  3. ,  3.5,  6.7,  6.9,  2.5])
		
		For two dimensional arrays, the return will be two arrays ordered by
		axis. In this example the first array stands for the gradient in
		rows and the second one in columns direction:
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float))
		[array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]]), array([[1. , 2.5, 4. ],
		       [1. , 1. , 1. ]])]
		
		In this example the spacing is also specified:
		uniform for axis=0 and non uniform for axis=1
		
		>>> dx = 2.
		>>> y = [1., 1.5, 3.5]
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), dx, y)
		[array([[ 1. ,  1. , -0.5],
		       [ 1. ,  1. , -0.5]]), array([[2. , 2. , 2. ],
		       [2. , 1.7, 0.5]])]
		
		It is possible to specify how boundaries are treated using `edge_order`
		
		>>> x = np.array([0, 1, 2, 3, 4])
		>>> f = x**2
		>>> np.gradient(f, edge_order=1)
		array([1.,  2.,  4.,  6.,  7.])
		>>> np.gradient(f, edge_order=2)
		array([0., 2., 4., 6., 8.])
		
		The `axis` keyword can be used to specify a subset of axes of which the
		gradient is calculated
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), axis=0)
		array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]])
		
		Notes
		-----
		Assuming that :math:`f\in C^{3}` (i.e., :math:`f` has at least 3 continuous
		derivatives) and let :math:`h_{*}` be a non-homogeneous stepsize, we
		minimize the "consistency error" :math:`\eta_{i}` between the true gradient
		and its estimate from a linear combination of the neighboring grid-points:
		
		.. math::
		
		    \eta_{i} = f_{i}^{\left(1\right)} -
		                \left[ \alpha f\left(x_{i}\right) +
		                        \beta f\left(x_{i} + h_{d}\right) +
		                        \gamma f\left(x_{i}-h_{s}\right)
		                \right]
		
		By substituting :math:`f(x_{i} + h_{d})` and :math:`f(x_{i} - h_{s})`
		with their Taylor series expansion, this translates into solving
		the following the linear system:
		
		.. math::
		
		    \left\{
		        \begin{array}{r}
		            \alpha+\beta+\gamma=0 \\
		            \beta h_{d}-\gamma h_{s}=1 \\
		            \beta h_{d}^{2}+\gamma h_{s}^{2}=0
		        \end{array}
		    \right.
		
		The resulting approximation of :math:`f_{i}^{(1)}` is the following:
		
		.. math::
		
		    \hat f_{i}^{(1)} =
		        \frac{
		            h_{s}^{2}f\left(x_{i} + h_{d}\right)
		            + \left(h_{d}^{2} - h_{s}^{2}\right)f\left(x_{i}\right)
		            - h_{d}^{2}f\left(x_{i}-h_{s}\right)}
		            { h_{s}h_{d}\left(h_{d} + h_{s}\right)}
		        + \mathcal{O}\left(\frac{h_{d}h_{s}^{2}
		                            + h_{s}h_{d}^{2}}{h_{d}
		                            + h_{s}}\right)
		
		It is worth noting that if :math:`h_{s}=h_{d}`
		(i.e., data are evenly spaced)
		we find the standard second order approximation:
		
		.. math::
		
		    \hat f_{i}^{(1)}=
		        \frac{f\left(x_{i+1}\right) - f\left(x_{i-1}\right)}{2h}
		        + \mathcal{O}\left(h^{2}\right)
		
		With a similar procedure the forward/backward approximations used for
		boundaries can be derived.
		
		References
		----------
		.. [1]  Quarteroni A., Sacco R., Saleri F. (2007) Numerical Mathematics
		        (Texts in Applied Mathematics). New York: Springer.
		.. [2]  Durran D. R. (1999) Numerical Methods for Wave Equations
		        in Geophysical Fluid Dynamics. New York: Springer.
		.. [3]  Fornberg B. (1988) Generation of Finite Difference Formulas on
		        Arbitrarily Spaced Grids,
		        Mathematics of Computation 51, no. 184 : 699-706.
		        `PDF <http://www.ams.org/journals/mcom/1988-51-184/
		        S0025-5718-1988-0935077-0/S0025-5718-1988-0935077-0.pdf>`_.
	**/
	static public function gradient(f:Dynamic, ?varargs:python.VarArgs<Dynamic>, ?axis:Dynamic, ?edge_order:Dynamic):Dynamic;
	/**
		Return the Hamming window.
		
		The Hamming window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hanning, kaiser
		
		Notes
		-----
		The Hamming window is defined as
		
		.. math::  w(n) = 0.54 - 0.46cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hamming was named for R. W. Hamming, an associate of J. W. Tukey
		and is described in Blackman and Tukey. It was recommended for
		smoothing the truncated autocovariance function in the time domain.
		Most references to the Hamming window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 109-110.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hamming(12)
		array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594, # may vary
		        0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
		        0.15302337,  0.08      ])
		
		Plot the window and the frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hamming(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hamming window")
		Text(0.5, 1.0, 'Hamming window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Hamming window")
		Text(0.5, 1.0, 'Frequency response of Hamming window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hamming(M:Dynamic):numpy.Ndarray;
	/**
		Return the Hanning window.
		
		The Hanning window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray, shape(M,)
		    The window, with the maximum value normalized to one (the value
		    one appears only if `M` is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, kaiser
		
		Notes
		-----
		The Hanning window is defined as
		
		.. math::  w(n) = 0.5 - 0.5cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hanning was named for Julius von Hann, an Austrian meteorologist.
		It is also known as the Cosine Bell. Some authors prefer that it be
		called a Hann window, to help avoid confusion with the very similar
		Hamming window.
		
		Most references to the Hanning window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 106-108.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hanning(12)
		array([0.        , 0.07937323, 0.29229249, 0.57115742, 0.82743037,
		       0.97974649, 0.97974649, 0.82743037, 0.57115742, 0.29229249,
		       0.07937323, 0.        ])
		
		Plot the window and its frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hanning(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hann window")
		Text(0.5, 1.0, 'Hann window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of the Hann window")
		Text(0.5, 1.0, 'Frequency response of the Hann window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hanning(M:Dynamic):Dynamic;
	/**
		Compute the histogram of a dataset.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines a monotonically increasing array of bin edges,
		    including the rightmost edge, allowing for non-uniform bin widths.
		
		    .. versionadded:: 1.11.0
		
		    If `bins` is a string, it defines the method used to calculate the
		    optimal bin width, as defined by `histogram_bin_edges`.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		normed : bool, optional
		
		    .. deprecated:: 1.6.0
		
		    This is equivalent to the `density` argument, but produces incorrect
		    results for unequal bin widths. It should not be used.
		
		    .. versionchanged:: 1.15.0
		        DeprecationWarnings are actually emitted.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). If `density` is True, the weights are
		    normalized, so that the integral of the density over the range
		    remains 1.
		density : bool, optional
		    If ``False``, the result will contain the number of samples in
		    each bin. If ``True``, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		
		    Overrides the ``normed`` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `density` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize, histogram_bin_edges
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words,
		if `bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		*includes* 4.
		
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([0.25, 0.25, 0.25, 0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([0.5, 0. , 0.5, 0. , 0. , 0.5, 0. , 0.5, 0. , 0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist * np.diff(bin_edges))
		1.0
		
		.. versionadded:: 1.11.0
		
		Automated Bin Selection Methods example, using 2 peak random data
		with 2000 points:
		
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.RandomState(10)  # deterministic random data
		>>> a = np.hstack((rng.normal(size=1000),
		...                rng.normal(loc=5, scale=2, size=1000)))
		>>> _ = plt.hist(a, bins='auto')  # arguments are passed to np.histogram
		>>> plt.title("Histogram with 'auto' bins")
		Text(0.5, 1.0, "Histogram with 'auto' bins")
		>>> plt.show()
	**/
	static public function histogram(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Array<Dynamic>;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : (N, D) array, or (D, N) array_like
		    The data to be histogrammed.
		
		    Note the unusual interpretation of sample when an array_like:
		
		    * When an array, each row is a coordinate in a D-dimensional space -
		      such as ``histogramdd(np.array([p1, p2, p3]))``.
		    * When an array_like, each element is the list of values for single
		      coordinate - such as ``histogramdd((X, Y, Z))``.
		
		    The first form should be preferred.
		
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the monotonically increasing bin
		      edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of length D, each an optional (lower, upper) tuple giving
		    the outer bin edges to be used if the edges are not given explicitly in
		    `bins`.
		    An entry of None in the sequence results in the minimum and maximum
		    values being used for the corresponding dimension.
		    The default, None, is equivalent to passing a tuple of D None values.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_volume``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : (N,) array_like, optional
		    An array of values `w_i` weighing each sample `(x_i, y_i, z_i, ...)`.
		    Weights are normalized to 1 if normed is True. If normed is False,
		    the values of the returned histogram are equal to the sum of the
		    weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray
		    The multidimensional histogram of sample x. See normed and weights
		    for the different possible semantics.
		edges : list
		    A list of D arrays describing the bin edges for each dimension.
		
		See Also
		--------
		histogram: 1-D histogram
		histogram2d: 2-D histogram
		
		Examples
		--------
		>>> r = np.random.randn(100,3)
		>>> H, edges = np.histogramdd(r, bins = (5, 8, 4))
		>>> H.shape, edges[0].size, edges[1].size, edges[2].size
		((5, 8, 4), 6, 9, 5)
	**/
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):numpy.Ndarray;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.
		
		Parameters
		----------
		x : array_like of float
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = float
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		See Also
		--------
		scipy.special.i0, scipy.special.iv, scipy.special.ive
		
		Notes
		-----
		The scipy implementation is recommended over this function: it is a
		proper ufunc written in C, and more than an order of magnitude faster.
		
		We use the algorithm published by Clenshaw [1]_ and referenced by
		Abramowitz and Stegun [2]_, for which the function domain is
		partitioned into the two intervals [0,8] and (8,inf), and Chebyshev
		polynomial expansions are employed in each interval. Relative error on
		the domain [0,30] using IEEE arithmetic is documented [3]_ as having a
		peak of 5.8e-16 with an rms of 1.4e-16 (n = 30000).
		
		References
		----------
		.. [1] C. W. Clenshaw, "Chebyshev series for mathematical functions", in
		       *National Physical Laboratory Mathematical Tables*, vol. 5, London:
		       Her Majesty's Stationery Office, 1962.
		.. [2] M. Abramowitz and I. A. Stegun, *Handbook of Mathematical
		       Functions*, 10th printing, New York: Dover, 1964, pp. 379.
		       https://personal.math.ubc.ca/~cbm/aands/page_379.htm
		.. [3] https://metacpan.org/pod/distribution/Math-Cephes/lib/Math/Cephes.pod#i0:-Modified-Bessel-function-of-order-zero
		
		Examples
		--------
		>>> np.i0(0.)
		array(1.0)
		>>> np.i0([0, 1, 2, 3])
		array([1.        , 1.26606588, 2.2795853 , 4.88079259])
	**/
	static public function i0(x:Dynamic):Dynamic;
	/**
		Insert values along the given axis before the given indices.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : int, slice or sequence of ints
		    Object that defines the index or indices before which `values` is
		    inserted.
		
		    .. versionadded:: 1.8.0
		
		    Support for multiple insertions when `obj` is a single scalar or a
		    sequence with one element (similar to calling insert multiple
		    times).
		values : array_like
		    Values to insert into `arr`. If the type of `values` is different
		    from that of `arr`, `values` is converted to the type of `arr`.
		    `values` should be shaped so that ``arr[...,obj,...] = values``
		    is legal.
		axis : int, optional
		    Axis along which to insert `values`.  If `axis` is None then `arr`
		    is flattened first.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with `values` inserted.  Note that `insert`
		    does not occur in-place: a new array is returned. If
		    `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		append : Append elements at the end of an array.
		concatenate : Join a sequence of arrays along an existing axis.
		delete : Delete elements from an array.
		
		Notes
		-----
		Note that for higher dimensional inserts `obj=0` behaves very different
		from `obj=[0]` just like `arr[:,0,:] = values` is different from
		`arr[:,[0],:] = values`.
		
		Examples
		--------
		>>> a = np.array([[1, 1], [2, 2], [3, 3]])
		>>> a
		array([[1, 1],
		       [2, 2],
		       [3, 3]])
		>>> np.insert(a, 1, 5)
		array([1, 5, 1, ..., 2, 3, 3])
		>>> np.insert(a, 1, 5, axis=1)
		array([[1, 5, 1],
		       [2, 5, 2],
		       [3, 5, 3]])
		
		Difference between sequence and scalars:
		
		>>> np.insert(a, [1], [[1],[2],[3]], axis=1)
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])
		>>> np.array_equal(np.insert(a, 1, [1, 2, 3], axis=1),
		...                np.insert(a, [1], [[1],[2],[3]], axis=1))
		True
		
		>>> b = a.flatten()
		>>> b
		array([1, 1, 2, 2, 3, 3])
		>>> np.insert(b, [2, 2], [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, slice(2, 4), [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, [2, 2], [7.13, False]) # type casting
		array([1, 1, 7, ..., 2, 3, 3])
		
		>>> x = np.arange(8).reshape(2, 4)
		>>> idx = (1, 3)
		>>> np.insert(x, idx, 999, axis=1)
		array([[  0, 999,   1,   2, 999,   3],
		       [  4, 999,   5,   6, 999,   7]])
	**/
	static public function insert(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		One-dimensional linear interpolation for monotonically increasing sample points.
		
		Returns the one-dimensional piecewise linear interpolant to a function
		with given discrete data points (`xp`, `fp`), evaluated at `x`.
		
		Parameters
		----------
		x : array_like
		    The x-coordinates at which to evaluate the interpolated values.
		
		xp : 1-D sequence of floats
		    The x-coordinates of the data points, must be increasing if argument
		    `period` is not specified. Otherwise, `xp` is internally sorted after
		    normalizing the periodic boundaries with ``xp = xp % period``.
		
		fp : 1-D sequence of float or complex
		    The y-coordinates of the data points, same length as `xp`.
		
		left : optional float or complex corresponding to fp
		    Value to return for `x < xp[0]`, default is `fp[0]`.
		
		right : optional float or complex corresponding to fp
		    Value to return for `x > xp[-1]`, default is `fp[-1]`.
		
		period : None or float, optional
		    A period for the x-coordinates. This parameter allows the proper
		    interpolation of angular x-coordinates. Parameters `left` and `right`
		    are ignored if `period` is specified.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		y : float or complex (corresponding to fp) or ndarray
		    The interpolated values, same shape as `x`.
		
		Raises
		------
		ValueError
		    If `xp` and `fp` have different length
		    If `xp` or `fp` are not 1-D sequences
		    If `period == 0`
		
		See Also
		--------
		scipy.interpolate
		
		Warnings
		--------
		The x-coordinate sequence is expected to be increasing, but this is not
		explicitly enforced.  However, if the sequence `xp` is non-increasing,
		interpolation results are meaningless.
		
		Note that, since NaN is unsortable, `xp` also cannot contain NaNs.
		
		A simple check for `xp` being strictly increasing is::
		
		    np.all(np.diff(xp) > 0)
		
		Examples
		--------
		>>> xp = [1, 2, 3]
		>>> fp = [3, 2, 0]
		>>> np.interp(2.5, xp, fp)
		1.0
		>>> np.interp([0, 1, 1.5, 2.72, 3.14], xp, fp)
		array([3.  , 3.  , 2.5 , 0.56, 0.  ])
		>>> UNDEF = -99.0
		>>> np.interp(3.14, xp, fp, right=UNDEF)
		-99.0
		
		Plot an interpolant to the sine function:
		
		>>> x = np.linspace(0, 2*np.pi, 10)
		>>> y = np.sin(x)
		>>> xvals = np.linspace(0, 2*np.pi, 50)
		>>> yinterp = np.interp(xvals, x, y)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(xvals, yinterp, '-x')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
		
		Interpolation with periodic x-coordinates:
		
		>>> x = [-180, -170, -185, 185, -10, -5, 0, 365]
		>>> xp = [190, -190, 350, -350]
		>>> fp = [5, 10, 3, 4]
		>>> np.interp(x, xp, fp, period=360)
		array([7.5 , 5.  , 8.75, 6.25, 3.  , 3.25, 3.5 , 3.75])
		
		Complex interpolation:
		
		>>> x = [1.5, 4.0]
		>>> xp = [2,3,5]
		>>> fp = [1.0j, 0, 2+3j]
		>>> np.interp(x, xp, fp)
		array([0.+1.j , 1.+1.5j])
	**/
	static public function interp(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
	/**
		Returns True if the type of `element` is a scalar type.
		
		Parameters
		----------
		element : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `element` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		If you need a stricter way to identify a *numerical* scalar, use
		``isinstance(x, numbers.Number)``, as that returns ``False`` for most
		non-numerical elements such as strings.
		
		In most cases ``np.ndim(x) == 0`` should be used instead of this function,
		as that will also return true for 0d arrays. This is how numpy overloads
		functions in the style of the ``dx`` arguments to `gradient` and the ``bins``
		argument to `histogram`. Some key differences:
		
		+--------------------------------------+---------------+-------------------+
		| x                                    |``isscalar(x)``|``np.ndim(x) == 0``|
		+======================================+===============+===================+
		| PEP 3141 numeric objects (including  | ``True``      | ``True``          |
		| builtins)                            |               |                   |
		+--------------------------------------+---------------+-------------------+
		| builtin string and buffer objects    | ``True``      | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other builtin objects, like          | ``False``     | ``True``          |
		| `pathlib.Path`, `Exception`,         |               |                   |
		| the result of `re.compile`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| third-party objects like             | ``False``     | ``True``          |
		| `matplotlib.figure.Figure`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| zero-dimensional numpy arrays        | ``False``     | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other numpy arrays                   | ``False``     | ``False``         |
		+--------------------------------------+---------------+-------------------+
		| `list`, `tuple`, and other sequence  | ``False``     | ``False``         |
		| objects                              |               |                   |
		+--------------------------------------+---------------+-------------------+
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar(np.array(3.1))
		False
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
		>>> np.isscalar('numpy')
		True
		
		NumPy supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> np.isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> np.isscalar(Number())
		True
	**/
	static public function isscalar(element:Dynamic):Bool;
	/**
		Check whether or not an object can be iterated over.
		
		Parameters
		----------
		y : object
		  Input object.
		
		Returns
		-------
		b : bool
		  Return ``True`` if the object has an iterator method or is a
		  sequence and ``False`` otherwise.
		
		
		Examples
		--------
		>>> np.iterable([1, 2, 3])
		True
		>>> np.iterable(2)
		False
		
		Notes
		-----
		In most cases, the results of ``np.iterable(obj)`` are consistent with
		``isinstance(obj, collections.abc.Iterable)``. One notable exception is
		the treatment of 0-dimensional arrays::
		
		    >>> from collections.abc import Iterable
		    >>> a = np.array(1.0)  # 0-dimensional numpy array
		    >>> isinstance(a, Iterable)
		    True
		    >>> np.iterable(a)
		    False
	**/
	static public function iterable(y:Dynamic):Bool;
	/**
		Return the Kaiser window.
		
		The Kaiser window is a taper formed by using a Bessel function.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		beta : float
		    Shape parameter for window.
		
		Returns
		-------
		out : array
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, hanning
		
		Notes
		-----
		The Kaiser window is defined as
		
		.. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
		           \right)/I_0(\beta)
		
		with
		
		.. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
		
		where :math:`I_0` is the modified zeroth-order Bessel function.
		
		The Kaiser was named for Jim Kaiser, who discovered a simple
		approximation to the DPSS window based on Bessel functions.  The Kaiser
		window is a very good approximation to the Digital Prolate Spheroidal
		Sequence, or Slepian window, which is the transform which maximizes the
		energy in the main lobe of the window relative to total energy.
		
		The Kaiser can approximate many other windows by varying the beta
		parameter.
		
		====  =======================
		beta  Window shape
		====  =======================
		0     Rectangular
		5     Similar to a Hamming
		6     Similar to a Hanning
		8.6   Similar to a Blackman
		====  =======================
		
		A beta value of 14 is probably a good starting point. Note that as beta
		gets large, the window narrows, and so the number of samples needs to be
		large enough to sample the increasingly narrow spike, otherwise NaNs will
		get returned.
		
		Most references to the Kaiser window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] J. F. Kaiser, "Digital Filters" - Ch 7 in "Systems analysis by
		       digital computer", Editors: F.F. Kuo and J.F. Kaiser, p 218-285.
		       John Wiley and Sons, New York, (1966).
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 177-178.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.kaiser(12, 14)
		 array([7.72686684e-06, 3.46009194e-03, 4.65200189e-02, # may vary
		        2.29737120e-01, 5.99885316e-01, 9.45674898e-01,
		        9.45674898e-01, 5.99885316e-01, 2.29737120e-01,
		        4.65200189e-02, 3.46009194e-03, 7.72686684e-06])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.kaiser(51, 14)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Kaiser window")
		Text(0.5, 1.0, 'Kaiser window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Kaiser window")
		Text(0.5, 1.0, 'Frequency response of Kaiser window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...) # may vary
		>>> plt.show()
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic):Array<Dynamic>;
	/**
		less_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 <= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True])
		
		The ``<=`` operator can be used as a shorthand for ``np.less_equal`` on
		ndarrays.
		
		>>> a = np.array([4, 2, 1])
		>>> b = np.array([2, 2, 2])
		>>> a <= b
		array([False,  True,  True])
	**/
	static public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the means are computed. The default is to
		    compute the mean of the flattened array.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a mean is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `mean` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in the mean. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned.
		
		See Also
		--------
		average : Weighted average
		std, var, nanmean, nanstd, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the elements along the axis divided
		by the number of elements.
		
		Note that for floating-point input, the mean is computed using the
		same precision the input has.  Depending on the input data, this can
		cause the results to be inaccurate, especially for `float32` (see
		example below).  Specifying a higher-precision accumulator using the
		`dtype` keyword can alleviate this issue.
		
		By default, `float16` results are computed using `float32` intermediates
		for extra precision.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([2., 3.])
		>>> np.mean(a, axis=1)
		array([1.5, 3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.54999924
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806 # may vary
		
		Specifying a where argument:
		>>> a = np.array([[5, 9, 13], [14, 10, 12], [11, 15, 19]])
		>>> np.mean(a)
		12.0
		>>> np.mean(a, where=[[True], [False], [False]])
		9.0
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis.
		
		Returns the median of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : {int, sequence of int, None}, optional
		    Axis or axes along which the medians are computed. The default
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array `a` for
		   calculations. The input array will be modified by the call to
		   `median`. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. If `overwrite_input` is ``True`` and `a` is not already an
		   `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers
		    or floats smaller than ``float64``, then the output data-type is
		    ``np.float64``.  Otherwise, the data-type of the output is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean, percentile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the median of ``V`` is the
		middle value of a sorted copy of ``V``, ``V_sorted`` - i
		e., ``V_sorted[(N-1)/2]``, when ``N`` is odd, and the average of the
		two middle values of ``V_sorted`` when ``N`` is even.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.median(a)
		3.5
		>>> np.median(a, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.median(a, axis=1)
		array([7.,  2.])
		>>> m = np.median(a, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.median(a, axis=0, out=m)
		array([6.5,  4.5,  2.5])
		>>> m
		array([6.5,  4.5,  2.5])
		>>> b = a.copy()
		>>> np.median(b, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.median(b, axis=None, overwrite_input=True)
		3.5
		>>> assert not np.all(a==b)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return coordinate matrices from coordinate vectors.
		
		Make N-D coordinate arrays for vectorized evaluations of
		N-D scalar/vector fields over N-D grids, given
		one-dimensional coordinate arrays x1, x2,..., xn.
		
		.. versionchanged:: 1.9
		   1-D and 0-D cases are allowed.
		
		Parameters
		----------
		x1, x2,..., xn : array_like
		    1-D arrays representing the coordinates of a grid.
		indexing : {'xy', 'ij'}, optional
		    Cartesian ('xy', default) or matrix ('ij') indexing of output.
		    See Notes for more details.
		
		    .. versionadded:: 1.7.0
		sparse : bool, optional
		    If True the shape of the returned coordinate array for dimension *i*
		    is reduced from ``(N1, ..., Ni, ... Nn)`` to
		    ``(1, ..., 1, Ni, 1, ..., 1)``.  These sparse coordinate grids are
		    intended to be use with :ref:`basics.broadcasting`.  When all
		    coordinates are used in an expression, broadcasting still leads to a
		    fully-dimensonal result array.
		
		    Default is False.
		
		    .. versionadded:: 1.7.0
		copy : bool, optional
		    If False, a view into the original arrays are returned in order to
		    conserve memory.  Default is True.  Please note that
		    ``sparse=False, copy=False`` will likely return non-contiguous
		    arrays.  Furthermore, more than one element of a broadcast array
		    may refer to a single memory location.  If you need to write to the
		    arrays, make copies first.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		X1, X2,..., XN : ndarray
		    For vectors `x1`, `x2`,..., 'xn' with lengths ``Ni=len(xi)`` ,
		    return ``(N1, N2, N3,...Nn)`` shaped arrays if indexing='ij'
		    or ``(N2, N1, N3,...Nn)`` shaped arrays if indexing='xy'
		    with the elements of `xi` repeated to fill the matrix along
		    the first dimension for `x1`, the second for `x2` and so on.
		
		Notes
		-----
		This function supports both indexing conventions through the indexing
		keyword argument.  Giving the string 'ij' returns a meshgrid with
		matrix indexing, while 'xy' returns a meshgrid with Cartesian indexing.
		In the 2-D case with inputs of length M and N, the outputs are of shape
		(N, M) for 'xy' indexing and (M, N) for 'ij' indexing.  In the 3-D case
		with inputs of length M, N and P, outputs are of shape (N, M, P) for
		'xy' indexing and (M, N, P) for 'ij' indexing.  The difference is
		illustrated by the following code snippet::
		
		    xv, yv = np.meshgrid(x, y, indexing='ij')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[i,j], yv[i,j]
		
		    xv, yv = np.meshgrid(x, y, indexing='xy')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[j,i], yv[j,i]
		
		In the 1-D and 0-D case, the indexing and sparse keywords have no effect.
		
		See Also
		--------
		mgrid : Construct a multi-dimensional "meshgrid" using indexing notation.
		ogrid : Construct an open multi-dimensional "meshgrid" using indexing
		        notation.
		
		Examples
		--------
		>>> nx, ny = (3, 2)
		>>> x = np.linspace(0, 1, nx)
		>>> y = np.linspace(0, 1, ny)
		>>> xv, yv = np.meshgrid(x, y)
		>>> xv
		array([[0. , 0.5, 1. ],
		       [0. , 0.5, 1. ]])
		>>> yv
		array([[0.,  0.,  0.],
		       [1.,  1.,  1.]])
		>>> xv, yv = np.meshgrid(x, y, sparse=True)  # make sparse output arrays
		>>> xv
		array([[0. ,  0.5,  1. ]])
		>>> yv
		array([[0.],
		       [1.]])
		
		`meshgrid` is very useful to evaluate functions on a grid.  If the
		function depends on all coordinates, you can use the parameter
		``sparse=True`` to save memory and computation time.
		
		>>> x = np.linspace(-5, 5, 101)
		>>> y = np.linspace(-5, 5, 101)
		>>> # full coorindate arrays
		>>> xx, yy = np.meshgrid(x, y)
		>>> zz = np.sqrt(xx**2 + yy**2)
		>>> xx.shape, yy.shape, zz.shape
		((101, 101), (101, 101), (101, 101))
		>>> # sparse coordinate arrays
		>>> xs, ys = np.meshgrid(x, y, sparse=True)
		>>> zs = np.sqrt(xs**2 + ys**2)
		>>> xs.shape, ys.shape, zs.shape
		((1, 101), (101, 1), (101, 101))
		>>> np.array_equal(zz, zs)
		True
		
		>>> import matplotlib.pyplot as plt
		>>> h = plt.contourf(x, y, zs)
		>>> plt.axis('scaled')
		>>> plt.colorbar()
		>>> plt.show()
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?copy:Dynamic, ?sparse:Dynamic, ?indexing:Dynamic):numpy.Ndarray;
	/**
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a copy of an array sorted along the first axis.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		sort
		
		Notes
		-----
		``np.msort(a)`` is equivalent to  ``np.sort(a, axis=0)``.
	**/
	static public function msort(a:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the elements that are non-zero.
		
		Returns a tuple of arrays, one for each dimension of `a`,
		containing the indices of the non-zero elements in that
		dimension. The values in `a` are always tested and returned in
		row-major, C-style order.
		
		To group the indices by element, rather than dimension, use `argwhere`,
		which returns a row for each non-zero element.
		
		.. note::
		
		   When called on a zero-d array or scalar, ``nonzero(a)`` is treated
		   as ``nonzero(atleast_1d(a))``.
		
		   .. deprecated:: 1.17.0
		
		      Use `atleast_1d` explicitly if this behavior is deliberate.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Notes
		-----
		While the nonzero values can be obtained with ``a[nonzero(a)]``, it is
		recommended to use ``x[x.astype(bool)]`` or ``x[x != 0]`` instead, which
		will correctly handle 0-d arrays.
		
		Examples
		--------
		>>> x = np.array([[3, 0, 0], [0, 4, 0], [5, 6, 0]])
		>>> x
		array([[3, 0, 0],
		       [0, 4, 0],
		       [5, 6, 0]])
		>>> np.nonzero(x)
		(array([0, 1, 2, 2]), array([0, 1, 0, 1]))
		
		>>> x[np.nonzero(x)]
		array([3, 4, 5, 6])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 0],
		       [2, 1]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]])
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		Using this result to index `a` is equivalent to using the mask directly:
		
		>>> a[np.nonzero(a > 3)]
		array([4, 5, 6, 7, 8, 9])
		>>> a[a > 3]  # prefer this spelling
		array([4, 5, 6, 7, 8, 9])
		
		``nonzero`` can also be called as a method of the array.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):python.Tuple<Dynamic>;
	/**
		normalize_axis_index(axis, ndim, msg_prefix=None)
		
		Normalizes an axis index, `axis`, such that is a valid positive index into
		the shape of array with `ndim` dimensions. Raises an AxisError with an
		appropriate message if this is not possible.
		
		Used internally by all axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int
		    The un-normalized index of the axis. Can be negative
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against
		msg_prefix : str
		    A prefix to put before the message, typically the name of the argument
		
		Returns
		-------
		normalized_axis : int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If the axis index is invalid, when `-ndim <= axis < ndim` is false.
		
		Examples
		--------
		>>> normalize_axis_index(0, ndim=3)
		0
		>>> normalize_axis_index(1, ndim=3)
		1
		>>> normalize_axis_index(-1, ndim=3)
		2
		
		>>> normalize_axis_index(3, ndim=3)
		Traceback (most recent call last):
		...
		AxisError: axis 3 is out of bounds for array of dimension 3
		>>> normalize_axis_index(-4, ndim=3, msg_prefix='axes_arg')
		Traceback (most recent call last):
		...
		AxisError: axes_arg: axis -4 is out of bounds for array of dimension 3
	**/
	static public function normalize_axis_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		not_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True])
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]])
		
		The ``!=`` operator can be used as a shorthand for ``np.not_equal`` on
		ndarrays.
		
		>>> a = np.array([1., 2.])
		>>> b = np.array([1., 3.])
		>>> a != b
		array([False,  True])
	**/
	static public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: C
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
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty : Return a new uninitialized array.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Examples
		--------
		>>> np.ones(5)
		array([1., 1., 1., 1., 1.])
		
		>>> np.ones((5,), dtype=int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[1.],
		       [1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[1.,  1.],
		       [1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Return a partitioned copy of an array.
		
		Creates a copy of the array with its elements rearranged in such a
		way that the value of the element in k-th position is in the
		position it would be in a sorted array. All elements smaller than
		the k-th element are moved before this element and all equal or
		greater are moved behind it. The ordering of the elements in the two
		partitions is undefined.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		kth : int or sequence of ints
		    Element index to partition by. The k-th value of the element
		    will be in its final sorted position and all smaller elements
		    will be moved before it and all equal or greater elements behind
		    it. The order of all elements in the partitions is undefined. If
		    provided with a sequence of k-th it will partition all elements
		    indexed by k-th  of them into their sorted position at once.
		
		    .. deprecated:: 1.22.0
		        Passing booleans as index is deprecated.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument
		    specifies which fields to compare first, second, etc.  A single
		    field can be specified as a string.  Not all fields need be
		    specified, but unspecified fields will still be used, in the
		    order in which they come up in the dtype, to break ties.
		
		Returns
		-------
		partitioned_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.partition : Method to sort an array in-place.
		argpartition : Indirect partition.
		sort : Full sorting
		
		Notes
		-----
		The various selection algorithms are characterized by their average
		speed, worst case performance, work space size, and whether they are
		stable. A stable sort keeps items with the same key in the same
		relative order. The available algorithms have the following
		properties:
		
		================= ======= ============= ============ =======
		   kind            speed   worst case    work space  stable
		================= ======= ============= ============ =======
		'introselect'        1        O(n)           0         no
		================= ======= ============= ============ =======
		
		All the partition algorithms make temporary copies of the data when
		partitioning along any but the last axis.  Consequently,
		partitioning along the last axis is faster and uses less space than
		partitioning along any other axis.
		
		The sort order for complex numbers is lexicographic. If both the
		real and imaginary parts are non-nan then the order is determined by
		the real parts except when they are equal, in which case the order
		is determined by the imaginary parts.
		
		Examples
		--------
		>>> a = np.array([3, 4, 2, 1])
		>>> np.partition(a, 3)
		array([2, 1, 3, 4])
		
		>>> np.partition(a, (1, 3))
		array([1, 2, 3, 4])
	**/
	static public function partition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Compute the q-th percentile of the data along the specified axis.
		
		Returns the q-th percentile(s) of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Percentile or sequence of percentiles to compute, which must be between
		    0 and 100 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the percentiles are computed. The
		    default is to compute the percentile(s) along a flattened
		    version of the array.
		
		    .. versionchanged:: 1.9.0
		        A tuple of axes is supported
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by intermediate
		    calculations, to save memory. In this case, the contents of the input
		    `a` after this function completes is undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    percentile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    .. versionadded:: 1.9.0
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple percentiles are given, first axis of
		    the result corresponds to the percentiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		median : equivalent to ``percentile(..., 50)``
		nanpercentile
		quantile : equivalent to percentile, except q in the range [0, 1].
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th percentile of ``V`` is
		the value ``q/100`` of the way from the minimum to the maximum in a
		sorted copy of ``V``. The values and distances of the two nearest
		neighbors as well as the `method` parameter will determine the
		percentile if the normalized ranking does not match the location of
		``q`` exactly. This function is the same as the median if ``q=50``, the
		same as the minimum if ``q=0`` and the same as the maximum if
		``q=100``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		Below, 'q' is the quantile value, 'n' is the sample size and
		alpha and beta are constants.
		The following formula gives an interpolation "i + g" of where the quantile
		would be in the sorted sample.
		With 'i' being the floor and 'g' the fractional part of the result.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.percentile(a, 50)
		3.5
		>>> np.percentile(a, 50, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.percentile(a, 50, axis=1)
		array([7.,  2.])
		>>> np.percentile(a, 50, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		
		>>> m = np.percentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.percentile(a, 50, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		The different methods can be visualized graphically:
		
		.. plot::
		
		    import matplotlib.pyplot as plt
		
		    a = np.arange(4)
		    p = np.linspace(0, 100, 6001)
		    ax = plt.gca()
		    lines = [
		        ('linear', '-', 'C0'),
		        ('inverted_cdf', ':', 'C1'),
		        # Almost the same as `inverted_cdf`:
		        ('averaged_inverted_cdf', '-.', 'C1'),
		        ('closest_observation', ':', 'C2'),
		        ('interpolated_inverted_cdf', '--', 'C1'),
		        ('hazen', '--', 'C3'),
		        ('weibull', '-.', 'C4'),
		        ('median_unbiased', '--', 'C5'),
		        ('normal_unbiased', '-.', 'C6'),
		        ]
		    for method, style, color in lines:
		        ax.plot(
		            p, np.percentile(a, p, method=method),
		            label=method, linestyle=style, color=color)
		    ax.set(
		        title='Percentiles for different methods and data: ' + str(a),
		        xlabel='Percentile',
		        ylabel='Estimated percentile value',
		        yticks=a)
		    ax.legend()
		    plt.show()
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray or scalar
		    The input domain.
		condlist : list of bool arrays or bool scalars
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) == len(condlist) + 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take a 1d array as input and give an 1d
		    array or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., alpha=1)``, then each function is called as
		    ``f(x, alpha=1)``.
		
		Returns
		-------
		out : ndarray
		    The output is the same shape and type as x and is found by
		    calling the functions in `funclist` on the appropriate portions of `x`,
		    as defined by the boolean arrays in `condlist`.  Portions not covered
		    by any condition have a default value of 0.
		
		
		See Also
		--------
		choose, select, where
		
		Notes
		-----
		This is similar to choose or select, except that functions are
		evaluated on elements of `x` that satisfy the corresponding condition from
		`condlist`.
		
		The result is::
		
		        |--
		        |funclist[0](x[condlist[0]])
		  out = |funclist[1](x[condlist[1]])
		        |...
		        |funclist[n2](x[condlist[n2]])
		        |--
		
		Examples
		--------
		Define the sigma function, which is -1 for ``x < 0`` and +1 for ``x >= 0``.
		
		>>> x = np.linspace(-2.5, 2.5, 6)
		>>> np.piecewise(x, [x < 0, x >= 0], [-1, 1])
		array([-1., -1., -1.,  1.,  1.,  1.])
		
		Define the absolute value, which is ``-x`` for ``x <0`` and ``x`` for
		``x >= 0``.
		
		>>> np.piecewise(x, [x < 0, x >= 0], [lambda x: -x, lambda x: x])
		array([2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
		
		Apply the same function to a scalar value.
		
		>>> y = -2
		>>> np.piecewise(y, [y < 0, y >= 0], [lambda x: -x, lambda x: x])
		array(2)
	**/
	static public function piecewise(x:Dynamic, condlist:Dynamic, funclist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Change elements of an array based on conditional and input values.
		
		Similar to ``np.copyto(arr, vals, where=mask)``, the difference is that
		`place` uses the first N elements of `vals`, where N is the number of
		True values in `mask`, while `copyto` uses the elements where `mask`
		is True.
		
		Note that `extract` does the exact opposite of `place`.
		
		Parameters
		----------
		arr : ndarray
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N, it will be repeated, and if elements of `a` are to be masked,
		    this sequence must be non-empty.
		
		See Also
		--------
		copyto, put, take, extract
		
		Examples
		--------
		>>> arr = np.arange(6).reshape(2, 3)
		>>> np.place(arr, arr>2, [44, 55])
		>>> arr
		array([[ 0,  1,  2],
		       [44, 55, 44]])
	**/
	static public function place(arr:Dynamic, mask:Dynamic, vals:Dynamic):Dynamic;
	/**
		Compute the q-th quantile of the data along the specified axis.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Quantile or sequence of quantiles to compute, which must be between
		    0 and 1 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the quantiles are computed. The default is
		    to compute the quantile(s) along a flattened version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by
		    intermediate calculations, to save memory. In this case, the
		    contents of the input `a` after this function completes is
		    undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    quantile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		quantile : scalar or ndarray
		    If `q` is a single quantile and `axis=None`, then the result
		    is a scalar. If multiple quantiles are given, first axis of
		    the result corresponds to the quantiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		percentile : equivalent to quantile, but with q in the range [0, 100].
		median : equivalent to ``quantile(..., 0.5)``
		nanquantile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th quantile of ``V`` is the
		value ``q`` of the way from the minimum to the maximum in a sorted copy of
		``V``. The values and distances of the two nearest neighbors as well as the
		`method` parameter will determine the quantile if the normalized
		ranking does not match the location of ``q`` exactly. This function is the
		same as the median if ``q=0.5``, the same as the minimum if ``q=0.0`` and
		the same as the maximum if ``q=1.0``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.quantile(a, 0.5)
		3.5
		>>> np.quantile(a, 0.5, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.quantile(a, 0.5, axis=1)
		array([7.,  2.])
		>>> np.quantile(a, 0.5, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.quantile(a, 0.5, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.quantile(a, 0.5, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		>>> b = a.copy()
		>>> np.quantile(b, 0.5, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		See also `numpy.percentile` for a visualization of most methods.
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function quantile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    y is an array of the same subtype as `a`, with shape ``(a.size,)``.
		    Note that matrices are special cased for backward compatibility, if `a`
		    is a matrix, then y is a 1-D ndarray.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> np.ravel(x)
		array([1, 2, 3, 4, 5, 6])
		
		>>> x.reshape(-1)
		array([1, 2, 3, 4, 5, 6])
		
		>>> np.ravel(x, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> np.ravel(x.T)
		array([1, 4, 2, 5, 3, 6])
		>>> np.ravel(x.T, order='A')
		array([1, 2, 3, 4, 5, 6])
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Rotate an array by 90 degrees in the plane specified by axes.
		
		Rotation direction is from the first towards the second axis.
		
		Parameters
		----------
		m : array_like
		    Array of two or more dimensions.
		k : integer
		    Number of times the array is rotated by 90 degrees.
		axes: (2,) array_like
		    The array is rotated in the plane defined by the axes.
		    Axes must be different.
		
		    .. versionadded:: 1.12.0
		
		Returns
		-------
		y : ndarray
		    A rotated view of `m`.
		
		See Also
		--------
		flip : Reverse the order of elements in an array along the given axis.
		fliplr : Flip an array horizontally.
		flipud : Flip an array vertically.
		
		Notes
		-----
		``rot90(m, k=1, axes=(1,0))``  is the reverse of
		``rot90(m, k=1, axes=(0,1))``
		
		``rot90(m, k=1, axes=(1,0))`` is equivalent to
		``rot90(m, k=-1, axes=(0,1))``
		
		Examples
		--------
		>>> m = np.array([[1,2],[3,4]], int)
		>>> m
		array([[1, 2],
		       [3, 4]])
		>>> np.rot90(m)
		array([[2, 4],
		       [1, 3]])
		>>> np.rot90(m, 2)
		array([[4, 3],
		       [2, 1]])
		>>> m = np.arange(8).reshape((2,2,2))
		>>> np.rot90(m, 1, (1,2))
		array([[[1, 3],
		        [0, 2]],
		       [[5, 7],
		        [4, 6]]])
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Return an array drawn from elements in choicelist, depending on conditions.
		
		Parameters
		----------
		condlist : list of bool ndarrays
		    The list of conditions which determine from which array in `choicelist`
		    the output elements are taken. When multiple conditions are satisfied,
		    the first one encountered in `condlist` is used.
		choicelist : list of ndarrays
		    The list of arrays from which the output elements are taken. It has
		    to be of the same length as `condlist`.
		default : scalar, optional
		    The element inserted in `output` when all conditions evaluate to False.
		
		Returns
		-------
		output : ndarray
		    The output at position m is the m-th element of the array in
		    `choicelist` where the m-th element of the corresponding array in
		    `condlist` is True.
		
		See Also
		--------
		where : Return elements from one of two arrays depending on condition.
		take, choose, compress, diag, diagonal
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> condlist = [x<3, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 42)
		array([ 0,  1,  2, 42, 16, 25])
		
		>>> condlist = [x<=4, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 55)
		array([ 0,  1,  2,  3,  4, 25])
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):numpy.Ndarray;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
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
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the normalized sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		.. note::
		
		    Note the normalization factor of ``pi`` used in the definition.
		    This is the most commonly used definition in signal processing.
		    Use ``sinc(x / np.pi)`` to obtain the unnormalized sinc function
		    :math:`\sin(x)/(x)` that is more common in mathematics.
		
		Parameters
		----------
		x : ndarray
		    Array (possibly multi-dimensional) of values for which to to
		    calculate ``sinc(x)``.
		
		Returns
		-------
		out : ndarray
		    ``sinc(x)``, which has the same shape as the input.
		
		Notes
		-----
		``sinc(0)`` is the limit value 1.
		
		The name sinc is short for "sine cardinal" or "sinus cardinalis".
		
		The sinc function is used in various signal processing applications,
		including in anti-aliasing, in the construction of a Lanczos resampling
		filter, and in interpolation.
		
		For bandlimited interpolation of discrete-time signals, the ideal
		interpolation kernel is proportional to the sinc function.
		
		References
		----------
		.. [1] Weisstein, Eric W. "Sinc Function." From MathWorld--A Wolfram Web
		       Resource. http://mathworld.wolfram.com/SincFunction.html
		.. [2] Wikipedia, "Sinc function",
		       https://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		 array([-3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02, # may vary
		        -8.90384387e-02,  -5.84680802e-02,   3.89804309e-17,
		        6.68206631e-02,   1.16434881e-01,   1.26137788e-01,
		        8.50444803e-02,  -3.89804309e-17,  -1.03943254e-01,
		        -1.89206682e-01,  -2.16236208e-01,  -1.55914881e-01,
		        3.89804309e-17,   2.33872321e-01,   5.04551152e-01,
		        7.56826729e-01,   9.35489284e-01,   1.00000000e+00,
		        9.35489284e-01,   7.56826729e-01,   5.04551152e-01,
		        2.33872321e-01,   3.89804309e-17,  -1.55914881e-01,
		       -2.16236208e-01,  -1.89206682e-01,  -1.03943254e-01,
		       -3.89804309e-17,   8.50444803e-02,   1.26137788e-01,
		        1.16434881e-01,   6.68206631e-02,   3.89804309e-17,
		        -5.84680802e-02,  -8.90384387e-02,  -8.40918587e-02,
		        -4.92362781e-02,  -3.89804309e-17])
		
		>>> plt.plot(x, np.sinc(x))
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Sinc Function")
		Text(0.5, 1.0, 'Sinc Function')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("X")
		Text(0.5, 0, 'X')
		>>> plt.show()
	**/
	static public function sinc(x:Dynamic):numpy.Ndarray;
	/**
		Sort a complex array using the real part first, then the imaginary part.
		
		Parameters
		----------
		a : array_like
		    Input array
		
		Returns
		-------
		out : complex ndarray
		    Always returns a sorted complex array.
		
		Examples
		--------
		>>> np.sort_complex([5, 3, 6, 2, 1])
		array([1.+0.j, 2.+0.j, 3.+0.j, 5.+0.j, 6.+0.j])
		
		>>> np.sort_complex([1 + 2j, 2 - 1j, 3 - 2j, 3 - 3j, 3 + 5j])
		array([1.+2.j,  2.-1.j,  3.-3.j,  3.-2.j,  3.+5.j])
	**/
	static public function sort_complex(a:Dynamic):Dynamic;
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
		subtract(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Subtract arguments, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be subtracted from each other.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		    The difference of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to ``x1 - x2`` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.subtract(1.0, 4.0)
		-3.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.subtract(x1, x2)
		array([[ 0.,  0.,  0.],
		       [ 3.,  3.,  3.],
		       [ 6.,  6.,  6.]])
		
		The ``-`` operator can be used as a shorthand for ``np.subtract`` on
		ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 - x2
		array([[0., 0., 0.],
		       [3., 3., 3.],
		       [6., 6., 6.]])
	**/
	static public function subtract(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.  The default,
		    axis=None, will sum all of the elements of the input array.  If
		    axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a sum is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  The dtype of `a` is used by default unless `a`
		    has an integer dtype of less precision than the default platform
		    integer.  In that case, if `a` is signed then the platform integer
		    is used while if `a` is unsigned then an unsigned integer of the
		    same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `sum` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    Starting value for the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to include in the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		add.reduce : Equivalent functionality of `add`.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		For floating point numbers the numerical precision of sum (and
		``np.add.reduce``) is in general limited by directly adding each number
		individually to the result causing rounding errors in every step.
		However, often numpy will use a  numerically better approach (partial
		pairwise summation) leading to improved precision in many use-cases.
		This improved precision is always provided when no ``axis`` is given.
		When ``axis`` is given, it will depend on which axis is summed.
		Technically, to provide the best speed possible, the improved precision
		is only used when the summation is along the fast axis in memory.
		Note that the exact precision may vary depending on other parameters.
		In contrast to NumPy, Python's ``math.fsum`` function uses a slower but
		more precise approach to summation.
		Especially when summing a large number of lower precision floating point
		numbers, such as ``float32``, numerical errors can become significant.
		In such cases it can be advisable to use `dtype="float64"` to use a higher
		precision for the output.
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		>>> np.sum([[0, 1], [np.nan, 5]], where=[False, True], axis=1)
		array([1., 5.])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
		
		You can also start the sum with a value other than zero:
		
		>>> np.sum([10], initial=5)
		15
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Take elements from an array along an axis.
		
		When axis is not None, this function does the same thing as "fancy"
		indexing (indexing arrays using arrays); however, it can be easier to use
		if you need elements along a given axis. A call such as
		``np.take(arr, indices, axis=3)`` is equivalent to
		``arr[:,:,:,indices,...]``.
		
		Explained without fancy indexing, this is equivalent to the following use
		of `ndindex`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of
		indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    Nj = indices.shape
		    for ii in ndindex(Ni):
		        for jj in ndindex(Nj):
		            for kk in ndindex(Nk):
		                out[ii + jj + kk] = a[ii + (indices[jj],) + kk]
		
		Parameters
		----------
		a : array_like (Ni..., M, Nk...)
		    The source array.
		indices : array_like (Nj...)
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional (Ni..., Nj..., Nk...)
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype. Note that `out` is always
		    buffered if `mode='raise'`; use other modes for better performance.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		out : ndarray (Ni..., Nj..., Nk...)
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		take_along_axis : Take elements by matching the array and the index arrays
		
		Notes
		-----
		
		By eliminating the inner loop in the description above, and using `s_` to
		build simple slice objects, `take` can be expressed  in terms of applying
		fancy indexing to each 1-d slice::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nj):
		            out[ii + s_[...,] + kk] = a[ii + s_[:,] + kk][indices]
		
		For this reason, it is equivalent to (but faster than) the following use
		of `apply_along_axis`::
		
		    out = np.apply_along_axis(lambda a_1d: a_1d[indices], axis, a)
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Reverse or permute the axes of an array; returns the modified array.
		
		For an array a with two axes, transpose(a) gives the matrix transpose.
		
		Refer to `numpy.ndarray.transpose` for full documentation.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : tuple or list of ints, optional
		    If specified, it must be a tuple or list which contains a permutation of
		    [0,1,..,N-1] where N is the number of axes of a.  The i'th axis of the
		    returned array will correspond to the axis numbered ``axes[i]`` of the
		    input.  If not specified, defaults to ``range(a.ndim)[::-1]``, which
		    reverses the order of the axes.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		ndarray.transpose : Equivalent method
		moveaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
		
		>>> x = np.ones((2, 3, 4, 5))
		>>> np.transpose(x).shape
		(5, 4, 3, 2)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Integrate along the given axis using the composite trapezoidal rule.
		
		If `x` is provided, the integration happens in sequence along its
		elements - they are not sorted.
		
		Integrate `y` (`x`) along each 1d slice on the given axis, compute
		:math:`\int y(x) dx`.
		When `x` is specified, this integrates along the parametric curve,
		computing :math:`\int_t y(t) dt =
		\int_t y(t) \left.\frac{dx}{dt}\right|_{x=x(t)} dt`.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    The sample points corresponding to the `y` values. If `x` is None,
		    the sample points are assumed to be evenly spaced `dx` apart. The
		    default is None.
		dx : scalar, optional
		    The spacing between sample points when `x` is None. The default is 1.
		axis : int, optional
		    The axis along which to integrate.
		
		Returns
		-------
		trapz : float or ndarray
		    Definite integral of 'y' = n-dimensional array as approximated along
		    a single axis by the trapezoidal rule. If 'y' is a 1-dimensional array,
		    then the result is a float. If 'n' is greater than 1, then the result
		    is an 'n-1' dimensional array.
		
		See Also
		--------
		sum, cumsum
		
		Notes
		-----
		Image [2]_ illustrates trapezoidal rule -- y-axis locations of points
		will be taken from `y` array, by default x-axis distances between
		points will be 1.0, alternatively they can be provided with `x` array
		or with `dx` scalar.  Return value will be equal to combined area under
		the red lines.
		
		
		References
		----------
		.. [1] Wikipedia page: https://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       https://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		
		Using a decreasing `x` corresponds to integrating in reverse:
		
		>>> np.trapz([1,2,3], x=[8,6,4])
		-8.0
		
		More generally `x` is used to integrate along a parametric curve.
		This finds the area of a circle, noting we repeat the sample which closes
		the curve:
		
		>>> theta = np.linspace(0, 2 * np.pi, num=1000, endpoint=True)
		>>> np.trapz(np.cos(theta), x=np.sin(theta))
		3.141571941375841
		
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([1.5, 2.5, 3.5])
		>>> np.trapz(a, axis=1)
		array([2.,  8.])
	**/
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Trim the leading and/or trailing zeros from a 1-D array or sequence.
		
		Parameters
		----------
		filt : 1-D array or sequence
		    Input array.
		trim : str, optional
		    A string with 'f' representing trim from front and 'b' to trim from
		    back. Default is 'fb', trim zeros from both front and back of the
		    array.
		
		Returns
		-------
		trimmed : 1-D array or sequence
		    The result of trimming the input. The input data type is preserved.
		
		Examples
		--------
		>>> a = np.array((0, 0, 0, 1, 2, 3, 0, 2, 1, 0))
		>>> np.trim_zeros(a)
		array([1, 2, 3, 0, 2, 1])
		
		>>> np.trim_zeros(a, 'b')
		array([0, 0, 0, ..., 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	static public var typecodes : Dynamic;
	/**
		Unwrap by taking the complement of large deltas with respect to the period.
		
		This unwraps a signal `p` by changing elements which have an absolute
		difference from their predecessor of more than ``max(discont, period/2)``
		to their `period`-complementary values.
		
		For the default case where `period` is :math:`2\pi` and `discont` is
		:math:`\pi`, this unwraps a radian phase `p` such that adjacent differences
		are never greater than :math:`\pi` by adding :math:`2k\pi` for some
		integer :math:`k`.
		
		Parameters
		----------
		p : array_like
		    Input array.
		discont : float, optional
		    Maximum discontinuity between values, default is ``period/2``.
		    Values below ``period/2`` are treated as if they were ``period/2``.
		    To have an effect different from the default, `discont` should be
		    larger than ``period/2``.
		axis : int, optional
		    Axis along which unwrap will operate, default is the last axis.
		period: float, optional
		    Size of the range over which the input wraps. By default, it is
		    ``2 pi``.
		
		    .. versionadded:: 1.21.0
		
		Returns
		-------
		out : ndarray
		    Output array.
		
		See Also
		--------
		rad2deg, deg2rad
		
		Notes
		-----
		If the discontinuity in `p` is smaller than ``period/2``,
		but larger than `discont`, no unwrapping is done because taking
		the complement would only make the discontinuity larger.
		
		Examples
		--------
		>>> phase = np.linspace(0, np.pi, num=5)
		>>> phase[3:] += np.pi
		>>> phase
		array([ 0.        ,  0.78539816,  1.57079633,  5.49778714,  6.28318531]) # may vary
		>>> np.unwrap(phase)
		array([ 0.        ,  0.78539816,  1.57079633, -0.78539816,  0.        ]) # may vary
		>>> np.unwrap([0, 1, 2, -1, 0], period=4)
		array([0, 1, 2, 3, 4])
		>>> np.unwrap([ 1, 2, 3, 4, 5, 6, 1, 2, 3], period=6)
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.unwrap([2, 3, 4, 5, 2, 3, 4, 5], period=4)
		array([2, 3, 4, 5, 6, 7, 8, 9])
		>>> phase_deg = np.mod(np.linspace(0 ,720, 19), 360) - 180
		>>> np.unwrap(phase_deg, period=360)
		array([-180., -140., -100.,  -60.,  -20.,   20.,   60.,  100.,  140.,
		        180.,  220.,  260.,  300.,  340.,  380.,  420.,  460.,  500.,
		        540.])
	**/
	static public function unwrap(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic, ?period:Dynamic):numpy.Ndarray;
	/**
		where(condition, [x, y], /)
		
		Return elements chosen from `x` or `y` depending on `condition`.
		
		.. note::
		    When only `condition` is provided, this function is a shorthand for
		    ``np.asarray(condition).nonzero()``. Using `nonzero` directly should be
		    preferred, as it behaves correctly for subclasses. The rest of this
		    documentation covers only the case where all three arguments are
		    provided.
		
		Parameters
		----------
		condition : array_like, bool
		    Where True, yield `x`, otherwise yield `y`.
		x, y : array_like
		    Values from which to choose. `x`, `y` and `condition` need to be
		    broadcastable to some shape.
		
		Returns
		-------
		out : ndarray
		    An array with elements from `x` where `condition` is True, and elements
		    from `y` elsewhere.
		
		See Also
		--------
		choose
		nonzero : The function that is called when x and y are omitted
		
		Notes
		-----
		If all the arrays are 1-D, `where` is equivalent to::
		
		    [xv if c else yv
		     for c, xv, yv in zip(condition, x, y)]
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.where(a < 5, a, 10*a)
		array([ 0,  1,  2,  3,  4, 50, 60, 70, 80, 90])
		
		This can be used on multidimensional arrays too:
		
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		The shapes of x, y, and the condition are broadcast together:
		
		>>> x, y = np.ogrid[:3, :4]
		>>> np.where(x < y, x, 10 + y)  # both x and 10+y are broadcast
		array([[10,  0,  0,  0],
		       [10, 11,  1,  1],
		       [10, 11, 12,  2]])
		
		>>> a = np.array([[0, 1, 2],
		...               [0, 2, 4],
		...               [0, 3, 6]])
		>>> np.where(a < 4, a, -1)  # -1 is broadcast
		array([[ 0,  1,  2],
		       [ 0,  2, -1],
		       [ 0,  3, -1]])
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of `a`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		zeros : Return a new array setting values to zero.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([0., 1., 2.])
		>>> np.zeros_like(y)
		array([0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):numpy.Ndarray;
}