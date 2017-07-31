/* This file is generated, do not edit! */
package tensorflow.contrib.memory_stats.ops.gen_memory_stats_ops;
@:pythonImport("tensorflow.contrib.memory_stats.ops.gen_memory_stats_ops") extern class Gen_memory_stats_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function bytes_limit(?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function max_bytes_in_use(?name:Dynamic):Dynamic;
}