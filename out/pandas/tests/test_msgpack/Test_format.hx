/* This file is generated, do not edit! */
package pandas.tests.test_msgpack;
@:pythonImport("pandas.tests.test_msgpack.test_format") extern class Test_format {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function check(src:Dynamic, should:Dynamic, ?use_list:Dynamic):Dynamic;
	static public function testArray():Dynamic;
	static public function testFixArray():Dynamic;
	static public function testFixMap():Dynamic;
	static public function testFixRaw():Dynamic;
	static public function testFixnum():Dynamic;
	static public function testMap():Dynamic;
	static public function testRaw():Dynamic;
	static public function testSignedInt():Dynamic;
	static public function testSimpleValue():Dynamic;
	static public function testUnsignedInt():Dynamic;
	/**
		unpackb(packed, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None, ext_hook=ExtType, Py_ssize_t max_str_len=2147483647, Py_ssize_t max_bin_len=2147483647, Py_ssize_t max_array_len=2147483647, Py_ssize_t max_map_len=2147483647, Py_ssize_t max_ext_len=2147483647)
		
		Unpack packed_bytes to object. Returns an unpacked object.
		
		Raises `ValueError` when `packed` contains extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpackb(args:haxe.extern.Rest<Dynamic>):Dynamic;
}