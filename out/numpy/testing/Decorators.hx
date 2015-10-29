/* This file is generated, do not edit! */
package numpy.testing;
@:pythonImport("numpy.testing.decorators") extern class Decorators {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Filter deprecation warnings while running the test suite.
		
		This decorator can be used to filter DeprecationWarning's, to avoid
		printing them during the test suite run, while checking that the test
		actually raises a DeprecationWarning.
		
		Parameters
		----------
		conditional : bool or callable, optional
		    Flag to determine whether to mark test as deprecated or not. If the
		    condition is a callable, it is used at runtime to dynamically make the
		    decision. Default is True.
		
		Returns
		-------
		decorator : function
		    The `deprecated` decorator itself.
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function deprecated(?conditional:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Make function raise KnownFailureTest exception if given condition is true.
		
		If the condition is a callable, it is used at runtime to dynamically
		make the decision. This is useful for tests that may require costly
		imports, to delay the cost until the test suite is actually executed.
		
		Parameters
		----------
		fail_condition : bool or callable
		    Flag to determine whether to mark the decorated test as a known
		    failure (if True) or not (if False).
		msg : str, optional
		    Message to give on raising a KnownFailureTest exception.
		    Default is None.
		
		Returns
		-------
		decorator : function
		    Decorator, which, when applied to a function, causes SkipTest
		    to be raised when `skip_condition` is True, and the function
		    to be called normally otherwise.
		
		Notes
		-----
		The decorator itself is decorated with the ``nose.tools.make_decorator``
		function in order to transmit function name, and various other metadata.
	**/
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Signals to nose that this function is or is not a test.
		
		Parameters
		----------
		tf : bool
		    If True, specifies that the decorated callable is a test.
		    If False, specifies that the decorated callable is not a test.
		    Default is True.
		
		Notes
		-----
		This decorator can't use the nose namespace, because it can be
		called from a non-test module. See also ``istest`` and ``nottest`` in
		``nose.tools``.
		
		Examples
		--------
		`setastest` can be used in the following way::
		
		  from numpy.testing.decorators import setastest
		
		  @setastest(False)
		  def func_with_test_in_name(arg1, arg2):
		      pass
	**/
	static public function setastest(?tf:Dynamic):Dynamic;
	/**
		Make function raise SkipTest exception if a given condition is true.
		
		If the condition is a callable, it is used at runtime to dynamically
		make the decision. This is useful for tests that may require costly
		imports, to delay the cost until the test suite is actually executed.
		
		Parameters
		----------
		skip_condition : bool or callable
		    Flag to determine whether to skip the decorated test.
		msg : str, optional
		    Message to give on raising a SkipTest exception. Default is None.
		
		Returns
		-------
		decorator : function
		    Decorator which, when applied to a function, causes SkipTest
		    to be raised when `skip_condition` is True, and the function
		    to be called normally otherwise.
		
		Notes
		-----
		The decorator itself is decorated with the ``nose.tools.make_decorator``
		function in order to transmit function name, and various other metadata.
	**/
	static public function skipif(skip_condition:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Label a test as 'slow'.
		
		The exact definition of a slow test is obviously both subjective and
		hardware-dependent, but in general any individual test that requires more
		than a second or two should be labeled as slow (the whole suite consits of
		thousands of tests, so even a second is significant).
		
		Parameters
		----------
		t : callable
		    The test to label as slow.
		
		Returns
		-------
		t : callable
		    The decorated test `t`.
		
		Examples
		--------
		The `numpy.testing` module includes ``import decorators as dec``.
		A test can be decorated as slow like this::
		
		  from numpy.testing import *
		
		  @dec.slow
		  def test_big(self):
		      print 'Big, slow test'
	**/
	static public function slow(t:Dynamic):Dynamic;
}