/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_animation") extern class Test_animation {
	static public var WRITER_OUTPUT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function check_save_animation(writer:Dynamic, ?extension:Dynamic):Dynamic;
	static public function cleanup(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function test_no_length_frames():Dynamic;
	static public function test_save_animation_smoketest():Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Decorator to add setup and/or teardown methods to a test function::
		
		  @with_setup(setup, teardown)
		  def test_something():
		      " ... "
		
		Note that `with_setup` is useful *only* for test functions, not for test
		methods or inside of TestCase subclasses.
	**/
	static public function with_setup(?setup:Dynamic, ?teardown:Dynamic):Dynamic;
}