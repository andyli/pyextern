/* This file is generated, do not edit! */
package pandas.io.tests.test_json;
@:pythonImport("pandas.io.tests.test_json.test_ujson") extern class Test_ujson {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _clean_dict(d:Dynamic):Dynamic;
	static public function _skip_if_python_ver(skip_major:Dynamic, ?skip_minor:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two items are not equal up to significant
		digits.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		Given two numbers, check that they are approximately equal.
		Approximately equal is defined as the number of significant digits
		that agree.
		
		Parameters
		----------
		actual : scalar
		    The object to check.
		desired : scalar
		    The expected object.
		significant : int, optional
		    Desired precision, default is 7.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		  If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		>>> np.testing.assert_approx_equal(0.12345677777777e-20, 0.1234567e-20)
		>>> np.testing.assert_approx_equal(0.12345670e-20, 0.12345671e-20,
		                                   significant=8)
		>>> np.testing.assert_approx_equal(0.12345670e-20, 0.12345672e-20,
		                                   significant=8)
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal to 8 significant digits:
		 ACTUAL: 1.234567e-021
		 DESIRED: 1.2345672000000001e-021
		
		the evaluated condition that raises the exception is
		
		>>> abs(0.12345670e-20/1e-21 - 0.12345672e-20/1e-21) >= 10**-(8-1)
		True
	**/
	static public function assert_approx_equal(actual:Dynamic, desired:Dynamic, ?significant:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Compare two arrays relatively to their spacing.
		
		This is a relatively robust method to compare two arrays whose amplitude
		is variable.
		
		Parameters
		----------
		x, y : array_like
		    Input arrays.
		nulp : int, optional
		    The maximum number of unit in the last place for tolerance (see Notes).
		    Default is 1.
		
		Returns
		-------
		None
		
		Raises
		------
		AssertionError
		    If the spacing between `x` and `y` for one or more elements is larger
		    than `nulp`.
		
		See Also
		--------
		assert_array_max_ulp : Check that all items of arrays differ in at most
		    N Units in the Last Place.
		spacing : Return the distance between x and the nearest adjacent number.
		
		Notes
		-----
		An assertion is raised if the following condition is not met::
		
		    abs(x - y) <= nulps * spacing(maximum(abs(x), abs(y)))
		
		Examples
		--------
		>>> x = np.array([1., 1e-10, 1e-20])
		>>> eps = np.finfo(x.dtype).eps
		>>> np.testing.assert_array_almost_equal_nulp(x, x*eps/2 + x)
		
		>>> np.testing.assert_array_almost_equal_nulp(x, x*eps + x)
		Traceback (most recent call last):
		  ...
		AssertionError: X and Y are not equal to 1 ULP (max is 2)
	**/
	static public function assert_array_almost_equal_nulp(x:Dynamic, y:Dynamic, ?nulp:Dynamic):Dynamic;
	/**
		Serialize ``obj`` to a JSON formatted ``str``.
		
		If ``skipkeys`` is true then ``dict`` keys that are not basic types
		(``str``, ``int``, ``float``, ``bool``, ``None``) will be skipped
		instead of raising a ``TypeError``.
		
		If ``ensure_ascii`` is false, then the return value can contain non-ASCII
		characters if they appear in strings contained in ``obj``. Otherwise, all
		such characters are escaped in JSON strings.
		
		If ``check_circular`` is false, then the circular reference check
		for container types will be skipped and a circular reference will
		result in an ``OverflowError`` (or worse).
		
		If ``allow_nan`` is false, then it will be a ``ValueError`` to
		serialize out of range ``float`` values (``nan``, ``inf``, ``-inf``) in
		strict compliance of the JSON specification, instead of using the
		JavaScript equivalents (``NaN``, ``Infinity``, ``-Infinity``).
		
		If ``indent`` is a non-negative integer, then JSON array elements and
		object members will be pretty-printed with that indent level. An indent
		level of 0 will only insert newlines. ``None`` is the most compact
		representation.
		
		If specified, ``separators`` should be an ``(item_separator, key_separator)``
		tuple.  The default is ``(', ', ': ')`` if *indent* is ``None`` and
		``(',', ': ')`` otherwise.  To get the most compact JSON representation,
		you should specify ``(',', ':')`` to eliminate whitespace.
		
		``default(obj)`` is a function that should return a serializable version
		of obj or raise TypeError. The default simply raises TypeError.
		
		If *sort_keys* is ``True`` (default: ``False``), then the output of
		dictionaries will be sorted by key.
		
		To use a custom ``JSONEncoder`` subclass (e.g. one that overrides the
		``.default()`` method to serialize additional types), specify it with
		the ``cls`` kwarg; otherwise ``JSONEncoder`` is used.
	**/
	static public function json_unicode(obj:Dynamic, ?skipkeys:Dynamic, ?ensure_ascii:Dynamic, ?check_circular:Dynamic, ?allow_nan:Dynamic, ?cls:Dynamic, ?indent:Dynamic, ?separators:Dynamic, ?_default:Dynamic, ?sort_keys:Dynamic, kw:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}