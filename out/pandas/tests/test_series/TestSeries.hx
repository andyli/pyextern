/* This file is generated, do not edit! */
package pandas.tests.test_series;
@:pythonImport("pandas.tests.test_series", "TestSeries") extern class TestSeries {
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
	@:native("__init__")
	public function ___init__(?methodName:Dynamic):Dynamic;
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
	public function _check_accum_op(name:Dynamic):Dynamic;
	public function _check_stat_op(name:Dynamic, alternate:Dynamic, ?check_objects:Dynamic, ?check_allna:Dynamic):Dynamic;
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
	public function _pickle_roundtrip(obj:Dynamic):Dynamic;
	public function _pickle_roundtrip_name(obj:Dynamic):Dynamic;
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
	public function test_TimeSeries_deprecation():Dynamic;
	public function test_align():Dynamic;
	public function test_align_fill_method():Dynamic;
	public function test_align_multiindex():Dynamic;
	public function test_align_nocopy():Dynamic;
	public function test_align_sameindex():Dynamic;
	public function test_all_any():Dynamic;
	public function test_all_any_params():Dynamic;
	public function test_append():Dynamic;
	public function test_append_many():Dynamic;
	public function test_append_preserve_name():Dynamic;
	public function test_apply():Dynamic;
	public function test_apply_args():Dynamic;
	public function test_apply_dont_convert_dtype():Dynamic;
	public function test_apply_same_length_inference_bug():Dynamic;
	public function test_argsort():Dynamic;
	public function test_argsort_preserve_name():Dynamic;
	public function test_argsort_stable():Dynamic;
	public function test_array_finalize():Dynamic;
	public function test_asfreq():Dynamic;
	public function test_asof():Dynamic;
	public function test_asof_more():Dynamic;
	public function test_asof_periodindex():Dynamic;
	public function test_astype():Dynamic;
	public function test_astype_cast_nan_int():Dynamic;
	public function test_astype_cast_object_int():Dynamic;
	public function test_astype_datetimes():Dynamic;
	public function test_astype_str():Dynamic;
	public function test_astype_unicode():Dynamic;
	public function test_autocorr():Dynamic;
	public function test_axis_alias():Dynamic;
	public function test_basic_getitem_setitem_corner():Dynamic;
	public function test_basic_getitem_with_labels():Dynamic;
	public function test_basic_setitem_with_labels():Dynamic;
	public function test_between():Dynamic;
	public function test_bfill():Dynamic;
	public function test_binop_maybe_preserve_name():Dynamic;
	public function test_bytestring_with_unicode():Dynamic;
	public function test_cast_on_putmask():Dynamic;
	public function test_clip():Dynamic;
	public function test_clip_against_series():Dynamic;
	public function test_clip_types_and_nulls():Dynamic;
	public function test_combine_first():Dynamic;
	public function test_combine_first_dt64():Dynamic;
	public function test_combine_first_name():Dynamic;
	public function test_comparison_different_length():Dynamic;
	public function test_comparison_invalid():Dynamic;
	public function test_comparison_label_based():Dynamic;
	public function test_comparison_object_numeric_nas():Dynamic;
	public function test_comparison_operators_with_nas():Dynamic;
	public function test_complexx():Dynamic;
	public function test_concat_empty_series_dtypes():Dynamic;
	public function test_concat_empty_series_dtypes_roundtrips():Dynamic;
	public function test_constructor():Dynamic;
	public function test_constructor_cast():Dynamic;
	public function test_constructor_categorical():Dynamic;
	public function test_constructor_corner():Dynamic;
	public function test_constructor_datelike_coercion():Dynamic;
	public function test_constructor_default_index():Dynamic;
	public function test_constructor_dict():Dynamic;
	public function test_constructor_dict_datetime64_index():Dynamic;
	public function test_constructor_dict_multiindex():Dynamic;
	public function test_constructor_dtype_datetime64():Dynamic;
	public function test_constructor_dtype_nocast():Dynamic;
	public function test_constructor_dtype_timedelta64():Dynamic;
	public function test_constructor_empty():Dynamic;
	public function test_constructor_generator():Dynamic;
	public function test_constructor_iterator():Dynamic;
	public function test_constructor_list_of_tuples():Dynamic;
	public function test_constructor_map():Dynamic;
	public function test_constructor_maskedarray():Dynamic;
	public function test_constructor_pass_none():Dynamic;
	public function test_constructor_periodindex():Dynamic;
	public function test_constructor_sanitize():Dynamic;
	public function test_constructor_series():Dynamic;
	public function test_constructor_set():Dynamic;
	public function test_constructor_subclass_dict():Dynamic;
	public function test_constructor_tuple_of_tuples():Dynamic;
	public function test_constructor_with_datetime_tz():Dynamic;
	public function test_contains():Dynamic;
	public function test_convert():Dynamic;
	public function test_convert_no_arg_error():Dynamic;
	public function test_convert_objects():Dynamic;
	public function test_convert_objects_preserve_all_bool():Dynamic;
	public function test_convert_objects_preserve_bool():Dynamic;
	public function test_convert_preserve_all_bool():Dynamic;
	public function test_convert_preserve_bool():Dynamic;
	public function test_copy():Dynamic;
	public function test_copy_index_name_checking():Dynamic;
	public function test_copy_name():Dynamic;
	public function test_corr():Dynamic;
	public function test_corr_rank():Dynamic;
	public function test_count():Dynamic;
	public function test_cov():Dynamic;
	public function test_cummax():Dynamic;
	public function test_cummax_datetime64():Dynamic;
	public function test_cummax_timedelta64():Dynamic;
	public function test_cummethods_bool():Dynamic;
	public function test_cummin():Dynamic;
	public function test_cummin_datetime64():Dynamic;
	public function test_cummin_timedelta64():Dynamic;
	public function test_cumprod():Dynamic;
	public function test_cumsum():Dynamic;
	public function test_datetime64_fillna():Dynamic;
	public function test_datetime64_tz_dropna():Dynamic;
	public function test_datetime64_tz_fillna():Dynamic;
	public function test_datetime64_with_index():Dynamic;
	public function test_delitem():Dynamic;
	public function test_diff():Dynamic;
	public function test_div():Dynamic;
	/**
		resolves issue #9787 
	**/
	public function test_divide_decimal():Dynamic;
	public function test_dot():Dynamic;
	public function test_drop():Dynamic;
	public function test_drop_duplicates():Dynamic;
	public function test_dropna_empty():Dynamic;
	public function test_dropna_preserve_name():Dynamic;
	public function test_dt_accessor_api():Dynamic;
	public function test_dt_namespace_accessor():Dynamic;
	public function test_dtype():Dynamic;
	public function test_ffill():Dynamic;
	public function test_fillna():Dynamic;
	public function test_fillna_bug():Dynamic;
	public function test_fillna_inplace():Dynamic;
	public function test_fillna_int():Dynamic;
	public function test_fillna_invalid_method():Dynamic;
	public function test_fillna_raise():Dynamic;
	public function test_first_last_valid():Dynamic;
	public function test_fromDict():Dynamic;
	public function test_fromValue():Dynamic;
	public function test_from_csv():Dynamic;
	public function test_get():Dynamic;
	public function test_get_set_boolean_different_order():Dynamic;
	public function test_getitem_ambiguous_keyerror():Dynamic;
	public function test_getitem_boolean():Dynamic;
	public function test_getitem_boolean_empty():Dynamic;
	public function test_getitem_boolean_object():Dynamic;
	public function test_getitem_box_float64():Dynamic;
	public function test_getitem_dataframe():Dynamic;
	public function test_getitem_dups():Dynamic;
	public function test_getitem_dups_with_missing():Dynamic;
	public function test_getitem_fancy():Dynamic;
	public function test_getitem_generator():Dynamic;
	public function test_getitem_get():Dynamic;
	public function test_getitem_int64():Dynamic;
	public function test_getitem_negative_out_of_bounds():Dynamic;
	public function test_getitem_out_of_bounds():Dynamic;
	public function test_getitem_preserve_name():Dynamic;
	public function test_getitem_regression():Dynamic;
	public function test_getitem_setitem_boolean_corner():Dynamic;
	public function test_getitem_setitem_datetime_tz_dateutil():Dynamic;
	public function test_getitem_setitem_datetime_tz_pytz():Dynamic;
	public function test_getitem_setitem_datetimeindex():Dynamic;
	public function test_getitem_setitem_ellipsis():Dynamic;
	public function test_getitem_setitem_integers():Dynamic;
	public function test_getitem_setitem_periodindex():Dynamic;
	public function test_getitem_setitem_slice_bug():Dynamic;
	public function test_getitem_setitem_slice_integers():Dynamic;
	public function test_getitem_unordered_dup():Dynamic;
	public function test_head_tail():Dynamic;
	public function test_idxmax():Dynamic;
	public function test_idxmin():Dynamic;
	public function test_iget():Dynamic;
	public function test_iget_nonunique():Dynamic;
	public function test_invert():Dynamic;
	public function test_isin():Dynamic;
	public function test_isin_with_i8():Dynamic;
	public function test_isin_with_string_scalar():Dynamic;
	public function test_isnull():Dynamic;
	public function test_isnull_for_inf():Dynamic;
	public function test_iter():Dynamic;
	public function test_iteritems():Dynamic;
	public function test_ix_getitem():Dynamic;
	public function test_ix_getitem_iterator():Dynamic;
	public function test_ix_getitem_not_monotonic():Dynamic;
	public function test_ix_getitem_setitem_integer_slice_keyerrors():Dynamic;
	public function test_ix_setitem():Dynamic;
	public function test_ix_setitem_boolean():Dynamic;
	public function test_ix_setitem_corner():Dynamic;
	public function test_keys():Dynamic;
	public function test_kurt():Dynamic;
	public function test_map():Dynamic;
	public function test_map_compat():Dynamic;
	public function test_map_decimal():Dynamic;
	/**
		Due to new MultiIndex-ing behaviour in v0.14.0,
		dicts with tuple keys passed to map were being
		converted to a multi-index, preventing tuple values
		from being mapped properly.
	**/
	public function test_map_dict_with_tuple_keys():Dynamic;
	public function test_map_int():Dynamic;
	public function test_map_na_exclusion():Dynamic;
	public function test_map_type_inference():Dynamic;
	public function test_mask():Dynamic;
	public function test_mask_broadcast():Dynamic;
	public function test_mask_inplace():Dynamic;
	public function test_max():Dynamic;
	public function test_mean():Dynamic;
	public function test_median():Dynamic;
	public function test_min():Dynamic;
	public function test_mode():Dynamic;
	public function test_modulo():Dynamic;
	public function test_more_na_comparisons():Dynamic;
	public function test_mpl_compat_hack():Dynamic;
	public function test_multilevel_name_print():Dynamic;
	public function test_multilevel_preserve_name():Dynamic;
	public function test_name_printing():Dynamic;
	public function test_ndarray_compat():Dynamic;
	public function test_ne():Dynamic;
	public function test_neg():Dynamic;
	public function test_not_hashable():Dynamic;
	public function test_notnull():Dynamic;
	public function test_npdiff():Dynamic;
	public function test_nsmallest_nlargest():Dynamic;
	public function test_numpy_unique():Dynamic;
	public function test_object_comparisons():Dynamic;
	public function test_op_method():Dynamic;
	public function test_operators():Dynamic;
	public function test_operators_bitwise():Dynamic;
	public function test_operators_combine():Dynamic;
	public function test_operators_corner():Dynamic;
	public function test_operators_datetimelike():Dynamic;
	public function test_operators_empty_int_corner():Dynamic;
	public function test_operators_frame():Dynamic;
	public function test_operators_na_handling():Dynamic;
	public function test_operators_reverse_object():Dynamic;
	public function test_operators_timedelta64():Dynamic;
	public function test_ops_consistency_on_empty():Dynamic;
	public function test_ops_datetimelike_align():Dynamic;
	public function test_order():Dynamic;
	public function test_orderedDict_ctor():Dynamic;
	public function test_orderedDict_subclass_ctor():Dynamic;
	public function test_pad_nan():Dynamic;
	public function test_pct_change():Dynamic;
	public function test_pct_change_shift_over_nas():Dynamic;
	public function test_pickle():Dynamic;
	public function test_pickle_preserve_name():Dynamic;
	public function test_pop():Dynamic;
	public function test_preserveRefs():Dynamic;
	public function test_prod():Dynamic;
	public function test_prod_numpy16_bug():Dynamic;
	public function test_ptp():Dynamic;
	public function test_quantile():Dynamic;
	public function test_quantile_multi():Dynamic;
	public function test_raise_on_info():Dynamic;
	public function test_rank():Dynamic;
	public function test_rank_inf():Dynamic;
	public function test_reindex():Dynamic;
	public function test_reindex_backfill():Dynamic;
	public function test_reindex_bool():Dynamic;
	public function test_reindex_bool_pad():Dynamic;
	public function test_reindex_corner():Dynamic;
	public function test_reindex_fill_value():Dynamic;
	public function test_reindex_int():Dynamic;
	public function test_reindex_like():Dynamic;
	public function test_reindex_nan():Dynamic;
	public function test_reindex_nearest():Dynamic;
	public function test_reindex_pad():Dynamic;
	public function test_rename():Dynamic;
	public function test_rename_inplace():Dynamic;
	public function test_reorder_levels():Dynamic;
	public function test_replace():Dynamic;
	public function test_replace_bool_with_bool():Dynamic;
	public function test_replace_bool_with_string():Dynamic;
	public function test_replace_bool_with_string_no_op():Dynamic;
	public function test_replace_mixed_types():Dynamic;
	public function test_replace_with_dict_with_bool_keys():Dynamic;
	public function test_replace_with_single_list():Dynamic;
	public function test_repr():Dynamic;
	public function test_repr_bool_fails():Dynamic;
	public function test_repr_max_rows():Dynamic;
	public function test_repr_name_iterable_indexable():Dynamic;
	public function test_repr_should_return_str():Dynamic;
	public function test_reshape_2d_return_array():Dynamic;
	public function test_reshape_non_2d():Dynamic;
	public function test_round():Dynamic;
	public function test_scalar_conversion():Dynamic;
	public function test_scalar_na_cmp_corners():Dynamic;
	public function test_scalarop_preserve_name():Dynamic;
	public function test_search_sorted_datetime64_list():Dynamic;
	public function test_search_sorted_datetime64_scalar():Dynamic;
	public function test_searchsorted_numeric_dtypes_scalar():Dynamic;
	public function test_searchsorted_numeric_dtypes_vector():Dynamic;
	public function test_searchsorted_sorter():Dynamic;
	public function test_select():Dynamic;
	public function test_sem():Dynamic;
	public function test_series_frame_radd_bug():Dynamic;
	public function test_set_value():Dynamic;
	public function test_setindex():Dynamic;
	public function test_setitem():Dynamic;
	public function test_setitem_ambiguous_keyerror():Dynamic;
	public function test_setitem_boolean():Dynamic;
	public function test_setitem_dtypes():Dynamic;
	public function test_setitem_float_labels():Dynamic;
	public function test_setitem_na():Dynamic;
	public function test_setslice():Dynamic;
	public function test_shift():Dynamic;
	public function test_shift_categorical():Dynamic;
	public function test_shift_int():Dynamic;
	public function test_skew():Dynamic;
	public function test_slice():Dynamic;
	public function test_slice_can_reorder_not_uniquely_indexed():Dynamic;
	public function test_slice_float64():Dynamic;
	public function test_slice_float_get_set():Dynamic;
	public function test_slice_floats2():Dynamic;
	public function test_sort_API():Dynamic;
	public function test_sort_index():Dynamic;
	public function test_sort_index_name():Dynamic;
	public function test_sort_values():Dynamic;
	public function test_sortlevel():Dynamic;
	public function test_str_attribute():Dynamic;
	public function test_strftime():Dynamic;
	public function test_sub_of_datetime_from_TimeSeries():Dynamic;
	public function test_sum():Dynamic;
	public function test_sum_inf():Dynamic;
	public function test_tab_completion():Dynamic;
	public function test_tidy_repr():Dynamic;
	public function test_timedelta64_conversions():Dynamic;
	public function test_timedelta64_equal_timedelta_supported_ops():Dynamic;
	public function test_timedelta64_functions():Dynamic;
	public function test_timedelta64_nan():Dynamic;
	public function test_timedelta64_operations_with_DateOffset():Dynamic;
	public function test_timedelta64_operations_with_integers():Dynamic;
	public function test_timedelta64_operations_with_timedeltas():Dynamic;
	public function test_timedelta_assignment():Dynamic;
	public function test_timedelta_fillna():Dynamic;
	public function test_timedeltas_with_DateOffset():Dynamic;
	public function test_timeseries_periodindex():Dynamic;
	public function test_timeseries_repr_object_dtype():Dynamic;
	public function test_to_csv():Dynamic;
	public function test_to_csv_float_format():Dynamic;
	public function test_to_csv_list_entries():Dynamic;
	public function test_to_csv_path_is_none():Dynamic;
	public function test_to_csv_unicode_index():Dynamic;
	public function test_to_dict():Dynamic;
	public function test_to_frame():Dynamic;
	public function test_to_frame_expanddim():Dynamic;
	public function test_to_sparse_pass_name():Dynamic;
	public function test_tolist():Dynamic;
	public function test_truncate():Dynamic;
	public function test_tshift():Dynamic;
	public function test_type_promote_putmask():Dynamic;
	public function test_underlying_data_conversion():Dynamic;
	public function test_unicode_string_with_unicode():Dynamic;
	public function test_unique():Dynamic;
	public function test_unstack():Dynamic;
	public function test_update():Dynamic;
	public function test_valid():Dynamic;
	public function test_valid_dt_with_missing_values():Dynamic;
	public function test_value_counts_nunique():Dynamic;
	public function test_values():Dynamic;
	public function test_var_std():Dynamic;
	public function test_where():Dynamic;
	public function test_where_broadcast():Dynamic;
	public function test_where_datetime():Dynamic;
	public function test_where_dups():Dynamic;
	public function test_where_inplace():Dynamic;
	public function test_where_numeric_with_string():Dynamic;
	public function test_where_setitem_invalid():Dynamic;
	public function test_where_timedelta():Dynamic;
}