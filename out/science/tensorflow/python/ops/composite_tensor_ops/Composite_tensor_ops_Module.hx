/* This file is generated, do not edit! */
package tensorflow.python.ops.composite_tensor_ops;
@:pythonImport("tensorflow.python.ops.composite_tensor_ops") extern class Composite_tensor_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _composite_tensor_from_variant_grad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _composite_tensor_to_variants_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the `ExtensionType` value encoded by a variant scalar tensor.
		
		Args:
		  encoded: A Tensor returned by `composite_tensor_to_variants`.
		  type_spec: The `TypeSpec` of the original value.  This is used to determine
		    the number and types of the component tensors that comprise the decoded
		    value.  Must be compatible with the `TypeSpec` serilized in `encoded`.
		  name: Optional name for the operation.
		
		Returns:
		  An `ExtensionType` value that is compatible with `TypeSpec`.
		
		Raises:
		  TypeError: If `encoded` is not a Tensor with dtype=variant.
		  InvalidArgumentError: If `encoded` is not compatible with `type_spec`.
	**/
	static public function composite_tensor_from_variant(encoded:Dynamic, type_spec:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Encodes `value` as a scalar variant tensor.
		
		Args:
		  value: The `ExtensionType` value to encode.
		  type_spec: Information about the value's type that should be included in the
		    encoding.
		  name: Optional name for the operation.
		
		Returns:
		  A Tensor with shape=`()` and dtype=`tf.variant`.
		
		Raises:
		  ValueError: If `type_spec` is not compatible with `value`.
	**/
	static public function composite_tensor_to_variants(value:Dynamic, ?type_spec:Dynamic, ?name:Dynamic):Dynamic;
}