/* This file is generated, do not edit! */
package numpy.core.arrayprint;
@:pythonImport("numpy.core.arrayprint") extern class Arrayprint_Module {
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
	static public function _array2string(a:Dynamic, options:Dynamic, ?separator:Dynamic, ?prefix:Dynamic):Dynamic;
	static public function _array2string_dispatcher(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?suffix:Dynamic, ?legacy:Dynamic):Dynamic;
	/**
		Return a string representation of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int or None, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		separator : str, optional
		    Inserted between elements.
		prefix : str, optional
		suffix : str, optional
		    The length of the prefix and suffix strings are used to respectively
		    align and wrap the output. An array is typically printed as::
		
		      prefix + array2string(a) + suffix
		
		    The output is left-padded by the length of the prefix string, and
		    wrapping is forced at the column ``max_line_width - len(suffix)``.
		    It should be noted that the content of prefix and suffix strings are
		    not included in the output.
		style : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.14.0
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are:
		
		    - 'bool'
		    - 'int'
		    - 'timedelta' : a `numpy.timedelta64`
		    - 'datetime' : a `numpy.datetime64`
		    - 'float'
		    - 'longfloat' : 128-bit floats
		    - 'complexfloat'
		    - 'longcomplexfloat' : composed of two 128-bit floats
		    - 'void' : type `numpy.void`
		    - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		
		    Other keys that can be used to set a group of types at once are:
		
		    - 'all' : sets all types
		    - 'int_kind' : sets 'int'
		    - 'float_kind' : sets 'float' and 'longfloat'
		    - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		    - 'str_kind' : sets 'numpystr'
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr.
		    Defaults to ``numpy.get_printoptions()['threshold']``.
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension.
		    Defaults to ``numpy.get_printoptions()['edgeitems']``.
		sign : string, either '-', '+', or ' ', optional
		    Controls printing of the sign of floating-point types. If '+', always
		    print the sign of positive values. If ' ', always prints a space
		    (whitespace character) in the sign position of positive values.  If
		    '-', omit the sign character of positive values.
		    Defaults to ``numpy.get_printoptions()['sign']``.
		floatmode : str, optional
		    Controls the interpretation of the `precision` option for
		    floating-point types.
		    Defaults to ``numpy.get_printoptions()['floatmode']``.
		    Can take the following values:
		
		    - 'fixed': Always print exactly `precision` fractional digits,
		      even if this would print more or fewer digits than
		      necessary to specify the value uniquely.
		    - 'unique': Print the minimum number of fractional digits necessary
		      to represent each value uniquely. Different elements may
		      have a different number of digits.  The value of the
		      `precision` option is ignored.
		    - 'maxprec': Print at most `precision` fractional digits, but if
		      an element can be uniquely represented with fewer digits
		      only print it with that many.
		    - 'maxprec_equal': Print at most `precision` fractional digits,
		      but if every element in the array can be uniquely
		      represented with an equal number of fewer digits, use that
		      many digits for all elements.
		legacy : string or `False`, optional
		    If set to the string `'1.13'` enables 1.13 legacy printing mode. This
		    approximates numpy 1.13 print output by including a space in the sign
		    position of floats and different behavior for 0d arrays. If set to
		    `False`, disables legacy mode. Unrecognized strings will be ignored
		    with a warning for forward compatibility.
		
		    .. versionadded:: 1.14.0
		
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
		>>> np.array2string(x, precision=2, separator=',',
		...                       suppress_small=True)
		'[0.,1.,2.,3.]'
		
		>>> x  = np.arange(3.)
		>>> np.array2string(x, formatter={'float_kind':lambda x: "%.2f" % x})
		'[0.00 1.00 2.00]'
		
		>>> x  = np.arange(3)
		>>> np.array2string(x, formatter={'int':lambda x: hex(x)})
		'[0x0 0x1 0x2]'
	**/
	static public function _array2string_impl(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?suffix:Dynamic, ?legacy:Dynamic):String;
	static public function _array_repr_dispatcher(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):Dynamic;
	/**
		Internal version of array_repr() that allows overriding array2string.
	**/
	static public function _array_repr_implementation(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?array2string:Dynamic):Dynamic;
	static public function _array_str_dispatcher(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):Dynamic;
	/**
		Internal version of array_str() that allows overriding array2string.
	**/
	static public function _array_str_implementation(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?array2string:Dynamic):Dynamic;
	static public function _default_array_repr(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?array2string:Dynamic):Dynamic;
	static public function _default_array_str(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?array2string:Dynamic):Dynamic;
	static public function _extendLine(s:Dynamic, line:Dynamic, word:Dynamic, line_width:Dynamic, next_line_prefix:Dynamic, legacy:Dynamic):Dynamic;
	/**
		Extends line with nicely formatted (possibly multi-line) string ``word``.
	**/
	static public function _extendLine_pretty(s:Dynamic, line:Dynamic, word:Dynamic, line_width:Dynamic, next_line_prefix:Dynamic, legacy:Dynamic):Dynamic;
	/**
		formatArray is designed for two modes of operation:
		
		1. Full output
		
		2. Summarized output
	**/
	static public function _formatArray(a:Dynamic, format_function:Dynamic, line_width:Dynamic, next_line_prefix:Dynamic, separator:Dynamic, edge_items:Dynamic, summary_insert:Dynamic, legacy:Dynamic):Dynamic;
	static public var _format_options : Dynamic;
	/**
		find the right formatting function for the dtype_
	**/
	static public function _get_format_function(data:Dynamic, ?options:python.KwArgs<Dynamic>):Dynamic;
	static public function _get_formatdict(data:Dynamic, precision:Dynamic, floatmode:Dynamic, suppress:Dynamic, sign:Dynamic, legacy:Dynamic, formatter:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the legacy print mode as an int.
	**/
	static public function _get_legacy_print_mode():Dynamic;
	static public function _guarded_repr_or_str(v:Dynamic):Dynamic;
	/**
		Keep only the N-D corners (leading and trailing edges) of an array.
		
		Should be passed a base-class ndarray, since it makes no guarantees about
		preserving subclasses.
	**/
	static public function _leading_trailing(a:Dynamic, edgeitems:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Make a dictionary out of the non-None arguments, plus conversion of
		*legacy* and sanity checks.
	**/
	static public function _make_options_dict(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?suppress:Dynamic, ?nanstr:Dynamic, ?infstr:Dynamic, ?sign:Dynamic, ?formatter:Dynamic, ?floatmode:Dynamic, ?legacy:Dynamic):Dynamic;
	static public function _none_or_positive_arg(x:Dynamic, name:Dynamic):Dynamic;
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
	static public var _typelessdata : Dynamic;
	/**
		Implements the repr for structured-void scalars. It is called from the
		scalartypes.c.src code, and is placed here because it uses the elementwise
		formatters defined above.
	**/
	static public function _void_scalar_repr(x:Dynamic):Dynamic;
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
	/**
		Return a string representation of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int or None, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		separator : str, optional
		    Inserted between elements.
		prefix : str, optional
		suffix : str, optional
		    The length of the prefix and suffix strings are used to respectively
		    align and wrap the output. An array is typically printed as::
		
		      prefix + array2string(a) + suffix
		
		    The output is left-padded by the length of the prefix string, and
		    wrapping is forced at the column ``max_line_width - len(suffix)``.
		    It should be noted that the content of prefix and suffix strings are
		    not included in the output.
		style : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.14.0
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are:
		
		    - 'bool'
		    - 'int'
		    - 'timedelta' : a `numpy.timedelta64`
		    - 'datetime' : a `numpy.datetime64`
		    - 'float'
		    - 'longfloat' : 128-bit floats
		    - 'complexfloat'
		    - 'longcomplexfloat' : composed of two 128-bit floats
		    - 'void' : type `numpy.void`
		    - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		
		    Other keys that can be used to set a group of types at once are:
		
		    - 'all' : sets all types
		    - 'int_kind' : sets 'int'
		    - 'float_kind' : sets 'float' and 'longfloat'
		    - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		    - 'str_kind' : sets 'numpystr'
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr.
		    Defaults to ``numpy.get_printoptions()['threshold']``.
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension.
		    Defaults to ``numpy.get_printoptions()['edgeitems']``.
		sign : string, either '-', '+', or ' ', optional
		    Controls printing of the sign of floating-point types. If '+', always
		    print the sign of positive values. If ' ', always prints a space
		    (whitespace character) in the sign position of positive values.  If
		    '-', omit the sign character of positive values.
		    Defaults to ``numpy.get_printoptions()['sign']``.
		floatmode : str, optional
		    Controls the interpretation of the `precision` option for
		    floating-point types.
		    Defaults to ``numpy.get_printoptions()['floatmode']``.
		    Can take the following values:
		
		    - 'fixed': Always print exactly `precision` fractional digits,
		      even if this would print more or fewer digits than
		      necessary to specify the value uniquely.
		    - 'unique': Print the minimum number of fractional digits necessary
		      to represent each value uniquely. Different elements may
		      have a different number of digits.  The value of the
		      `precision` option is ignored.
		    - 'maxprec': Print at most `precision` fractional digits, but if
		      an element can be uniquely represented with fewer digits
		      only print it with that many.
		    - 'maxprec_equal': Print at most `precision` fractional digits,
		      but if every element in the array can be uniquely
		      represented with an equal number of fewer digits, use that
		      many digits for all elements.
		legacy : string or `False`, optional
		    If set to the string `'1.13'` enables 1.13 legacy printing mode. This
		    approximates numpy 1.13 print output by including a space in the sign
		    position of floats and different behavior for 0d arrays. If set to
		    `False`, disables legacy mode. Unrecognized strings will be ignored
		    with a warning for forward compatibility.
		
		    .. versionadded:: 1.14.0
		
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
		>>> np.array2string(x, precision=2, separator=',',
		...                       suppress_small=True)
		'[0.,1.,2.,3.]'
		
		>>> x  = np.arange(3.)
		>>> np.array2string(x, formatter={'float_kind':lambda x: "%.2f" % x})
		'[0.00 1.00 2.00]'
		
		>>> x  = np.arange(3)
		>>> np.array2string(x, formatter={'int':lambda x: hex(x)})
		'[0x0 0x1 0x2]'
	**/
	static public function array2string(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?suffix:Dynamic, ?legacy:Dynamic):String;
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
		Return the string representation of an array.
		
		Parameters
		----------
		arr : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		
		Returns
		-------
		string : str
		  The string representation of an array.
		
		See Also
		--------
		array_str, array2string, set_printoptions
		
		Examples
		--------
		>>> np.array_repr(np.array([1,2]))
		'array([1, 2])'
		>>> np.array_repr(np.ma.array([0.]))
		'MaskedArray([0.])'
		>>> np.array_repr(np.array([], np.int32))
		'array([], dtype=int32)'
		
		>>> x = np.array([1e-6, 4e-7, 2, 3])
		>>> np.array_repr(x, precision=6, suppress_small=True)
		'array([0.000001,  0.      ,  2.      ,  3.      ])'
	**/
	static public function array_repr(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):String;
	/**
		Return a string representation of the data in an array.
		
		The data in the array is returned as a single string.  This function is
		similar to `array_repr`, the difference being that `array_repr` also
		returns information on the kind of array and its data type.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		
		See Also
		--------
		array2string, array_repr, set_printoptions
		
		Examples
		--------
		>>> np.array_str(np.arange(3))
		'[0 1 2]'
	**/
	static public function array_str(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):Dynamic;
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
		datetime_as_string(arr, unit=None, timezone='naive', casting='same_kind')
		
		Convert an array of datetimes into an array of strings.
		
		Parameters
		----------
		arr : array_like of datetime64
		    The array of UTC timestamps to format.
		unit : str
		    One of None, 'auto', or a :ref:`datetime unit <arrays.dtypes.dateunits>`.
		timezone : {'naive', 'UTC', 'local'} or tzinfo
		    Timezone information to use when displaying the datetime. If 'UTC', end
		    with a Z to indicate UTC time. If 'local', convert to the local timezone
		    first, and suffix with a +-#### timezone offset. If a tzinfo object,
		    then do as with 'local', but use the specified timezone.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}
		    Casting to allow when changing between datetime units.
		
		Returns
		-------
		str_arr : ndarray
		    An array of strings the same shape as `arr`.
		
		Examples
		--------
		>>> import pytz
		>>> d = np.arange('2002-10-27T04:30', 4*60, 60, dtype='M8[m]')
		>>> d
		array(['2002-10-27T04:30', '2002-10-27T05:30', '2002-10-27T06:30',
		       '2002-10-27T07:30'], dtype='datetime64[m]')
		
		Setting the timezone to UTC shows the same information, but with a Z suffix
		
		>>> np.datetime_as_string(d, timezone='UTC')
		array(['2002-10-27T04:30Z', '2002-10-27T05:30Z', '2002-10-27T06:30Z',
		       '2002-10-27T07:30Z'], dtype='<U35')
		
		Note that we picked datetimes that cross a DST boundary. Passing in a
		``pytz`` timezone object will print the appropriate offset
		
		>>> np.datetime_as_string(d, timezone=pytz.timezone('US/Eastern'))
		array(['2002-10-27T00:30-0400', '2002-10-27T01:30-0400',
		       '2002-10-27T01:30-0500', '2002-10-27T02:30-0500'], dtype='<U39')
		
		Passing in a unit will change the precision
		
		>>> np.datetime_as_string(d, unit='h')
		array(['2002-10-27T04', '2002-10-27T05', '2002-10-27T06', '2002-10-27T07'],
		      dtype='<U32')
		>>> np.datetime_as_string(d, unit='s')
		array(['2002-10-27T04:30:00', '2002-10-27T05:30:00', '2002-10-27T06:30:00',
		       '2002-10-27T07:30:00'], dtype='<U38')
		
		'casting' can be used to specify whether precision can be changed
		
		>>> np.datetime_as_string(d, unit='h', casting='safe')
		Traceback (most recent call last):
		    ...
		TypeError: Cannot create a datetime string as units 'h' from a NumPy
		datetime with units 'm' according to the rule 'safe'
	**/
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		datetime_data(dtype, /)
		
		Get information about the step size of a date or time type.
		
		The returned tuple can be passed as the second argument of `numpy.datetime64` and
		`numpy.timedelta64`.
		
		Parameters
		----------
		dtype : dtype
		    The dtype object, which must be a `datetime64` or `timedelta64` type.
		
		Returns
		-------
		unit : str
		    The :ref:`datetime unit <arrays.dtypes.dateunits>` on which this dtype
		    is based.
		count : int
		    The number of base units in a step.
		
		Examples
		--------
		>>> dt_25s = np.dtype('timedelta64[25s]')
		>>> np.datetime_data(dt_25s)
		('s', 25)
		>>> np.array(10, dt_25s).astype('timedelta64[s]')
		array(250, dtype='timedelta64[s]')
		
		The result can be used to construct a datetime that uses the same units
		as a timedelta
		
		>>> np.datetime64('2010', np.datetime_data(dt_25s))
		numpy.datetime64('2010-01-01T00:00:00','25s')
	**/
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dragon4_positional(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dragon4_scientific(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determine if the given dtype is implied by the representation of its values.
		
		Parameters
		----------
		dtype : dtype
		    Data type
		
		Returns
		-------
		implied : bool
		    True if the dtype is implied by the representation of its values.
		
		Examples
		--------
		>>> np.core.arrayprint.dtype_is_implied(int)
		True
		>>> np.array([1, 2, 3], int)
		array([1, 2, 3])
		>>> np.core.arrayprint.dtype_is_implied(np.int8)
		False
		>>> np.array([1, 2, 3], np.int8)
		array([1, 2, 3], dtype=int8)
	**/
	static public function dtype_is_implied(dtype:Dynamic):Bool;
	/**
		Convert a dtype to a short form which evaluates to the same dtype.
		
		The intent is roughly that the following holds
		
		>>> from numpy import *
		>>> dt = np.int64([1, 2]).dtype
		>>> assert eval(dtype_short_repr(dt)) == dt
	**/
	static public function dtype_short_repr(dtype:Dynamic):Dynamic;
	/**
		Format a floating-point scalar as a decimal string in positional notation.
		
		Provides control over rounding, trimming and padding. Uses and assumes
		IEEE unbiased rounding. Uses the "Dragon4" algorithm.
		
		Parameters
		----------
		x : python float or numpy floating scalar
		    Value to format.
		precision : non-negative integer or None, optional
		    Maximum number of digits to print. May be None if `unique` is
		    `True`, but must be an integer if unique is `False`.
		unique : boolean, optional
		    If `True`, use a digit-generation strategy which gives the shortest
		    representation which uniquely identifies the floating-point number from
		    other values of the same type, by judicious rounding. If `precision`
		    is given fewer digits than necessary can be printed, or if `min_digits`
		    is given more can be printed, in which cases the last digit is rounded
		    with unbiased rounding.
		    If `False`, digits are generated as if printing an infinite-precision
		    value and stopping after `precision` digits, rounding the remaining
		    value with unbiased rounding
		fractional : boolean, optional
		    If `True`, the cutoffs of `precision` and `min_digits` refer to the
		    total number of digits after the decimal point, including leading
		    zeros.
		    If `False`, `precision` and `min_digits` refer to the total number of
		    significant digits, before or after the decimal point, ignoring leading
		    zeros.
		trim : one of 'k', '.', '0', '-', optional
		    Controls post-processing trimming of trailing digits, as follows:
		
		    * 'k' : keep trailing zeros, keep decimal point (no trimming)
		    * '.' : trim all trailing zeros, leave decimal point
		    * '0' : trim all but the zero before the decimal point. Insert the
		      zero if it is missing.
		    * '-' : trim trailing zeros and any trailing decimal point
		sign : boolean, optional
		    Whether to show the sign for positive values.
		pad_left : non-negative integer, optional
		    Pad the left side of the string with whitespace until at least that
		    many characters are to the left of the decimal point.
		pad_right : non-negative integer, optional
		    Pad the right side of the string with whitespace until at least that
		    many characters are to the right of the decimal point.
		min_digits : non-negative integer or None, optional
		    Minimum number of digits to print. Only has an effect if `unique=True`
		    in which case additional digits past those necessary to uniquely
		    identify the value may be printed, rounding the last additional digit.
		    
		    -- versionadded:: 1.21.0
		
		Returns
		-------
		rep : string
		    The string representation of the floating point value
		
		See Also
		--------
		format_float_scientific
		
		Examples
		--------
		>>> np.format_float_positional(np.float32(np.pi))
		'3.1415927'
		>>> np.format_float_positional(np.float16(np.pi))
		'3.14'
		>>> np.format_float_positional(np.float16(0.3))
		'0.3'
		>>> np.format_float_positional(np.float16(0.3), unique=False, precision=10)
		'0.3000488281'
	**/
	static public function format_float_positional(x:Dynamic, ?precision:Dynamic, ?unique:Dynamic, ?fractional:Dynamic, ?trim:Dynamic, ?sign:Dynamic, ?pad_left:Dynamic, ?pad_right:Dynamic, ?min_digits:Dynamic):String;
	/**
		Format a floating-point scalar as a decimal string in scientific notation.
		
		Provides control over rounding, trimming and padding. Uses and assumes
		IEEE unbiased rounding. Uses the "Dragon4" algorithm.
		
		Parameters
		----------
		x : python float or numpy floating scalar
		    Value to format.
		precision : non-negative integer or None, optional
		    Maximum number of digits to print. May be None if `unique` is
		    `True`, but must be an integer if unique is `False`.
		unique : boolean, optional
		    If `True`, use a digit-generation strategy which gives the shortest
		    representation which uniquely identifies the floating-point number from
		    other values of the same type, by judicious rounding. If `precision`
		    is given fewer digits than necessary can be printed. If `min_digits`
		    is given more can be printed, in which cases the last digit is rounded
		    with unbiased rounding.
		    If `False`, digits are generated as if printing an infinite-precision
		    value and stopping after `precision` digits, rounding the remaining
		    value with unbiased rounding
		trim : one of 'k', '.', '0', '-', optional
		    Controls post-processing trimming of trailing digits, as follows:
		
		    * 'k' : keep trailing zeros, keep decimal point (no trimming)
		    * '.' : trim all trailing zeros, leave decimal point
		    * '0' : trim all but the zero before the decimal point. Insert the
		      zero if it is missing.
		    * '-' : trim trailing zeros and any trailing decimal point
		sign : boolean, optional
		    Whether to show the sign for positive values.
		pad_left : non-negative integer, optional
		    Pad the left side of the string with whitespace until at least that
		    many characters are to the left of the decimal point.
		exp_digits : non-negative integer, optional
		    Pad the exponent with zeros until it contains at least this many digits.
		    If omitted, the exponent will be at least 2 digits.
		min_digits : non-negative integer or None, optional
		    Minimum number of digits to print. This only has an effect for
		    `unique=True`. In that case more digits than necessary to uniquely
		    identify the value may be printed and rounded unbiased.
		
		    -- versionadded:: 1.21.0
		    
		Returns
		-------
		rep : string
		    The string representation of the floating point value
		
		See Also
		--------
		format_float_positional
		
		Examples
		--------
		>>> np.format_float_scientific(np.float32(np.pi))
		'3.1415927e+00'
		>>> s = np.float32(1.23e24)
		>>> np.format_float_scientific(s, unique=False, precision=15)
		'1.230000071797338e+24'
		>>> np.format_float_scientific(s, exp_digits=4)
		'1.23e+0024'
	**/
	static public function format_float_scientific(x:Dynamic, ?precision:Dynamic, ?unique:Dynamic, ?trim:Dynamic, ?sign:Dynamic, ?pad_left:Dynamic, ?exp_digits:Dynamic, ?min_digits:Dynamic):String;
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
		      - sign : str
		
		    For a full description of these options, see `set_printoptions`.
		
		See Also
		--------
		set_printoptions, printoptions, set_string_function
	**/
	static public function get_printoptions():python.Dict<Dynamic, Dynamic>;
	/**
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
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
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		y : bool (scalar) or boolean ndarray
		    True where ``x`` is positive or negative infinity, false otherwise.
		    This is a scalar if `x` is a scalar.
		
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
		array([ True,  True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnat(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaT (not a time) and return result as a boolean array.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		x : array_like
		    Input array with datetime or timedelta data type.
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
		    True where ``x`` is NaT, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isnan, isinf, isneginf, isposinf, isfinite
		
		Examples
		--------
		>>> np.isnat(np.datetime64("NaT"))
		True
		>>> np.isnat(np.datetime64("2016-01-01"))
		False
		>>> np.isnat(np.array(["NaT", "2016-01-01"], dtype="datetime64[ns]"))
		array([ True, False])
	**/
	static public function isnat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Context manager for setting print options.
		
		Set print options for the scope of the `with` block, and restore the old
		options at the end. See `set_printoptions` for the full description of
		available options.
		
		Examples
		--------
		
		>>> from numpy.testing import assert_equal
		>>> with np.printoptions(precision=2):
		...     np.array([2.0]) / 3
		array([0.67])
		
		The `as`-clause of the `with`-statement gives the current print options:
		
		>>> with np.printoptions(precision=2) as opts:
		...      assert_equal(opts, np.get_printoptions())
		
		See Also
		--------
		set_printoptions, get_printoptions
	**/
	static public function printoptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function repr_format(x:Dynamic):Dynamic;
	static public function set_legacy_print_mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Set printing options.
		
		These options determine the way floating point numbers, arrays and
		other NumPy objects are displayed.
		
		Parameters
		----------
		precision : int or None, optional
		    Number of digits of precision for floating point output (default 8).
		    May be None if `floatmode` is not `fixed`, to print as many digits as
		    necessary to uniquely specify the value.
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr (default 1000).
		    To always use the full repr without summarization, pass `sys.maxsize`.
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension (default 3).
		linewidth : int, optional
		    The number of characters per line for the purpose of inserting
		    line breaks (default 75).
		suppress : bool, optional
		    If True, always print floating point numbers using fixed point
		    notation, in which case numbers equal to zero in the current precision
		    will print as zero.  If False, then scientific notation is used when
		    absolute value of the smallest number is < 1e-4 or the ratio of the
		    maximum absolute value to the minimum is > 1e3. The default is False.
		nanstr : str, optional
		    String representation of floating point not-a-number (default nan).
		infstr : str, optional
		    String representation of floating point infinity (default inf).
		sign : string, either '-', '+', or ' ', optional
		    Controls printing of the sign of floating-point types. If '+', always
		    print the sign of positive values. If ' ', always prints a space
		    (whitespace character) in the sign position of positive values.  If
		    '-', omit the sign character of positive values. (default '-')
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are:
		
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
		
		    Other keys that can be used to set a group of types at once are:
		
		    - 'all' : sets all types
		    - 'int_kind' : sets 'int'
		    - 'float_kind' : sets 'float' and 'longfloat'
		    - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		    - 'str_kind' : sets 'numpystr'
		floatmode : str, optional
		    Controls the interpretation of the `precision` option for
		    floating-point types. Can take the following values
		    (default maxprec_equal):
		
		    * 'fixed': Always print exactly `precision` fractional digits,
		            even if this would print more or fewer digits than
		            necessary to specify the value uniquely.
		    * 'unique': Print the minimum number of fractional digits necessary
		            to represent each value uniquely. Different elements may
		            have a different number of digits. The value of the
		            `precision` option is ignored.
		    * 'maxprec': Print at most `precision` fractional digits, but if
		            an element can be uniquely represented with fewer digits
		            only print it with that many.
		    * 'maxprec_equal': Print at most `precision` fractional digits,
		            but if every element in the array can be uniquely
		            represented with an equal number of fewer digits, use that
		            many digits for all elements.
		legacy : string or `False`, optional
		    If set to the string `'1.13'` enables 1.13 legacy printing mode. This
		    approximates numpy 1.13 print output by including a space in the sign
		    position of floats and different behavior for 0d arrays. This also
		    enables 1.21 legacy printing mode (described below).
		
		    If set to the string `'1.21'` enables 1.21 legacy printing mode. This
		    approximates numpy 1.21 print output of complex structured dtypes
		    by not inserting spaces after commas that separate fields and after
		    colons.
		
		    If set to `False`, disables legacy mode.
		
		    Unrecognized strings will be ignored with a warning for forward
		    compatibility.
		
		    .. versionadded:: 1.14.0
		    .. versionchanged:: 1.22.0
		
		See Also
		--------
		get_printoptions, printoptions, set_string_function, array2string
		
		Notes
		-----
		`formatter` is always reset with a call to `set_printoptions`.
		
		Use `printoptions` as a context manager to set the values temporarily.
		
		Examples
		--------
		Floating point precision can be set:
		
		>>> np.set_printoptions(precision=4)
		>>> np.array([1.123456789])
		[1.1235]
		
		Long arrays can be summarised:
		
		>>> np.set_printoptions(threshold=5)
		>>> np.arange(10)
		array([0, 1, 2, ..., 7, 8, 9])
		
		Small results can be suppressed:
		
		>>> eps = np.finfo(float).eps
		>>> x = np.arange(4.)
		>>> x**2 - (x + eps)**2
		array([-4.9304e-32, -4.4409e-16,  0.0000e+00,  0.0000e+00])
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
		
		>>> np.set_printoptions(edgeitems=3, infstr='inf',
		... linewidth=75, nanstr='nan', precision=8,
		... suppress=False, threshold=1000, formatter=None)
		
		Also to temporarily override options, use `printoptions` as a context manager:
		
		>>> with np.printoptions(precision=2, suppress=True, threshold=5):
		...     np.linspace(0, 10, 10)
		array([ 0.  ,  1.11,  2.22, ...,  7.78,  8.89, 10.  ])
	**/
	static public function set_printoptions(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?suppress:Dynamic, ?nanstr:Dynamic, ?infstr:Dynamic, ?formatter:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?legacy:Dynamic):Dynamic;
	/**
		Set a Python function to be used when pretty printing arrays.
		
		Parameters
		----------
		f : function or None
		    Function to be used to pretty print arrays. The function should expect
		    a single array argument and return a string of the representation of
		    the array. If None, the function is reset to the default NumPy function
		    to print arrays.
		repr : bool, optional
		    If True (default), the function for pretty printing (``__repr__``)
		    is set, if False the function that returns the default string
		    representation (``__str__``) is set.
		
		See Also
		--------
		set_printoptions, get_printoptions
		
		Examples
		--------
		>>> def pprint(arr):
		...     return 'HA! - What are you going to do now?'
		...
		>>> np.set_string_function(pprint)
		>>> a = np.arange(10)
		>>> a
		HA! - What are you going to do now?
		>>> _ = a
		>>> # [0 1 2 3 4 5 6 7 8 9]
		
		We can reset the function to the default:
		
		>>> np.set_string_function(None)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		`repr` affects either pretty printing or normal string representation.
		Note that ``__repr__`` is still affected by setting ``__str__``
		because the width of each array element in the returned string becomes
		equal to the length of the result of ``__str__()``.
		
		>>> x = np.arange(4)
		>>> np.set_string_function(lambda x:'random', repr=False)
		>>> x.__str__()
		'random'
		>>> x.__repr__()
		'array([0, 1, 2, 3])'
	**/
	static public function set_string_function(f:Dynamic, ?repr:Dynamic):Dynamic;
	static public function str_format(x:Dynamic):Dynamic;
}