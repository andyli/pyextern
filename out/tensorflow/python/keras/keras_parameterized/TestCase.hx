/* This file is generated, do not edit! */
package tensorflow.python.keras.keras_parameterized;
@:pythonImport("tensorflow.python.keras.keras_parameterized", "TestCase") extern class TestCase {
	/**
		Asserts that a and b are the same proto.
		
		Uses ProtoEq() first, as it returns correct results
		for floating point attributes, and then use assertProtoEqual()
		in case of failure as it provides good error messages.
		
		Args:
		  a: a proto.
		  b: another proto.
		  msg: Optional message to report on failure.
	**/
	public function _AssertProtoEquals(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	static public function _AssertRaisesContext(expected_exception:Dynamic, test_case:Dynamic, test_func:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		A wrapper class for Thread that asserts successful completion.
		
		This class should be created using the TensorFlowTestCase.checkedThread()
		method.
	**/
	static public function _CheckedThread(testcase:Dynamic, target:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	public function _ClearCachedSession():Dynamic;
	public function _GetNdArray(a:Dynamic):Dynamic;
	public function _NDArrayNear(ndarray1:Dynamic, ndarray2:Dynamic, err:Dynamic):Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Metaclass for test cases with test generators.
		
		A test generator is an iterable in a testcase that produces callables. These
		callables must be single-argument methods. These methods are injected into
		the class namespace and the original iterable is removed. If the name of the
		iterable conforms to the test pattern, the injected methods will be picked
		up as tests by the unittest framework.
		
		In general, it is supposed to be used in conjuction with the
		parameters decorator.
	**/
	static public function __class__(class_name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
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
		Create an instance of the class that will use the named test
		method when executed. Raises a ValueError if the instance does
		not have a method with the specified name.
	**/
	public function new(?methodName:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _addExpectedFailure(result:Dynamic, exc_info:Dynamic):Dynamic;
	public function _addSkip(result:Dynamic, test_case:Dynamic, reason:Dynamic):Dynamic;
	public function _addUnexpectedSuccess(result:Dynamic):Dynamic;
	public function _assertAllCloseRecursive(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?path:Dynamic, ?msg:Dynamic):Dynamic;
	public function _assertArrayLikeAllClose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		The default assertEqual implementation, not type specific.
	**/
	public function _baseAssertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public var _classSetupFailed : Dynamic;
	/**
		Set the session and its graph to global default and constrain devices.
	**/
	public function _constrain_devices_and_set_default(sess:Dynamic, use_gpu:Dynamic, force_gpu:Dynamic):Dynamic;
	/**
		See session() for details.
	**/
	public function _create_session(graph:Dynamic, config:Dynamic, force_gpu:Dynamic):Dynamic;
	static public function _deprecate(original_func:Dynamic):Dynamic;
	static public var _diffThreshold : Dynamic;
	public function _eval_helper(tensors:Dynamic):Dynamic;
	public function _eval_tensor(tensor:Dynamic):Dynamic;
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
		Generate a summary of ndarray subscripts as a list of str.
		
		If limit == N, this method will print up to the first N subscripts on
		separate
		lines. A line of ellipses (...) will be appended at the end if the number of
		subscripts exceeds N.
		
		Args:
		  subscripts: The tensor (np.ndarray) subscripts, of the same format as
		    np.where()'s return value, i.e., a tuple of arrays with each array
		    corresponding to a dimension. E.g., (array([1, 1]), array([0, 1])).
		  value: (np.ndarray) value of the tensor.
		  limit: (int) The maximum number of indices to print.
		  indent: (int) Number of characters to indent at the beginning of each
		    line.
		
		Returns:
		  (list of str) the multi-line representation of the subscripts and values,
		    potentially with omission at the end.
	**/
	public function _format_subscripts(subscripts:Dynamic, value:Dynamic, ?limit:Dynamic, ?indent:Dynamic):Dynamic;
	/**
		Get a detailed comparison function for the types of the two args.
		
		Returns: A callable accepting (first, second, msg=None) that will
		raise a failure exception if first != second with a useful human
		readable error message for those types.
	**/
	public function _getAssertEqualityFunc(first:Dynamic, second:Dynamic):Dynamic;
	/**
		See cached_session() for documentation.
	**/
	public function _get_cached_session(?graph:Dynamic, ?config:Dynamic, ?force_gpu:Dynamic, ?crash_if_inconsistent_args:Dynamic):Dynamic;
	static public function _get_tempdir_path_cls():Dynamic;
	public function _get_tempdir_path_test():Dynamic;
	public function _get_tempfile_cleanup(_override:Dynamic):Dynamic;
	public function _internal_cleanup_on_success(_function:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _maybe_add_temp_path_cleanup(path:Dynamic, cleanup:Dynamic):Dynamic;
	public function _ran_and_passed():Dynamic;
	static public var _test_method_ids : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _truncateMessage(message:Dynamic, diff:Dynamic):Dynamic;
	/**
		Add a function, with arguments, to be called when the test is
		completed. Functions added are called on a LIFO basis and are
		called after tearDown on test failure or success.
		
		Cleanup items are called even if setUp fails (unlike tearDown).
	**/
	public function addCleanup(_function:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Asserts that two structures of numpy arrays or Tensors, have near values.
		
		`a` and `b` can be arbitrarily nested structures. A layer of a nested
		structure can be a `dict`, `namedtuple`, `tuple` or `list`.
		
		Args:
		  a: The expected numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor), or any arbitrarily nested of
		     structure of these.
		  b: The actual numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor), or any arbitrarily nested of
		     structure of these.
		  rtol: relative tolerance.
		  atol: absolute tolerance.
		  msg: Optional message to report on failure.
		
		Raises:
		  ValueError: if only one of `a[p]` and `b[p]` is a dict or
		      `a[p]` and `b[p]` have different length, where `[p]` denotes a path
		      to the nested structure, e.g. given `a = [(1, 1), {'d': (6, 7)}]` and
		      `[p] = [1]['d']`, then `a[p] = (6, 7)`.
	**/
	public function assertAllClose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Like assertAllClose, but also suitable for comparing fp16 arrays.
		
		In particular, the tolerance is reduced to 1e-3 if at least
		one of the arguments is of type float16.
		
		Args:
		  a: the expected numpy ndarray or anything can be converted to one.
		  b: the actual numpy ndarray or anything can be converted to one.
		  rtol: relative tolerance.
		  atol: absolute tolerance.
		  float_rtol: relative tolerance for float32.
		  float_atol: absolute tolerance for float32.
		  half_rtol: relative tolerance for float16.
		  half_atol: absolute tolerance for float16.
		  bfloat16_rtol: relative tolerance for bfloat16.
		  bfloat16_atol: absolute tolerance for bfloat16.
		  msg: Optional message to report on failure.
	**/
	public function assertAllCloseAccordingToType(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?float_rtol:Dynamic, ?float_atol:Dynamic, ?half_rtol:Dynamic, ?half_atol:Dynamic, ?bfloat16_rtol:Dynamic, ?bfloat16_atol:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that two numpy arrays or Tensors have the same values.
		
		Args:
		  a: the expected numpy ndarray or anything can be converted to one.
		  b: the actual numpy ndarray or anything can be converted to one.
		  msg: Optional message to report on failure.
	**/
	public function assertAllEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Assert element values are all greater than a target value.
		
		Args:
		  a: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  comparison_target: The target value of comparison.
	**/
	public function assertAllGreater(a:Dynamic, comparison_target:Dynamic):Dynamic;
	/**
		Assert element values are all greater than or equal to a target value.
		
		Args:
		  a: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  comparison_target: The target value of comparison.
	**/
	public function assertAllGreaterEqual(a:Dynamic, comparison_target:Dynamic):Dynamic;
	/**
		Assert that elements in a Tensor are all in a given range.
		
		Args:
		  target: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  lower_bound: lower bound of the range
		  upper_bound: upper bound of the range
		  open_lower_bound: (`bool`) whether the lower bound is open (i.e., > rather
		    than the default >=)
		  open_upper_bound: (`bool`) whether the upper bound is open (i.e., < rather
		    than the default <=)
		
		Raises:
		  AssertionError:
		    if the value tensor does not have an ordered numeric type (float* or
		      int*), or
		    if there are nan values, or
		    if any of the elements do not fall in the specified range.
	**/
	public function assertAllInRange(target:Dynamic, lower_bound:Dynamic, upper_bound:Dynamic, ?open_lower_bound:Dynamic, ?open_upper_bound:Dynamic):Dynamic;
	/**
		Assert that elements of a Tensor are all in a given closed set.
		
		Args:
		  target: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  expected_set: (`list`, `tuple` or `set`) The closed set that the elements
		    of the value of `target` are expected to fall into.
		
		Raises:
		  AssertionError:
		    if any of the elements do not fall into `expected_set`.
	**/
	public function assertAllInSet(target:Dynamic, expected_set:Dynamic):Dynamic;
	/**
		Assert element values are all less than a target value.
		
		Args:
		  a: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  comparison_target: The target value of comparison.
	**/
	public function assertAllLess(a:Dynamic, comparison_target:Dynamic):Dynamic;
	/**
		Assert element values are all less than or equal to a target value.
		
		Args:
		  a: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  comparison_target: The target value of comparison.
	**/
	public function assertAllLessEqual(a:Dynamic, comparison_target:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		difference between the two objects is more than the given
		delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most significant digit).
		
		If the two objects compare equal then they will automatically
		compare almost equal.
	**/
	public function assertAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	static public function assertAlmostEquals(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that two float arrays are near each other.
		
		Checks that for all elements of farray1 and farray2
		|f1 - f2| < err.  Asserts a test failure if not.
		
		Args:
		  farray1: a list of float values.
		  farray2: a list of float values.
		  err: a float value.
		  msg: Optional message to report on failure.
	**/
	public function assertArrayNear(farray1:Dynamic, farray2:Dynamic, err:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that value is between minv and maxv (inclusive).
	**/
	public function assertBetween(value:Dynamic, minv:Dynamic, maxv:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts a shell command fails and the error matches a regex in a list.
		
		Args:
		  command: List or string representing the command to run.
		  regexes: the list of regular expression strings.
		  env: Dictionary of environment variable settings. If None, no environment
		      variables will be set for the child process. This is to make tests
		      more hermetic. NOTE: this behavior is different than the standard
		      subprocess module.
		  close_fds: Whether or not to close all open fd's in the child after
		      forking.
		  msg: Optional message to report on failure.
	**/
	public function assertCommandFails(command:Dynamic, regexes:Dynamic, ?env:Dynamic, ?close_fds:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that a shell command succeeds (i.e. exits with code 0).
		
		Args:
		  command: List or string representing the command to run.
		  regexes: List of regular expression byte strings that match success.
		  env: Dictionary of environment variable settings. If None, no environment
		      variables will be set for the child process. This is to make tests
		      more hermetic. NOTE: this behavior is different than the standard
		      subprocess module.
		  close_fds: Whether or not to close all open fd's in the child after
		      forking.
		  msg: Optional message to report on failure.
	**/
	public function assertCommandSucceeds(command:Dynamic, ?regexes:Dynamic, ?env:Dynamic, ?close_fds:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that "container" contains "subsequence" as an exact subsequence.
		
		Asserts that "container" contains all the elements of "subsequence", in
		order, and without other elements interspersed. For example, [1, 2, 3] is an
		exact subsequence of [0, 0, 1, 2, 3, 0] but not of [0, 0, 1, 2, 0, 3, 0].
		
		Args:
		  container: the list we're testing for subsequence inclusion.
		  subsequence: the list we hope will be an exact subsequence of container.
		  msg: Optional message to report on failure.
	**/
	public function assertContainsExactSubsequence(container:Dynamic, subsequence:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that the strings provided are found in the target in order.
		
		This may be useful for checking HTML output.
		
		Args:
		  strings: A list of strings, such as [ 'fox', 'dog' ]
		  target: A target string in which to look for the strings, such as
		      'The quick brown fox jumped over the lazy dog'.
		  msg: Optional message to report on failure.
	**/
	public function assertContainsInOrder(strings:Dynamic, target:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that "container" contains "subsequence" as a subsequence.
		
		Asserts that "container" contains all the elements of "subsequence", in
		order, but possibly with other elements interspersed. For example, [1, 2, 3]
		is a subsequence of [0, 0, 1, 2, 0, 3, 0] but not of [0, 0, 1, 3, 0, 2, 0].
		
		Args:
		  container: the list we're testing for subsequence inclusion.
		  subsequence: the list we hope will be a subsequence of container.
		  msg: Optional message to report on failure.
	**/
	public function assertContainsSubsequence(container:Dynamic, subsequence:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks whether actual iterable is a superset of expected iterable.
	**/
	public function assertContainsSubset(expected_subset:Dynamic, actual_set:Dynamic, ?msg:Dynamic):Dynamic;
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
		Assert ndarray data type is equal to expected.
		
		Args:
		  target: The numpy `ndarray`, or anything that can be converted into a
		     numpy `ndarray` (including Tensor).
		  expected_dtype: Expected data type.
	**/
	public function assertDTypeEqual(target:Dynamic, expected_dtype:Dynamic):Dynamic;
	/**
		Asserts that the two given devices are the same.
		
		Args:
		  device1: A string device name or TensorFlow `DeviceSpec` object.
		  device2: A string device name or TensorFlow `DeviceSpec` object.
		  msg: Optional message to report on failure.
	**/
	public function assertDeviceEqual(device1:Dynamic, device2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks whether dictionary is a superset of subset.
	**/
	public function assertDictContainsSubset(subset:Dynamic, dictionary:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Raises AssertionError if a and b are not equal dictionaries.
		
		Args:
		  a: A dict, the expected value.
		  b: A dict, the actual value.
		  msg: An optional str, the associated message.
		
		Raises:
		  AssertionError: if the dictionaries are not equal.
	**/
	public function assertDictEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that an object has zero length.
		
		Args:
		  container: Anything that implements the collections.Sized interface.
		  msg: Optional message to report on failure.
	**/
	public function assertEmpty(container:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that actual.endswith(expected_end) is True.
		
		Args:
		  actual: str
		  expected_end: str
		  msg: Optional message to report on failure.
	**/
	public function assertEndsWith(actual:Dynamic, expected_end:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	public function assertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public function assertEquals(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Just like self.assertTrue(a in b), but with a nicer default message.
	**/
	public function assertIn(member:Dynamic, container:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a is b), but with a nicer default message.
	**/
	public function assertIs(expr1:Dynamic, expr2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Same as self.assertTrue(isinstance(obj, cls)), with a nicer
		default message.
	**/
	public function assertIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Same as self.assertTrue(obj is None), with a nicer default message.
	**/
	public function assertIsNone(obj:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a is not b), but with a nicer default message.
	**/
	public function assertIsNot(expr1:Dynamic, expr2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Included for symmetry with assertIsNone.
	**/
	public function assertIsNotNone(obj:Dynamic, ?msg:Dynamic):Dynamic;
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
	public function assertItemsEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that the JSON objects defined in two strings are equal.
		
		A summary of the differences will be included in the failure message
		using assertSameStructure.
		
		Args:
		  first: A string contining JSON to decode and compare to second.
		  second: A string contining JSON to decode and compare to first.
		  msg: Additional text to include in the failure message.
	**/
	public function assertJsonEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that an object has the expected length.
		
		Args:
		  container: Anything that implements the collections.Sized interface.
		  expected_len: The expected length of the container.
		  msg: Optional message to report on failure.
	**/
	public function assertLen(container:Dynamic, expected_len:Dynamic, ?msg:Dynamic):Dynamic;
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
		Asserts that two multi-line strings are equal.
	**/
	public function assertMultiLineEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that two numpy arrays have near values.
		
		Args:
		  ndarray1: a numpy ndarray.
		  ndarray2: a numpy ndarray.
		  err: a float. The maximum absolute difference allowed.
		  msg: Optional message to report on failure.
	**/
	public function assertNDArrayNear(ndarray1:Dynamic, ndarray2:Dynamic, err:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that two floats are near each other.
		
		Checks that |f1 - f2| < err and asserts a test failure
		if not.
		
		Args:
		  f1: A float value.
		  f2: A float value.
		  err: A float value.
		  msg: An optional string message to append to the failure message.
	**/
	public function assertNear(f1:Dynamic, f2:Dynamic, err:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks whether actual iterable and expected iterable are disjoint.
	**/
	public function assertNoCommonElements(expected_seq:Dynamic, actual_seq:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Assert that two numpy arrays, or or Tensors, do not have near values.
		
		Args:
		  a: the first value to compare.
		  b: the second value to compare.
		  **kwargs: additional keyword arguments to be passed to the underlying
		    `assertAllClose` call.
		
		Raises:
		  AssertionError: If `a` and `b` are unexpectedly close at all elements.
	**/
	public function assertNotAllClose(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fail if the two objects are equal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		difference between the two objects is less than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most significant digit).
		
		Objects that are equal automatically fail.
	**/
	public function assertNotAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	static public function assertNotAlmostEquals(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that an object has non-zero length.
		
		Args:
		  container: Anything that implements the collections.Sized interface.
		  msg: Optional message to report on failure.
	**/
	public function assertNotEmpty(container:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that actual.endswith(unexpected_end) is False.
		
		Args:
		  actual: str
		  unexpected_end: str
		  msg: Optional message to report on failure.
	**/
	public function assertNotEndsWith(actual:Dynamic, unexpected_end:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by the '!='
		operator.
	**/
	public function assertNotEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public function assertNotEquals(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Just like self.assertTrue(a not in b), but with a nicer default message.
	**/
	public function assertNotIn(member:Dynamic, container:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Included for symmetry with assertIsInstance.
	**/
	public function assertNotIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail the test if the text matches the regular expression.
	**/
	public function assertNotRegex(text:Dynamic, unexpected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	static public function assertNotRegexpMatches(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that actual.startswith(unexpected_start) is False.
		
		Args:
		  actual: str
		  unexpected_start: str
		  msg: Optional message to report on failure.
	**/
	public function assertNotStartsWith(actual:Dynamic, unexpected_start:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that message is same as parsed expected_message_ascii.
		
		Creates another prototype of message, reads the ascii message into it and
		then compares them using self._AssertProtoEqual().
		
		Args:
		  expected_message_maybe_ascii: proto message in original or ascii form.
		  message: the message to validate.
		  msg: Optional message to report on failure.
	**/
	public function assertProtoEquals(expected_message_maybe_ascii:Dynamic, message:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertProtoEqualsVersion(expected:Dynamic, actual:Dynamic, ?producer:Dynamic, ?min_consumer:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail unless an exception of class expected_exception is raised
		by the callable when invoked with specified positional and
		keyword arguments. If a different type of exception is
		raised, it will not be caught, and the test case will be
		deemed to have suffered an error, exactly as for an
		unexpected exception.
		
		If called with the callable and arguments omitted, will return a
		context object used like this::
		
		     with self.assertRaises(SomeException):
		         do_something()
		
		An optional keyword argument 'msg' can be provided when assertRaises
		is used as a context object.
		
		The context manager keeps a reference to the exception as
		the 'exception' attribute. This allows you to inspect the
		exception after the assertion::
		
		    with self.assertRaises(SomeException) as cm:
		        do_something()
		    the_exception = cm.exception
		    self.assertEqual(the_exception.error_code, 3)
	**/
	public function assertRaises(expected_exception:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function assertRaisesOpError(expected_err_re_or_predicate:Dynamic):Dynamic;
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
	public function assertRaisesRegex(expected_exception:Dynamic, expected_regex:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function assertRaisesRegexp(expected_exception:Dynamic, expected_regex:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that the message in a raised exception equals the given string.
		
		Unlike assertRaisesRegex, this method takes a literal string, not
		a regular expression.
		
		with self.assertRaisesWithLiteralMatch(ExType, 'message'):
		  DoSomething()
		
		Args:
		  expected_exception: Exception class expected to be raised.
		  expected_exception_message: String message expected in the raised
		      exception.  For a raise exception e, expected_exception_message must
		      equal str(e).
		  callable_obj: Function to be called, or None to return a context.
		  *args: Extra args.
		  **kwargs: Extra kwargs.
		
		Returns:
		  A context manager if callable_obj is None. Otherwise, None.
		
		Raises:
		  self.failureException if callable_obj does not raise a matching exception.
	**/
	public function assertRaisesWithLiteralMatch(expected_exception:Dynamic, expected_exception_message:Dynamic, ?callable_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a context manager to enclose code expected to raise an exception.
		
		If the exception is an OpError, the op stack is also included in the message
		predicate search.
		
		Args:
		  exception_type: The expected type of exception that should be raised.
		  expected_err_re_or_predicate: If this is callable, it should be a function
		    of one argument that inspects the passed-in exception and
		    returns True (success) or False (please fail the test). Otherwise, the
		    error message is expected to match this regular expression partially.
		
		Returns:
		  A context manager to surround code that is expected to raise an
		  exception.
	**/
	public function assertRaisesWithPredicateMatch(exception_type:Dynamic, expected_err_re_or_predicate:Dynamic):Dynamic;
	/**
		Fail the test unless the text matches the regular expression.
	**/
	public function assertRegex(text:Dynamic, expected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that at least one regex in regexes matches str.
		
		If possible you should use `assertRegex`, which is a simpler
		version of this method. `assertRegex` takes a single regular
		expression (a string or re compiled object) instead of a list.
		
		Notes:
		1. This function uses substring matching, i.e. the matching
		   succeeds if *any* substring of the error message matches *any*
		   regex in the list.  This is more convenient for the user than
		   full-string matching.
		
		2. If regexes is the empty list, the matching will always fail.
		
		3. Use regexes=[''] for a regex that will always pass.
		
		4. '.' matches any single character *except* the newline.  To
		   match any character, use '(.|\n)'.
		
		5. '^' matches the beginning of each line, not just the beginning
		   of the string.  Similarly, '$' matches the end of each line.
		
		6. An exception will be thrown if regexes contains an invalid
		   regex.
		
		Args:
		  actual_str:  The string we try to match with the items in regexes.
		  regexes:  The regular expressions we want to match against str.
		      See "Notes" above for detailed notes on how this is interpreted.
		  message:  The message to be printed if the test fails.
	**/
	public function assertRegexMatch(actual_str:Dynamic, regexes:Dynamic, ?message:Dynamic):Dynamic;
	static public function assertRegexpMatches(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Asserts that two sequences have the same elements (in any order).
		
		This method, unlike assertCountEqual, doesn't care about any
		duplicates in the expected and actual sequences.
		
		  >> assertSameElements([1, 1, 1, 0, 0, 0], [0, 1])
		  # Doesn't raise an AssertionError
		
		If possible, you should use assertCountEqual instead of
		assertSameElements.
		
		Args:
		  expected_seq: A sequence containing elements we are expecting.
		  actual_seq: The sequence that we are testing.
		  msg: The message to be printed if the test fails.
	**/
	public function assertSameElements(expected_seq:Dynamic, actual_seq:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that two values contain the same structural content.
		
		The two arguments should be data trees consisting of trees of dicts and
		lists. They will be deeply compared by walking into the contents of dicts
		and lists; other items will be compared using the == operator.
		If the two structures differ in content, the failure message will indicate
		the location within the structures where the first difference is found.
		This may be helpful when comparing large structures.
		
		Mixed Sequence and Set types are supported. Mixed Mapping types are
		supported, but the order of the keys will not be considered in the
		comparison.
		
		Args:
		  a: The first structure to compare.
		  b: The second structure to compare.
		  aname: Variable name to use for the first structure in assertion messages.
		  bname: Variable name to use for the second structure.
		  msg: Additional text to include in the failure message.
	**/
	public function assertSameStructure(a:Dynamic, b:Dynamic, ?aname:Dynamic, ?bname:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		An approximate equality assertion for ordered sequences.
		
		Fail if the two sequences are unequal as determined by their value
		differences rounded to the given number of decimal places (default 7) and
		comparing to zero, or by comparing that the difference between each value
		in the two sequences is more than the given delta.
		
		Note that decimal places (from zero) are usually not the same as significant
		digits (measured from the most signficant digit).
		
		If the two sequences compare equal then they will automatically compare
		almost equal.
		
		Args:
		  expected_seq: A sequence containing elements we are expecting.
		  actual_seq: The sequence that we are testing.
		  places: The number of decimal places to compare.
		  msg: The message to be printed if the test fails.
		  delta: The OK difference between compared values.
	**/
	public function assertSequenceAlmostEqual(expected_seq:Dynamic, actual_seq:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
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
		An equality assertion for the beginning of ordered sequences.
		
		If prefix is an empty sequence, it will raise an error unless whole is also
		an empty sequence.
		
		If prefix is not a sequence, it will raise an error if the first element of
		whole does not match.
		
		Args:
		  prefix: A sequence expected at the beginning of the whole parameter.
		  whole: The sequence in which to look for prefix.
		  msg: Optional message to report on failure.
	**/
	public function assertSequenceStartsWith(prefix:Dynamic, whole:Dynamic, ?msg:Dynamic):Dynamic;
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
		Asserts that a Numpy ndarray and a TensorFlow tensor have the same shape.
		
		Args:
		  np_array: A Numpy ndarray or Numpy scalar.
		  tf_tensor: A Tensor.
		  msg: Optional message to report on failure.
		
		Raises:
		  TypeError: If the arguments have the wrong type.
	**/
	public function assertShapeEqual(np_array:Dynamic, tf_tensor:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Assert that actual.startswith(expected_start) is True.
		
		Args:
		  actual: str
		  expected_start: str
		  msg: Optional message to report on failure.
	**/
	public function assertStartsWith(actual:Dynamic, expected_start:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Asserts that total ordering has been implemented correctly.
		
		For example, say you have a class A that compares only on its attribute x.
		Comparators other than __lt__ are omitted for brevity.
		
		class A(object):
		  def __init__(self, x, y):
		    self.x = x
		    self.y = y
		
		  def __hash__(self):
		    return hash(self.x)
		
		  def __lt__(self, other):
		    try:
		      return self.x < other.x
		    except AttributeError:
		      return NotImplemented
		
		assertTotallyOrdered will check that instances can be ordered correctly.
		For example,
		
		self.assertTotallyOrdered(
		  [None],  # None should come before everything else.
		  [1],     # Integers sort earlier.
		  [A(1, 'a')],
		  [A(2, 'b')],  # 2 is after 1.
		  [A(3, 'c'), A(3, 'd')],  # The second argument is irrelevant.
		  [A(4, 'z')],
		  ['foo'])  # Strings sort last.
		
		Args:
		 *groups: A list of groups of elements.  Each group of elements is a list
		     of objects that are equal.  The elements in each group must be less
		     than the elements in the group after it.  For example, these groups are
		     totally ordered: [None], [1], [2, 2], [3].
		  **kwargs: optional msg keyword argument can be passed.
	**/
	public function assertTotallyOrdered(?groups:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Asserts that urls are equal, ignoring ordering of query params.
	**/
	public function assertUrlEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
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
	public function assertWarns(expected_warning:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function assertWarnsRegex(expected_warning:Dynamic, expected_regex:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function assert_(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a TensorFlow Session for use in executing tests.
		
		This method behaves differently than self.session(): for performance reasons
		`cached_session` will by default reuse the same session within the same
		test. The session returned by this function will only be closed at the end
		of the test (in the TearDown function).
		
		Use the `use_gpu` and `force_gpu` options to control where ops are run. If
		`force_gpu` is True, all ops are pinned to `/device:GPU:0`. Otherwise, if
		`use_gpu` is True, TensorFlow tries to run as many ops on the GPU as
		possible. If both `force_gpu and `use_gpu` are False, all ops are pinned to
		the CPU.
		
		Example:
		```python
		class MyOperatorTest(test_util.TensorFlowTestCase):
		  def testMyOperator(self):
		    with self.cached_session(use_gpu=True) as sess:
		      valid_input = [1.0, 2.0, 3.0, 4.0, 5.0]
		      result = MyOperator(valid_input).eval()
		      self.assertEqual(result, [1.0, 2.0, 3.0, 5.0, 8.0]
		      invalid_input = [-1.0, 2.0, 7.0]
		      with self.assertRaisesOpError("negative input not supported"):
		        MyOperator(invalid_input).eval()
		```
		
		Args:
		  graph: Optional graph to use during the returned session.
		  config: An optional config_pb2.ConfigProto to use to configure the
		    session.
		  use_gpu: If True, attempt to run as many ops as possible on GPU.
		  force_gpu: If True, pin all ops to `/device:GPU:0`.
		
		Yields:
		  A Session object that should be used as a context manager to surround
		  the graph building and execution code in a test case.
	**/
	public function cached_session(?graph:Dynamic, ?config:Dynamic, ?use_gpu:Dynamic, ?force_gpu:Dynamic):Dynamic;
	/**
		A context manager that captures the writes to a given stream.
		
		This context manager captures all writes to a given stream inside of a
		`CapturedWrites` object. When this context manager is created, it yields
		the `CapturedWrites` object. The captured contents can be accessed  by
		calling `.contents()` on the `CapturedWrites`.
		
		For this function to work, the stream must have a file descriptor that
		can be modified using `os.dup` and `os.dup2`, and the stream must support
		a `.flush()` method. The default python sys.stdout and sys.stderr are
		examples of this. Note that this does not work in Colab or Jupyter
		notebooks, because those use alternate stdout streams.
		
		Example:
		```python
		class MyOperatorTest(test_util.TensorFlowTestCase):
		  def testMyOperator(self):
		    input = [1.0, 2.0, 3.0, 4.0, 5.0]
		    with self.captureWritesToStream(sys.stdout) as captured:
		      result = MyOperator(input).eval()
		    self.assertStartsWith(captured.contents(), "This was printed.")
		```
		
		Args:
		  stream: The stream whose writes should be captured. This
		    stream must have a file descriptor, support writing via using that
		    file descriptor, and must have a `.flush()` method.
		
		Yields:
		  A `CapturedWrites` object that contains all writes to the specified stream
		  made during this context.
	**/
	public function captureWritesToStream(stream:Dynamic):Dynamic;
	/**
		Returns a Thread wrapper that asserts 'target' completes successfully.
		
		This method should be used to create all threads in test cases, as
		otherwise there is a risk that a thread will silently fail, and/or
		assertions made in the thread will not be respected.
		
		Args:
		  target: A callable object to be executed in the thread.
		  args: The argument tuple for the target invocation. Defaults to ().
		  kwargs: A dictionary of keyword arguments for the target invocation.
		    Defaults to {}.
		
		Returns:
		  A wrapper for threading.Thread that supports start() and join() methods.
	**/
	public function checkedThread(target:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	public function countTestCases():Dynamic;
	/**
		Create a temporary directory specific to the test.
		
		NOTE: The directory and its contents will be recursively cleared before
		creation. This ensures that there is no pre-existing state.
		
		This creates a named directory on disk that is isolated to this test, and
		will be properly cleaned up by the test. This avoids several pitfalls of
		creating temporary directories for test purposes, as well as makes it easier
		to setup directories and verify their contents.
		
		See also: `create_tempfile()` for creating temporary files.
		
		Args:
		  name: Optional name of the directory. If not given, a unique
		    name will be generated and used.
		  cleanup: Optional cleanup policy on when/if to remove the directory (and
		    all its contents) at the end of the test. If None, then uses
		    `self.tempfile_cleanup`.
		
		Returns:
		  A _TempDir representing the created directory.
	**/
	public function create_tempdir(?name:Dynamic, ?cleanup:Dynamic):Dynamic;
	/**
		Create a temporary file specific to the test.
		
		This creates a named file on disk that is isolated to this test, and will
		be properly cleaned up by the test. This avoids several pitfalls of
		creating temporary files for test purposes, as well as makes it easier
		to setup files, their data, read them back, and inspect them when
		a test fails.
		
		NOTE: This will zero-out the file. This ensures there is no pre-existing
		state.
		
		See also: `create_tempdir()` for creating temporary directories.
		
		Args:
		  file_path: Optional file path for the temp file. If not given, a unique
		    file name will be generated and used. Slashes are allowed in the name;
		    any missing intermediate directories will be created. NOTE: This path is
		    the path that will be cleaned up, including any directories in the path,
		    e.g., 'foo/bar/baz.txt' will `rm -r foo`.
		  content: Optional string or
		    bytes to initially write to the file. If not
		    specified, then an empty file is created.
		  mode: Mode string to use when writing content. Only used if `content` is
		    non-empty.
		  encoding: Encoding to use when writing string content. Only used if
		    `content` is text.
		  errors: How to handle text to bytes encoding errors. Only used if
		    `content` is text.
		  cleanup: Optional cleanup policy on when/if to remove the directory (and
		    all its contents) at the end of the test. If None, then uses
		    `self.tempfile_cleanup`.
		
		Returns:
		  A _TempFile representing the created file.
	**/
	public function create_tempfile(?file_path:Dynamic, ?content:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?cleanup:Dynamic):Dynamic;
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
		Evaluates tensors and returns numpy values.
		
		Args:
		  tensors: A Tensor or a nested list/tuple of Tensors.
		
		Returns:
		  tensors numpy values.
	**/
	public function evaluate(tensors:Dynamic):Dynamic;
	/**
		Fail immediately with the given message, optionally prefixed.
	**/
	public function fail(?msg:Dynamic, ?prefix:Dynamic):Dynamic;
	static public function failIf(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failIfAlmostEqual(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failIfEqual(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failUnless(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failUnlessAlmostEqual(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failUnlessEqual(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function failUnlessRaises(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Assertion failed.
	**/
	public function failureException(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a unique temporary directory for the test to use.
		
		If you call this method multiple times during in a test, it will return the
		same folder. However, across different runs the directories will be
		different. This will ensure that across different runs tests will not be
		able to pollute each others environment.
		If you need multiple unique directories within a single test, you should
		use tempfile.mkdtemp as follows:
		  tempfile.mkdtemp(dir=self.get_temp_dir()):
		
		Returns:
		  string, the path to the unique temporary directory created for this test.
	**/
	public function get_temp_dir():Dynamic;
	/**
		Returns the descriptive ID of the test.
		
		This is used internally by the unittesting framework to get a name
		for the test to be used in reports.
		
		Returns:
		  The test id.
	**/
	public function id():Dynamic;
	static public var longMessage : Dynamic;
	static public var maxDiff : Dynamic;
	public function run(?result:Dynamic):Dynamic;
	/**
		Returns a TensorFlow Session for use in executing tests.
		
		Note that this will set this session and the graph as global defaults.
		
		Use the `use_gpu` and `force_gpu` options to control where ops are run. If
		`force_gpu` is True, all ops are pinned to `/device:GPU:0`. Otherwise, if
		`use_gpu` is True, TensorFlow tries to run as many ops on the GPU as
		possible. If both `force_gpu and `use_gpu` are False, all ops are pinned to
		the CPU.
		
		Example:
		```python
		class MyOperatorTest(test_util.TensorFlowTestCase):
		  def testMyOperator(self):
		    with self.session(use_gpu=True):
		      valid_input = [1.0, 2.0, 3.0, 4.0, 5.0]
		      result = MyOperator(valid_input).eval()
		      self.assertEqual(result, [1.0, 2.0, 3.0, 5.0, 8.0]
		      invalid_input = [-1.0, 2.0, 7.0]
		      with self.assertRaisesOpError("negative input not supported"):
		        MyOperator(invalid_input).eval()
		```
		
		Args:
		  graph: Optional graph to use during the returned session.
		  config: An optional config_pb2.ConfigProto to use to configure the
		    session.
		  use_gpu: If True, attempt to run as many ops as possible on GPU.
		  force_gpu: If True, pin all ops to `/device:GPU:0`.
		
		Yields:
		  A Session object that should be used as a context manager to surround
		  the graph building and execution code in a test case.
	**/
	public function session(?graph:Dynamic, ?config:Dynamic, ?use_gpu:Dynamic, ?force_gpu:Dynamic):Dynamic;
	/**
		Hook method for setting up the test fixture before exercising it.
	**/
	public function setUp():Dynamic;
	/**
		Hook method for setting up class fixture before running tests in the class.
	**/
	static public function setUpClass():Dynamic;
	/**
		Formats both the test method name and the first line of its docstring.
		
		If no docstring is given, only returns the method name.
		
		This method overrides unittest.TestCase.shortDescription(), which
		only returns the first line of the docstring, obscuring the name
		of the test upon failure.
		
		Returns:
		  desc: A short description of a test method.
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
	public function subTest(?msg:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Hook method for deconstructing the test fixture after testing it.
	**/
	public function tearDown():Dynamic;
	/**
		Hook method for deconstructing the class fixture after running all tests in the class.
	**/
	static public function tearDownClass():Dynamic;
	static public var tempfile_cleanup : Dynamic;
	/**
		Use cached_session instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `self.session()` or `self.cached_session()` instead.
	**/
	public function test_session(?graph:Dynamic, ?config:Dynamic, ?use_gpu:Dynamic, ?force_gpu:Dynamic):Dynamic;
}