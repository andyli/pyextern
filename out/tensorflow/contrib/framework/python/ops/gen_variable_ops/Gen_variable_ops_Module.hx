/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.gen_variable_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.gen_variable_ops") extern class Gen_variable_ops_Module {
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
		Initialize 'ref' with all zeros. This op requires that the tensor is not
		
		initialized. The tensor will first be allocated memory, then be filled with all
		zeros. This op is intended to save memory during initialization,
		if you use this op, you should not run initializer of the 'ref' tensor.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    Should be from a `Variable` node.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".
	**/
	static public function zero_initializer(ref:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize 'var' with all zeros. This op requires that the resource var is not
		
		initialized. The var will first be allocated memory, then be filled with all
		zeros. This op is intended to save memory during initialization,
		if you use this op, you should not run initializer of the var.
		
		Args:
		  var: A `Tensor` of type `resource`. Should be a ResourceVariable.
		  dtype: A `tf.DType`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "var".
	**/
	static public function zero_var_initializer(_var:Dynamic, dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function zero_var_initializer
	**/
	static public function zero_var_initializer_eager_fallback(_var:Dynamic, dtype:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}