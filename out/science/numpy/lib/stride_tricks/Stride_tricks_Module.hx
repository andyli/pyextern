/* This file is generated, do not edit! */
package numpy.lib.stride_tricks;
@:pythonImport("numpy.lib.stride_tricks") extern class Stride_tricks_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _broadcast_arrays_dispatcher(?args:python.VarArgs<Dynamic>, ?subok:Dynamic):Dynamic;
	/**
		Returns the shape of the arrays that would result from broadcasting the
		supplied arrays against each other.
	**/
	static public function _broadcast_shape(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _broadcast_to(array:Dynamic, shape:Dynamic, subok:Dynamic, readonly:Dynamic):Dynamic;
	static public function _broadcast_to_dispatcher(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Dynamic;
	static public function _maybe_view_as_subclass(original_array:Dynamic, new_array:Dynamic):Dynamic;
	static public function _sliding_window_view_dispatcher(x:Dynamic, window_shape:Dynamic, ?axis:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):Dynamic;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Create a view into the array with the given shape and strides.
		
		.. warning:: This function has to be used with extreme care, see notes.
		
		Parameters
		----------
		x : ndarray
		    Array to create a new.
		shape : sequence of int, optional
		    The shape of the new array. Defaults to ``x.shape``.
		strides : sequence of int, optional
		    The strides of the new array. Defaults to ``x.strides``.
		subok : bool, optional
		    .. versionadded:: 1.10
		
		    If True, subclasses are preserved.
		writeable : bool, optional
		    .. versionadded:: 1.12
		
		    If set to False, the returned array will always be readonly.
		    Otherwise it will be writable if the original array was. It
		    is advisable to set this to False if possible (see Notes).
		
		Returns
		-------
		view : ndarray
		
		See also
		--------
		broadcast_to : broadcast an array to a given shape.
		reshape : reshape an array.
		lib.stride_tricks.sliding_window_view :
		    userfriendly and safe function for the creation of sliding window views.
		
		Notes
		-----
		``as_strided`` creates a view into the array given the exact strides
		and shape. This means it manipulates the internal data structure of
		ndarray and, if done incorrectly, the array elements can point to
		invalid memory and can corrupt results or crash your program.
		It is advisable to always use the original ``x.strides`` when
		calculating new strides to avoid reliance on a contiguous memory
		layout.
		
		Furthermore, arrays created with this function often contain self
		overlapping memory, so that two elements are identical.
		Vectorized write operations on such arrays will typically be
		unpredictable. They may even give different results for small, large,
		or transposed arrays.
		Since writing to these arrays has to be tested and done with great
		care, you may want to use ``writeable=False`` to avoid accidental write
		operations.
		
		For these reasons it is advisable to avoid ``as_strided`` when
		possible.
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):numpy.Ndarray;
	/**
		Broadcast any number of arrays against each other.
		
		Parameters
		----------
		`*args` : array_likes
		    The arrays to broadcast.
		
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned arrays will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcasted : list of arrays
		    These arrays are views on the original arrays.  They are typically
		    not contiguous.  Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location. If you need
		    to write to the arrays, make copies first. While you can set the
		    ``writable`` flag True, writing to a single output value may end up
		    changing more than one location in the output array.
		
		    .. deprecated:: 1.17
		        The output is currently marked so that if written to, a deprecation
		        warning will be emitted. A future version will set the
		        ``writable`` flag False so writing to it will raise an error.
		
		See Also
		--------
		broadcast
		broadcast_to
		broadcast_shapes
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> y = np.array([[4],[5]])
		>>> np.broadcast_arrays(x, y)
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
		
		Here is a useful idiom for getting contiguous copies instead of
		non-contiguous views.
		
		>>> [np.array(a) for a in np.broadcast_arrays(x, y)]
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?subok:Dynamic):Dynamic;
	/**
		Broadcast the input shapes into a single shape.
		
		:ref:`Learn more about broadcasting here <basics.broadcasting>`.
		
		.. versionadded:: 1.20.0
		
		Parameters
		----------
		`*args` : tuples of ints, or ints
		    The shapes to be broadcast against each other.
		
		Returns
		-------
		tuple
		    Broadcasted shape.
		
		Raises
		------
		ValueError
		    If the shapes are not compatible and cannot be broadcast according
		    to NumPy's broadcasting rules.
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_to
		
		Examples
		--------
		>>> np.broadcast_shapes((1, 2), (3, 1), (3, 2))
		(3, 2)
		
		>>> np.broadcast_shapes((6, 7), (5, 6, 1), (7,), (5, 1, 7))
		(5, 6, 7)
	**/
	static public function broadcast_shapes(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple or int
		    The shape of the desired array. A single integer ``i`` is interpreted
		    as ``(i,)``.
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
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_shapes
		
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
		Normalizes an axis argument into a tuple of non-negative integer axes.
		
		This handles shorthands such as ``1`` and converts them to ``(1,)``,
		as well as performing the handling of negative indices covered by
		`normalize_axis_index`.
		
		By default, this forbids axes from being specified multiple times.
		
		Used internally by multi-axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int, iterable of int
		    The un-normalized index or indices of the axis.
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against.
		argname : str, optional
		    A prefix to put before the error message, typically the name of the
		    argument.
		allow_duplicate : bool, optional
		    If False, the default, disallow an axis from being specified twice.
		
		Returns
		-------
		normalized_axes : tuple of int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If any axis provided is out of range
		ValueError
		    If an axis is repeated
		
		See also
		--------
		normalize_axis_index : normalizing a single scalar axis
	**/
	static public function normalize_axis_tuple(axis:Dynamic, ndim:Dynamic, ?argname:Dynamic, ?allow_duplicate:Dynamic):Dynamic;
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
		Create a sliding window view into the array with the given window shape.
		
		Also known as rolling or moving window, the window slides across all
		dimensions of the array and extracts subsets of the array at all window
		positions.
		
		.. versionadded:: 1.20.0
		
		Parameters
		----------
		x : array_like
		    Array to create the sliding window view from.
		window_shape : int or tuple of int
		    Size of window over each axis that takes part in the sliding window.
		    If `axis` is not present, must have same length as the number of input
		    array dimensions. Single integers `i` are treated as if they were the
		    tuple `(i,)`.
		axis : int or tuple of int, optional
		    Axis or axes along which the sliding window is applied.
		    By default, the sliding window is applied to all axes and
		    `window_shape[i]` will refer to axis `i` of `x`.
		    If `axis` is given as a `tuple of int`, `window_shape[i]` will refer to
		    the axis `axis[i]` of `x`.
		    Single integers `i` are treated as if they were the tuple `(i,)`.
		subok : bool, optional
		    If True, sub-classes will be passed-through, otherwise the returned
		    array will be forced to be a base-class array (default).
		writeable : bool, optional
		    When true, allow writing to the returned view. The default is false,
		    as this should be used with caution: the returned view contains the
		    same memory location multiple times, so writing to one location will
		    cause others to change.
		
		Returns
		-------
		view : ndarray
		    Sliding window view of the array. The sliding window dimensions are
		    inserted at the end, and the original dimensions are trimmed as
		    required by the size of the sliding window.
		    That is, ``view.shape = x_shape_trimmed + window_shape``, where
		    ``x_shape_trimmed`` is ``x.shape`` with every entry reduced by one less
		    than the corresponding window size.
		
		See Also
		--------
		lib.stride_tricks.as_strided: A lower-level and less safe routine for
		    creating arbitrary views from custom shape and strides.
		broadcast_to: broadcast an array to a given shape.
		
		Notes
		-----
		For many applications using a sliding window view can be convenient, but
		potentially very slow. Often specialized solutions exist, for example:
		
		- `scipy.signal.fftconvolve`
		
		- filtering functions in `scipy.ndimage`
		
		- moving window functions provided by
		  `bottleneck <https://github.com/pydata/bottleneck>`_.
		
		As a rough estimate, a sliding window approach with an input size of `N`
		and a window size of `W` will scale as `O(N*W)` where frequently a special
		algorithm can achieve `O(N)`. That means that the sliding window variant
		for a window size of 100 can be a 100 times slower than a more specialized
		version.
		
		Nevertheless, for small window sizes, when no custom algorithm exists, or
		as a prototyping and developing tool, this function can be a good solution.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x.shape
		(6,)
		>>> v = sliding_window_view(x, 3)
		>>> v.shape
		(4, 3)
		>>> v
		array([[0, 1, 2],
		       [1, 2, 3],
		       [2, 3, 4],
		       [3, 4, 5]])
		
		This also works in more dimensions, e.g.
		
		>>> i, j = np.ogrid[:3, :4]
		>>> x = 10*i + j
		>>> x.shape
		(3, 4)
		>>> x
		array([[ 0,  1,  2,  3],
		       [10, 11, 12, 13],
		       [20, 21, 22, 23]])
		>>> shape = (2,2)
		>>> v = sliding_window_view(x, shape)
		>>> v.shape
		(2, 3, 2, 2)
		>>> v
		array([[[[ 0,  1],
		         [10, 11]],
		        [[ 1,  2],
		         [11, 12]],
		        [[ 2,  3],
		         [12, 13]]],
		       [[[10, 11],
		         [20, 21]],
		        [[11, 12],
		         [21, 22]],
		        [[12, 13],
		         [22, 23]]]])
		
		The axis can be specified explicitly:
		
		>>> v = sliding_window_view(x, 3, 0)
		>>> v.shape
		(1, 4, 3)
		>>> v
		array([[[ 0, 10, 20],
		        [ 1, 11, 21],
		        [ 2, 12, 22],
		        [ 3, 13, 23]]])
		
		The same axis can be used several times. In that case, every use reduces
		the corresponding original dimension:
		
		>>> v = sliding_window_view(x, (2, 3), (1, 1))
		>>> v.shape
		(3, 1, 2, 3)
		>>> v
		array([[[[ 0,  1,  2],
		         [ 1,  2,  3]]],
		       [[[10, 11, 12],
		         [11, 12, 13]]],
		       [[[20, 21, 22],
		         [21, 22, 23]]]])
		
		Combining with stepped slicing (`::step`), this can be used to take sliding
		views which skip elements:
		
		>>> x = np.arange(7)
		>>> sliding_window_view(x, 5)[:, ::2]
		array([[0, 2, 4],
		       [1, 3, 5],
		       [2, 4, 6]])
		
		or views which move by multiple elements
		
		>>> x = np.arange(7)
		>>> sliding_window_view(x, 3)[::2, :]
		array([[0, 1, 2],
		       [2, 3, 4],
		       [4, 5, 6]])
		
		A common application of `sliding_window_view` is the calculation of running
		statistics. The simplest example is the
		`moving average <https://en.wikipedia.org/wiki/Moving_average>`_:
		
		>>> x = np.arange(6)
		>>> x.shape
		(6,)
		>>> v = sliding_window_view(x, 3)
		>>> v.shape
		(4, 3)
		>>> v
		array([[0, 1, 2],
		       [1, 2, 3],
		       [2, 3, 4],
		       [3, 4, 5]])
		>>> moving_average = v.mean(axis=-1)
		>>> moving_average
		array([1., 2., 3., 4.])
		
		Note that a sliding window approach is often **not** optimal (see Notes).
	**/
	static public function sliding_window_view(x:Dynamic, window_shape:Dynamic, ?axis:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):numpy.Ndarray;
}