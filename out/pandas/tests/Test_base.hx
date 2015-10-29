/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_base") extern class Test_base {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _np_version_under1p9 : Dynamic;
	/**
		Test that obj is an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
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
		return a boolean if we can be successfully converted to a datetimelike 
	**/
	static public function is_datetimelike(data:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}