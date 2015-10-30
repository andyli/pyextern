/* This file is generated, do not edit! */
package numpy.lib.function_base;
@:pythonImport("numpy.lib.function_base") extern class Function_base_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _chbevl(x:Dynamic, vals:Dynamic):Dynamic;
	static public var _i0A : Dynamic;
	static public var _i0B : Dynamic;
	static public function _i0_1(x:Dynamic):Dynamic;
	static public function _i0_2(x:Dynamic):Dynamic;
	/**
		Insert vals sequentially into equivalent 1-d positions indicated by mask.
	**/
	static public function _insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	static public function _percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		    Reduction function Kapable of receiving an axis argument.
		    It is is called with `a` as first argument followed by `kwargs`.
		 kwargs : keyword arguments
		    additional keyword arguments to pass to `func`.
		
		Returns
		-------
		result : tuple
		    Result of func(a, **kwargs) and a.shape with axis dims set to 1
		    which can be used to reshape the result to the same shape a ufunc with
		    keepdims=True would produce.
	**/
	static public function _ureduce(a:Dynamic, func:Dynamic, kwargs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		add(x1, x2[, out])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
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
		Adds documentation to obj which is in module place.
		
		If doc is a string add it to obj as a docstring
		
		If doc is a tuple, then the first element is interpreted as
		   an attribute of obj and the second as the docstring
		      (method, docstring)
		
		If doc is a list, then each element of the list should be a
		   sequence of length two --> [(method1, docstring1),
		   (method2, docstring2), ...]
		
		This routine never raises an error.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		   
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic):Dynamic;
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
		    The counterclockwise angle from the positive real axis on
		    the complex plane, with dtype as numpy.float64.
		
		See Also
		--------
		arctan2
		absolute
		
		
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816])
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
		    The default (`axis` = `None`) is to perform a logical OR over all
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
		    See `doc.ufuncs` (Section "Output arguments") for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
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
		array([ True, False], dtype=bool)
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True], dtype=bool), array([ True], dtype=bool))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		...
		ValueError: arrays must have same number of dimensions
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
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
		arctan2(x1, x2[, out])
		
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
		    `x`-coordinates. `x2` must be broadcastable to match the shape of
		    `x1` or vice versa.
		
		Returns
		-------
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		
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
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See `doc.ufuncs` (Section
		    "Output arguments") for details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, Numpy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc. Results may also be surprising due
		to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling
		by powers of ten.
		
		References
		----------
		.. [1] "Lecture Notes on the Status of  IEEE 754", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		.. [2] "How Futile are Mindless Assessments of
		       Roundoff in Floating-Point Computation?", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/Mindless.pdf
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([ 0.,  2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([ 0.4,  1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([ 0.,  2.,  2.,  4.,  4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
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
		
		>>> a = np.matrix([1, 2])
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		...     print 'ValueError'
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		    An array, or sequence of arrays, each with ``a.ndim >= 1``.
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
	static public function atleast_1d(arys:Dynamic):Dynamic;
	/**
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or tuple of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(arys:Dynamic):Dynamic;
	/**
		Compute the weighted average along the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing data to be averaged. If `a` is not an array, a
		    conversion is attempted.
		axis : int, optional
		    Axis along which to average `a`. If `None`, averaging is done over
		    the flattened array.
		weights : array_like, optional
		    An array of weights associated with the values in `a`. Each value in
		    `a` contributes to the average according to its associated weight.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If `weights=None`, then all data in `a` are assumed to have a
		    weight equal to one.
		returned : bool, optional
		    Default is `False`. If `True`, the tuple (`average`, `sum_of_weights`)
		    is returned, otherwise only the average is returned.
		    If `weights=None`, `sum_of_weights` is equivalent to the number of
		    elements over which the average is taken.
		
		
		Returns
		-------
		average, [sum_of_weights] : array_type or double
		    Return the average along the specified axis. When returned is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. The return type is `Float`
		    if `a` is of integer type, otherwise it is of the same type as `a`.
		    `sum_of_weights` is of the same type as `average`.
		
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
		
		Examples
		--------
		>>> data = range(1,5)
		>>> data
		[1, 2, 3, 4]
		>>> np.average(data)
		2.5
		>>> np.average(range(1,11), weights=range(10,0,-1))
		4.0
		
		>>> data = np.arange(6).reshape((3,2))
		>>> data
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> np.average(data, axis=1, weights=[1./4, 3./4])
		array([ 0.75,  2.75,  4.75])
		>>> np.average(data, weights=[1./4, 3./4])
		Traceback (most recent call last):
		...
		TypeError: Axis must be specified when shapes of a and weights differ.
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		
		Examples
		--------
		>>> np.bartlett(12)
		array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273,
		        0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
		        0.18181818,  0.        ])
		
		Plot the window and its frequency response (requires SciPy and matplotlib):
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.bartlett(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Bartlett window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Bartlett window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function bartlett(M:Dynamic):Dynamic;
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
		>>> np.blackman(12)
		array([ -1.38777878e-17,   3.26064346e-02,   1.59903635e-01,
		         4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
		         9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
		         1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.blackman(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Blackman window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Blackman window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function blackman(M:Dynamic):Dynamic;
	/**
		ceil(x[, out])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function compiled_interp(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return an array copy of the given object.
		
		Parameters
		----------
		a : array_like
		    Input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the copy. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible. (Note that this function and :meth:ndarray.copy are very
		    similar, but have different default values for their order=
		    arguments.)
		
		Returns
		-------
		arr : ndarray
		    Array interpretation of `a`.
		
		Notes
		-----
		This is equivalent to
		
		>>> np.array(a, copy=True)                              #doctest: +SKIP
		
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
	**/
	static public function copy(a:Dynamic, ?order:Dynamic):Dynamic;
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
		rowvar : int, optional
		    If `rowvar` is non-zero (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : _NoValue, optional
		    Has no affect, do not use.
		
		    .. deprecated:: 1.10.0
		ddof : _NoValue, optional
		    Has no affect, do not use.
		
		    .. deprecated:: 1.10.0
		
		Returns
		-------
		R : ndarray
		    The correlation coefficient matrix of the variables.
		
		See Also
		--------
		cov : Covariance matrix
		
		Notes
		-----
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
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
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
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
		rowvar : int, optional
		    If `rowvar` is non-zero (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : int, optional
		    Default normalization is by ``(N - 1)``, where ``N`` corresponds to the
		    number of observations given (unbiased estimate). If `bias` is 1, then
		    normalization is by ``N``. These values can be overridden by using the
		    keyword ``ddof`` in numpy versions >= 1.5.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    Note that ``ddof=1`` will return the unbiased estimate, even if both
		    `fweights` and `aweights` are specified, and ``ddof=0`` will return
		    the simple average. See the notes for the details. The default value
		    is ``None``.
		
		    .. versionadded:: 1.5
		fweights : array_like, int, optional
		    1-D array of integer freguency weights; the number of times each
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
		>>> X = np.vstack((x,y))
		>>> print np.cov(X)
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print np.cov(x, y)
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print np.cov(x)
		11.71
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic):Dynamic;
	/**
		Return a new array with sub-arrays along an axis deleted. For a one
		dimensional array, this returns those entries not returned by
		`arr[obj]`.
		
		Parameters
		----------
		arr : array_like
		  Input array.
		obj : slice, int or array of ints
		  Indicate which sub-arrays to remove.
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
	static public function delete(arr:Dynamic, obj:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		>>> olduint(6)
		/usr/lib/python2.5/site-packages/numpy/lib/utils.py:114:
		DeprecationWarning: uint32 is deprecated
		  warnings.warn(str1, DeprecationWarning)
		6
	**/
	static public function deprecate(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
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
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):Dynamic;
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
		
		>>> from StringIO import StringIO
		>>> buf = StringIO()
		>>> np.disp('"Display" in a file', device=buf)
		>>> buf.getvalue()
		'"Display" in a file\n'
	**/
	static public function disp(mesg:Dynamic, ?device:Dynamic, ?linefeed:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
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
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
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
		       [False,  True, False, False]], dtype=bool)
		>>> np.extract(condition, arr)
		array([0, 3, 6, 9])
		
		
		If `condition` is boolean:
		
		>>> arr[condition]
		array([0, 3, 6, 9])
	**/
	static public function extract(condition:Dynamic, arr:Dynamic):Dynamic;
	/**
		floor(x[, out])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frompyfunc(func, nin, nout)
		
		Takes an arbitrary Python function and returns a Numpy ufunc.
		
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
		
		Returns
		-------
		out : ufunc
		    Returns a Numpy universal function (``ufunc``) object.
		
		Notes
		-----
		The returned ufunc always returns PyObject arrays.
		
		Examples
		--------
		Use frompyfunc to add broadcasting to the Python function ``oct``:
		
		>>> oct_array = np.frompyfunc(oct, 1, 1)
		>>> oct_array(np.array((10, 30, 100)))
		array([012, 036, 0144], dtype=object)
		>>> np.array((oct(10), oct(30), oct(100))) # for comparison
		array(['012', '036', '0144'],
		      dtype='|S4')
	**/
	static public function frompyfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the gradient of an N-dimensional array.
		
		The gradient is computed using second order accurate central differences
		in the interior and either first differences or second order accurate
		one-sides (forward or backwards) differences at the boundaries. The
		returned gradient hence has the same shape as the input array.
		
		Parameters
		----------
		f : array_like
		    An N-dimensional array containing samples of a scalar function.
		varargs : list of scalar, optional
		    N scalars specifying the sample distances for each dimension,
		    i.e. `dx`, `dy`, `dz`, ... Default distance: 1.
		edge_order : {1, 2}, optional
		    Gradient is calculated using N\ :sup:`th` order accurate differences
		    at the boundaries. Default: 1.
		
		    .. versionadded:: 1.9.1
		
		Returns
		-------
		gradient : list of ndarray
		    Each element of `list` has the same shape as `f` giving the derivative 
		    of `f` with respect to each dimension.
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 11, 16], dtype=np.float)
		>>> np.gradient(x)
		array([ 1. ,  1.5,  2.5,  3.5,  4.5,  5. ])
		>>> np.gradient(x, 2)
		array([ 0.5 ,  0.75,  1.25,  1.75,  2.25,  2.5 ])
		
		For two dimensional arrays, the return will be two arrays ordered by 
		axis. In this example the first array stands for the gradient in 
		rows and the second one in columns direction:
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=np.float))
		[array([[ 2.,  2., -1.],
		        [ 2.,  2., -1.]]), array([[ 1. ,  2.5,  4. ],
		        [ 1. ,  1. ,  1. ]])]
		
		>>> x = np.array([0, 1, 2, 3, 4])
		>>> dx = np.gradient(x)
		>>> y = x**2
		>>> np.gradient(y, dx, edge_order=2)
		array([-0.,  2.,  4.,  6.,  8.])
	**/
	static public function gradient(f:Dynamic, varargs:Dynamic, kwargs:Dynamic):Dynamic;
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hamming(12)
		array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594,
		        0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
		        0.15302337,  0.08      ])
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hamming(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hamming window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Hamming window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function hamming(M:Dynamic):Dynamic;
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hanning(12)
		array([ 0.        ,  0.07937323,  0.29229249,  0.57115742,  0.82743037,
		        0.97974649,  0.97974649,  0.82743037,  0.57115742,  0.29229249,
		        0.07937323,  0.        ])
		
		Plot the window and its frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hanning(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hann window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of the Hann window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function hanning(M:Dynamic):Dynamic;
	/**
		Compute the histogram of a set of data.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a sequence,
		    it defines the bin edges, including the rightmost edge, allowing
		    for non-uniform bin widths.
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored.
		normed : bool, optional
		    This keyword is deprecated in Numpy 1.6 due to confusing/buggy
		    behavior. It will be removed in Numpy 2.0. Use the density keyword
		    instead.
		    If False, the result will contain the number of samples
		    in each bin.  If True, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that this latter behavior is
		    known to be buggy with unequal bin widths; use `density` instead.
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in `a`
		    only contributes its associated weight towards the bin count
		    (instead of 1).  If `normed` is True, the weights are normalized,
		    so that the integral of the density over the range remains 1
		density : bool, optional
		    If False, the result will contain the number of samples
		    in each bin.  If True, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		    Overrides the `normed` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `normed` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words, if
		`bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and the
		second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which *includes*
		4.
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([ 0.25,  0.25,  0.25,  0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([ 0.5,  0. ,  0.5,  0. ,  0. ,  0.5,  0. ,  0.5,  0. ,  0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist*np.diff(bin_edges))
		1.0
	**/
	static public function histogram(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Dynamic;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : array_like
		    The data to be histogrammed. It must be an (N,D) array or data
		    that can be converted to such. The rows of the resulting array
		    are the coordinates of points in a D dimensional polytope.
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the bin edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of lower and upper bin edges to be used if the edges are
		    not given explicitly in `bins`. Defaults to the minimum and maximum
		    values along each dimension.
		normed : bool, optional
		    If False, returns the number of samples in each bin. If True,
		    returns the bin density ``bin_count / sample_count / bin_volume``.
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
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.  This function does broadcast, but will *not*
		"up-cast" int dtype arguments unless accompanied by at least one float or
		complex dtype argument (see Raises below).
		
		Parameters
		----------
		x : array_like, dtype float or complex
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = x.dtype
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		Raises
		------
		TypeError: array cannot be safely cast to required type
		    If argument consists exclusively of int dtypes.
		
		See Also
		--------
		scipy.special.iv, scipy.special.ive
		
		Notes
		-----
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
		       http://www.math.sfu.ca/~cbm/aands/page_379.htm
		.. [3] http://kobesearch.cpan.org/htdocs/Math-Cephes/Math/Cephes.html
		
		Examples
		--------
		>>> np.i0([0.])
		array(1.0)
		>>> np.i0([0., 1. + 2j])
		array([ 1.00000000+0.j        ,  0.18785373+0.64616944j])
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
		array([1, 5, 1, 2, 2, 3, 3])
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
		array([1, 1, 5, 6, 2, 2, 3, 3])
		
		>>> np.insert(b, slice(2, 4), [5, 6])
		array([1, 1, 5, 2, 6, 2, 3, 3])
		
		>>> np.insert(b, [2, 2], [7.13, False]) # type casting
		array([1, 1, 7, 0, 2, 2, 3, 3])
		
		>>> x = np.arange(8).reshape(2, 4)
		>>> idx = (1, 3)
		>>> np.insert(x, idx, 999, axis=1)
		array([[  0, 999,   1,   2, 999,   3],
		       [  4, 999,   5,   6, 999,   7]])
	**/
	static public function insert(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		One-dimensional linear interpolation.
		
		Returns the one-dimensional piecewise linear interpolant to a function
		with given values at discrete data-points.
		
		Parameters
		----------
		x : array_like
		    The x-coordinates of the interpolated values.
		
		xp : 1-D sequence of floats
		    The x-coordinates of the data points, must be increasing if argument
		    `period` is not specified. Otherwise, `xp` is internally sorted after
		    normalizing the periodic boundaries with ``xp = xp % period``.
		
		fp : 1-D sequence of floats
		    The y-coordinates of the data points, same length as `xp`.
		
		left : float, optional
		    Value to return for `x < xp[0]`, default is `fp[0]`.
		
		right : float, optional
		    Value to return for `x > xp[-1]`, default is `fp[-1]`.
		
		period : None or float, optional
		    A period for the x-coordinates. This parameter allows the proper
		    interpolation of angular x-coordinates. Parameters `left` and `right`
		    are ignored if `period` is specified.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		y : float or ndarray
		    The interpolated values, same shape as `x`.
		
		Raises
		------
		ValueError
		    If `xp` and `fp` have different length
		    If `xp` or `fp` are not 1-D sequences
		    If `period == 0`
		
		Notes
		-----
		Does not check that the x-coordinate sequence `xp` is increasing.
		If `xp` is not increasing, the results are nonsense.
		A simple check for increasing is::
		
		    np.all(np.diff(xp) > 0)
		
		Examples
		--------
		>>> xp = [1, 2, 3]
		>>> fp = [3, 2, 0]
		>>> np.interp(2.5, xp, fp)
		1.0
		>>> np.interp([0, 1, 1.5, 2.72, 3.14], xp, fp)
		array([ 3. ,  3. ,  2.5 ,  0.56,  0. ])
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
		array([7.5, 5., 8.75, 6.25, 3., 3.25, 3.5, 3.75])
	**/
	static public function interp(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
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
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
	**/
	static public function isscalar(num:Dynamic):Dynamic;
	/**
		Check whether or not an object can be iterated over.
		
		Parameters
		----------
		y : object
		  Input object.
		
		Returns
		-------
		b : {0, 1}
		  Return 1 if the object has an iterator method or is a sequence,
		  and 0 otherwise.
		
		
		Examples
		--------
		>>> np.iterable([1, 2, 3])
		1
		>>> np.iterable(2)
		0
	**/
	static public function iterable(y:Dynamic):Dynamic;
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
		       http://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		>>> np.kaiser(12, 14)
		array([  7.72686684e-06,   3.46009194e-03,   4.65200189e-02,
		         2.29737120e-01,   5.99885316e-01,   9.45674898e-01,
		         9.45674898e-01,   5.99885316e-01,   2.29737120e-01,
		         4.65200189e-02,   3.46009194e-03,   7.72686684e-06])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.kaiser(51, 14)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Kaiser window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Kaiser window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic):Dynamic;
	/**
		less_equal(x1, x2[, out])
		
		Return the truth value of (x1 =< x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True], dtype=bool)
	**/
	static public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		Parameters
		----------
		start : scalar
		    The starting value of the sequence.
		stop : scalar
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
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		logspace : Samples uniformly distributed in log space.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		    array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		    array([ 2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		    (array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
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
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		log10(x[, out])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		
		See Also
		--------
		emath.log10
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `10**z = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log10` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log10` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it.
		`log10` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  NaN])
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		    .. versionadded: 1.7.0
		
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
		    See `doc.ufuncs` for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
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
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([ 2.,  3.])
		>>> np.mean(a, axis=1)
		array([ 1.5,  3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.546875
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis.
		
		Returns the median of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int or sequence of int, optional
		    Axis along which the medians are computed. The default (axis=None)
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array (a) for
		   calculations. The input array will be modified by the call to
		   median. This will save memory when you do not need to preserve the
		   contents of the input array. Treat the input as undefined, but it
		   will probably be fully or partially sorted. Default is False. Note
		   that, if `overwrite_input` is True and the input is not already an
		   ndarray, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		median : ndarray
		    A new array holding the result (unless `out` is specified, in which
		    case that array is returned instead).  If the input contains
		    integers, or floats of smaller precision than 64, then the output
		    data-type is float64.  Otherwise, the output data-type is the same
		    as that of the input.
		
		See Also
		--------
		mean, percentile
		
		Notes
		-----
		Given a vector V of length N, the median of V is the middle value of
		a sorted copy of V, ``V_sorted`` - i.e., ``V_sorted[(N-1)/2]``, when N is
		odd.  When N is even, it is the average of the two middle values of
		``V_sorted``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.median(a)
		3.5
		>>> np.median(a, axis=0)
		array([ 6.5,  4.5,  2.5])
		>>> np.median(a, axis=1)
		array([ 7.,  2.])
		>>> m = np.median(a, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.median(a, axis=0, out=m)
		array([ 6.5,  4.5,  2.5])
		>>> m
		array([ 6.5,  4.5,  2.5])
		>>> b = a.copy()
		>>> np.median(b, axis=1, overwrite_input=True)
		array([ 7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.median(b, axis=None, overwrite_input=True)
		3.5
		>>> assert not np.all(a==b)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		    If True a sparse grid is returned in order to conserve memory.
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
		
		    xv, yv = meshgrid(x, y, sparse=False, indexing='ij')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[i,j], yv[i,j]
		
		    xv, yv = meshgrid(x, y, sparse=False, indexing='xy')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[j,i], yv[j,i]
		
		In the 1-D and 0-D case, the indexing and sparse keywords have no effect.
		
		See Also
		--------
		index_tricks.mgrid : Construct a multi-dimensional "meshgrid"
		                 using indexing notation.
		index_tricks.ogrid : Construct an open multi-dimensional "meshgrid"
		                 using indexing notation.
		
		Examples
		--------
		>>> nx, ny = (3, 2)
		>>> x = np.linspace(0, 1, nx)
		>>> y = np.linspace(0, 1, ny)
		>>> xv, yv = meshgrid(x, y)
		>>> xv
		array([[ 0. ,  0.5,  1. ],
		       [ 0. ,  0.5,  1. ]])
		>>> yv
		array([[ 0.,  0.,  0.],
		       [ 1.,  1.,  1.]])
		>>> xv, yv = meshgrid(x, y, sparse=True)  # make sparse output arrays
		>>> xv
		array([[ 0. ,  0.5,  1. ]])
		>>> yv
		array([[ 0.],
		       [ 1.]])
		
		`meshgrid` is very useful to evaluate functions on a grid.
		
		>>> x = np.arange(-5, 5, 0.1)
		>>> y = np.arange(-5, 5, 0.1)
		>>> xx, yy = meshgrid(x, y, sparse=True)
		>>> z = np.sin(xx**2 + yy**2) / (xx**2 + yy**2)
		>>> h = plt.contourf(x,y,z)
	**/
	static public function meshgrid(xi:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		remainder(x1, x2[, out])
		
		Return element-wise remainder of division.
		
		Computes ``x1 - floor(x1 / x2) * x2``, the result has the same sign as
		the divisor `x2`. It is equivalent to the Python modulus operator
		``x1 % x2`` and should not be confused with the Matlab(TM) ``rem``
		function.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The remainder of the quotient ``x1/x2``, element-wise. Returns a
		    scalar if both  `x1` and `x2` are scalars.
		
		See Also
		--------
		fmod : Equivalent of the Matlab(TM) ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
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
	static public function msort(a:Dynamic):Dynamic;
	/**
		multiply(x1, x2[, out])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise. Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` * `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.multiply(2.0, 4.0)
		8.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.multiply(x1, x2)
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the indices of the elements that are non-zero.
		
		Returns a tuple of arrays, one for each dimension of `a`,
		containing the indices of the non-zero elements in that
		dimension. The values in `a` are always tested and returned in
		row-major, C-style order. The corresponding non-zero
		values can be obtained with::
		
		    a[nonzero(a)]
		
		To group the indices by element, rather than dimension, use::
		
		    transpose(nonzero(a))
		
		The result of this is always a 2-D array, with a row for
		each non-zero element.
		
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
		
		Examples
		--------
		>>> x = np.eye(3)
		>>> x
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> np.nonzero(x)
		(array([0, 1, 2]), array([0, 1, 2]))
		
		>>> x[np.nonzero(x)]
		array([ 1.,  1.,  1.])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 2]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1,2,3],[4,5,6],[7,8,9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]], dtype=bool)
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the boolean array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
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
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return a partitioned copy of an array.
		
		Creates a copy of the array with its elements rearranged in such a way that
		the value of the element in kth position is in the position it would be in
		a sorted array. All elements smaller than the kth element are moved before
		this element and all equal or greater are moved behind it. The ordering of
		the elements in the two partitions is undefined.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		kth : int or sequence of ints
		    Element index to partition by. The kth value of the element will be in
		    its final sorted position and all smaller elements will be moved before
		    it and all equal or greater elements behind it.
		    The order all elements in the partitions is undefined.
		    If provided with a sequence of kth it will partition all elements
		    indexed by kth  of them into their sorted position at once.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string.  Not all fields need be specified, but
		    unspecified fields will still be used, in the order in which they
		    come up in the dtype, to break ties.
		
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
		The various selection algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative order. The
		available algorithms have the following properties:
		
		================= ======= ============= ============ =======
		   kind            speed   worst case    work space  stable
		================= ======= ============= ============ =======
		'introselect'        1        O(n)           0         no
		================= ======= ============= ============ =======
		
		All the partition algorithms make temporary copies of the data when
		partitioning along any but the last axis.  Consequently, partitioning
		along the last axis is faster and uses less space than partitioning
		along any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Examples
		--------
		>>> a = np.array([3, 4, 2, 1])
		>>> np.partition(a, 3)
		array([2, 1, 3, 4])
		
		>>> np.partition(a, (1, 3))
		array([1, 2, 3, 4])
	**/
	static public function partition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Compute the qth percentile of the data along the specified axis.
		
		Returns the qth percentile of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : float in range of [0,100] (or sequence of floats)
		    Percentile to compute which must be between 0 and 100 inclusive.
		axis : int or sequence of int, optional
		    Axis along which the percentiles are computed. The default (None)
		    is to compute the percentiles along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow use of memory of input array `a` for
		    calculations. The input array will be modified by the call to
		    percentile. This will save memory when you do not need to preserve
		    the contents of the input array. In this case you should not make
		    any assumptions about the content of the passed in array `a` after
		    this function completes -- treat it as undefined. Default is False.
		    Note that, if the `a` input is not already an array this parameter
		    will have no effect, `a` will be converted to an array internally
		    regardless of the value of this parameter.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		
		    .. versionadded:: 1.9.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original array `a`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If a single percentile `q` is given and axis=None a scalar is
		    returned.  If multiple percentiles `q` are given an array holding
		    the result is returned. The results are listed in the first axis.
		    (If `out` is specified, in which case that array is returned
		    instead).  If the input contains integers, or floats of smaller
		    precision than 64, then the output data-type is float64. Otherwise,
		    the output data-type is the same as that of the input.
		
		See Also
		--------
		mean, median
		
		Notes
		-----
		Given a vector V of length N, the q-th percentile of V is the q-th ranked
		value in a sorted copy of V.  The values and distances of the two
		nearest neighbors as well as the `interpolation` parameter will
		determine the percentile if the normalized ranking does not match q
		exactly. This function is the same as the median if ``q=50``, the same
		as the minimum if ``q=0`` and the same as the maximum if ``q=100``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.percentile(a, 50)
		array([ 3.5])
		>>> np.percentile(a, 50, axis=0)
		array([[ 6.5,  4.5,  2.5]])
		>>> np.percentile(a, 50, axis=1)
		array([[ 7.],
		       [ 2.]])
		
		>>> m = np.percentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.percentile(a, 50, axis=0, out=m)
		array([[ 6.5,  4.5,  2.5]])
		>>> m
		array([[ 6.5,  4.5,  2.5]])
		
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=1, overwrite_input=True)
		array([[ 7.],
		       [ 2.]])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=None, overwrite_input=True)
		array([ 3.5])
	**/
	static public function percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray
		    The input domain.
		condlist : list of bool arrays
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) - len(condlist) == 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take an array as input and give an array
		    or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., lambda=1)``, then each function is called as
		    ``f(x, lambda=1)``.
		
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
		array([ 2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
	**/
	static public function piecewise(x:Dynamic, condlist:Dynamic, funclist:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
	/**
		Change elements of an array based on conditional and input values.
		
		Similar to ``np.copyto(arr, vals, where=mask)``, the difference is that
		`place` uses the first N elements of `vals`, where N is the number of
		True values in `mask`, while `copyto` uses the elements where `mask`
		is True.
		
		Note that `extract` does the exact opposite of `place`.
		
		Parameters
		----------
		arr : array_like
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N it will be repeated.
		
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
	static public var print_function : Dynamic;
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
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
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
		>>> print np.ravel(x)
		[1 2 3 4 5 6]
		
		>>> print x.reshape(-1)
		[1 2 3 4 5 6]
		
		>>> print np.ravel(x, order='F')
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print np.ravel(x.T)
		[1 4 2 5 3 6]
		>>> print np.ravel(x.T, order='A')
		[1 2 3 4 5 6]
		
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
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
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
		>>> x = np.arange(10)
		>>> condlist = [x<3, x>5]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist)
		array([ 0,  1,  2,  0,  0,  0, 36, 49, 64, 81])
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
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
		Return the sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
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
		       http://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		array([ -3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02,
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
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("X")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		It works in 2-D as well:
		
		>>> x = np.linspace(-4, 4, 401)
		>>> xx = np.outer(x, x)
		>>> plt.imshow(np.sinc(xx))
		<matplotlib.image.AxesImage object at 0x...>
	**/
	static public function sinc(x:Dynamic):Dynamic;
	/**
		Return a sorted copy of an array.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.sort : Method to sort an array in-place.
		argsort : Indirect sort.
		lexsort : Indirect stable sort on multiple keys.
		searchsorted : Find elements in a sorted array.
		partition : Partial sort.
		
		Notes
		-----
		The various sorting algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative
		order. The three available algorithms have the following
		properties:
		
		=========== ======= ============= ============ =======
		   kind      speed   worst case    work space  stable
		=========== ======= ============= ============ =======
		'quicksort'    1     O(n^2)            0          no
		'mergesort'    2     O(n*log(n))      ~n/2        yes
		'heapsort'     3     O(n*log(n))       0          no
		=========== ======= ============= ============ =======
		
		All the sort algorithms make temporary copies of the data when
		sorting along any but the last axis.  Consequently, sorting along
		the last axis is faster and uses less space than sorting along
		any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Previous to numpy 1.4.0 sorting real and complex arrays containing nan
		values led to undefined behaviour. In numpy versions >= 1.4.0 nan
		values are sorted to the end. The extended sort order is:
		
		  * Real: [R, nan]
		  * Complex: [R + Rj, R + nanj, nan + Rj, nan + nanj]
		
		where R is a non-nan real value. Complex values with the same nan
		placements are sorted according to the non-nan part if it exists.
		Non-nan values are sorted as before.
		
		Examples
		--------
		>>> a = np.array([[1,4],[3,1]])
		>>> np.sort(a)                # sort along the last axis
		array([[1, 4],
		       [1, 3]])
		>>> np.sort(a, axis=None)     # sort the flattened array
		array([1, 1, 3, 4])
		>>> np.sort(a, axis=0)        # sort along the first axis
		array([[1, 1],
		       [3, 4]])
		
		Use the `order` keyword to specify a field to use when sorting a
		structured array:
		
		>>> dtype = [('name', 'S10'), ('height', float), ('age', int)]
		>>> values = [('Arthur', 1.8, 41), ('Lancelot', 1.9, 38),
		...           ('Galahad', 1.7, 38)]
		>>> a = np.array(values, dtype=dtype)       # create a structured array
		>>> np.sort(a, order='height')                        # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Arthur', 1.8, 41),
		       ('Lancelot', 1.8999999999999999, 38)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
		
		Sort by age, then height if ages are equal:
		
		>>> np.sort(a, order=['age', 'height'])               # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Lancelot', 1.8999999999999999, 38),
		       ('Arthur', 1.8, 41)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
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
		array([ 1.+0.j,  2.+0.j,  3.+0.j,  5.+0.j,  6.+0.j])
		
		>>> np.sort_complex([1 + 2j, 2 - 1j, 3 - 2j, 3 - 3j, 3 + 5j])
		array([ 1.+2.j,  2.-1.j,  3.-3.j,  3.-2.j,  3.+5.j])
	**/
	static public function sort_complex(a:Dynamic):Dynamic;
	/**
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
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
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.
		    The default (`axis` = `None`) is perform a sum over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a sum is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which
		    the elements are summed.  By default, the dtype of `a` is used.
		    An exception is when `a` has an integer type with less precision
		    than the default platform integer.  In that case, the default
		    platform integer is used instead.
		out : ndarray, optional
		    Array into which the output is placed.  By default, a new array is
		    created.  If `out` is given, it must be of the appropriate shape
		    (the shape of `a` with `axis` removed, i.e.,
		    ``numpy.delete(a.shape, axis)``).  Its type is preserved. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
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
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Take elements from an array along an axis.
		
		This function does the same thing as "fancy" indexing (indexing arrays
		using arrays); however, it can be easier to use if you need elements
		along a given axis.
		
		Parameters
		----------
		a : array_like
		    The source array.
		indices : array_like
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional
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
		subarray : ndarray
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		
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
		Integrate along the given axis using the composite trapezoidal rule.
		
		Integrate `y` (`x`) along given axis.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    If `x` is None, then spacing between all `y` elements is `dx`.
		dx : scalar, optional
		    If `x` is None, spacing given by `dx` is assumed. Default is 1.
		axis : int, optional
		    Specify the axis.
		
		Returns
		-------
		trapz : float
		    Definite integral as approximated by trapezoidal rule.
		
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
		.. [1] Wikipedia page: http://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       http://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([ 1.5,  2.5,  3.5])
		>>> np.trapz(a, axis=1)
		array([ 2.,  8.])
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
		array([0, 0, 0, 1, 2, 3, 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	static public var typecodes : Dynamic;
	/**
		`unique` is deprecated!
		
		
		This function is deprecated.  Use numpy.lib.arraysetops.unique()
		instead.
	**/
	static public function unique(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Unwrap by changing deltas between values to 2*pi complement.
		
		Unwrap radian phase `p` by changing absolute jumps greater than
		`discont` to their 2*pi complement along the given axis.
		
		Parameters
		----------
		p : array_like
		    Input array.
		discont : float, optional
		    Maximum discontinuity between values, default is ``pi``.
		axis : int, optional
		    Axis along which unwrap will operate, default is the last axis.
		
		Returns
		-------
		out : ndarray
		    Output array.
		
		See Also
		--------
		rad2deg, deg2rad
		
		Notes
		-----
		If the discontinuity in `p` is smaller than ``pi``, but larger than
		`discont`, no unwrapping is done because taking the 2*pi complement
		would only make the discontinuity larger.
		
		Examples
		--------
		>>> phase = np.linspace(0, np.pi, num=5)
		>>> phase[3:] += np.pi
		>>> phase
		array([ 0.        ,  0.78539816,  1.57079633,  5.49778714,  6.28318531])
		>>> np.unwrap(phase)
		array([ 0.        ,  0.78539816,  1.57079633, -0.78539816,  0.        ])
	**/
	static public function unwrap(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic):Dynamic;
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