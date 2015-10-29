/* This file is generated, do not edit! */
package seaborn.tests;
@:pythonImport("seaborn.tests.test_categorical") extern class Test_categorical {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var pandas_has_categoricals : Dynamic;
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
}