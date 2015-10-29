/* This file is generated, do not edit! */
package pandas.tests.test_frame;
@:pythonImport("pandas.tests.test_frame", "TestDataFrame") extern class TestDataFrame {
	/**
		Call self as a function.
	**/
	public function __call__(args:Dynamic, kwds:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create an instance of the class that will use the named test
		method when executed. Raises a ValueError if the instance does
		not have a method with the specified name.
	**/
	public function __init__(?methodName:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function _addExpectedFailure(result:Dynamic, exc_info:Dynamic):Dynamic;
	public function _addSkip(result:Dynamic, test_case:Dynamic, reason:Dynamic):Dynamic;
	public function _addUnexpectedSuccess(result:Dynamic):Dynamic;
	/**
		The default assertEqual implementation, not type specific.
	**/
	public function _baseAssertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	public function _check_align(a:Dynamic, b:Dynamic, axis:Dynamic, fill_axis:Dynamic, how:Dynamic, method:Dynamic, ?limit:Dynamic):Dynamic;
	public function _check_align_fill(kind:Dynamic, meth:Dynamic, ax:Dynamic, fax:Dynamic):Dynamic;
	/**
		mat: 2d matrix with shpae (3, 2) to input. empty - makes sized objects
	**/
	public function _check_basic_constructor(empty:Dynamic):Dynamic;
	public function _check_bool_op(name:Dynamic, alternative:Dynamic, ?frame:Dynamic, ?has_skipna:Dynamic, ?has_bool_only:Dynamic):Dynamic;
	public function _check_method(?method:Dynamic, ?check_minp:Dynamic):Dynamic;
	public function _check_stat_op(name:Dynamic, alternative:Dynamic, ?frame:Dynamic, ?has_skipna:Dynamic, ?has_numeric_only:Dynamic, ?check_dtype:Dynamic, ?check_dates:Dynamic, ?check_less_precise:Dynamic):Dynamic;
	static public var _classSetupFailed : Dynamic;
	public function _deprecate():Dynamic;
	static public var _diffThreshold : Dynamic;
	public function _feedErrorsToResult(result:Dynamic, errors:Dynamic):Dynamic;
	/**
		Honour the longMessage attribute when generating failure messages.
		If longMessage is False this means:
		* Use only an explicit message if it is provided
		* Otherwise use the standard message for the assert
		
		If longMessage is True:
		* Use the standard message
		* If an explicit message is provided, plus ' : ' and the explicit message
	**/
	public function _formatMessage(msg:Dynamic, standardMsg:Dynamic):Dynamic;
	/**
		Get a detailed comparison function for the types of the two args.
		
		Returns: A callable accepting (first, second, msg=None) that will
		raise a failure exception if first != second with a useful human
		readable error message for those types.
	**/
	public function _getAssertEqualityFunc(first:Dynamic, second:Dynamic):Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	static public function _test_op(df:Dynamic, op:Dynamic):Dynamic;
	public function _truncateMessage(message:Dynamic, diff:Dynamic):Dynamic;
	/**
		Add a function, with arguments, to be called when the test is
		completed. Functions added are called on a LIFO basis and are
		called after tearDown on test failure or success.
		
		Cleanup items are called even if setUp fails (unlike tearDown).
	**/
	public function addCleanup(_function:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Add a type specific assertEqual style function to compare a type.
		
		This method is for use by TestCase subclasses that need to register
		their own type equality functions to provide nicer error messages.
		
		Args:
		    typeobj: The data type to call this function on when both values
		            are of the same type in assertEqual().
		    function: The callable taking two arguments and an optional
		            msg= argument that raises self.failureException with a
		            useful error message when the two arguments are not equal.
	**/
	public function addTypeEqualityFunc(typeobj:Dynamic, _function:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		between the two objects is more than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most signficant digit).
		
		If the two objects compare equal then they will automatically
		compare almost equal.
	**/
	public function assertAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	public function assertAlmostEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		An unordered sequence comparison asserting that the same elements,
		regardless of order.  If the same element occurs more than once,
		it verifies that the elements occur the same number of times.
		
		    self.assertEqual(Counter(list(first)),
		                     Counter(list(second)))
		
		 Example:
		    - [0, 1, 1] and [1, 0, 1] compare equal.
		    - [0, 0, 1] and [0, 1] compare unequal.
	**/
	public function assertCountEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks whether dictionary is a superset of subset.
	**/
	public function assertDictContainsSubset(subset:Dynamic, dictionary:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertDictEqual(d1:Dynamic, d2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	public function assertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Check that the expression is false.
	**/
	public function assertFalse(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a > b), but with a nicer default message.
	**/
	public function assertGreater(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a >= b), but with a nicer default message.
	**/
	public function assertGreaterEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is in 'second'
	**/
	static public function assertIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is 'second'
	**/
	static public function assertIs(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is None
	**/
	static public function assertIsNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is not 'second'
	**/
	static public function assertIsNot(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is not None
	**/
	static public function assertIsNotNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a < b), but with a nicer default message.
	**/
	public function assertLess(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a <= b), but with a nicer default message.
	**/
	public function assertLessEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		A list-specific equality assertion.
		
		Args:
		    list1: The first list to compare.
		    list2: The second list to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertListEqual(list1:Dynamic, list2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail unless a log message of level *level* or higher is emitted
		on *logger_name* or its children.  If omitted, *level* defaults to
		INFO and *logger* defaults to the root logger.
		
		This method must be used as a context manager, and will yield
		a recording object with two attributes: `output` and `records`.
		At the end of the context manager, the `output` attribute will
		be a list of the matching formatted log messages and the
		`records` attribute will be a list of the corresponding LogRecord
		objects.
		
		Example::
		
		    with self.assertLogs('foo', level='INFO') as cm:
		        logging.getLogger('foo').info('first message')
		        logging.getLogger('foo.bar').error('second message')
		    self.assertEqual(cm.output, ['INFO:foo:first message',
		                                 'ERROR:foo.bar:second message'])
	**/
	public function assertLogs(?logger:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Assert that two multi-line strings are equal.
	**/
	public function assertMultiLineEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		between the two objects is less than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most signficant digit).
		
		Objects that are equal automatically fail.
	**/
	public function assertNotAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	public function assertNotAlmostEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by the '!='
		operator.
	**/
	public function assertNotEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertNotEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Checks that 'first' is not in 'second'
	**/
	static public function assertNotIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is not an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertNotIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail the test if the text matches the regular expression.
	**/
	public function assertNotRegex(text:Dynamic, unexpected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		assertRaises that is usable as context manager or in a with statement
		
		Exceptions that don't match the given Exception type fall through::
		
		>>> with assertRaises(ValueError):
		...     raise TypeError("banana")
		...
		Traceback (most recent call last):
		    ...
		TypeError: banana
		
		If it raises the given Exception type, the test passes
		>>> with assertRaises(KeyError):
		...     dct = dict()
		...     dct["apple"]
		
		If the expected error doesn't occur, it raises an error.
		>>> with assertRaises(KeyError):
		...     dct = {'apple':True}
		...     dct["apple"]
		Traceback (most recent call last):
		    ...
		AssertionError: KeyError not raised.
		
		In addition to using it as a contextmanager, you can also use it as a
		function, just like the normal assertRaises
		
		>>> assertRaises(TypeError, ",".join, [1, 3, 5]);
	**/
	static public function assertRaises(_exception:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Asserts that the message in a raised exception matches a regex.
		
		Args:
		    expected_exception: Exception class expected to be raised.
		    expected_regex: Regex (re pattern object or string) expected
		            to be found in error message.
		    args: Function to be called and extra positional args.
		    kwargs: Extra kwargs.
		    msg: Optional message used in case of failure. Can only be used
		            when assertRaisesRegex is used as a context manager.
	**/
	public function assertRaisesRegex(expected_exception:Dynamic, expected_regex:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Port of assertRaisesRegexp from unittest in Python 2.7 - used in with statement.
		
		Explanation from standard library:
		    Like assertRaises() but also tests that regexp matches on the string
		    representation of the raised exception. regexp may be a regular expression
		    object or a string containing a regular expression suitable for use by
		    re.search().
		
		You can pass either a regular expression or a compiled regular expression object.
		>>> assertRaisesRegexp(ValueError, 'invalid literal for.*XYZ',
		...                                int, 'XYZ');
		>>> import re
		>>> assertRaisesRegexp(ValueError, re.compile('literal'), int, 'XYZ');
		
		If an exception of a different type is raised, it bubbles up.
		
		>>> assertRaisesRegexp(TypeError, 'literal', int, 'XYZ');
		Traceback (most recent call last):
		    ...
		ValueError: invalid literal for int() with base 10: 'XYZ'
		>>> dct = dict()
		>>> assertRaisesRegexp(KeyError, 'pear', dct.__getitem__, 'apple');
		Traceback (most recent call last):
		    ...
		AssertionError: "pear" does not match "'apple'"
		
		You can also use this in a with statement.
		>>> with assertRaisesRegexp(TypeError, 'unsupported operand type\(s\)'):
		...     1 + {}
		>>> with assertRaisesRegexp(TypeError, 'banana'):
		...     'apple'[0] = 'b'
		Traceback (most recent call last):
		    ...
		AssertionError: "banana" does not match "'str' object does not support item assignment"
	**/
	static public function assertRaisesRegexp(_exception:Dynamic, _regexp:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fail the test unless the text matches the regular expression.
	**/
	public function assertRegex(text:Dynamic, expected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertRegexpMatches(kwargs:Dynamic):Dynamic;
	/**
		An equality assertion for ordered sequences (like lists and tuples).
		
		For the purposes of this function, a valid ordered sequence type is one
		which can be indexed, has a length, and has an equality operator.
		
		Args:
		    seq1: The first sequence to compare.
		    seq2: The second sequence to compare.
		    seq_type: The expected datatype of the sequences, or None if no
		            datatype should be enforced.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertSequenceEqual(seq1:Dynamic, seq2:Dynamic, ?msg:Dynamic, ?seq_type:Dynamic):Dynamic;
	/**
		A set-specific equality assertion.
		
		Args:
		    set1: The first set to compare.
		    set2: The second set to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
		
		assertSetEqual uses ducktyping to support different types of sets, and
		is optimized for sets specifically (parameters must support a
		difference method).
	**/
	public function assertSetEqual(set1:Dynamic, set2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that the expression is true.
	**/
	public function assertTrue(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		A tuple-specific equality assertion.
		
		Args:
		    tuple1: The first tuple to compare.
		    tuple2: The second tuple to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertTupleEqual(tuple1:Dynamic, tuple2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail unless a warning of class warnClass is triggered
		by the callable when invoked with specified positional and
		keyword arguments.  If a different type of warning is
		triggered, it will not be handled: depending on the other
		warning filtering rules in effect, it might be silenced, printed
		out, or raised as an exception.
		
		If called with the callable and arguments omitted, will return a
		context object used like this::
		
		     with self.assertWarns(SomeWarning):
		         do_something()
		
		An optional keyword argument 'msg' can be provided when assertWarns
		is used as a context object.
		
		The context manager keeps a reference to the first matching
		warning as the 'warning' attribute; similarly, the 'filename'
		and 'lineno' attributes give you information about the line
		of Python code from which the warning was triggered.
		This allows you to inspect the warning after the assertion::
		
		    with self.assertWarns(SomeWarning) as cm:
		        do_something()
		    the_warning = cm.warning
		    self.assertEqual(the_warning.some_attribute, 147)
	**/
	public function assertWarns(expected_warning:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Asserts that the message in a triggered warning matches a regexp.
		Basic functioning is similar to assertWarns() with the addition
		that only warnings whose messages also match the regular expression
		are considered successful matches.
		
		Args:
		    expected_warning: Warning class expected to be triggered.
		    expected_regex: Regex (re pattern object or string) expected
		            to be found in error message.
		    args: Function to be called and extra positional args.
		    kwargs: Extra kwargs.
		    msg: Optional message used in case of failure. Can only be used
		            when assertWarnsRegex is used as a context manager.
	**/
	public function assertWarnsRegex(expected_warning:Dynamic, expected_regex:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function assert_(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		checks attributes are equal. Both objects must have attribute.
		
		Parameters
		----------
		attr : str
		    Attribute name being compared.
		left : object
		right : object
		obj : str, default 'Attributes'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_attr_equal(attr:Dynamic, left:Dynamic, right:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_categorical_equal(res:Dynamic, exp:Dynamic):Dynamic;
	static public function assert_contains_all(iterable:Dynamic, dic:Dynamic):Dynamic;
	/**
		iter1, iter2: iterables that produce elements comparable with assert_almost_equal
		
		Checks that the elements are equal, but not the same object. (Does not
		check that items in sequences are also not the same object)
	**/
	static public function assert_copy(iter1:Dynamic, iter2:Dynamic, eql_kwargs:Dynamic):Dynamic;
	/**
		asserts that a equals b, like nose's assert_equal, but allows custom message to start.
		Passes a and b to format string as well. So you can use '{0}' and '{1}' to display a and b.
		
		Examples
		--------
		>>> assert_equal(2, 2, "apples")
		>>> assert_equal(5.2, 1.2, "{0} was really a dead parrot")
		Traceback (most recent call last):
		    ...
		AssertionError: 5.2 was really a dead parrot: 5.2 != 1.2
	**/
	static public function assert_equal(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that left and right DataFrame are equal.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		check_dtype : bool, default True
		    Whether to check the DataFrame dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_column_type : bool, default False
		    Whether to check the columns class, dtype and inferred_type are identical.
		check_frame_type : bool, default False
		    Whether to check the DataFrame class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_names : bool, default True
		    Whether to check the Index names attribute.
		by_blocks : bool, default False
		    Specify how to compare internal data. If False, compare by columns.
		    If True, compare by blocks.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'DataFrame'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Check that left and right Index are equal.
		
		Parameters
		----------
		left : Index
		right : Index
		exact : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_names : bool, default True
		    Whether to check the names attribute.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default True
		    Whether to compare number exactly.
		obj : str, default 'Index'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_index_equal(left:Dynamic, right:Dynamic, ?exact:Dynamic, ?check_names:Dynamic, ?check_less_precise:Dynamic, ?check_exact:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_isinstance(obj:Dynamic, class_type_or_tuple:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'np_array' is equivalent to 'assert_equal'.
		
		This is similar to ``numpy.testing.assert_array_equal``, but can
		check equality including ``np.nan``. Two numpy arrays are regarded as
		equivalent if the arrays have equal non-NaN elements,
		and `np.nan` in corresponding locations.
	**/
	static public function assert_numpy_array_equal(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic, ?err_msg:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_panelnd_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	/**
		Context manager for running code that expects to raise (or not raise)
		warnings.  Checks that code raises the expected warning and only the
		expected warning. Pass ``False`` or ``None`` to check that it does *not*
		raise a warning. Defaults to ``exception.Warning``, baseclass of all
		Warnings. (basically a wrapper around ``warnings.catch_warnings``).
		
		>>> import warnings
		>>> with assert_produces_warning():
		...     warnings.warn(UserWarning())
		...
		>>> with assert_produces_warning(False):
		...     warnings.warn(RuntimeWarning())
		...
		Traceback (most recent call last):
		    ...
		AssertionError: Caused unexpected warning(s): ['RuntimeWarning'].
		>>> with assert_produces_warning(UserWarning):
		...     warnings.warn(RuntimeWarning())
		Traceback (most recent call last):
		    ...
		AssertionError: Did not see expected warning of class 'UserWarning'.
		
		..warn:: This is *not* thread-safe.
	**/
	static public function assert_produces_warning(?expected_warning:Dynamic, ?filter_level:Dynamic, ?clear:Dynamic, ?check_stacklevel:Dynamic):Dynamic;
	/**
		Check that left and right Series are equal.
		
		Parameters
		----------
		left : Series
		right : Series
		check_dtype : bool, default True
		    Whether to check the Series dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_series_type : bool, default False
		    Whether to check the Series class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_names : bool, default True
		    Whether to check the Series and Index names attribute.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'Series'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_series_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_series_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	public function countTestCases():Dynamic;
	/**
		Run the test without collecting errors in a TestResult
	**/
	public function debug():Dynamic;
	public function defaultTestResult():Dynamic;
	/**
		Execute all cleanup functions. Normally called for you after
		tearDown.
	**/
	public function doCleanups():Dynamic;
	/**
		Fail immediately, with the given message.
	**/
	public function fail(?msg:Dynamic):Dynamic;
	public function failIf(kwargs:Dynamic):Dynamic;
	public function failIfAlmostEqual(kwargs:Dynamic):Dynamic;
	public function failIfEqual(kwargs:Dynamic):Dynamic;
	public function failUnless(kwargs:Dynamic):Dynamic;
	public function failUnlessAlmostEqual(kwargs:Dynamic):Dynamic;
	public function failUnlessEqual(kwargs:Dynamic):Dynamic;
	public function failUnlessRaises(kwargs:Dynamic):Dynamic;
	/**
		Assertion failed.
	**/
	static public function failureException(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function id():Dynamic;
	/**
		Two-dimensional size-mutable, potentially heterogeneous tabular data
		structure with labeled axes (rows and columns). Arithmetic operations
		align on both row and column labels. Can be thought of as a dict-like
		container for Series objects. The primary pandas data structure
		
		Parameters
		----------
		data : numpy ndarray (structured or homogeneous), dict, or DataFrame
		    Dict can contain Series, arrays, constants, or list-like objects
		index : Index or array-like
		    Index to use for resulting frame. Will default to np.arange(n) if
		    no indexing information part of input data and no index provided
		columns : Index or array-like
		    Column labels to use for resulting frame. Will default to
		    np.arange(n) if no column labels are provided
		dtype : dtype, default None
		    Data type to force, otherwise infer
		copy : boolean, default False
		    Copy data from inputs. Only affects DataFrame / 2d ndarray input
		
		Examples
		--------
		>>> d = {'col1': ts1, 'col2': ts2}
		>>> df = DataFrame(data=d, index=index)
		>>> df2 = DataFrame(np.random.randn(10, 5))
		>>> df3 = DataFrame(np.random.randn(10, 5),
		...                 columns=['a', 'b', 'c', 'd', 'e'])
		
		See also
		--------
		DataFrame.from_records : constructor from tuples, also record arrays
		DataFrame.from_dict : from dicts of Series, arrays, or dicts
		DataFrame.from_items : from sequence of (key, value) pairs
		pandas.read_csv, pandas.read_table, pandas.read_clipboard
	**/
	static public function klass(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var longMessage : Dynamic;
	static public var maxDiff : Dynamic;
	public function reset_display_options():Dynamic;
	public function round_trip_pickle(obj:Dynamic, ?path:Dynamic):Dynamic;
	public function run(?result:Dynamic):Dynamic;
	/**
		Hook method for setting up the test fixture before exercising it.
	**/
	public function setUp():Dynamic;
	/**
		Hook method for setting up class fixture before running tests in the class.
	**/
	static public function setUpClass():Dynamic;
	/**
		Returns a one-line description of the test, or None if no
		description has been provided.
		
		The default implementation of this method returns the first line of
		the specified test method's docstring.
	**/
	public function shortDescription():Dynamic;
	/**
		Skip this test.
	**/
	public function skipTest(reason:Dynamic):Dynamic;
	/**
		Return a context manager that will return the enclosed block
		of code in a subtest identified by the optional message and
		keyword parameters.  A failure in the subtest marks the test
		case as failed but resumes execution at the end of the enclosed
		block, allowing further test code to be executed.
	**/
	public function subTest(?msg:Dynamic, params:Dynamic):Dynamic;
	/**
		Hook method for deconstructing the test fixture after testing it.
	**/
	public function tearDown():Dynamic;
	/**
		Hook method for deconstructing the class fixture after running all tests in the class.
	**/
	static public function tearDownClass():Dynamic;
	public function test_add_prefix_suffix():Dynamic;
	public function test_align():Dynamic;
	public function test_align_fill_method_inner():Dynamic;
	public function test_align_fill_method_left():Dynamic;
	public function test_align_fill_method_outer():Dynamic;
	public function test_align_fill_method_right():Dynamic;
	public function test_align_int_fill_bug():Dynamic;
	public function test_align_multiindex():Dynamic;
	public function test_any_all():Dynamic;
	public function test_append_dtypes():Dynamic;
	public function test_append_empty_dataframe():Dynamic;
	public function test_append_list_of_series_dicts():Dynamic;
	public function test_append_series_dict():Dynamic;
	public function test_apply():Dynamic;
	public function test_apply_attach_name():Dynamic;
	public function test_apply_axis1():Dynamic;
	public function test_apply_broadcast():Dynamic;
	public function test_apply_bug():Dynamic;
	public function test_apply_convert_objects():Dynamic;
	public function test_apply_dict():Dynamic;
	public function test_apply_differently_indexed():Dynamic;
	public function test_apply_empty():Dynamic;
	public function test_apply_empty_infer_type():Dynamic;
	public function test_apply_ignore_failures():Dynamic;
	public function test_apply_mixed_datetimelike():Dynamic;
	public function test_apply_mixed_dtype_corner():Dynamic;
	public function test_apply_modify_traceback():Dynamic;
	public function test_apply_multi_index():Dynamic;
	public function test_apply_raw():Dynamic;
	public function test_apply_reduce_Series():Dynamic;
	public function test_apply_standard_nonunique():Dynamic;
	public function test_apply_with_args_kwds():Dynamic;
	public function test_apply_yield_list():Dynamic;
	public function test_applymap():Dynamic;
	public function test_arith_flex_frame():Dynamic;
	public function test_arith_flex_series():Dynamic;
	public function test_arith_getitem_commute():Dynamic;
	public function test_arith_mixed():Dynamic;
	public function test_arith_non_pandas_object():Dynamic;
	public function test_array_interface():Dynamic;
	public function test_as_matrix():Dynamic;
	public function test_as_matrix_consolidate():Dynamic;
	public function test_as_matrix_duplicates():Dynamic;
	public function test_as_matrix_lcd():Dynamic;
	public function test_as_matrix_numeric_cols():Dynamic;
	public function test_asfreq():Dynamic;
	public function test_asfreq_datetimeindex():Dynamic;
	public function test_assign():Dynamic;
	public function test_assign_alphabetical():Dynamic;
	public function test_assign_bad():Dynamic;
	public function test_assign_columns():Dynamic;
	public function test_assign_multiple():Dynamic;
	public function test_astype():Dynamic;
	public function test_astype_cast_nan_int():Dynamic;
	public function test_astype_str():Dynamic;
	public function test_astype_with_exclude_string():Dynamic;
	public function test_astype_with_view():Dynamic;
	public function test_at_time_between_time_datetimeindex():Dynamic;
	public function test_axis_aliases():Dynamic;
	public function test_bfill():Dynamic;
	public function test_binary_ops_align():Dynamic;
	public function test_bool_describe_in_mixed_frame():Dynamic;
	public function test_bool_flex_frame():Dynamic;
	public function test_boolean_comparison():Dynamic;
	public function test_boolean_index_empty_corner():Dynamic;
	public function test_boolean_indexing():Dynamic;
	public function test_boolean_indexing_mixed():Dynamic;
	public function test_boolean_set_uncons():Dynamic;
	public function test_bytestring_with_unicode():Dynamic;
	public function test_cast_internals():Dynamic;
	public function test_clip():Dynamic;
	public function test_clip_against_frame():Dynamic;
	public function test_clip_against_series():Dynamic;
	public function test_column_contains_typeerror():Dynamic;
	public function test_column_dups2():Dynamic;
	public function test_column_dups_indexing():Dynamic;
	public function test_column_dups_indexing2():Dynamic;
	public function test_column_dups_operations():Dynamic;
	public function test_columns_with_dups():Dynamic;
	public function test_combineAdd():Dynamic;
	public function test_combineFrame():Dynamic;
	public function test_combineFunc():Dynamic;
	public function test_combineMult():Dynamic;
	public function test_combineSeries():Dynamic;
	public function test_combine_first():Dynamic;
	public function test_combine_first_mixed():Dynamic;
	public function test_combine_first_mixed_bug():Dynamic;
	public function test_combine_generic():Dynamic;
	public function test_combine_multiple_frames_dtypes():Dynamic;
	public function test_comparison_invalid():Dynamic;
	public function test_comparisons():Dynamic;
	public function test_concat_empty_dataframe_dtypes():Dynamic;
	public function test_consolidate():Dynamic;
	public function test_consolidate_datetime64():Dynamic;
	public function test_consolidate_inplace():Dynamic;
	public function test_construction_with_categorical_index():Dynamic;
	public function test_construction_with_conversions():Dynamic;
	public function test_construction_with_mixed():Dynamic;
	public function test_constructor():Dynamic;
	public function test_constructor_DataFrame():Dynamic;
	public function test_constructor_Series_copy_bug():Dynamic;
	public function test_constructor_Series_differently_indexed():Dynamic;
	public function test_constructor_Series_named():Dynamic;
	public function test_constructor_arrays_and_scalars():Dynamic;
	public function test_constructor_bool():Dynamic;
	public function test_constructor_cast_failure():Dynamic;
	public function test_constructor_column_duplicates():Dynamic;
	public function test_constructor_complex_dtypes():Dynamic;
	public function test_constructor_compound_dtypes():Dynamic;
	public function test_constructor_corner():Dynamic;
	public function test_constructor_dict():Dynamic;
	public function test_constructor_dict_block():Dynamic;
	public function test_constructor_dict_cast():Dynamic;
	public function test_constructor_dict_datetime64_index():Dynamic;
	public function test_constructor_dict_dont_upcast():Dynamic;
	public function test_constructor_dict_multiindex():Dynamic;
	public function test_constructor_dict_of_tuples():Dynamic;
	public function test_constructor_dict_timedelta64_index():Dynamic;
	public function test_constructor_dtype_copy():Dynamic;
	public function test_constructor_dtype_list_data():Dynamic;
	public function test_constructor_dtype_nocast_view():Dynamic;
	public function test_constructor_empty_list():Dynamic;
	public function test_constructor_empty_with_string_dtype():Dynamic;
	public function test_constructor_error_msgs():Dynamic;
	public function test_constructor_for_list_with_dtypes():Dynamic;
	public function test_constructor_frame_copy():Dynamic;
	public function test_constructor_from_items():Dynamic;
	public function test_constructor_generator():Dynamic;
	public function test_constructor_iterator():Dynamic;
	public function test_constructor_iterator_failure():Dynamic;
	public function test_constructor_list_frames():Dynamic;
	public function test_constructor_list_of_derived_dicts():Dynamic;
	public function test_constructor_list_of_dicts():Dynamic;
	public function test_constructor_list_of_lists():Dynamic;
	public function test_constructor_list_of_series():Dynamic;
	public function test_constructor_lists_to_object_dtype():Dynamic;
	public function test_constructor_manager_resize():Dynamic;
	public function test_constructor_maskedarray():Dynamic;
	public function test_constructor_maskedarray_nonfloat():Dynamic;
	public function test_constructor_miscast_na_int_dtype():Dynamic;
	public function test_constructor_mix_series_nonseries():Dynamic;
	public function test_constructor_mixed():Dynamic;
	public function test_constructor_mixed_dict_and_Series():Dynamic;
	public function test_constructor_mixed_dtypes():Dynamic;
	public function test_constructor_more():Dynamic;
	public function test_constructor_mrecarray():Dynamic;
	public function test_constructor_multi_index():Dynamic;
	public function test_constructor_ndarray():Dynamic;
	public function test_constructor_ndarray_copy():Dynamic;
	public function test_constructor_ordereddict():Dynamic;
	public function test_constructor_orient():Dynamic;
	public function test_constructor_overflow_int64():Dynamic;
	public function test_constructor_ragged():Dynamic;
	public function test_constructor_rec():Dynamic;
	public function test_constructor_scalar():Dynamic;
	public function test_constructor_scalar_inference():Dynamic;
	public function test_constructor_sequence_like():Dynamic;
	public function test_constructor_series_copy():Dynamic;
	public function test_constructor_single_value():Dynamic;
	public function test_constructor_subclass_dict():Dynamic;
	public function test_constructor_tuples():Dynamic;
	public function test_constructor_with_convert():Dynamic;
	public function test_constructor_with_datetime_tz():Dynamic;
	public function test_constructor_with_datetimes():Dynamic;
	public function test_constructor_with_embedded_frames():Dynamic;
	public function test_constructor_with_nas():Dynamic;
	public function test_convert_objects():Dynamic;
	public function test_convert_objects_no_conversion():Dynamic;
	public function test_copy():Dynamic;
	public function test_copy_blocks():Dynamic;
	public function test_copy_index_name_checking():Dynamic;
	public function test_corr_constant():Dynamic;
	public function test_corr_int():Dynamic;
	public function test_corr_kendall():Dynamic;
	public function test_corr_non_numeric():Dynamic;
	public function test_corr_nooverlap():Dynamic;
	public function test_corr_pearson():Dynamic;
	public function test_corr_spearman():Dynamic;
	public function test_corrwith():Dynamic;
	public function test_corrwith_matches_corrcoef():Dynamic;
	public function test_corrwith_series():Dynamic;
	public function test_corrwith_with_objects():Dynamic;
	public function test_count():Dynamic;
	public function test_count_objects():Dynamic;
	public function test_cov():Dynamic;
	public function test_cummax():Dynamic;
	public function test_cummin():Dynamic;
	public function test_cumprod():Dynamic;
	public function test_cumsum():Dynamic;
	public function test_cumsum_corner():Dynamic;
	public function test_dataframe_clip():Dynamic;
	public function test_dataframe_metadata():Dynamic;
	public function test_datetimelike_setitem_with_inference():Dynamic;
	public function test_deepcopy():Dynamic;
	public function test_delitem():Dynamic;
	public function test_delitem_corner():Dynamic;
	public function test_diff():Dynamic;
	public function test_diff_axis():Dynamic;
	public function test_diff_float_n():Dynamic;
	public function test_diff_mixed_dtype():Dynamic;
	public function test_diff_neg_n():Dynamic;
	public function test_diff_timedelta():Dynamic;
	public function test_div():Dynamic;
	public function test_dot():Dynamic;
	public function test_drop():Dynamic;
	public function test_dropEmptyRows():Dynamic;
	public function test_dropIncompleteRows():Dynamic;
	public function test_drop_and_dropna_caching():Dynamic;
	public function test_drop_col_still_multiindex():Dynamic;
	public function test_drop_duplicates():Dynamic;
	public function test_drop_duplicates_NA():Dynamic;
	public function test_drop_duplicates_NA_for_take_all():Dynamic;
	public function test_drop_duplicates_deprecated_warning():Dynamic;
	public function test_drop_duplicates_for_take_all():Dynamic;
	public function test_drop_duplicates_inplace():Dynamic;
	public function test_drop_duplicates_tuple():Dynamic;
	public function test_drop_names():Dynamic;
	public function test_dropna():Dynamic;
	public function test_dropna_corner():Dynamic;
	public function test_dropna_multiple_axes():Dynamic;
	public function test_dtypes():Dynamic;
	public function test_dtypes_are_correct_after_column_slice():Dynamic;
	public function test_duplicated_deprecated_warning():Dynamic;
	public function test_empty_frame_dtypes_ftypes():Dynamic;
	public function test_empty_nonzero():Dynamic;
	public function test_equals_different_blocks():Dynamic;
	public function test_fancy_getitem_int_labels():Dynamic;
	public function test_fancy_getitem_slice_mixed():Dynamic;
	public function test_fancy_index_int_labels_exceptions():Dynamic;
	public function test_fancy_setitem_int_labels():Dynamic;
	public function test_ffill():Dynamic;
	public function test_fill_corner():Dynamic;
	public function test_fillna():Dynamic;
	public function test_fillna_col_reordering():Dynamic;
	public function test_fillna_columns():Dynamic;
	public function test_fillna_dataframe():Dynamic;
	public function test_fillna_datetime_columns():Dynamic;
	public function test_fillna_dict_series():Dynamic;
	public function test_fillna_dtype_conversion():Dynamic;
	public function test_fillna_inplace():Dynamic;
	public function test_fillna_invalid_method():Dynamic;
	public function test_fillna_invalid_value():Dynamic;
	public function test_fillna_skip_certain_blocks():Dynamic;
	public function test_filter():Dynamic;
	public function test_filter_corner():Dynamic;
	public function test_filter_regex_search():Dynamic;
	public function test_first_last_valid():Dynamic;
	public function test_float_none_comparison():Dynamic;
	public function test_frame_column_inplace_sort_exception():Dynamic;
	public function test_frame_subclassing_and_slicing():Dynamic;
	public function test_from_records_bad_index_column():Dynamic;
	public function test_from_records_columns_not_modified():Dynamic;
	public function test_from_records_decimal():Dynamic;
	public function test_from_records_dictlike():Dynamic;
	public function test_from_records_duplicates():Dynamic;
	public function test_from_records_empty():Dynamic;
	public function test_from_records_empty_with_nonempty_fields_gh3682():Dynamic;
	public function test_from_records_iterator():Dynamic;
	public function test_from_records_len0_with_columns():Dynamic;
	public function test_from_records_lists_generator():Dynamic;
	public function test_from_records_misc_brokenness():Dynamic;
	public function test_from_records_non_tuple():Dynamic;
	public function test_from_records_nones():Dynamic;
	public function test_from_records_sequencelike():Dynamic;
	public function test_from_records_set_index_name():Dynamic;
	public function test_from_records_to_records():Dynamic;
	public function test_from_records_tuples_generator():Dynamic;
	public function test_from_records_with_datetimes():Dynamic;
	public function test_from_records_with_index_data():Dynamic;
	public function test_ftypes():Dynamic;
	public function test_get():Dynamic;
	public function test_get_X_columns():Dynamic;
	public function test_get_agg_axis():Dynamic;
	public function test_get_axis():Dynamic;
	public function test_get_numeric_data():Dynamic;
	public function test_get_set_value_no_partial_indexing():Dynamic;
	public function test_get_value():Dynamic;
	public function test_getattr():Dynamic;
	public function test_getitem():Dynamic;
	public function test_getitem_boolean():Dynamic;
	public function test_getitem_boolean_casting():Dynamic;
	public function test_getitem_boolean_iadd():Dynamic;
	public function test_getitem_boolean_list():Dynamic;
	public function test_getitem_boolean_missing():Dynamic;
	public function test_getitem_dupe_cols():Dynamic;
	public function test_getitem_fancy_1d():Dynamic;
	public function test_getitem_fancy_2d():Dynamic;
	public function test_getitem_fancy_boolean():Dynamic;
	public function test_getitem_fancy_ints():Dynamic;
	public function test_getitem_fancy_scalar():Dynamic;
	public function test_getitem_fancy_slice_integers_step():Dynamic;
	public function test_getitem_iterator():Dynamic;
	public function test_getitem_ix_boolean_duplicates_multiple():Dynamic;
	public function test_getitem_ix_float_duplicates():Dynamic;
	public function test_getitem_ix_mixed_integer():Dynamic;
	public function test_getitem_list():Dynamic;
	public function test_getitem_list_duplicates():Dynamic;
	public function test_getitem_pop_assign_name():Dynamic;
	public function test_getitem_setitem_boolean_misaligned():Dynamic;
	public function test_getitem_setitem_boolean_multi():Dynamic;
	public function test_getitem_setitem_fancy_exceptions():Dynamic;
	public function test_getitem_setitem_float_labels():Dynamic;
	public function test_getitem_setitem_integer_slice_keyerrors():Dynamic;
	public function test_getitem_setitem_ix_bool_keyerror():Dynamic;
	public function test_getitem_setitem_ix_duplicates():Dynamic;
	public function test_getitem_setitem_ix_negative_integers():Dynamic;
	public function test_getitem_setitem_non_ix_labels():Dynamic;
	public function test_head_tail():Dynamic;
	public function test_icol():Dynamic;
	public function test_icol_sparse_propegate_fill_value():Dynamic;
	public function test_idxmax():Dynamic;
	public function test_idxmin():Dynamic;
	public function test_iget_value():Dynamic;
	public function test_index_namedtuple():Dynamic;
	public function test_info():Dynamic;
	public function test_info_duplicate_columns():Dynamic;
	public function test_info_max_cols():Dynamic;
	public function test_info_memory_usage():Dynamic;
	public function test_info_shows_column_dtypes():Dynamic;
	public function test_info_wide():Dynamic;
	public function test_inplace_ops_alignment():Dynamic;
	public function test_inplace_ops_identity():Dynamic;
	public function test_inplace_return_self():Dynamic;
	public function test_insert():Dynamic;
	public function test_insert_benchmark():Dynamic;
	public function test_insert_column_bug_4032():Dynamic;
	public function test_insert_error_msmgs():Dynamic;
	public function test_interpolate():Dynamic;
	public function test_invert():Dynamic;
	public function test_irow():Dynamic;
	public function test_irow_icol_duplicates():Dynamic;
	public function test_is_mixed_type():Dynamic;
	public function test_isin():Dynamic;
	public function test_isin_against_series():Dynamic;
	public function test_isin_df():Dynamic;
	public function test_isin_df_dupe_values():Dynamic;
	public function test_isin_dict():Dynamic;
	public function test_isin_dupe_self():Dynamic;
	public function test_isin_empty():Dynamic;
	public function test_isin_multiIndex():Dynamic;
	public function test_isin_with_string_scalar():Dynamic;
	public function test_iter():Dynamic;
	public function test_iteritems():Dynamic;
	public function test_iterkv_deprecation():Dynamic;
	public function test_iterkv_names():Dynamic;
	public function test_iterrows():Dynamic;
	public function test_itertuples():Dynamic;
	public function test_ix_align():Dynamic;
	public function test_ix_dup():Dynamic;
	public function test_ix_frame_align():Dynamic;
	public function test_ix_multi_take():Dynamic;
	public function test_ix_multi_take_multiindex():Dynamic;
	public function test_ix_multi_take_nonint_index():Dynamic;
	public function test_join_index():Dynamic;
	public function test_join_index_more():Dynamic;
	public function test_join_index_series():Dynamic;
	public function test_join_multiindex_leftright():Dynamic;
	public function test_join_overlap():Dynamic;
	public function test_join_str_datetime():Dynamic;
	public function test_keys():Dynamic;
	public function test_kurt():Dynamic;
	public function test_len():Dynamic;
	public function test_logical_operators():Dynamic;
	public function test_logical_typeerror():Dynamic;
	public function test_logical_with_nas():Dynamic;
	public function test_lookup():Dynamic;
	public function test_mad():Dynamic;
	public function test_mask():Dynamic;
	public function test_mask_edge_case_1xN_frame():Dynamic;
	public function test_mask_inplace():Dynamic;
	public function test_max():Dynamic;
	public function test_mean():Dynamic;
	public function test_mean_corner():Dynamic;
	public function test_median():Dynamic;
	public function test_median_corner():Dynamic;
	public function test_min():Dynamic;
	public function test_mode():Dynamic;
	public function test_modify_values():Dynamic;
	public function test_modulo():Dynamic;
	public function test_more_asMatrix():Dynamic;
	public function test_neg():Dynamic;
	public function test_nested_dict_frame_constructor():Dynamic;
	public function test_nested_exception():Dynamic;
	public function test_new_empty_index():Dynamic;
	public function test_nlargest():Dynamic;
	public function test_nlargest_multiple_columns():Dynamic;
	public function test_no_copy_blocks():Dynamic;
	public function test_non_monotonic_reindex_methods():Dynamic;
	public function test_nonzero():Dynamic;
	public function test_not_hashable():Dynamic;
	public function test_nsmallest():Dynamic;
	public function test_nsmallest_multiple_columns():Dynamic;
	public function test_numeric_only_flag():Dynamic;
	public function test_operators():Dynamic;
	public function test_operators_boolean():Dynamic;
	public function test_operators_none_as_na():Dynamic;
	public function test_operators_timedelta64():Dynamic;
	public function test_ops():Dynamic;
	public function test_ops_np_scalar():Dynamic;
	public function test_pct_change():Dynamic;
	public function test_pct_change_shift_over_nas():Dynamic;
	public function test_pickle():Dynamic;
	public function test_pivot():Dynamic;
	public function test_pivot_duplicates():Dynamic;
	public function test_pivot_empty():Dynamic;
	public function test_pivot_index_none():Dynamic;
	public function test_pivot_integer_bug():Dynamic;
	public function test_pop():Dynamic;
	public function test_pop_non_unique_cols():Dynamic;
	public function test_product():Dynamic;
	public function test_quantile():Dynamic;
	public function test_quantile_axis_parameter():Dynamic;
	public function test_quantile_datetime():Dynamic;
	public function test_quantile_invalid():Dynamic;
	public function test_quantile_multi():Dynamic;
	public function test_rank():Dynamic;
	public function test_rank2():Dynamic;
	public function test_rank_na_option():Dynamic;
	public function test_reduce_mixed_frame():Dynamic;
	public function test_regex_replace_dict_mixed():Dynamic;
	public function test_regex_replace_dict_nested():Dynamic;
	public function test_regex_replace_dict_nested_gh4115():Dynamic;
	public function test_regex_replace_list_mixed():Dynamic;
	public function test_regex_replace_list_mixed_inplace():Dynamic;
	public function test_regex_replace_list_obj():Dynamic;
	public function test_regex_replace_list_obj_inplace():Dynamic;
	public function test_regex_replace_list_to_scalar():Dynamic;
	public function test_regex_replace_numeric_to_object_conversion():Dynamic;
	public function test_regex_replace_regex_list_to_numeric():Dynamic;
	public function test_regex_replace_scalar():Dynamic;
	public function test_regex_replace_scalar_inplace():Dynamic;
	public function test_regex_replace_series_of_regexes():Dynamic;
	public function test_regex_replace_str_to_numeric():Dynamic;
	public function test_reindex():Dynamic;
	public function test_reindex_axes():Dynamic;
	public function test_reindex_axis():Dynamic;
	public function test_reindex_boolean():Dynamic;
	public function test_reindex_columns():Dynamic;
	public function test_reindex_corner():Dynamic;
	public function test_reindex_dups():Dynamic;
	public function test_reindex_fill_value():Dynamic;
	public function test_reindex_int():Dynamic;
	public function test_reindex_level():Dynamic;
	public function test_reindex_like():Dynamic;
	public function test_reindex_methods():Dynamic;
	public function test_reindex_multi():Dynamic;
	public function test_reindex_name_remains():Dynamic;
	public function test_reindex_nan():Dynamic;
	public function test_reindex_objects():Dynamic;
	public function test_reindex_with_nans():Dynamic;
	public function test_rename():Dynamic;
	public function test_rename_bug():Dynamic;
	public function test_rename_inplace():Dynamic;
	public function test_rename_nocopy():Dynamic;
	public function test_rename_objects():Dynamic;
	public function test_reorder_levels():Dynamic;
	public function test_replace():Dynamic;
	public function test_replace_bool_with_bool():Dynamic;
	public function test_replace_bool_with_string():Dynamic;
	public function test_replace_convert():Dynamic;
	public function test_replace_datetime():Dynamic;
	public function test_replace_dict_no_regex():Dynamic;
	public function test_replace_dict_tuple_list_ordering_remains_the_same():Dynamic;
	public function test_replace_doesnt_replace_without_regex():Dynamic;
	public function test_replace_dtypes():Dynamic;
	public function test_replace_for_new_dtypes():Dynamic;
	public function test_replace_inplace():Dynamic;
	public function test_replace_input_formats():Dynamic;
	public function test_replace_int_to_int_chain():Dynamic;
	public function test_replace_limit():Dynamic;
	public function test_replace_list():Dynamic;
	public function test_replace_mixed():Dynamic;
	public function test_replace_period():Dynamic;
	public function test_replace_pure_bool_with_string_no_op():Dynamic;
	public function test_replace_regex_metachar():Dynamic;
	public function test_replace_series_dict():Dynamic;
	public function test_replace_series_no_regex():Dynamic;
	public function test_replace_simple_nested_dict():Dynamic;
	public function test_replace_simple_nested_dict_with_nonexistent_value():Dynamic;
	public function test_replace_str_to_str_chain():Dynamic;
	public function test_replace_swapping_bug():Dynamic;
	public function test_replace_truthy():Dynamic;
	public function test_replace_value_is_none():Dynamic;
	public function test_replace_with_dict_with_bool_keys():Dynamic;
	public function test_repr():Dynamic;
	public function test_repr_big():Dynamic;
	public function test_repr_column_name_unicode_truncation_bug():Dynamic;
	public function test_repr_dimensions():Dynamic;
	public function test_repr_empty():Dynamic;
	public function test_repr_mixed():Dynamic;
	public function test_repr_mixed_big():Dynamic;
	public function test_repr_unicode():Dynamic;
	public function test_repr_unsortable():Dynamic;
	public function test_repr_with_mi_nat():Dynamic;
	public function test_reset_index():Dynamic;
	public function test_reset_index_multiindex_col():Dynamic;
	public function test_reset_index_right_dtype():Dynamic;
	public function test_reset_index_with_datetimeindex_cols():Dynamic;
	public function test_select():Dynamic;
	public function test_select_dtypes_bad_arg_raises():Dynamic;
	public function test_select_dtypes_bad_datetime64():Dynamic;
	public function test_select_dtypes_empty():Dynamic;
	public function test_select_dtypes_exclude():Dynamic;
	public function test_select_dtypes_exclude_include():Dynamic;
	public function test_select_dtypes_include():Dynamic;
	public function test_select_dtypes_not_an_attr_but_still_valid_dtype():Dynamic;
	public function test_select_dtypes_raises_on_string():Dynamic;
	public function test_select_dtypes_str_raises():Dynamic;
	public function test_sem():Dynamic;
	public function test_series_put_names():Dynamic;
	public function test_set_columns():Dynamic;
	public function test_set_index():Dynamic;
	public function test_set_index2():Dynamic;
	public function test_set_index_bug():Dynamic;
	public function test_set_index_cast():Dynamic;
	public function test_set_index_cast_datetimeindex():Dynamic;
	public function test_set_index_empty_column():Dynamic;
	public function test_set_index_multiindexcolumns():Dynamic;
	public function test_set_index_names():Dynamic;
	public function test_set_index_nonuniq():Dynamic;
	public function test_set_index_pass_arrays():Dynamic;
	public function test_set_value():Dynamic;
	public function test_set_value_resize():Dynamic;
	public function test_set_value_with_index_dtype_change():Dynamic;
	public function test_setattr_column():Dynamic;
	public function test_setitem():Dynamic;
	public function test_setitem_None():Dynamic;
	public function test_setitem_always_copy():Dynamic;
	public function test_setitem_ambig():Dynamic;
	public function test_setitem_boolean():Dynamic;
	public function test_setitem_boolean_column():Dynamic;
	public function test_setitem_boolean_missing():Dynamic;
	public function test_setitem_cast():Dynamic;
	public function test_setitem_clear_caches():Dynamic;
	public function test_setitem_corner():Dynamic;
	public function test_setitem_corner2():Dynamic;
	public function test_setitem_datetime_coercion():Dynamic;
	public function test_setitem_empty():Dynamic;
	public function test_setitem_empty_frame_with_boolean():Dynamic;
	public function test_setitem_fancy_1d():Dynamic;
	public function test_setitem_fancy_2d():Dynamic;
	public function test_setitem_fancy_boolean():Dynamic;
	public function test_setitem_fancy_exceptions():Dynamic;
	public function test_setitem_fancy_mixed_2d():Dynamic;
	public function test_setitem_fancy_scalar():Dynamic;
	public function test_setitem_frame():Dynamic;
	public function test_setitem_frame_align():Dynamic;
	public function test_setitem_list():Dynamic;
	public function test_setitem_list_not_dataframe():Dynamic;
	public function test_setitem_list_of_tuples():Dynamic;
	public function test_setitem_mulit_index():Dynamic;
	public function test_setitem_single_column_mixed():Dynamic;
	public function test_setitem_single_column_mixed_datetime():Dynamic;
	public function test_setitem_tuple():Dynamic;
	public function test_setitem_with_sparse_value():Dynamic;
	public function test_setitem_with_unaligned_sparse_value():Dynamic;
	public function test_shift():Dynamic;
	public function test_shift_bool():Dynamic;
	public function test_shift_categorical():Dynamic;
	public function test_shift_empty():Dynamic;
	public function test_single_element_ix_dont_upcast():Dynamic;
	public function test_skew():Dynamic;
	public function test_slice_floats():Dynamic;
	public function test_sort_datetimes():Dynamic;
	public function test_sort_index():Dynamic;
	public function test_sort_index_categorical_index():Dynamic;
	public function test_sort_index_different_sortorder():Dynamic;
	public function test_sort_index_duplicates():Dynamic;
	public function test_sort_index_inplace():Dynamic;
	public function test_sort_index_multicolumn():Dynamic;
	public function test_sort_inplace():Dynamic;
	public function test_sort_nan():Dynamic;
	public function test_sort_values():Dynamic;
	public function test_sortlevel():Dynamic;
	public function test_stable_descending_multicolumn_sort():Dynamic;
	public function test_stable_descending_sort():Dynamic;
	public function test_stack_datetime_column_multiIndex():Dynamic;
	public function test_stack_int_level_names():Dynamic;
	public function test_stack_ints():Dynamic;
	public function test_stack_mixed_levels():Dynamic;
	public function test_stack_partial_multiIndex():Dynamic;
	public function test_stack_unstack():Dynamic;
	public function test_stale_cached_series_bug_473():Dynamic;
	public function test_stat_operators_attempt_obj_array():Dynamic;
	public function test_stats_mixed_type():Dynamic;
	public function test_strange_column_corruption_issue():Dynamic;
	public function test_string_comparison():Dynamic;
	public function test_sum():Dynamic;
	public function test_sum_bool():Dynamic;
	public function test_sum_bools():Dynamic;
	public function test_sum_corner():Dynamic;
	public function test_sum_object():Dynamic;
	public function test_swapaxes():Dynamic;
	public function test_take():Dynamic;
	public function test_timedeltas():Dynamic;
	public function test_timestamp_compare():Dynamic;
	public function test_to_csv_bug():Dynamic;
	public function test_to_csv_chunking():Dynamic;
	public function test_to_csv_cols_reordering():Dynamic;
	public function test_to_csv_date_format():Dynamic;
	public function test_to_csv_dups_cols():Dynamic;
	public function test_to_csv_float32_nanrep():Dynamic;
	public function test_to_csv_float_format():Dynamic;
	public function test_to_csv_from_csv():Dynamic;
	public function test_to_csv_from_csv_categorical():Dynamic;
	public function test_to_csv_from_csv_w_all_infs():Dynamic;
	public function test_to_csv_from_csv_w_some_infs():Dynamic;
	public function test_to_csv_headers():Dynamic;
	public function test_to_csv_index_no_leading_comma():Dynamic;
	public function test_to_csv_legacy_raises_on_dupe_cols():Dynamic;
	public function test_to_csv_line_terminators():Dynamic;
	public function test_to_csv_mixed():Dynamic;
	public function test_to_csv_moar():Dynamic;
	public function test_to_csv_multiindex():Dynamic;
	public function test_to_csv_new_dupe_cols():Dynamic;
	public function test_to_csv_no_index():Dynamic;
	public function test_to_csv_path_is_none():Dynamic;
	public function test_to_csv_quote_none():Dynamic;
	public function test_to_csv_quoting():Dynamic;
	public function test_to_csv_stringio():Dynamic;
	public function test_to_csv_unicode():Dynamic;
	public function test_to_csv_unicode_index_col():Dynamic;
	public function test_to_csv_unicodewriter_quoting():Dynamic;
	public function test_to_csv_wide_frame_formatting():Dynamic;
	public function test_to_csv_withcommas():Dynamic;
	public function test_to_dict():Dynamic;
	public function test_to_dict_invalid_orient():Dynamic;
	public function test_to_panel_expanddim():Dynamic;
	public function test_to_recods_index_name():Dynamic;
	public function test_to_records_dt64():Dynamic;
	public function test_to_records_floats():Dynamic;
	public function test_to_records_with_Mapping_type():Dynamic;
	public function test_to_records_with_multindex():Dynamic;
	public function test_transpose():Dynamic;
	public function test_transpose_get_view():Dynamic;
	public function test_truncate():Dynamic;
	public function test_truncate_copy():Dynamic;
	public function test_tshift():Dynamic;
	public function test_unicode_string_with_unicode():Dynamic;
	public function test_unstack_bool():Dynamic;
	public function test_unstack_dtypes():Dynamic;
	public function test_unstack_level_binding():Dynamic;
	public function test_unstack_nan_index():Dynamic;
	public function test_unstack_non_unique_index_names():Dynamic;
	public function test_unstack_to_series():Dynamic;
	public function test_update():Dynamic;
	public function test_update_dtypes():Dynamic;
	public function test_update_filtered():Dynamic;
	public function test_update_from_non_df():Dynamic;
	public function test_update_nooverwrite():Dynamic;
	public function test_update_raise():Dynamic;
	public function test_values():Dynamic;
	public function test_var_std():Dynamic;
	public function test_very_wide_info_repr():Dynamic;
	public function test_where():Dynamic;
	public function test_where_align():Dynamic;
	public function test_where_axis():Dynamic;
	public function test_where_bug():Dynamic;
	public function test_where_complex():Dynamic;
	public function test_where_datetime():Dynamic;
	public function test_where_none():Dynamic;
	public function test_xs():Dynamic;
	public function test_xs_corner():Dynamic;
	public function test_xs_duplicates():Dynamic;
	public function test_xs_keep_level():Dynamic;
	/**
		in 0.14 this will return a view if possible
		a copy otherwise, but this is numpy dependent
	**/
	public function test_xs_view():Dynamic;
}