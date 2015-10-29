/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg._testutils") extern class _Testutils {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a test array of given shape and data type.
		Returned NxN matrices are posdef, and 2xN are banded-posdef.
	**/
	static public function _get_array(shape:Dynamic, dtype:Dynamic):Dynamic;
	static public function _id(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Test that a call does not overwrite its input arguments
	**/
	static public function assert_no_overwrite(call:Dynamic, shapes:Dynamic, ?dtypes:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}