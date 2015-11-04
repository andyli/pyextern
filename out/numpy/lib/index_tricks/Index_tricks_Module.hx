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
	static public var absolute_import : Dynamic;
	/**
		Check if all elements of input array are true.
		
		See Also
		--------
		numpy.all : Equivalent function; see for details.
	**/
	static public function alltrue(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
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
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
		Make an ndarray from the given array with the given shape and strides.
		    
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
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
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
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
		numpy.doc.ufuncs : Section "Output arguments"
		
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
		
		See also
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
		
		>>> a = np.zeros((2, 2, 2), dtype=np.int)
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
		Calculate the n-th order discrete difference along given axis.
		
		The first order difference is given by ``out[n] = a[n+1] - a[n]`` along
		the given axis, higher order differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced.
		axis : int, optional
		    The axis along which the difference is taken, default is the last axis.
		
		Returns
		-------
		diff : ndarray
		    The `n` order differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
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
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	static public var division : Dynamic;
	/**
		Fill the main diagonal of the given array of any dimensionality.
		
		For an array `a` with ``a.ndim > 2``, the diagonal is the list of
		locations with indices ``a[i, i, ..., i]`` all identical. This function
		modifies the input array in-place, it does not return a value.
		
		Parameters
		----------
		a : array, at least 2-D.
		  Array whose diagonal is to be filled, it gets modified in-place.
		
		val : scalar
		  Value to be written on the diagonal, its type must be compatible with
		  that of the array a.
		
		wrap : bool
		  For tall matrices in NumPy version up to 1.6.2, the
		  diagonal "wrapped" after N columns. You can have this behavior
		  with this option. This affect only tall matrices.
		
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
		>>> a = np.zeros((5, 3),int)
		>>> fill_diagonal(a, 4)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [0, 0, 0]])
		
		>>> # tall matrices wrap
		>>> a = np.zeros((5, 3),int)
		>>> fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [4, 0, 0]])
		
		>>> # wide matrices
		>>> a = np.zeros((3, 5),int)
		>>> fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0, 0, 0],
		       [0, 4, 0, 0, 0],
		       [0, 0, 4, 0, 0]])
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
		>>> np.find_common_type([], [np.int64, np.float32, np.complex])
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
		
		>>> np.find_common_type([np.float32], [np.complex])
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
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    dtype or string representing a typecode.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		issubsctype, issubclass_
		numpy.core.numerictypes : Overview of numpy type hierarchy.
		
		Examples
		--------
		>>> np.issubdtype('S1', str)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Dynamic;
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
		>>> ixgrid = np.ix_([0,1], [2,4])
		>>> ixgrid
		(array([[0],
		       [1]]), array([[2, 4]]))
		>>> ixgrid[0].shape, ixgrid[1].shape
		((2, 1), (1, 2))
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		`nd_grid` instance which returns a dense multi-dimensional "meshgrid".
		
		An instance of `numpy.lib.index_tricks.nd_grid` which returns an dense
		(or fleshed out) mesh-grid when indexed, so that each returned argument
		has the same shape.  The dimensions and number of the output arrays are
		equal to the number of indexing dimensions.  If the step length is not a
		complex number, then the stop is not inclusive.
		
		However, if the step length is a **complex number** (e.g. 5j), then
		the integer part of its magnitude is interpreted as specifying the
		number of points to create between the start and stop values, where
		the stop value **is inclusive**.
		
		Returns
		----------
		mesh-grid `ndarrays` all of the same dimensions
		
		See Also
		--------
		numpy.lib.index_tricks.nd_grid : class of `ogrid` and `mgrid` objects
		ogrid : like mgrid but returns open (not fleshed out) mesh grids
		r_ : array concatenator
		
		Examples
		--------
		>>> np.mgrid[0:5,0:5]
		array([[[0, 0, 0, 0, 0],
		        [1, 1, 1, 1, 1],
		        [2, 2, 2, 2, 2],
		        [3, 3, 3, 3, 3],
		        [4, 4, 4, 4, 4]],
		       [[0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4]]])
		>>> np.mgrid[-1:1:5j]
		array([-1. , -0.5,  0. ,  0.5,  1. ])
	**/
	static public var mgrid : Dynamic;
	/**
		`nd_grid` instance which returns an open multi-dimensional "meshgrid".
		
		An instance of `numpy.lib.index_tricks.nd_grid` which returns an open
		(i.e. not fleshed out) mesh-grid when indexed, so that only one dimension
		of each returned array is greater than 1.  The dimension and number of the
		output arrays are equal to the number of indexing dimensions.  If the step
		length is not a complex number, then the stop is not inclusive.
		
		However, if the step length is a **complex number** (e.g. 5j), then
		the integer part of its magnitude is interpreted as specifying the
		number of points to create between the start and stop values, where
		the stop value **is inclusive**.
		
		Returns
		----------
		mesh-grid `ndarrays` with only one dimension :math:`\neq 1`
		
		See Also
		--------
		np.lib.index_tricks.nd_grid : class of `ogrid` and `mgrid` objects
		mgrid : like `ogrid` but returns dense (or fleshed out) mesh grids
		r_ : array concatenator
		
		Examples
		--------
		>>> from numpy import ogrid
		>>> ogrid[-1:1:5j]
		array([-1. , -0.5,  0. ,  0.5,  1. ])
		>>> ogrid[0:5,0:5]
		[array([[0],
		        [1],
		        [2],
		        [3],
		        [4]]), array([[0, 1, 2, 3, 4]])]
	**/
	static public var ogrid : Dynamic;
	static public var print_function : Dynamic;
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
		unravel_index(indices, dims, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``dims``. Before version 1.6.0,
		    this function accepted just one index value.
		dims : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
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