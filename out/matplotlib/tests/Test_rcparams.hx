/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_rcparams") extern class Test_rcparams {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _validation_fail_helper(validator:Dynamic, arg:Dynamic, exception_type:Dynamic):Dynamic;
	static public function _validation_test_helper(validator:Dynamic, arg:Dynamic, target:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
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
	static public function assert_raises(expected_exception:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Assert the two strings are equal. If not, fail and print their
		diffs using difflib.
	**/
	static public function assert_str_equal(reference_str:Dynamic, test_str:Dynamic, ?format_str:Dynamic):Dynamic;
	/**
		Check that the expression is true.
	**/
	static public function assert_true(expr:Dynamic, ?msg:Dynamic):Dynamic;
	static public function cleanup(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var fname : Dynamic;
	/**
		Assume a will fail if *fail_condition* is True. *fail_condition*
		may also be False or the string 'indeterminate'.
		
		*msg* is the error message displayed for the test.
		
		If *known_exception_class* is not None, the failure is only known
		if the exception is an instance of this class. (Default = None)
	**/
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic, ?known_exception_class:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function test_Bug_2543():Dynamic;
	static public function test_Bug_2543_newer_python():Dynamic;
	static public function test_RcParams_class():Dynamic;
	static public function test_keymaps():Dynamic;
	static public function test_rcparams():Dynamic;
	static public function test_rcparams_init(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_rcparams_reset_after_fail():Dynamic;
	static public function test_rcparams_update(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_validators():Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Convert b to a boolean or raise
	**/
	static public function validate_bool(b:Dynamic):Dynamic;
	/**
		Convert b to a boolean or raise
	**/
	static public function validate_bool_maybe_none(b:Dynamic):Dynamic;
	/**
		return a list
	**/
	static public function validate_stringlist(s:Dynamic):Dynamic;
}