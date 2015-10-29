/* This file is generated, do not edit! */
package pandas.tests.test_msgpack;
@:pythonImport("pandas.tests.test_msgpack.test_read_size") extern class Test_read_size {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Pack object `o` and return packed bytes
		
		See :class:`Packer` for options.
	**/
	static public function packb(o:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_correct_type_nested_array():Dynamic;
	static public function test_incorrect_type_array():Dynamic;
	static public function test_incorrect_type_map():Dynamic;
	static public function test_incorrect_type_nested_map():Dynamic;
	static public function test_read_array_header():Dynamic;
	static public function test_read_map_header():Dynamic;
}