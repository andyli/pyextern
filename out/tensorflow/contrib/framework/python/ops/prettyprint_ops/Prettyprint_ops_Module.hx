/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.prettyprint_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.prettyprint_ops") extern class Prettyprint_ops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a list of Tensors that summarize the given tensor t.
	**/
	static public function _get_tensor_repr(t:Dynamic, ?print_tensor_name:Dynamic, ?print_tensor_type:Dynamic, ?print_shape:Dynamic, ?summarize_indicator_vector:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a print op that will print when a tensor is accessed.
		
		Wraps the tensor passed in so that whenever that tensor is accessed,
		the message `message` is printed, along with the current value of the
		tensor `t` and an optional list of other tensors.
		
		Args:
		  input_: A Tensor/SparseTensor/TensorArray to print when it is evaluated.
		  data: A list of other tensors to print.
		  message: A string message to print as a prefix.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Print this number of elements in the tensor.
		  print_tensor_name: Print the tensor name.
		  print_tensor_type: Print the tensor type.
		  print_shape: Print the tensor's shape.
		  summarize_indicator_vector: Whether to print the index of the first true
		    value in an indicator vector (a Boolean tensor).
		  name: The name to give this op.
		
		Returns:
		  A Print op. The Print op returns `input_`.
		
		Raises:
		  ValueError: If the tensor `input_` is not a Tensor, SparseTensor or
		    TensorArray.
	**/
	static public function print_op(input_:Dynamic, ?data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?print_tensor_name:Dynamic, ?print_tensor_type:Dynamic, ?print_shape:Dynamic, ?summarize_indicator_vector:Dynamic, ?name:Dynamic):Dynamic;
}