/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_backend_qt5") extern class Test_backend_qt5 {
	static public var HAS_QT : Dynamic;
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
		Make a figure
		Send a key_press_event event (using non-public, qt4 backend specific api)
		Catch the event
		Assert sent and caught keys are the same
	**/
	static public function assert_correct_key(qt_key:Dynamic, qt_mods:Dynamic, answer:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	static public function test_alt_control(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_backspace(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_backspace_mod(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_control(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_control_alt(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_fig_close(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_lower(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_modifier_order(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_non_unicode_key(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_shift(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_unicode_lower(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_unicode_upper(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}