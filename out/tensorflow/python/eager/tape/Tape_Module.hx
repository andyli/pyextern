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
		Pops the top tape in the stack, if any.
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
	static public function record_operation(op_type:Dynamic, output_tensors:Dynamic, input_tensors:Dynamic, backward_function:Dynamic):Dynamic;
	/**
		Returns true if any tape in the stack watches any of these tensors.
	**/
	static public function should_record(tensors:Dynamic):Dynamic;
	static public function stop_recording():Dynamic;
	/**
		Notifies all tapes in the stack that a variable has been accessed.
		
		Args:
		  variable: variable to be watched.
	**/
	static public function variable_accessed(variable:Dynamic):Dynamic;
	/**
		Marks this tensor to be watched by the given tape.
	**/
	static public function watch(tape:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Marks this variable to be watched by the given tape.
	**/
	static public function watch_variable(tape:Dynamic, variable:Dynamic):Dynamic;
}