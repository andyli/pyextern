/* This file is generated, do not edit! */
package scipy.fftpack.helper;
@:pythonImport("scipy.fftpack.helper") extern class Helper_Module {
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
		Handle shape and axes arguments for n-dimensional transforms.
		
		Returns the shape and axes in a standard form, taking into account negative
		values and checking for various potential errors.
		
		Parameters
		----------
		x : array_like
		    The input array.
		shape : int or array_like of ints or None
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If `shape` is -1, the size of the corresponding dimension of `x` is
		    used.
		axes : int or array_like of ints or None
		    Axes along which the calculation is computed.
		    The default is over all axes.
		    Negative indices are automatically converted to their positive
		    counterpart.
		
		Returns
		-------
		shape : array
		    The shape of the result. It is a 1D integer array.
		axes : array
		    The shape of the result. It is a 1D integer array.
	**/
	static public function _init_nd_shape_and_axes(x:Dynamic, shape:Dynamic, axes:Dynamic):Array<Dynamic>;
	/**
		Handle and sort shape and axes arguments for n-dimensional transforms.
		
		This is identical to `_init_nd_shape_and_axes`, except the axes are
		returned in sorted order and the shape is reordered to match.
		
		Parameters
		----------
		x : array_like
		    The input array.
		shape : int or array_like of ints or None
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If `shape` is -1, the size of the corresponding dimension of `x` is
		    used.
		axes : int or array_like of ints or None
		    Axes along which the calculation is computed.
		    The default is over all axes.
		    Negative indices are automatically converted to their positive
		    counterpart.
		
		Returns
		-------
		shape : array
		    The shape of the result. It is a 1D integer array.
		axes : array
		    The shape of the result. It is a 1D integer array.
	**/
	static public function _init_nd_shape_and_axes_sorted(x:Dynamic, shape:Dynamic, axes:Dynamic):Array<Dynamic>;
	static public var absolute_import : Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use `numpy.linspace` for these cases.
		
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
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
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
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
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
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		bisect_left(a, x[, lo[, hi]]) -> index
		
		Return the index where to insert item x in list a, assuming a is sorted.
		
		The return value i is such that all e in a[:i] have e < x, and all e in
		a[i:] have e >= x.  So if x already appears in the list, i points just
		before the leftmost x already there.
		
		Optional args lo (default 0) and hi (default len(a)) bound the
		slice of a to be searched.
	**/
	static public function bisect_left(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Return the Discrete Fourier Transform sample frequencies.
		
		The returned float array `f` contains the frequency bin centers in cycles
		per unit of the sample spacing (with zero at the start).  For instance, if
		the sample spacing is in seconds, then the frequency unit is cycles/second.
		
		Given a window length `n` and a sample spacing `d`::
		
		  f = [0, 1, ...,   n/2-1,     -n/2, ..., -1] / (d*n)   if n is even
		  f = [0, 1, ..., (n-1)/2, -(n-1)/2, ..., -1] / (d*n)   if n is odd
		
		Parameters
		----------
		n : int
		    Window length.
		d : scalar, optional
		    Sample spacing (inverse of the sampling rate). Defaults to 1.
		
		Returns
		-------
		f : ndarray
		    Array of length `n` containing the sample frequencies.
		
		Examples
		--------
		>>> signal = np.array([-2, 8, 6, 4, 1, 0, 3, 5], dtype=float)
		>>> fourier = np.fft.fft(signal)
		>>> n = signal.size
		>>> timestep = 0.1
		>>> freq = np.fft.fftfreq(n, d=timestep)
		>>> freq
		array([ 0.  ,  1.25,  2.5 ,  3.75, -5.  , -3.75, -2.5 , -1.25])
	**/
	static public function fftfreq(n:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Shift the zero-frequency component to the center of the spectrum.
		
		This function swaps half-spaces for all axes listed (defaults to all).
		Note that ``y[0]`` is the Nyquist component only if ``len(x)`` is even.
		
		Parameters
		----------
		x : array_like
		    Input array.
		axes : int or shape tuple, optional
		    Axes over which to shift.  Default is None, which shifts all axes.
		
		Returns
		-------
		y : ndarray
		    The shifted array.
		
		See Also
		--------
		ifftshift : The inverse of `fftshift`.
		
		Examples
		--------
		>>> freqs = np.fft.fftfreq(10, 0.1)
		>>> freqs
		array([ 0.,  1.,  2.,  3.,  4., -5., -4., -3., -2., -1.])
		>>> np.fft.fftshift(freqs)
		array([-5., -4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		
		Shift the zero-frequency component only along the second axis:
		
		>>> freqs = np.fft.fftfreq(9, d=1./9).reshape(3, 3)
		>>> freqs
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
		>>> np.fft.fftshift(freqs, axes=(1,))
		array([[ 2.,  0.,  1.],
		       [-4.,  3.,  4.],
		       [-1., -3., -2.]])
	**/
	static public function fftshift(x:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		The inverse of `fftshift`. Although identical for even-length `x`, the
		functions differ by one sample for odd-length `x`.
		
		Parameters
		----------
		x : array_like
		    Input array.
		axes : int or shape tuple, optional
		    Axes over which to calculate.  Defaults to None, which shifts all axes.
		
		Returns
		-------
		y : ndarray
		    The shifted array.
		
		See Also
		--------
		fftshift : Shift zero-frequency component to the center of the spectrum.
		
		Examples
		--------
		>>> freqs = np.fft.fftfreq(9, d=1./9).reshape(3, 3)
		>>> freqs
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
		>>> np.fft.ifftshift(np.fft.fftshift(freqs))
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
	**/
	static public function ifftshift(x:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Returns True if the type of `num` is a scalar type.
		
		Parameters
		----------
		num : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `num` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		In almost all cases ``np.ndim(x) == 0`` should be used instead of this
		function, as that will also return true for 0d arrays. This is how
		numpy overloads functions in the style of the ``dx`` arguments to `gradient`
		and the ``bins`` argument to `histogram`. Some key differences:
		
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
		>>> isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> isscalar(Number())
		True
	**/
	static public function isscalar(num:Dynamic):Bool;
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
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Find the next fast size of input data to `fft`, for zero-padding, etc.
		
		SciPy's FFTPACK has efficient functions for radix {2, 3, 4, 5}, so this
		returns the next composite of the prime factors 2, 3, and 5 which is
		greater than or equal to `target`. (These are also known as 5-smooth
		numbers, regular numbers, or Hamming numbers.)
		
		Parameters
		----------
		target : int
		    Length to start searching from.  Must be a positive integer.
		
		Returns
		-------
		out : int
		    The first 5-smooth number greater than or equal to `target`.
		
		Notes
		-----
		.. versionadded:: 0.18.0
		
		Examples
		--------
		On a particular machine, an FFT of prime length takes 133 ms:
		
		>>> from scipy import fftpack
		>>> min_len = 10007  # prime length is worst case for speed
		>>> a = np.random.randn(min_len)
		>>> b = fftpack.fft(a)
		
		Zero-padding to the next 5-smooth length reduces computation time to
		211 us, a speedup of 630 times:
		
		>>> fftpack.helper.next_fast_len(min_len)
		10125
		>>> b = fftpack.fft(a, 10125)
		
		Rounding up to the next power of 2 is not optimal, taking 367 us to
		compute, 1.7 times as long as the 5-smooth size:
		
		>>> b = fftpack.fft(a, 16384)
	**/
	static public function next_fast_len(target:Dynamic):Int;
	static public var print_function : Dynamic;
	/**
		DFT sample frequencies (for usage with rfft, irfft).
		
		The returned float array contains the frequency bins in
		cycles/unit (with zero at the start) given a window length `n` and a
		sample spacing `d`::
		
		  f = [0,1,1,2,2,...,n/2-1,n/2-1,n/2]/(d*n)   if n is even
		  f = [0,1,1,2,2,...,n/2-1,n/2-1,n/2,n/2]/(d*n)   if n is odd
		
		Parameters
		----------
		n : int
		    Window length.
		d : scalar, optional
		    Sample spacing. Default is 1.
		
		Returns
		-------
		out : ndarray
		    The array of length `n`, containing the sample frequencies.
		
		Examples
		--------
		>>> from scipy import fftpack
		>>> sig = np.array([-2, 8, 6, 4, 1, 0, 3, 5], dtype=float)
		>>> sig_fft = fftpack.rfft(sig)
		>>> n = sig_fft.size
		>>> timestep = 0.1
		>>> freq = fftpack.rfftfreq(n, d=timestep)
		>>> freq
		array([ 0.  ,  1.25,  1.25,  2.5 ,  2.5 ,  3.75,  3.75,  5.  ])
	**/
	static public function rfftfreq(n:Dynamic, ?d:Dynamic):Dynamic;
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
		    be of the appropriate shape and dtype.
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
		where(condition, [x, y])
		
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
}