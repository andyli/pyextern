/* This file is generated, do not edit! */
package tensorflow.contrib.remote_fused_graph.pylib.python.ops.gen_remote_fused_graph_ops;
@:pythonImport("tensorflow.contrib.remote_fused_graph.pylib.python.ops.gen_remote_fused_graph_ops") extern class Gen_remote_fused_graph_ops_Module {
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
		  inputs: A list of `Tensor` objects.
		  Toutputs: A list of `tf.DTypes`.
		  serialized_remote_fused_graph_execute_info: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Toutputs`.
	**/
	static public function remote_fused_graph_execute(inputs:Dynamic, Toutputs:Dynamic, serialized_remote_fused_graph_execute_info:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function remote_fused_graph_execute
	**/
	static public function remote_fused_graph_execute_eager_fallback(inputs:Dynamic, Toutputs:Dynamic, serialized_remote_fused_graph_execute_info:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}