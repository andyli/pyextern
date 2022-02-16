/* This file is generated, do not edit! */
package numpy.lib.type_check;
@:pythonImport("numpy.lib.type_check") extern class Type_check_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _asfarray_dispatcher(a:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _asscalar_dispatcher(a:Dynamic):Dynamic;
	static public function _common_type_dispatcher(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _getmaxmin(t:Dynamic):Dynamic;
	static public function _imag_dispatcher(val:Dynamic):Dynamic;
	static public function _is_type_dispatcher(x:Dynamic):Dynamic;
	static public var _namefromtype : Dynamic;
	static public function _nan_to_num_dispatcher(x:Dynamic, ?copy:Dynamic, ?nan:Dynamic, ?posinf:Dynamic, ?neginf:Dynamic):Dynamic;
	static public function _real_dispatcher(val:Dynamic):Dynamic;
	static public function _real_if_close_dispatcher(a:Dynamic, ?tol:Dynamic):Dynamic;
	static public var _typecodes_by_elsize : Dynamic;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	static public var array_precision : Dynamic;
	static public var array_type : Dynamic;
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
		Return an array converted to a float type.
		
		Parameters
		----------
		a : array_like
		    The input array.
		dtype : str or dtype object, optional
		    Float type code to coerce input array `a`.  If `dtype` is one of the
		    'int' dtypes, it is replaced with float64.
		
		Returns
		-------
		out : ndarray
		    The input `a` as a float ndarray.
		
		Examples
		--------
		>>> np.asfarray([2, 3])
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Convert an array of size 1 to its scalar equivalent.
		
		.. deprecated:: 1.16
		
		    Deprecated, use `numpy.ndarray.item()` instead.
		
		Parameters
		----------
		a : ndarray
		    Input array of size 1.
		
		Returns
		-------
		out : scalar
		    Scalar representation of `a`. The output data type is the same type
		    returned by the input's `item` method.
		
		Examples
		--------
		>>> np.asscalar(np.array([24]))
		24
	**/
	static public function asscalar(a:Dynamic):Dynamic;
	/**
		Return a scalar type which is common to the input arrays.
		
		The return type will always be an inexact (i.e. floating point) scalar
		type, even if all the arrays are integer arrays. If one of the inputs is
		an integer array, the minimum precision type that is returned is a
		64-bit floating point dtype.
		
		All input arrays except int64 and uint64 can be safely cast to the
		returned dtype without loss of information.
		
		Parameters
		----------
		array1, array2, ... : ndarrays
		    Input arrays.
		
		Returns
		-------
		out : data type code
		    Data type code.
		
		See Also
		--------
		dtype, mintypecode
		
		Examples
		--------
		>>> np.common_type(np.arange(2, dtype=np.float32))
		<class 'numpy.float32'>
		>>> np.common_type(np.arange(2, dtype=np.float32), np.arange(2))
		<class 'numpy.float64'>
		>>> np.common_type(np.arange(4), np.array([45, 6.j]), np.array([45.0]))
		<class 'numpy.complex128'>
	**/
	static public function common_type(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the imaginary part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The imaginary component of the complex argument. If `val` is real,
		    the type of `val` is used for the output.  If `val` has complex
		    elements, the returned type is float.
		
		See Also
		--------
		real, angle, real_if_close
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.imag
		array([2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		Returns a bool array, where True if input element is complex.
		
		What is tested is whether the input has a non-zero imaginary part, not if
		the input type is complex.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray of bools
		    Output array.
		
		See Also
		--------
		isreal
		iscomplexobj : Return True if x is a complex type or an array of complex
		               numbers.
		
		Examples
		--------
		>>> np.iscomplex([1+1j, 1+0j, 4.5, 3, 2, 2j])
		array([ True, False, False, False, False,  True])
	**/
	static public function iscomplex(x:Dynamic):Dynamic;
	/**
		Check for a complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. Even if the input
		has an imaginary part equal to zero, `iscomplexobj` evaluates to True.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		iscomplexobj : bool
		    The return value, True if `x` is of a complex type or has at least
		    one complex element.
		
		See Also
		--------
		isrealobj, iscomplex
		
		Examples
		--------
		>>> np.iscomplexobj(1)
		False
		>>> np.iscomplexobj(1+0j)
		True
		>>> np.iscomplexobj([3, 1+0j, True])
		True
	**/
	static public function iscomplexobj(x:Dynamic):Bool;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
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
		y : ndarray or bool
		    True where ``x`` is NaN, false otherwise.
		    This is a scalar if `x` is a scalar.
		
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
		array([ True, False, False])
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Test element-wise for negative infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a numpy boolean array is
		    returned with values True where the corresponding element of the
		    input is negative infinity and values False where the element of
		    the input is not negative infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as
		    zeros and ones, if the type is boolean then as False and True. The
		    return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values.
		
		Examples
		--------
		>>> np.isneginf(np.NINF)
		True
		>>> np.isneginf(np.inf)
		False
		>>> np.isneginf(np.PINF)
		False
		>>> np.isneginf([-np.inf, 0., np.inf])
		array([ True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isneginf(x, y)
		array([1, 0, 0])
		>>> y
		array([1, 0, 0])
	**/
	static public function isneginf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Test element-wise for positive infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a boolean array is returned
		    with values True where the corresponding element of the input is
		    positive infinity and values False where the element of the input is
		    not positive infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as zeros
		    and ones, if the type is boolean then as False and True.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isneginf, isfinite, isnan
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values
		
		Examples
		--------
		>>> np.isposinf(np.PINF)
		True
		>>> np.isposinf(np.inf)
		True
		>>> np.isposinf(np.NINF)
		False
		>>> np.isposinf([-np.inf, 0., np.inf])
		array([False, False,  True])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isposinf(x, y)
		array([0, 0, 1])
		>>> y
		array([0, 0, 1])
	**/
	static public function isposinf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Returns a bool array, where True if input element is real.
		
		If element has complex type with zero complex part, the return value
		for that element is True.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray, bool
		    Boolean array of same shape as `x`.
		
		Notes
		-----
		`isreal` may behave unexpectedly for string or object arrays (see examples)
		
		See Also
		--------
		iscomplex
		isrealobj : Return True if x is not a complex type.
		
		Examples
		--------
		>>> a = np.array([1+1j, 1+0j, 4.5, 3, 2, 2j], dtype=complex)
		>>> np.isreal(a)
		array([False,  True,  True,  True,  True, False])
		
		The function does not work on string arrays.
		
		>>> a = np.array([2j, "a"], dtype="U")
		>>> np.isreal(a)  # Warns about non-elementwise comparison
		False
		
		Returns True for all elements in input array of ``dtype=object`` even if
		any of the elements is complex.
		
		>>> a = np.array([1, "2", 3+4j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True,  True])
		
		isreal should not be used with object arrays
		
		>>> a = np.array([1+2j, 2+1j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True])
	**/
	static public function isreal(x:Dynamic):Dynamic;
	/**
		Return True if x is a not complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. So even if the input
		has an imaginary part equal to zero, `isrealobj` evaluates to False
		if the data type is complex.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		y : bool
		    The return value, False if `x` is of a complex type.
		
		See Also
		--------
		iscomplexobj, isreal
		
		Notes
		-----
		The function is only meant for arrays with numerical values but it
		accepts all other objects. Since it assumes array input, the return
		value of other objects may be True.
		
		>>> np.isrealobj('A string')
		True
		>>> np.isrealobj(False)
		True
		>>> np.isrealobj(None)
		True
		
		Examples
		--------
		>>> np.isrealobj(1)
		True
		>>> np.isrealobj(1+0j)
		False
		>>> np.isrealobj([3, 1+0j, True])
		False
	**/
	static public function isrealobj(x:Dynamic):Bool;
	/**
		Return the character for the minimum-size type to which given types can
		be safely cast.
		
		The returned type character must represent the smallest size dtype such
		that an array of the returned type can handle the data from an array of
		all types in `typechars` (or if `typechars` is an array, then its
		dtype.char).
		
		Parameters
		----------
		typechars : list of str or array_like
		    If a list of strings, each string should represent a dtype.
		    If array_like, the character representation of the array dtype is used.
		typeset : str or list of str, optional
		    The set of characters that the returned character is chosen from.
		    The default set is 'GDFgdf'.
		default : str, optional
		    The default character, this is returned if none of the characters in
		    `typechars` matches a character in `typeset`.
		
		Returns
		-------
		typechar : str
		    The character representing the minimum-size type that was found.
		
		See Also
		--------
		dtype, sctype2char, maximum_sctype
		
		Examples
		--------
		>>> np.mintypecode(['d', 'f', 'S'])
		'd'
		>>> x = np.array([1.1, 2-3.j])
		>>> np.mintypecode(x)
		'D'
		
		>>> np.mintypecode('abceh', default='G')
		'G'
	**/
	static public function mintypecode(typechars:Dynamic, ?typeset:Dynamic, ?_default:Dynamic):String;
	/**
		Replace NaN with zero and infinity with large finite numbers (default
		behaviour) or with the numbers defined by the user using the `nan`, 
		`posinf` and/or `neginf` keywords.
		
		If `x` is inexact, NaN is replaced by zero or by the user defined value in
		`nan` keyword, infinity is replaced by the largest finite floating point 
		values representable by ``x.dtype`` or by the user defined value in 
		`posinf` keyword and -infinity is replaced by the most negative finite 
		floating point values representable by ``x.dtype`` or by the user defined 
		value in `neginf` keyword.
		
		For complex dtypes, the above is applied to each of the real and
		imaginary components of `x` separately.
		
		If `x` is not inexact, then no replacements are made.
		
		Parameters
		----------
		x : scalar or array_like
		    Input data.
		copy : bool, optional
		    Whether to create a copy of `x` (True) or to replace values
		    in-place (False). The in-place operation only occurs if
		    casting to an array does not require a copy.
		    Default is True.
		    
		    .. versionadded:: 1.13
		nan : int, float, optional
		    Value to be used to fill NaN values. If no value is passed 
		    then NaN values will be replaced with 0.0.
		    
		    .. versionadded:: 1.17
		posinf : int, float, optional
		    Value to be used to fill positive infinity values. If no value is 
		    passed then positive infinity values will be replaced with a very
		    large number.
		    
		    .. versionadded:: 1.17
		neginf : int, float, optional
		    Value to be used to fill negative infinity values. If no value is 
		    passed then negative infinity values will be replaced with a very
		    small (or negative) number.
		    
		    .. versionadded:: 1.17
		
		    
		
		Returns
		-------
		out : ndarray
		    `x`, with the non-finite values replaced. If `copy` is False, this may
		    be `x` itself.
		
		See Also
		--------
		isinf : Shows which elements are positive or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.nan_to_num(np.inf)
		1.7976931348623157e+308
		>>> np.nan_to_num(-np.inf)
		-1.7976931348623157e+308
		>>> np.nan_to_num(np.nan)
		0.0
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([ 1.79769313e+308, -1.79769313e+308,  0.00000000e+000, # may vary
		       -1.28000000e+002,  1.28000000e+002])
		>>> np.nan_to_num(x, nan=-9999, posinf=33333333, neginf=33333333)
		array([ 3.3333333e+07,  3.3333333e+07, -9.9990000e+03, 
		       -1.2800000e+02,  1.2800000e+02])
		>>> y = np.array([complex(np.inf, np.nan), np.nan, complex(np.nan, np.inf)])
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000, # may vary
		     -1.28000000e+002,   1.28000000e+002])
		>>> np.nan_to_num(y)
		array([  1.79769313e+308 +0.00000000e+000j, # may vary
		         0.00000000e+000 +0.00000000e+000j,
		         0.00000000e+000 +1.79769313e+308j])
		>>> np.nan_to_num(y, nan=111111, posinf=222222)
		array([222222.+111111.j, 111111.     +0.j, 111111.+222222.j])
	**/
	static public function nan_to_num(x:Dynamic, ?copy:Dynamic, ?nan:Dynamic, ?posinf:Dynamic, ?neginf:Dynamic):numpy.Ndarray;
	/**
		Return the real part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The real component of the complex argument. If `val` is real, the type
		    of `val` is used for the output.  If `val` has complex elements, the
		    returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([9.+2.j,  8.+4.j,  7.+6.j])
		>>> np.real(1 + 1j)
		1.0
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		If input is complex with all imaginary parts close to zero, return 
		real parts.
		
		"Close to zero" is defined as `tol` * (machine epsilon of the type for
		`a`).
		
		Parameters
		----------
		a : array_like
		    Input array.
		tol : float
		    Tolerance in machine epsilons for the complex part of the elements
		    in the array.
		
		Returns
		-------
		out : ndarray
		    If `a` is real, the type of `a` is used for the output.  If `a`
		    has complex elements, the returned type is float.
		
		See Also
		--------
		real, imag, angle
		
		Notes
		-----
		Machine epsilon varies from machine to machine and between data types
		but Python floats on most platforms have a machine epsilon equal to
		2.2204460492503131e-16.  You can use 'np.finfo(float).eps' to print
		out the machine epsilon for floats.
		
		Examples
		--------
		>>> np.finfo(float).eps
		2.2204460492503131e-16 # may vary
		
		>>> np.real_if_close([2.1 + 4e-14j, 5.2 + 3e-15j], tol=1000)
		array([2.1, 5.2])
		>>> np.real_if_close([2.1 + 4e-13j, 5.2 + 3e-15j], tol=1000)
		array([2.1+4.e-13j, 5.2 + 3e-15j])
	**/
	static public function real_if_close(a:Dynamic, ?tol:Dynamic):numpy.Ndarray;
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
		Return a description for the given data type code.
		
		Parameters
		----------
		char : str
		    Data type code.
		
		Returns
		-------
		out : str
		    Description of the input data type code.
		
		See Also
		--------
		dtype, typecodes
		
		Examples
		--------
		>>> typechars = ['S1', '?', 'B', 'D', 'G', 'F', 'I', 'H', 'L', 'O', 'Q',
		...              'S', 'U', 'V', 'b', 'd', 'g', 'f', 'i', 'h', 'l', 'q']
		>>> for typechar in typechars:
		...     print(typechar, ' : ', np.typename(typechar))
		...
		S1  :  character
		?  :  bool
		B  :  unsigned char
		D  :  complex double precision
		G  :  complex long double precision
		F  :  complex single precision
		I  :  unsigned integer
		H  :  unsigned short
		L  :  unsigned long integer
		O  :  object
		Q  :  unsigned long long integer
		S  :  string
		U  :  unicode
		V  :  void
		b  :  signed char
		d  :  double precision
		g  :  long precision
		f  :  single precision
		i  :  integer
		h  :  short
		l  :  long integer
		q  :  long long integer
	**/
	static public function typename(char:Dynamic):String;
	/**
		zeros(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
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
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
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