/* This file is generated, do not edit! */
package numpy.core._dtype_ctypes;
@:pythonImport("numpy.core._dtype_ctypes") extern class _Dtype_ctypes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _from_ctypes_array(t:Dynamic):Dynamic;
	/**
		Return the dtype type with endianness included if it's the case
	**/
	static public function _from_ctypes_scalar(t:Dynamic):Dynamic;
	static public function _from_ctypes_structure(t:Dynamic):Dynamic;
	static public function _from_ctypes_union(t:Dynamic):Dynamic;
	/**
		Construct a dtype object from a ctypes type
	**/
	static public function dtype_from_ctypes_type(t:Dynamic):Dynamic;
}