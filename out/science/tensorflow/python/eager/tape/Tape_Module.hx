/* This file is generated, do not edit! */
package tensorflow.python.eager.tape;
@:pythonImport("tensorflow.python.eager.tape") extern class Tape_Module {
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
		Returns True if any tape is active.
	**/
	static public function could_possibly_record():Dynamic;
	/**
		Deletes traces for this Tensor from all tapes in the stack.
	**/
	static public function delete_trace(tensor_id:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Pops the given tape in the stack.
	**/
	static public function pop_tape(tape:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Pushes a new tape onto the tape stack.
	**/
	static public function push_new_tape(?persistent:Dynamic, ?watch_accessed_variables:Dynamic):Dynamic;
	/**
		Pushes an existing tape onto the tape stack.
	**/
	static public function push_tape(tape:Dynamic):Dynamic;
	/**
		Records the operation on all tapes in the stack.
	**/
	static public function record_operation(op_type:Dynamic, output_tensors:Dynamic, input_tensors:Dynamic, backward_function:Dynamic, ?forward_function:Dynamic):Dynamic;
	/**
		Records the operation on all backward tapes in the stack.
	**/
	static public function record_operation_backprop_only(op_type:Dynamic, output_tensors:Dynamic, input_tensors:Dynamic, backward_function:Dynamic):Dynamic;
	/**
		Records the operation on all forward accumulators in the stack.
		
		Args:
		  op_type: a string for the operation type, used in the backprop code
		  output_tensors: a list of Python Tensor objects output by the operation
		  input_tensors: a list of input Tensors to the recorded operation
		  backward_function: the function to be called to, given the gradients of the
		    output tensors, produce the gradients of the input tensors. This function
		    is automatically transposed to produce output gradients given input
		    gradients.
		  forwardprop_output_indices: indicates any output_tensors which contain JVPs.
		    Typically these will have come from TFE_Py_PackForwardGradients. May be
		    None or an empty sequence if there are no JVP outputs from the operation.
	**/
	static public function record_operation_forwardprop_only(op_type:Dynamic, output_tensors:Dynamic, input_tensors:Dynamic, backward_function:Dynamic, forwardprop_output_indices:Dynamic):Dynamic;
	/**
		Returns true if any tape in the stack watches any of these tensors.
		
		Only takes GradientTapes into account, not forward accumulators.
		
		Args:
		  tensors: Tensors to check, typically inputs to an operation.
		
		Returns:
		  Boolean, whether any tape watches any of `tensors`.
	**/
	static public function should_record_backprop(tensors:Dynamic):Dynamic;
	/**
		Stop all gradient recording (backprop and forwardprop).
	**/
	static public function stop_recording():Dynamic;
	/**
		Notifies all tapes in the stack that a variable has been accessed.
		
		Args:
		  variable: variable to be watched.
	**/
	static public function variable_accessed(variable:Dynamic):Dynamic;
	/**
		Notifies all tapes in the stack that variables have been accessed.
		
		Only trainable variables are marked as accessed.
		
		Args:
		  variables: iterable of variables to mark as accessed.
	**/
	static public function variables_accessed(variables:Dynamic):Dynamic;
	/**
		Marks this tensor to be watched by the given tape.
	**/
	static public function watch(tape:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Marks this variable to be watched by the given tape.
	**/
	static public function watch_variable(tape:Dynamic, variable:Dynamic):Dynamic;
}