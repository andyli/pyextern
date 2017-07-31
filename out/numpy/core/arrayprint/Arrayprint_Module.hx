/* This file is generated, do not edit! */
package numpy.core.arrayprint;
@:pythonImport("numpy.core.arrayprint") extern class Arrayprint_Module {
	static public var _MAXINT : Dynamic;
	static public var _MININT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _array2string(a:Dynamic, max_line_width:Dynamic, precision:Dynamic, suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?formatter:Dynamic):Dynamic;
	static public function _boolFormatter(x:Dynamic):Dynamic;
	static public function _digits(x:Dynamic, precision:Dynamic, format:Dynamic):Dynamic;
	static public function _extendLine(s:Dynamic, line:Dynamic, word:Dynamic, max_line_len:Dynamic, next_line_prefix:Dynamic):Dynamic;
	static public var _float_output_precision : Dynamic;
	static public var _float_output_suppress_small : Dynamic;
	/**
		formatArray is designed for two modes of operation:
		
		1. Full output
		
		2. Summarized output
	**/
	static public function _formatArray(a:Dynamic, format_function:Dynamic, rank:Dynamic, max_line_len:Dynamic, next_line_prefix:Dynamic, separator:Dynamic, edge_items:Dynamic, summary_insert:Dynamic):Dynamic;
	static public var _formatter : Dynamic;
	/**
		find the right formatting function for the dtype_
	**/
	static public function _get_format_function(data:Dynamic, precision:Dynamic, suppress_small:Dynamic, formatter:Dynamic):Dynamic;
	static public function _get_formatdict(data:Dynamic, precision:Dynamic, suppress_small:Dynamic, formatter:Dynamic):Dynamic;
	static public var _inf_str : Dynamic;
	static public function _leading_trailing(a:Dynamic):Dynamic;
	static public var _line_width : Dynamic;
	static public var _nan_str : Dynamic;
	/**
		Object arrays containing lists should be printed unambiguously 
	**/
	static public function _object_format(o:Dynamic):Dynamic;
	/**
		Like the python 3.2 reprlib.recursive_repr, but forwards *args and **kwargs
		
		Decorates a function such that if it calls itself with the same first
		argument, it returns `fillvalue` instead of recursing.
		
		Largely copied from reprlib.recursive_repr
	**/
	static public function _recursive_guard(?fillvalue:Dynamic):Dynamic;
	static public var _summaryEdgeItems : Dynamic;
	static public var _summaryThreshold : Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
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
	**/
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, full, full_like
		
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
		Return a string representation of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    The maximum number of columns the string should span. Newline
		    characters splits the string appropriately after array elements.
		precision : int, optional
		    Floating point precision. Default is the current printing
		    precision (usually 8), which can be altered using `set_printoptions`.
		suppress_small : bool, optional
		    Represent very small numbers as zero. A number is "very small" if it
		    is smaller than the current printing precision.
		separator : str, optional
		    Inserted between elements.
		prefix : str, optional
		    An array is typically printed as::
		
		      'prefix(' + array2string(a) + ')'
		
		    The length of the prefix string is used to align the
		    output correctly.
		style : function, optional
		    A function that accepts an ndarray and returns a string.  Used only
		    when the shape of `a` is equal to ``()``, i.e. for 0-D arrays.
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are::
		
		        - 'bool'
		        - 'int'
		        - 'timedelta' : a `numpy.timedelta64`
		        - 'datetime' : a `numpy.datetime64`
		        - 'float'
		        - 'longfloat' : 128-bit floats
		        - 'complexfloat'
		        - 'longcomplexfloat' : composed of two 128-bit floats
		        - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		        - 'str' : all other strings
		
		    Other keys that can be used to set a group of types at once are::
		
		        - 'all' : sets all types
		        - 'int_kind' : sets 'int'
		        - 'float_kind' : sets 'float' and 'longfloat'
		        - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		        - 'str_kind' : sets 'str' and 'numpystr'
		
		Returns
		-------
		array_str : str
		    String representation of the array.
		
		Raises
		------
		TypeError
		    if a callable in `formatter` does not return a string.
		
		See Also
		--------
		array_str, array_repr, set_printoptions, get_printoptions
		
		Notes
		-----
		If a formatter is specified for a certain type, the `precision` keyword is
		ignored for that type.
		
		This is a very flexible function; `array_repr` and `array_str` are using
		`array2string` internally so keywords with the same name should work
		identically in all three functions.
		
		Examples
		--------
		>>> x = np.array([1e-16,1,2,3])
		>>> print(np.array2string(x, precision=2, separator=',',
		...                       suppress_small=True))
		[ 0., 1., 2., 3.]
		
		>>> x  = np.arange(3.)
		>>> np.array2string(x, formatter={'float_kind':lambda x: "%.2f" % x})
		'[0.00 1.00 2.00]'
		
		>>> x  = np.arange(3)
		>>> np.array2string(x, formatter={'int':lambda x: hex(x)})
		'[0x0L 0x1L 0x2L]'
	**/
	static public function array2string(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic):String;
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
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function format_longfloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_ident() -> integer
		
		Return a non-zero integer that uniquely identifies the current thread
		amongst other threads that exist simultaneously.
		This may be used to identify per-thread resources.
		Even though on some platforms threads identities may appear to be
		allocated consecutive numbers starting at 1, this behavior should not
		be relied upon, and the number should be seen purely as a magic cookie.
		A thread's identity may be reused for another thread after it exits.
	**/
	static public function get_ident(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the current print options.
		
		Returns
		-------
		print_opts : dict
		    Dictionary of current print options with keys
		
		      - precision : int
		      - threshold : int
		      - edgeitems : int
		      - linewidth : int
		      - suppress : bool
		      - nanstr : str
		      - infstr : str
		      - formatter : dict of callables
		
		    For a full description of these options, see `set_printoptions`.
		
		See Also
		--------
		set_printoptions, set_string_function
	**/
	static public function get_printoptions():python.Dict<Dynamic, Dynamic>;
	/**
		isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool (scalar) or boolean ndarray
		    For scalar input, the result is a new boolean with value True if
		    the input is positive or negative infinity; otherwise the value is
		    False.
		
		    For array input, the result is a boolean array with the same shape
		    as the input and the values are True where the corresponding
		    element of the input is positive or negative infinity; elsewhere
		    the values are False.  If a second argument was supplied the result
		    is stored there.  If the type of that array is a numeric type the
		    result is represented as zeros and ones, if the type is boolean
		    then as False and True, respectively.  The return value `y` is then
		    a reference to that array.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is supplied when the first
		argument is a scalar, or if the first and second arguments have
		different shapes.
		
		Examples
		--------
		>>> np.isinf(np.inf)
		True
		>>> np.isinf(np.nan)
		False
		>>> np.isinf(np.NINF)
		True
		>>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
		array([ True,  True, False, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    For scalar input, the result is a new boolean with value True if
		    the input is NaN; otherwise the value is False.
		
		    For array input, the result is a boolean array of the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is NaN; otherwise the values are
		    False.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite, isnat
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False], dtype=bool)
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		fmin, amin, nanmin
		
		Notes
		-----
		The maximum is equivalent to ``np.where(x1 >= x2, x1, x2)`` when
		neither x1 nor x2 are nans, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.maximum([2, 3, 4], [1, 5, 2])
		array([2, 5, 4])
		
		>>> np.maximum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.maximum([np.nan, 0, np.nan], [0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		fmax, amax, nanmax
		
		Notes
		-----
		The minimum is equivalent to ``np.where(x1 <= x2, x1, x2)`` when
		neither x1 nor x2 are NaNs, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.minimum([2, 3, 4], [1, 5, 2])
		array([1, 3, 2])
		
		>>> np.minimum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.minimum([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.minimum(-np.Inf, 1)
		-inf
	**/
	static public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		not_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		  Input arrays.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		not_equal : ndarray bool, scalar bool
		  For each element in `x1, x2`, return True if `x1` is not equal
		  to `x2` and False otherwise.
		
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True], dtype=bool)
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]], dtype=bool)
	**/
	static public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function product(x:Dynamic, y:Dynamic):Dynamic;
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
		>>> print(np.ravel(x))
		[1 2 3 4 5 6]
		
		>>> print(x.reshape(-1))
		[1 2 3 4 5 6]
		
		>>> print(np.ravel(x, order='F'))
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print(np.ravel(x.T))
		[1 4 2 5 3 6]
		>>> print(np.ravel(x.T, order='A'))
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
	static public function ravel(a:Dynamic, ?order:Dynamic):python.NativeIterable<Dynamic>;
	static public function repr_format(x:Dynamic):Dynamic;
	/**
		Set printing options.
		
		These options determine the way floating point numbers, arrays and
		other NumPy objects are displayed.
		
		Parameters
		----------
		precision : int, optional
		    Number of digits of precision for floating point output (default 8).
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr (default 1000).
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension (default 3).
		linewidth : int, optional
		    The number of characters per line for the purpose of inserting
		    line breaks (default 75).
		suppress : bool, optional
		    Whether or not suppress printing of small floating point values
		    using scientific notation (default False).
		nanstr : str, optional
		    String representation of floating point not-a-number (default nan).
		infstr : str, optional
		    String representation of floating point infinity (default inf).
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are::
		
		        - 'bool'
		        - 'int'
		        - 'timedelta' : a `numpy.timedelta64`
		        - 'datetime' : a `numpy.datetime64`
		        - 'float'
		        - 'longfloat' : 128-bit floats
		        - 'complexfloat'
		        - 'longcomplexfloat' : composed of two 128-bit floats
		        - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		        - 'object' : `np.object_` arrays
		        - 'str' : all other strings
		
		    Other keys that can be used to set a group of types at once are::
		
		        - 'all' : sets all types
		        - 'int_kind' : sets 'int'
		        - 'float_kind' : sets 'float' and 'longfloat'
		        - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		        - 'str_kind' : sets 'str' and 'numpystr'
		
		See Also
		--------
		get_printoptions, set_string_function, array2string
		
		Notes
		-----
		`formatter` is always reset with a call to `set_printoptions`.
		
		Examples
		--------
		Floating point precision can be set:
		
		>>> np.set_printoptions(precision=4)
		>>> print(np.array([1.123456789]))
		[ 1.1235]
		
		Long arrays can be summarised:
		
		>>> np.set_printoptions(threshold=5)
		>>> print(np.arange(10))
		[0 1 2 ..., 7 8 9]
		
		Small results can be suppressed:
		
		>>> eps = np.finfo(float).eps
		>>> x = np.arange(4.)
		>>> x**2 - (x + eps)**2
		array([ -4.9304e-32,  -4.4409e-16,   0.0000e+00,   0.0000e+00])
		>>> np.set_printoptions(suppress=True)
		>>> x**2 - (x + eps)**2
		array([-0., -0.,  0.,  0.])
		
		A custom formatter can be used to display array elements as desired:
		
		>>> np.set_printoptions(formatter={'all':lambda x: 'int: '+str(-x)})
		>>> x = np.arange(3)
		>>> x
		array([int: 0, int: -1, int: -2])
		>>> np.set_printoptions()  # formatter gets reset
		>>> x
		array([0, 1, 2])
		
		To put back the default options, you can use:
		
		>>> np.set_printoptions(edgeitems=3,infstr='inf',
		... linewidth=75, nanstr='nan', precision=8,
		... suppress=False, threshold=1000, formatter=None)
	**/
	static public function set_printoptions(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?suppress:Dynamic, ?nanstr:Dynamic, ?infstr:Dynamic, ?formatter:Dynamic):Dynamic;
}