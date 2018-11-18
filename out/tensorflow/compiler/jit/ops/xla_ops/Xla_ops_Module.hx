/* This file is generated, do not edit! */
package tensorflow.compiler.jit.ops.xla_ops;
@:pythonImport("tensorflow.compiler.jit.ops.xla_ops") extern class Xla_ops_Module {
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Operator that connects the output of an XLA computation to other consumer graph nodes.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_cluster_output(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function xla_cluster_output
	**/
	static public function xla_cluster_output_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		XLA Launch Op. For use by the XLA JIT only.
		
		Args:
		  constants: A list of `Tensor` objects.
		  args: A list of `Tensor` objects.
		  resources: A list of `Tensor` objects with type `resource`.
		  Tresults: A list of `tf.DTypes`.
		  function: A function decorated with @Defun.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tresults`.
	**/
	static public function xla_launch(constants:Dynamic, args:Dynamic, resources:Dynamic, Tresults:Dynamic, _function:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function xla_launch
	**/
	static public function xla_launch_eager_fallback(constants:Dynamic, args:Dynamic, resources:Dynamic, Tresults:Dynamic, _function:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}