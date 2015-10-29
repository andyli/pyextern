/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_backend_ps") extern class Test_backend_ps {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _test_savefig_to_stringio(?format:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function cleanup(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Assume a will fail if *fail_condition* is True. *fail_condition*
		may also be False or the string 'indeterminate'.
		
		*msg* is the error message displayed for the test.
		
		If *known_exception_class* is not None, the failure is only known
		if the exception is an instance of this class. (Default = None)
	**/
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic, ?known_exception_class:Dynamic):Dynamic;
	static public function needs_ghostscript(f:Dynamic):Dynamic;
	static public function needs_tex(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function test_savefig_to_stringio():Dynamic;
	static public function test_savefig_to_stringio_eps():Dynamic;
	static public function test_savefig_to_stringio_with_distiller(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_savefig_to_stringio_with_usetex(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_savefig_to_stringio_with_usetex_eps(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}