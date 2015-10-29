/* This file is generated, do not edit! */
package pandas.msgpack;
@:pythonImport("pandas.msgpack._unpacker") extern class _Unpacker {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		default_read_extended_type(typecode, data)
	**/
	static public function default_read_extended_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpack(stream, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None)
		
		Unpack an object from `stream`.
		
		Raises `ValueError` when `stream` has extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpackb(packed, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None, ext_hook=ExtType, Py_ssize_t max_str_len=2147483647, Py_ssize_t max_bin_len=2147483647, Py_ssize_t max_array_len=2147483647, Py_ssize_t max_map_len=2147483647, Py_ssize_t max_ext_len=2147483647)
		
		Unpack packed_bytes to object. Returns an unpacked object.
		
		Raises `ValueError` when `packed` contains extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpackb(args:haxe.extern.Rest<Dynamic>):Dynamic;
}