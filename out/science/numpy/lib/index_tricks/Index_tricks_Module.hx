/* This file is generated, do not edit! */
package numpy.lib.index_tricks;
@:pythonImport("numpy.lib.index_tricks") extern class Index_tricks_Module {
	static public var ScalarType : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _diag_indices_from(arr:Dynamic):Dynamic;
	static public function _fill_diagonal_dispatcher(a:Dynamic, val:Dynamic, ?wrap:Dynamic):Dynamic;
	static public function _ix__dispatcher(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Check if all elements of input array are true.
		
		See Also
		--------
		numpy.all : Equivalent function; see for details.
	**/
	static public function alltrue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var c_ : Dynamic;
	/**
		Return the cumulative product of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative product is computed.  By default
		    the input is flattened.
		dtype : dtype, optional
		    Type of the returned array, as well as of the accumulator in which
		    the elements are multiplied.  If *dtype* is not specified, it
		    defaults to the dtype of `a`, unless `a` has an integer dtype with
		    a precision less than that of the default platform integer.  In
		    that case, the default platform integer is used instead.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type of the resulting values will be cast if necessary.
		
		Returns
		-------
		cumprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case a reference to out is returned.
		
		See Also
		--------
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		Examples
		--------
		>>> a = np.array([1,2,3])
		>>> np.cumprod(a) # intermediate results 1, 1*2
		...               # total product 1*2*3 = 6
		array([1, 2, 6])
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> np.cumprod(a, dtype=float) # specify type of output
		array([   1.,    2.,    6.,   24.,  120.,  720.])
		
		The cumulative product for each column (i.e., over the rows) of `a`:
		
		>>> np.cumprod(a, axis=0)
		array([[ 1,  2,  3],
		       [ 4, 10, 18]])
		
		The cumulative product for each row (i.e. over the columns) of `a`:
		
		>>> np.cumprod(a,axis=1)
		array([[  1,   2,   6],
		       [  4,  20, 120]])
	**/
	static public function cumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Return the indices to access the main diagonal of an array.
		
		This returns a tuple of indices that can be used to access the main
		diagonal of an array `a` with ``a.ndim >= 2`` dimensions and shape
		(n, n, ..., n). For ``a.ndim = 2`` this is the usual diagonal, for
		``a.ndim > 2`` this is the set of indices to access ``a[i, i, ..., i]``
		for ``i = [0..n-1]``.
		
		Parameters
		----------
		n : int
		  The size, along each dimension, of the arrays for which the returned
		  indices can be used.
		
		ndim : int, optional
		  The number of dimensions.
		
		See Also
		--------
		diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Create a set of indices to access the diagonal of a (4, 4) array:
		
		>>> di = np.diag_indices(4)
		>>> di
		(array([0, 1, 2, 3]), array([0, 1, 2, 3]))
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		>>> a[di] = 100
		>>> a
		array([[100,   1,   2,   3],
		       [  4, 100,   6,   7],
		       [  8,   9, 100,  11],
		       [ 12,  13,  14, 100]])
		
		Now, we create indices to manipulate a 3-D array:
		
		>>> d3 = np.diag_indices(2, 3)
		>>> d3
		(array([0, 1]), array([0, 1]), array([0, 1]))
		
		And use it to set the diagonal of an array of zeros to 1:
		
		>>> a = np.zeros((2, 2, 2), dtype=int)
		>>> a[d3] = 1
		>>> a
		array([[[1, 0],
		        [0, 0]],
		       [[0, 0],
		        [0, 1]]])
	**/
	static public function diag_indices(n:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Return the indices to access the main diagonal of an n-dimensional array.
		
		See `diag_indices` for full details.
		
		Parameters
		----------
		arr : array, at least 2-D
		
		See Also
		--------
		diag_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function diag_indices_from(arr:Dynamic):Dynamic;
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
		Fill the main diagonal of the given array of any dimensionality.
		
		For an array `a` with ``a.ndim >= 2``, the diagonal is the list of
		locations with indices ``a[i, ..., i]`` all identical. This function
		modifies the input array in-place, it does not return a value.
		
		Parameters
		----------
		a : array, at least 2-D.
		  Array whose diagonal is to be filled, it gets modified in-place.
		
		val : scalar or array_like
		  Value(s) to write on the diagonal. If `val` is scalar, the value is
		  written along the diagonal. If array-like, the flattened `val` is
		  written along the diagonal, repeating if necessary to fill all
		  diagonal entries.
		
		wrap : bool
		  For tall matrices in NumPy version up to 1.6.2, the
		  diagonal "wrapped" after N columns. You can have this behavior
		  with this option. This affects only tall matrices.
		
		See also
		--------
		diag_indices, diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		This functionality can be obtained via `diag_indices`, but internally
		this version uses a much faster implementation that never constructs the
		indices and uses simple slicing.
		
		Examples
		--------
		>>> a = np.zeros((3, 3), int)
		>>> np.fill_diagonal(a, 5)
		>>> a
		array([[5, 0, 0],
		       [0, 5, 0],
		       [0, 0, 5]])
		
		The same function can operate on a 4-D array:
		
		>>> a = np.zeros((3, 3, 3, 3), int)
		>>> np.fill_diagonal(a, 4)
		
		We only show a few blocks for clarity:
		
		>>> a[0, 0]
		array([[4, 0, 0],
		       [0, 0, 0],
		       [0, 0, 0]])
		>>> a[1, 1]
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 0]])
		>>> a[2, 2]
		array([[0, 0, 0],
		       [0, 0, 0],
		       [0, 0, 4]])
		
		The wrap option affects only tall matrices:
		
		>>> # tall matrices no wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [0, 0, 0]])
		
		>>> # tall matrices wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [4, 0, 0]])
		
		>>> # wide matrices
		>>> a = np.zeros((3, 5), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0, 0, 0],
		       [0, 4, 0, 0, 0],
		       [0, 0, 4, 0, 0]])
		
		The anti-diagonal can be filled by reversing the order of elements
		using either `numpy.flipud` or `numpy.fliplr`.
		
		>>> a = np.zeros((3, 3), int);
		>>> np.fill_diagonal(np.fliplr(a), [1,2,3])  # Horizontal flip
		>>> a
		array([[0, 0, 1],
		       [0, 2, 0],
		       [3, 0, 0]])
		>>> np.fill_diagonal(np.flipud(a), [1,2,3])  # Vertical flip
		>>> a
		array([[0, 0, 3],
		       [0, 2, 0],
		       [1, 0, 0]])
		
		Note that the order in which the diagonal is filled varies depending
		on the flip function.
	**/
	static public function fill_diagonal(a:Dynamic, val:Dynamic, ?wrap:Dynamic):Dynamic;
	/**
		Determine common type following standard coercion rules.
		
		Parameters
		----------
		array_types : sequence
		    A list of dtypes or dtype convertible objects representing arrays.
		scalar_types : sequence
		    A list of dtypes or dtype convertible objects representing scalars.
		
		Returns
		-------
		datatype : dtype
		    The common data type, which is the maximum of `array_types` ignoring
		    `scalar_types`, unless the maximum of `scalar_types` is of a
		    different kind (`dtype.kind`). If the kind is not understood, then
		    None is returned.
		
		See Also
		--------
		dtype, common_type, can_cast, mintypecode
		
		Examples
		--------
		>>> np.find_common_type([], [np.int64, np.float32, complex])
		dtype('complex128')
		>>> np.find_common_type([np.int64, np.float32], [])
		dtype('float64')
		
		The standard casting rules ensure that a scalar cannot up-cast an
		array unless the scalar is of a fundamentally different kind of data
		(i.e. under a different hierarchy in the data type hierarchy) then
		the array:
		
		>>> np.find_common_type([np.float32], [np.int64, np.float64])
		dtype('float32')
		
		Complex is of a different type, so it up-casts the float in the
		`array_types` argument:
		
		>>> np.find_common_type([np.float32], [complex])
		dtype('complex128')
		
		Type specifier strings are convertible to dtypes and can therefore
		be used instead of dtypes:
		
		>>> np.find_common_type(['f4', 'f4', 'i4'], ['c8'])
		dtype('complex128')
	**/
	static public function find_common_type(array_types:Dynamic, scalar_types:Dynamic):Dynamic;
	static public var index_exp : Dynamic;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Construct an open mesh from multiple sequences.
		
		This function takes N 1-D sequences and returns N outputs with N
		dimensions each, such that the shape is 1 in all but one dimension
		and the dimension with the non-unit shape value cycles through all
		N dimensions.
		
		Using `ix_` one can quickly construct index arrays that will index
		the cross product. ``a[np.ix_([1,3],[2,5])]`` returns the array
		``[[a[1,2] a[1,5]], [a[3,2] a[3,5]]]``.
		
		Parameters
		----------
		args : 1-D sequences
		    Each sequence should be of integer or boolean type.
		    Boolean sequences will be interpreted as boolean masks for the
		    corresponding dimension (equivalent to passing in
		    ``np.nonzero(boolean_sequence)``).
		
		Returns
		-------
		out : tuple of ndarrays
		    N arrays with N dimensions each, with N the number of input
		    sequences. Together these arrays form an open mesh.
		
		See Also
		--------
		ogrid, mgrid, meshgrid
		
		Examples
		--------
		>>> a = np.arange(10).reshape(2, 5)
		>>> a
		array([[0, 1, 2, 3, 4],
		       [5, 6, 7, 8, 9]])
		>>> ixgrid = np.ix_([0, 1], [2, 4])
		>>> ixgrid
		(array([[0],
		       [1]]), array([[2, 4]]))
		>>> ixgrid[0].shape, ixgrid[1].shape
		((2, 1), (1, 2))
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		
		>>> ixgrid = np.ix_([True, True], [2, 4])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		>>> ixgrid = np.ix_([True, True], [False, False, True, False, True])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		.. versionchanged:: 1.20.0
		    Values are rounded towards ``-inf`` instead of ``0`` when an
		    integer ``dtype`` is specified. The old behavior can
		    still be obtained with ``np.linspace(start, stop, num).astype(int)``
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
		    The end value of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced samples, so that `stop` is excluded.  Note that the step
		    size changes when `endpoint` is False.
		num : int, optional
		    Number of samples to generate. Default is 50. Must be non-negative.
		endpoint : bool, optional
		    If True, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		retstep : bool, optional
		    If True, return (`samples`, `step`), where `step` is the spacing
		    between samples.
		dtype : dtype, optional
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		
		    .. versionadded:: 1.9.0
		
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float, optional
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		geomspace : Similar to `linspace`, but with numbers spaced evenly on a log
		            scale (a geometric progression).
		logspace : Similar to `geomspace`, but with the end points specified as
		           logarithms.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		array([2.  , 2.25, 2.5 , 2.75, 3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		array([2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		(array([2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 8
		>>> y = np.zeros(N)
		>>> x1 = np.linspace(0, 10, N, endpoint=True)
		>>> x2 = np.linspace(0, 10, N, endpoint=False)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	static public var mgrid : Dynamic;
	/**
		Return the number of dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.  If it is not already an ndarray, a conversion is
		    attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in `a`.  Scalars are zero-dimensional.
		
		See Also
		--------
		ndarray.ndim : equivalent method
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Examples
		--------
		>>> np.ndim([[1,2,3],[4,5,6]])
		2
		>>> np.ndim(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.ndim(1)
		0
	**/
	static public function ndim(a:Dynamic):Int;
	static public var ogrid : Dynamic;
	static public var r_ : Dynamic;
	/**
		ravel_multi_index(multi_index, dims, mode='raise', order='C')
		
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of array_like
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : ndarray
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Examples
		--------
		>>> arr = np.array([[3,6,6],[4,5,1]])
		>>> np.ravel_multi_index(arr, (7,6))
		array([22, 41, 37])
		>>> np.ravel_multi_index(arr, (7,6), order='F')
		array([31, 41, 13])
		>>> np.ravel_multi_index(arr, (4,6), mode='clip')
		array([22, 23, 19])
		>>> np.ravel_multi_index(arr, (4,4), mode=('clip','wrap'))
		array([12, 13, 13])
		
		>>> np.ravel_multi_index((3,1,4,1), (6,7,8,9))
		1621
	**/
	static public function ravel_multi_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var s_ : Dynamic;
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
		unravel_index(indices, shape, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``shape``. Before version 1.6.0,
		    this function accepted just one index value.
		shape : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		
		    .. versionchanged:: 1.16.0
		        Renamed from ``dims`` to ``shape``.
		
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
		
		Examples
		--------
		>>> np.unravel_index([22, 41, 37], (7,6))
		(array([3, 6, 6]), array([4, 5, 1]))
		>>> np.unravel_index([31, 41, 13], (7,6), order='F')
		(array([3, 6, 6]), array([4, 5, 1]))
		
		>>> np.unravel_index(1621, (6,7,8,9))
		(3, 1, 4, 1)
	**/
	static public function unravel_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
}