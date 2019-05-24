/* This file is generated, do not edit! */
package tensorflow.contrib.resampler.ops.gen_resampler_ops;
@:pythonImport("tensorflow.contrib.resampler.ops.gen_resampler_ops") extern class Gen_resampler_ops_Module {
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
	static public var _resampler_grad_outputs : Dynamic;
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
		Resampler op.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  warp: A `Tensor`. Must have the same type as `data`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function resampler(data:Dynamic, warp:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resampler
	**/
	static public function resampler_eager_fallback(data:Dynamic, warp:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resampler Grad op.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  warp: A `Tensor`. Must have the same type as `data`.
		  grad_output: A `Tensor`. Must have the same type as `data`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (grad_data, grad_warp).
		
		  grad_data: A `Tensor`. Has the same type as `data`.
		  grad_warp: A `Tensor`. Has the same type as `data`.
	**/
	static public function resampler_grad(data:Dynamic, warp:Dynamic, grad_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resampler_grad
	**/
	static public function resampler_grad_eager_fallback(data:Dynamic, warp:Dynamic, grad_output:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}