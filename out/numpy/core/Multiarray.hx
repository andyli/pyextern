/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core.multiarray") extern class Multiarray {
	static public var ALLOW_THREADS : Dynamic;
	static public var BUFSIZE : Dynamic;
	static public var CLIP : Dynamic;
	static public var DATETIMEUNITS : Dynamic;
	static public var ITEM_HASOBJECT : Dynamic;
	static public var ITEM_IS_POINTER : Dynamic;
	static public var LIST_PICKLE : Dynamic;
	static public var MAXDIMS : Dynamic;
	static public var NEEDS_INIT : Dynamic;
	static public var NEEDS_PYAPI : Dynamic;
	static public var RAISE : Dynamic;
	static public var USE_GETITEM : Dynamic;
	static public var USE_SETITEM : Dynamic;
	static public var WRAP : Dynamic;
	static public var _ARRAY_API : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function _fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _flagdict : Dynamic;
	/**
		_get_ndarray_c_version()
		
		Return the compile time NDARRAY_VERSION number.
	**/
	static public function _get_ndarray_c_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Insert vals sequentially into equivalent 1-d positions indicated by mask.
	**/
	static public function _insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_reconstruct(subtype, shape, dtype)
		
		Construct an empty array. Used by Pickles.
	**/
	static public function _reconstruct(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _vec_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		bincount(x, weights=None, minlength=None)
		
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
		    values, or if `minlength` is non-positive.
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
		
		>>> np.bincount(np.arange(5, dtype=np.float))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		TypeError: array cannot be safely cast to required type
		
		A possible use of ``bincount`` is to perform sums over
		variable-size chunks of an array, using the ``weights`` keyword.
		
		>>> w = np.array([0.3, 0.5, 0.2, 0.7, 1., -0.6]) # weights
		>>> x = np.array([0, 1, 1, 2, 2, 2])
		>>> np.bincount(x,  weights=w)
		array([ 0.3,  0.7,  1.1])
	**/
	static public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_count(begindates, enddates, weekmask='1111100', holidays=[], busdaycal=None, out=None)
		
		Counts the number of valid days between `begindates` and
		`enddates`, not including the day of `enddates`.
		
		If ``enddates`` specifies a date value that is earlier than the
		corresponding ``begindates`` date value, the count will be negative.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		begindates : array_like of datetime64[D]
		    The array of the first dates for counting.
		enddates : array_like of datetime64[D]
		    The array of the end dates for counting, which are excluded
		    from the count themselves.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of int, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of int
		    An array with a shape from broadcasting ``begindates`` and ``enddates``
		    together, containing the number of valid days between
		    the begin and end dates.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_offset : Applies an offset counted in valid days.
		
		Examples
		--------
		>>> # Number of weekdays in January 2011
		... np.busday_count('2011-01', '2011-02')
		21
		>>> # Number of weekdays in 2011
		...  np.busday_count('2011', '2012')
		260
		>>> # Number of Saturdays in 2011
		... np.busday_count('2011', '2012', weekmask='Sat')
		53
	**/
	static public function busday_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_offset(dates, offsets, roll='raise', weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		First adjusts the date to fall on a valid day according to
		the ``roll`` rule, then applies offsets to the given dates
		counted in valid days.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		offsets : array_like of int
		    The array of offsets, which is broadcast with ``dates``.
		roll : {'raise', 'nat', 'forward', 'following', 'backward', 'preceding', 'modifiedfollowing', 'modifiedpreceding'}, optional
		    How to treat dates that do not fall on a valid day. The default
		    is 'raise'.
		
		      * 'raise' means to raise an exception for an invalid day.
		      * 'nat' means to return a NaT (not-a-time) for an invalid day.
		      * 'forward' and 'following' mean to take the first valid day
		        later in time.
		      * 'backward' and 'preceding' mean to take the first valid day
		        earlier in time.
		      * 'modifiedfollowing' means to take the first valid day
		        later in time unless it is across a Month boundary, in which
		        case to take the first valid day earlier in time.
		      * 'modifiedpreceding' means to take the first valid day
		        earlier in time unless it is across a Month boundary, in which
		        case to take the first valid day later in time.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of datetime64[D], optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of datetime64[D]
		    An array with a shape from broadcasting ``dates`` and ``offsets``
		    together, containing the dates with offsets applied.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # First business day in October 2011 (not accounting for holidays)
		... np.busday_offset('2011-10', 0, roll='forward')
		numpy.datetime64('2011-10-03','D')
		>>> # Last business day in February 2012 (not accounting for holidays)
		... np.busday_offset('2012-03', -1, roll='forward')
		numpy.datetime64('2012-02-29','D')
		>>> # Third Wednesday in January 2011
		... np.busday_offset('2011-01', 2, roll='forward', weekmask='Wed')
		numpy.datetime64('2011-01-19','D')
		>>> # 2012 Mother's Day in Canada and the U.S.
		... np.busday_offset('2012-05', 1, roll='forward', weekmask='Sun')
		numpy.datetime64('2012-05-13','D')
		
		>>> # First business day on or after a date
		... np.busday_offset('2011-03-20', 0, roll='forward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 0, roll='forward')
		numpy.datetime64('2011-03-22','D')
		>>> # First business day after a date
		... np.busday_offset('2011-03-20', 1, roll='backward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 1, roll='backward')
		numpy.datetime64('2011-03-23','D')
	**/
	static public function busday_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		can_cast(from, totype, casting = 'safe')
		
		Returns True if cast between data types can occur according to the
		casting rule.  If from is a scalar or array scalar, also returns
		True if the scalar value can be cast without overflow or truncation
		to an integer.
		
		Parameters
		----------
		from : dtype, dtype specifier, scalar, or array
		    Data type, scalar, or array to cast from.
		totype : dtype or dtype specifier
		    Data type to cast to.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		out : bool
		    True if cast can occur according to the casting rule.
		
		Notes
		-----
		Starting in NumPy 1.9, can_cast function now returns False in 'safe'
		casting mode for integer/float dtype and string dtype if the string dtype
		length is not long enough to store the max integer/float value converted
		to a string. Previously can_cast in 'safe' mode returned True for
		integer/float dtype and a string dtype of any length.
		
		See also
		--------
		dtype, result_type
		
		Examples
		--------
		Basic examples
		
		>>> np.can_cast(np.int32, np.int64)
		True
		>>> np.can_cast(np.float64, np.complex)
		True
		>>> np.can_cast(np.complex, np.float)
		False
		
		>>> np.can_cast('i8', 'f8')
		True
		>>> np.can_cast('i8', 'f4')
		False
		>>> np.can_cast('i4', 'S4')
		False
		
		Casting scalars
		
		>>> np.can_cast(100, 'i1')
		True
		>>> np.can_cast(150, 'i1')
		False
		>>> np.can_cast(150, 'u1')
		True
		
		>>> np.can_cast(3.5e100, np.float32)
		False
		>>> np.can_cast(1000.0, np.float32)
		True
		
		Array scalar checks the value, array does not
		
		>>> np.can_cast(np.array(1000.0), np.float32)
		True
		>>> np.can_cast(np.array([1000.0]), np.float32)
		False
		
		Using the casting rules
		
		>>> np.can_cast('i8', 'i8', 'no')
		True
		>>> np.can_cast('<i8', '>i8', 'no')
		False
		
		>>> np.can_cast('<i8', '>i8', 'equiv')
		True
		>>> np.can_cast('<i4', '>i8', 'equiv')
		False
		
		>>> np.can_cast('<i4', '>i8', 'safe')
		True
		>>> np.can_cast('<i8', '>i4', 'safe')
		False
		
		>>> np.can_cast('<i8', '>i4', 'same_kind')
		True
		>>> np.can_cast('<i8', '>u4', 'same_kind')
		False
		
		>>> np.can_cast('<i8', '>u4', 'unsafe')
		True
	**/
	static public function can_cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function compare_chararrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		concatenate((a1, a2, ...), axis=0)
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  Default is 0.
		
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
		hsplit : Split array into multiple sub-arrays horizontally (column wise)
		vsplit : Split array into multiple sub-arrays vertically (row wise)
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise)
		vstack : Stack arrays in sequence vertically (row wise)
		dstack : Stack arrays in sequence depth wise (along third dimension)
		
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
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data = [0 1 2 2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copyto(dst, src, casting='same_kind', where=None)
		
		Copies values from one array to another, broadcasting as necessary.
		
		Raises a TypeError if the `casting` rule is violated, and if
		`where` is provided, it selects which elements to copy.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dst : ndarray
		    The array into which values are copied.
		src : array_like
		    The array from which values are copied.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur when copying.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		where : array_like of bool, optional
		    A boolean array which is broadcasted to match the dimensions
		    of `dst`, and selects elements to copy from `src` to `dst`
		    wherever it contains the value True.
	**/
	static public function copyto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cross_correlate(a,v, mode=0)
	**/
	static public function correlate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function correlate2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		count_nonzero(a)
		
		Counts the number of non-zero values in the array ``a``.
		
		Parameters
		----------
		a : array_like
		    The array for which to count non-zeros.
		
		Returns
		-------
		count : int or array of int
		    Number of non-zero values in the array.
		
		See Also
		--------
		nonzero : Return the coordinates of all the non-zero values.
		
		Examples
		--------
		>>> np.count_nonzero(np.eye(4))
		4
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]])
		5
	**/
	static public function count_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		digitize(x, bins, right=False)
		
		Return the indices of the bins to which each value in input array belongs.
		
		Each index ``i`` returned is such that ``bins[i-1] <= x < bins[i]`` if
		`bins` is monotonically increasing, or ``bins[i-1] > x >= bins[i]`` if
		`bins` is monotonically decreasing. If values in `x` are beyond the
		bounds of `bins`, 0 or ``len(bins)`` is returned as appropriate. If right
		is True, then the right bin is closed so that the index ``i`` is such
		that ``bins[i-1] < x <= bins[i]`` or bins[i-1] >= x > bins[i]`` if `bins`
		is monotonically increasing or decreasing, respectively.
		
		Parameters
		----------
		x : array_like
		    Input array to be binned. Prior to Numpy 1.10.0, this array had to
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
		out : ndarray of ints
		    Output array of indices, of same shape as `x`.
		
		Raises
		------
		ValueError
		    If `bins` is not monotonic.
		TypeError
		    If the type of the input is complex.
		
		See Also
		--------
		bincount, histogram, unique
		
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
		
		Examples
		--------
		>>> x = np.array([0.2, 6.4, 3.0, 1.6])
		>>> bins = np.array([0.0, 1.0, 2.5, 4.0, 10.0])
		>>> inds = np.digitize(x, bins)
		>>> inds
		array([1, 4, 3, 2])
		>>> for n in range(x.size):
		...   print bins[inds[n]-1], "<=", x[n], "<", bins[inds[n]]
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
	static public function digitize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
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
		einsum(subscripts, *operands, out=None, dtype=None, order='K', casting='safe')
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional
		array operations can be represented in a simple fashion.  This function
		provides a way compute such summations. The best way to understand this
		function is to try the examples below, which show how many common NumPy
		functions can be implemented as calls to `einsum`.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : data-type, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout as the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		dot, inner, outer, tensordot
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Repeated subscripts labels in one operand take the diagonal.  For example,
		``np.einsum('ii', a)`` is equivalent to ``np.trace(a)``.
		
		Whenever a label is repeated, it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to ``np.inner(a,b)``.  If a label appears only once,
		it is not summed, so ``np.einsum('i', a)`` produces a view of ``a``
		with no changes.
		
		The order of labels in the output is by default alphabetical.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose.
		
		The output can be controlled by specifying output subscript labels
		as well.  This specifies the label order, and allows summing to
		be disallowed or forced when desired.  The call ``np.einsum('i->', a)``
		is like ``np.sum(a, axis=-1)``, and ``np.einsum('ii->i', a)``
		is like ``np.diag(a)``.  The difference is that `einsum` does not
		allow broadcasting by default.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, you can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view.
		
		An alternative way to provide the subscripts and operands is as
		``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``. The examples
		below have corresponding `einsum` calls with the two parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as ``np.swapaxes(a, 0, 2)`` and
		``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> c.T
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		>>> np.einsum('i...->...', a)
		array([50, 55, 60, 65, 70])
		>>> np.einsum(a, [0,Ellipsis], [Ellipsis])
		array([50, 55, 60, 65, 70])
		>>> np.sum(a, axis=0)
		array([50, 55, 60, 65, 70])
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		
		>>> # since version 1.10.0
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
	**/
	static public function einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the given
		    shape, dtype, and order.
		
		See Also
		--------
		empty_like, zeros, ones
		
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
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty_like(a, dtype=None, order='K', subok=True)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of the
		    returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if ``a`` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of ``a`` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function format_longfloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0)
		
		Interpret a buffer as a 1-dimensional array.
		
		Parameters
		----------
		buffer : buffer_like
		    An object that exposes the buffer interface.
		dtype : data-type, optional
		    Data-type of the returned array; default: float.
		count : int, optional
		    Number of items to read. ``-1`` means all data in the buffer.
		offset : int, optional
		    Start reading the buffer from this offset; default: 0.
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt)
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = 'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array(['w', 'o', 'r', 'l', 'd'],
		      dtype='|S1')
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromfile(file, dtype=float, count=-1, sep='')
		
		Construct an array from data in a text or binary file.
		
		A highly efficient way of reading binary data with a known data-type,
		as well as parsing simply formatted text files.  Data written using the
		`tofile` method can be read using this function.
		
		Parameters
		----------
		file : file or str
		    Open file object or filename.
		dtype : data-type
		    Data type of the returned array.
		    For binary files, it is used to determine the size and byte-order
		    of the items in the file.
		count : int
		    Number of items to read. ``-1`` means all items (i.e., the complete
		    file).
		sep : str
		    Separator between items if file is a text file.
		    Empty ("") separator means the file should be treated as binary.
		    Spaces (" ") in the separator match zero or more whitespace characters.
		    A separator consisting only of spaces must match at least one
		    whitespace.
		
		See also
		--------
		load, save
		ndarray.tofile
		loadtxt : More flexible way of loading data from a text file.
		
		Notes
		-----
		Do not rely on the combination of `tofile` and `fromfile` for
		data storage, as the binary files generated are are not platform
		independent.  In particular, no byte-order or data-type information is
		saved.  Data can be stored in the platform independent ``.npy`` format
		using `save` and `load` instead.
		
		Examples
		--------
		Construct an ndarray:
		
		>>> dt = np.dtype([('time', [('min', int), ('sec', int)]),
		...                ('temp', float)])
		>>> x = np.zeros((1,), dtype=dt)
		>>> x['time']['min'] = 10; x['temp'] = 98.25
		>>> x
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		Save the raw data to disk:
		
		>>> import os
		>>> fname = os.tmpnam()
		>>> x.tofile(fname)
		
		Read the raw data from disk:
		
		>>> np.fromfile(fname, dtype=dt)
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		The recommended way to store and load data:
		
		>>> np.save(fname, x)
		>>> np.load(fname + '.npy')
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
	**/
	static public function fromfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromiter(iterable, dtype, count=-1)
		
		Create a new 1-dimensional array from an iterable object.
		
		Parameters
		----------
		iterable : iterable object
		    An iterable object providing data for the array.
		dtype : data-type
		    The data-type of the returned array.
		count : int, optional
		    The number of items to read from *iterable*.  The default is -1,
		    which means all data is read.
		
		Returns
		-------
		out : ndarray
		    The output array.
		
		Notes
		-----
		Specify `count` to improve performance.  It allows ``fromiter`` to
		pre-allocate the output array, instead of resizing it on demand.
		
		Examples
		--------
		>>> iterable = (x*x for x in range(5))
		>>> np.fromiter(iterable, np.float)
		array([  0.,   1.,   4.,   9.,  16.])
	**/
	static public function fromiter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromstring(string, dtype=float, count=-1, sep='')
		
		A new 1-D array initialized from raw binary or text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format.
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    If not provided or, equivalently, the empty string, the data will
		    be interpreted as binary data; otherwise, as ASCII text with
		    decimal numbers.  Also in this latter case, this argument is
		    interpreted as the string separating numbers in the data; extra
		    whitespace between elements is also ignored.
		
		Returns
		-------
		arr : ndarray
		    The constructed array.
		
		Raises
		------
		ValueError
		    If the string is not the correct size to satisfy the requested
		    `dtype` and `count`.
		
		See Also
		--------
		frombuffer, fromfile, fromiter
		
		Examples
		--------
		>>> np.fromstring('\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
		>>> np.fromstring('\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inner(a, b)
		
		Inner product of two arrays.
		
		Ordinary inner product of vectors for 1-D arrays (without complex
		conjugation), in higher dimensions a sum product over the last axes.
		
		Parameters
		----------
		a, b : array_like
		    If `a` and `b` are nonscalar, their last dimensions of must match.
		
		Returns
		-------
		out : ndarray
		    `out.shape = a.shape[:-1] + b.shape[:-1]`
		
		Raises
		------
		ValueError
		    If the last dimension of `a` and `b` has different size.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-1,j0,...,js-1]
		         = sum(a[i0,...,ir-1,:]*b[j0,...,js-1,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		A multidimensional example:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> np.inner(a, b)
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[ 7.,  0.],
		       [ 0.,  7.]])
	**/
	static public function inner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function int_asbuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function interp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_busday(dates, weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		Calculates which of the given dates are valid days, and which are not.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of bool, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of bool
		    An array with the same shape as ``dates``, containing True for
		    each valid day, and False for each invalid day.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		busday_offset : Applies an offset counted in valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # The weekdays are Friday, Saturday, and Monday
		... np.is_busday(['2011-07-01', '2011-07-02', '2011-07-18'],
		...                 holidays=['2011-07-01', '2011-07-04', '2011-07-17'])
		array([False, False,  True], dtype='bool')
	**/
	static public function is_busday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lexsort(keys, axis=-1)
		
		Perform an indirect sort using a sequence of keys.
		
		Given multiple sorting keys, which can be interpreted as columns in a
		spreadsheet, lexsort returns an array of integer indices that describes
		the sort order by multiple columns. The last key in the sequence is used
		for the primary sort order, the second-to-last key for the secondary sort
		order, and so on. The keys argument must be a sequence of objects that
		can be converted to arrays of the same shape. If a 2D array is provided
		for the keys argument, it's rows are interpreted as the sorting keys and
		sorting is according to the last row, second last row etc.
		
		Parameters
		----------
		keys : (k, N) array or tuple containing k (N,)-shaped sequences
		    The `k` different "columns" to be sorted.  The last column (or row if
		    `keys` is a 2D array) is the primary sort key.
		axis : int, optional
		    Axis to be indirectly sorted.  By default, sort over the last axis.
		
		Returns
		-------
		indices : (N,) ndarray of ints
		    Array of indices that sort the keys along the specified axis.
		
		See Also
		--------
		argsort : Indirect sort.
		ndarray.sort : In-place sort.
		sort : Return a sorted copy of an array.
		
		Examples
		--------
		Sort names: first by surname, then by name.
		
		>>> surnames =    ('Hertz',    'Galilei', 'Hertz')
		>>> first_names = ('Heinrich', 'Galileo', 'Gustav')
		>>> ind = np.lexsort((first_names, surnames))
		>>> ind
		array([1, 2, 0])
		
		>>> [surnames[i] + ", " + first_names[i] for i in ind]
		['Galilei, Galileo', 'Hertz, Gustav', 'Hertz, Heinrich']
		
		Sort two columns of numbers:
		
		>>> a = [1,5,1,4,3,4,4] # First column
		>>> b = [9,4,0,4,0,2,1] # Second column
		>>> ind = np.lexsort((b,a)) # Sort by a, then by b
		>>> print ind
		[2 0 4 6 5 3 1]
		
		>>> [(a[i],b[i]) for i in ind]
		[(1, 0), (1, 9), (3, 0), (4, 1), (4, 2), (4, 4), (5, 4)]
		
		Note that sorting is first according to the elements of ``a``.
		Secondary sorting is according to the elements of ``b``.
		
		A normal ``argsort`` would have yielded:
		
		>>> [(a[i],b[i]) for i in np.argsort(a)]
		[(1, 9), (1, 0), (3, 0), (4, 4), (4, 2), (4, 1), (5, 4)]
		
		Structured arrays are sorted lexically by ``argsort``:
		
		>>> x = np.array([(1,9), (5,4), (1,0), (4,4), (3,0), (4,2), (4,1)],
		...              dtype=np.dtype([('x', int), ('y', int)]))
		
		>>> np.argsort(x) # or np.argsort(x, order=('x', 'y'))
		array([2, 0, 4, 6, 5, 3, 1])
	**/
	static public function lexsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matmul(a, b, out=None)
		
		Matrix product of two arrays.
		
		The behavior depends on the arguments in the following way.
		
		- If both arguments are 2-D they are multiplied like conventional
		  matrices.
		- If either argument is N-D, N > 2, it is treated as a stack of
		  matrices residing in the last two indexes and broadcast accordingly.
		- If the first argument is 1-D, it is promoted to a matrix by
		  prepending a 1 to its dimensions. After matrix multiplication
		  the prepended 1 is removed.
		- If the second argument is 1-D, it is promoted to a matrix by
		  appending a 1 to its dimensions. After matrix multiplication
		  the appended 1 is removed.
		
		Multiplication by a scalar is not allowed, use ``*`` instead. Note that
		multiplying a stack of matrices with a vector will result in a stack of
		vectors, but matmul will not recognize it as such.
		
		``matmul`` differs from ``dot`` in two important ways.
		
		- Multiplication by scalars is not allowed.
		- Stacks of matrices are broadcast together as if the matrices
		  were elements.
		
		.. warning::
		   This function is preliminary and included in Numpy 1.10 for testing
		   and documentation. Its semantics will not change, but the number and
		   order of the optional arguments will.
		
		.. versionadded:: 1.10.0
		
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
		    1-D arrays then a scalar is returned; otherwise an array is
		    returned.  If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		    If scalar value is passed.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		dot : alternative matrix product with different broadcasting rules.
		
		Notes
		-----
		The matmul function implements the semantics of the `@` operator introduced
		in Python 3.5 following PEP465.
		
		Examples
		--------
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.matmul(a, b)
		array([[4, 1],
		       [2, 2]])
		
		For 2-D mixed with 1-D, the result is the usual.
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [1, 2]
		>>> np.matmul(a, b)
		array([1, 2])
		>>> np.matmul(b, a)
		array([1, 2])
		
		
		Broadcasting is conventional for stacks of arrays
		
		>>> a = np.arange(2*2*4).reshape((2,2,4))
		>>> b = np.arange(2*2*4).reshape((2,4,2))
		>>> np.matmul(a,b).shape
		(2, 2, 2)
		>>> np.matmul(a,b)[0,1,1]
		98
		>>> sum(a[0,1,:] * b[0,:,1])
		98
		
		Vector, vector returns the scalar inner product, but neither argument
		is complex-conjugated:
		
		>>> np.matmul([2j, 3j], [2j, 3j])
		(-13+0j)
		
		Scalar multiplication raises an error.
		
		>>> np.matmul([1,2], 3)
		Traceback (most recent call last):
		...
		ValueError: Scalar operands are not allowed, use '*' instead
	**/
	static public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determine if two arrays can share memory
		
		The memory-bounds of a and b are computed.  If they overlap then
		this function returns True.  Otherwise, it returns False.
		
		A return of True does not necessarily mean that the two arrays
		share any element.  It just means that they *might*.
		
		Parameters
		----------
		a, b : ndarray
		
		Returns
		-------
		out : bool
		
		Examples
		--------
		>>> np.may_share_memory(np.array([1,2]), np.array([5,8,9]))
		False
	**/
	static public function may_share_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min_scalar_type(a)
		
		For scalar ``a``, returns the data type with the smallest size
		and smallest scalar kind which can hold its value.  For non-scalar
		array ``a``, returns the vector's dtype unmodified.
		
		Floating point values are not demoted to integers,
		and complex values are not demoted to floats.
		
		Parameters
		----------
		a : scalar or array_like
		    The value whose minimal data type is to be found.
		
		Returns
		-------
		out : dtype
		    The minimal data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		See Also
		--------
		result_type, promote_types, dtype, can_cast
		
		Examples
		--------
		>>> np.min_scalar_type(10)
		dtype('uint8')
		
		>>> np.min_scalar_type(-260)
		dtype('int16')
		
		>>> np.min_scalar_type(3.1)
		dtype('float16')
		
		>>> np.min_scalar_type(1e50)
		dtype('float64')
		
		>>> np.min_scalar_type(np.arange(4,dtype='f8'))
		dtype('float64')
	**/
	static public function min_scalar_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nested_iters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		packbits(myarray, axis=None)
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		myarray : array_like
		    An integer type array whose elements should be packed to bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		
		Returns
		-------
		packed : ndarray
		    Array of type uint8 whose elements represent bits corresponding to the
		    logical (0 or nonzero) value of the input elements. The shape of
		    `packed` has the same number of dimensions as the input (unless `axis`
		    is None, in which case the output is 1-D).
		
		See Also
		--------
		unpackbits: Unpacks elements of a uint8 array into a binary-valued output
		            array.
		
		Examples
		--------
		>>> a = np.array([[[1,0,1],
		...                [0,1,0]],
		...               [[1,1,0],
		...                [0,0,1]]])
		>>> b = np.packbits(a, axis=-1)
		>>> b
		array([[[160],[64]],[[192],[32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		promote_types(type1, type2)
		
		Returns the data type with the smallest size and smallest scalar
		kind to which both ``type1`` and ``type2`` may be safely cast.
		The returned data type is always in native byte order.
		
		This function is symmetric and associative.
		
		Parameters
		----------
		type1 : dtype or dtype specifier
		    First data type.
		type2 : dtype or dtype specifier
		    Second data type.
		
		Returns
		-------
		out : dtype
		    The promoted data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Starting in NumPy 1.9, promote_types function now returns a valid string
		length when given an integer or float dtype as one argument and a string
		dtype as another argument. Previously it always returned the input string
		dtype, even if it wasn't long enough to store the max integer/float value
		converted to a string.
		
		See Also
		--------
		result_type, dtype, can_cast
		
		Examples
		--------
		>>> np.promote_types('f4', 'f8')
		dtype('float64')
		
		>>> np.promote_types('i8', 'f4')
		dtype('float64')
		
		>>> np.promote_types('>i8', '<c8')
		dtype('complex128')
		
		>>> np.promote_types('i4', 'S8')
		dtype('S11')
	**/
	static public function promote_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		putmask(a, mask, values)
		
		Changes elements of an array based on conditional and input values.
		
		Sets ``a.flat[n] = values[n]`` for each n where ``mask.flat[n]==True``.
		
		If `values` is not the same size as `a` and `mask` then it will repeat.
		This gives behavior different from ``a[mask] = values``.
		
		Parameters
		----------
		a : array_like
		    Target array.
		mask : array_like
		    Boolean mask array. It has to be the same shape as `a`.
		values : array_like
		    Values to put into `a` where `mask` is True. If `values` is smaller
		    than `a` it will be repeated.
		
		See Also
		--------
		place, put, take, copyto
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> np.putmask(x, x>2, x**2)
		>>> x
		array([[ 0,  1,  2],
		       [ 9, 16, 25]])
		
		If `values` is smaller than `a` it is repeated:
		
		>>> x = np.arange(5)
		>>> np.putmask(x, x>1, [-33, -44])
		>>> x
		array([  0,   1, -33, -44, -33])
	**/
	static public function putmask(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		result_type(*arrays_and_dtypes)
		
		Returns the type that results from applying the NumPy
		type promotion rules to the arguments.
		
		Type promotion in NumPy works similarly to the rules in languages
		like C++, with some slight differences.  When both scalars and
		arrays are used, the array's type takes precedence and the actual value
		of the scalar is taken into account.
		
		For example, calculating 3*a, where a is an array of 32-bit floats,
		intuitively should result in a 32-bit float output.  If the 3 is a
		32-bit integer, the NumPy rules indicate it can't convert losslessly
		into a 32-bit float, so a 64-bit float should be the result type.
		By examining the value of the constant, '3', we see that it fits in
		an 8-bit integer, which can be cast losslessly into the 32-bit float.
		
		Parameters
		----------
		arrays_and_dtypes : list of arrays and dtypes
		    The operands of some operation whose result type is needed.
		
		Returns
		-------
		out : dtype
		    The result type.
		
		See also
		--------
		dtype, promote_types, min_scalar_type, can_cast
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The specific algorithm used is as follows.
		
		Categories are determined by first checking which of boolean,
		integer (int/uint), or floating point (float/complex) the maximum
		kind of all the arrays and the scalars are.
		
		If there are only scalars or the maximum category of the scalars
		is higher than the maximum category of the arrays,
		the data types are combined with :func:`promote_types`
		to produce the return value.
		
		Otherwise, `min_scalar_type` is called on each array, and
		the resulting data types are all combined with :func:`promote_types`
		to produce the return value.
		
		The set of int values is not a subset of the uint values for types
		with the same number of bits, something not reflected in
		:func:`min_scalar_type`, but handled as a special case in `result_type`.
		
		Examples
		--------
		>>> np.result_type(3, np.arange(7, dtype='i1'))
		dtype('int8')
		
		>>> np.result_type('i4', 'c8')
		dtype('complex128')
		
		>>> np.result_type(3.0, -2)
		dtype('float64')
	**/
	static public function result_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scalar(dtype, obj)
		
		Return a new scalar array of the given type initialized with obj.
		
		This function is meant mainly for pickle support. `dtype` must be a
		valid data-type descriptor. If `dtype` corresponds to an object
		descriptor, then `obj` can be any object, otherwise `obj` must be a
		string. If `obj` is not given, it will be interpreted as None for object
		type and as zeros for all other types.
	**/
	static public function scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function set_datetimeparse_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_numeric_ops(op1=func1, op2=func2, ...)
		
		Set numerical operators for array objects.
		
		Parameters
		----------
		op1, op2, ... : callable
		    Each ``op = func`` pair describes an operator to be replaced.
		    For example, ``add = lambda x, y: np.add(x, y) % 5`` would replace
		    addition by modulus 5 addition.
		
		Returns
		-------
		saved_ops : list of callables
		    A list of all operators, stored before making replacements.
		
		Notes
		-----
		.. WARNING::
		   Use with care!  Incorrect usage may lead to memory errors.
		
		A function replacing an operator cannot make use of that operator.
		For example, when replacing add, you may not use ``+``.  Instead,
		directly call ufuncs.
		
		Examples
		--------
		>>> def add_mod5(x, y):
		...     return np.add(x, y) % 5
		...
		>>> old_funcs = np.set_numeric_ops(add=add_mod5)
		
		>>> x = np.arange(12).reshape((3, 4))
		>>> x + x
		array([[0, 2, 4, 1],
		       [3, 0, 2, 4],
		       [1, 3, 0, 2]])
		
		>>> ignore = np.set_numeric_ops(**old_funcs) # restore operators
	**/
	static public function set_numeric_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_string_function(f, repr=1)
		
		Internal method to set a function to be used when pretty printing arrays.
	**/
	static public function set_string_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_typeDict(dict)
		
		Set the internal dictionary that can look up an array type using a
		registered code.
	**/
	static public function set_typeDict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function test_interrupt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var typeinfo : Dynamic;
	/**
		unpackbits(myarray, axis=None)
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `myarray` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is either
		1-D (if `axis` is None) or the same shape as the input array with unpacking
		done along the axis specified.
		
		Parameters
		----------
		myarray : ndarray, uint8 type
		   Input array.
		axis : int, optional
		   Unpacks along this axis.
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in a uint8
		           array.
		
		Examples
		--------
		>>> a = np.array([[2], [7], [23]], dtype=np.uint8)
		>>> a
		array([[ 2],
		       [ 7],
		       [23]], dtype=uint8)
		>>> b = np.unpackbits(a, axis=1)
		>>> b
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1]], dtype=uint8)
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		vdot(a, b)
		
		Return the dot product of two vectors.
		
		The vdot(`a`, `b`) function handles complex numbers differently than
		dot(`a`, `b`).  If the first argument is complex the complex conjugate
		of the first argument is used for the calculation of the dot product.
		
		Note that `vdot` handles multidimensional arrays differently than `dot`:
		it does *not* perform a matrix product, but flattens input arguments
		to 1-D vectors first. Consequently, it should only be used for vectors.
		
		Parameters
		----------
		a : array_like
		    If `a` is complex the complex conjugate is taken before calculation
		    of the dot product.
		b : array_like
		    Second argument to the dot product.
		
		Returns
		-------
		output : ndarray
		    Dot product of `a` and `b`.  Can be an int, float, or
		    complex depending on the types of `a` and `b`.
		
		See Also
		--------
		dot : Return the dot product without using the complex conjugate of the
		      first argument.
		
		Examples
		--------
		>>> a = np.array([1+2j,3+4j])
		>>> b = np.array([5+6j,7+8j])
		>>> np.vdot(a, b)
		(70-8j)
		>>> np.vdot(b, a)
		(70+8j)
		
		Note that higher-dimensional arrays are flattened!
		
		>>> a = np.array([[1, 4], [5, 6]])
		>>> b = np.array([[4, 1], [2, 2]])
		>>> np.vdot(a, b)
		30
		>>> np.vdot(b, a)
		30
		>>> 1*4 + 4*1 + 5*2 + 6*2
		30
	**/
	static public function vdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
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