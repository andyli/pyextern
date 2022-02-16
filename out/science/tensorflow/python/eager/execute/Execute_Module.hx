/* This file is generated, do not edit! */
package tensorflow.python.eager.execute;
@:pythonImport("tensorflow.python.eager.execute") extern class Execute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert sequence `l` to eager same-type Tensors.
	**/
	static public function args_to_matching_eager(l:Dynamic, ctx:Dynamic, allowed_dtypes:Dynamic, ?default_dtype:Dynamic):Dynamic;
	/**
		Converts a list of same-length lists of values to eager tensors.
	**/
	static public function args_to_mixed_eager_tensors(lists:Dynamic, ctx:Dynamic):Dynamic;
	static public function convert_to_mixed_eager_tensors(values:Dynamic, ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Execute a TensorFlow operation.
		
		Args:
		  op_name: Name of the TensorFlow operation (see REGISTER_OP in C++ code) to
		    execute.
		  num_outputs: The number of outputs of the operation to fetch. (Explicitly
		    provided instead of being inferred for performance reasons).
		  inputs: A list of inputs to the operation. Each entry should be a Tensor, or
		    a value which can be passed to the Tensor constructor to create one.
		  attrs: A tuple with alternating string attr names and attr values for this
		    operation.
		  ctx: The value of context.context().
		  name: Customized name for the operation.
		
		Returns:
		  List of output Tensor objects. The list is empty if there are no outputs
		
		Raises:
		  An exception on error.
	**/
	static public function execute(op_name:Dynamic, num_outputs:Dynamic, inputs:Dynamic, attrs:Dynamic, ctx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Monkey-patch to execute to enable execution callbacks.
	**/
	static public function execute_with_callbacks(op_name:Dynamic, num_outputs:Dynamic, inputs:Dynamic, attrs:Dynamic, ctx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Execute a TensorFlow operation.
		
		Args:
		  op_name: Name of the TensorFlow operation (see REGISTER_OP in C++ code) to
		    execute.
		  num_outputs: The number of outputs of the operation to fetch. (Explicitly
		    provided instead of being inferred for performance reasons).
		  inputs: A list of inputs to the operation. Each entry should be a Tensor, or
		    a value which can be passed to the Tensor constructor to create one.
		  attrs: A tuple with alternating string attr names and attr values for this
		    operation.
		  ctx: The value of context.context().
		  cancellation_manager: a `CancellationManager` object that can be used to
		    cancel the operation.
		  name: Customized name for the operation.
		
		Returns:
		  List of output Tensor objects. The list is empty if there are no outputs
		
		Raises:
		  An exception on error.
	**/
	static public function execute_with_cancellation(op_name:Dynamic, num_outputs:Dynamic, inputs:Dynamic, attrs:Dynamic, ctx:Dynamic, cancellation_manager:Dynamic, ?name:Dynamic):Dynamic;
	static public function make_bool(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function make_float(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function make_int(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Convert v into a list.
	**/
	static public function make_shape(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function make_str(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Ensure v is a TensorProto.
	**/
	static public function make_tensor(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function make_type(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function must_record_gradient():Dynamic;
	static public var print_function : Dynamic;
	/**
		Execute a TensorFlow operation.
		
		Args:
		  op_name: Name of the TensorFlow operation (see REGISTER_OP in C++ code) to
		    execute.
		  num_outputs: The number of outputs of the operation to fetch. (Explicitly
		    provided instead of being inferred for performance reasons).
		  inputs: A list of inputs to the operation. Each entry should be a Tensor, or
		    a value which can be passed to the Tensor constructor to create one.
		  attrs: A tuple with alternating string attr names and attr values for this
		    operation.
		  ctx: The value of context.context().
		  name: Customized name for the operation.
		
		Returns:
		  List of output Tensor objects. The list is empty if there are no outputs
		
		Raises:
		  An exception on error.
	**/
	static public function quick_execute(op_name:Dynamic, num_outputs:Dynamic, inputs:Dynamic, attrs:Dynamic, ctx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Explicitly record the gradient for a given op.
		
		Args:
		  op_name: The op name as listed in the `OpDef` for the op.
		  inputs: A list of tensor inputs to the op.
		  attrs: The op attributes as a flattened list of alternating attribute names
		    and attribute values.
		  outputs: A list of tensor outputs from the op.
	**/
	static public function record_gradient(op_name:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic):Dynamic;
}