/* This file is generated, do not edit! */
package tensorflow.python.framework.constant_op;
@:pythonImport("tensorflow.python.framework.constant_op") extern class Constant_op_Module {
	static public function _ConstantShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _constant_tensor_conversion_function(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _dimension_tensor_conversion_function(d:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_shape_tensor_conversion_function(s:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a constant tensor.
		
		 The resulting tensor is populated with values of type `dtype`, as
		 specified by arguments `value` and (optionally) `shape` (see examples
		 below).
		
		 The argument `value` can be a constant value, or a list of values of type
		 `dtype`. If `value` is a list, then the length of the list must be less
		 than or equal to the number of elements implied by the `shape` argument (if
		 specified). In the case where the list length is less than the number of
		 elements specified by `shape`, the last element in the list will be used
		 to fill the remaining entries.
		
		 The argument `shape` is optional. If present, it specifies the dimensions of
		 the resulting tensor. If not present, the shape of `value` is used.
		
		 If the argument `dtype` is not specified, then the type is inferred from
		 the type of `value`.
		
		 For example:
		
		 ```python
		 # Constant 1-D Tensor populated with value list.
		 tensor = tf.constant([1, 2, 3, 4, 5, 6, 7]) => [1 2 3 4 5 6 7]
		
		 # Constant 2-D tensor populated with scalar value -1.
		 tensor = tf.constant(-1.0, shape=[2, 3]) => [[-1. -1. -1.]
		                                              [-1. -1. -1.]]
		 ```
		
		Args:
		  value:     A constant value (or list) of output type `dtype`.
		
		  dtype:     The type of the elements of the resulting tensor.
		
		  shape:     Optional dimensions of resulting tensor.
		
		  name:      Optional name for the tensor.
		
		Returns:
		  A Constant Tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}