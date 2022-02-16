/* This file is generated, do not edit! */
package tensorflow.python.ops.default_gradient;
@:pythonImport("tensorflow.python.ops.default_gradient") extern class Default_gradient_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return the dtype for the default gradient for a Tensor.
	**/
	static public function get_zeros_dtype(t:Dynamic):Dynamic;
	/**
		Like array_ops.ones_like, but respects resource handles.
	**/
	static public function ones_like(t:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the shape and dtype for the default gradient for a Tensor.
	**/
	static public function shape_and_dtype(t:Dynamic):Dynamic;
	/**
		Whether tensor `t` supports creating a default gradient.
		
		This function assumes that `t` is of a trainable type.
		
		Args:
		  t: Tensor
		
		Returns:
		  Bool
	**/
	static public function supports_default_grad(t:Dynamic):Dynamic;
	/**
		Like array_ops.zeros_like, but respects resource handles.
	**/
	static public function zeros_like(t:Dynamic):Dynamic;
}