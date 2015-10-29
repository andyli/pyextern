/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_dviread") extern class Test_dviread {
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
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Call :program:`kpsewhich` to find a file in the texmf tree. If
		*format* is not None, it is used as the value for the
		:option:`--format` option.
		
		Apparently most existing TeX distributions on Unix-like systems
		use kpathsea. I hear MikTeX (a popular distribution on Windows)
		doesn't use kpathsea, so what do we do? (TODO)
		
		.. seealso::
		
		  `Kpathsea documentation <http://www.tug.org/kpathsea/>`_
		    The library that :program:`kpsewhich` is part of.
	**/
	static public function original_find_tex_file(filename:Dynamic, ?format:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function setup():Dynamic;
	static public function teardown():Dynamic;
	static public function test_PsfontsMap():Dynamic;
	static public var unicode_literals : Dynamic;
}