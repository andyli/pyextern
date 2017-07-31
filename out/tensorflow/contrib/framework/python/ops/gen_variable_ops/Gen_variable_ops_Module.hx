/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.gen_variable_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.gen_variable_ops") extern class Gen_variable_ops_Module {
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
		Initialize 'ref' with all zeros. This op requires that the tensor is not
		
		initialized. The tensor will first be allocated memory, then be filled with all
		zeros. This op is intended to save memory during initialization,
		if you use this op, you should not run initializer of the 'ref' tensor.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    Should be from a `Variable` node.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".
	**/
	static public function zero_initializer(ref:Dynamic, ?name:Dynamic):Dynamic;
}