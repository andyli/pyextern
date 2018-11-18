/* This file is generated, do not edit! */
package tensorflow.contrib.memory_stats.ops.gen_memory_stats_ops;
@:pythonImport("tensorflow.contrib.memory_stats.ops.gen_memory_stats_ops") extern class Gen_memory_stats_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
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
	static public function bytes_in_use(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bytes_in_use
	**/
	static public function bytes_in_use_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function bytes_limit(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bytes_limit
	**/
	static public function bytes_limit_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function max_bytes_in_use(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_bytes_in_use
	**/
	static public function max_bytes_in_use_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}