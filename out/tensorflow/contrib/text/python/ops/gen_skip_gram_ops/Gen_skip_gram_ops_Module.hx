/* This file is generated, do not edit! */
package tensorflow.contrib.text.python.ops.gen_skip_gram_ops;
@:pythonImport("tensorflow.contrib.text.python.ops.gen_skip_gram_ops") extern class Gen_skip_gram_ops_Module {
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
	static public var _skip_gram_generate_candidates_outputs : Dynamic;
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
		Generates skip-gram token and label paired Tensors from the input tensor.
		
		See docs for the public-facing skip_gram_sample() Python op for more details.
		
		Args:
		  input_tensor: A `Tensor`.
		  min_skips: A `Tensor` of type `int32`.
		  max_skips: A `Tensor` of type `int32`.
		  start: A `Tensor` of type `int32`.
		  limit: A `Tensor` of type `int32`.
		  emit_self_as_target: A `Tensor` of type `bool`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (tokens, labels).
		
		  tokens: A `Tensor`. Has the same type as `input_tensor`.
		  labels: A `Tensor`. Has the same type as `input_tensor`.
	**/
	static public function skip_gram_generate_candidates(input_tensor:Dynamic, min_skips:Dynamic, max_skips:Dynamic, start:Dynamic, limit:Dynamic, emit_self_as_target:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function skip_gram_generate_candidates
	**/
	static public function skip_gram_generate_candidates_eager_fallback(input_tensor:Dynamic, min_skips:Dynamic, max_skips:Dynamic, start:Dynamic, limit:Dynamic, emit_self_as_target:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}