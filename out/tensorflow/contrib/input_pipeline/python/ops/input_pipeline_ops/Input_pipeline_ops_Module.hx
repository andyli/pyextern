/* This file is generated, do not edit! */
package tensorflow.contrib.input_pipeline.python.ops.input_pipeline_ops;
@:pythonImport("tensorflow.contrib.input_pipeline.python.ops.input_pipeline_ops") extern class Input_pipeline_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_list(string_list:Dynamic, shuffle:Dynamic, seed:Dynamic, num_epochs:Dynamic):Dynamic;
	static public function _maybe_randomize_list(string_list:Dynamic, shuffle:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Basic wrapper for the ObtainNextOp.
		
		Args:
		  string_list_tensor: A tensor that is a list of strings
		  counter: an int64 ref tensor to keep track of which element is returned.
		
		Returns:
		  An op that produces the element at counter + 1 in the list, round
		  robin style.
	**/
	static public function obtain_next(string_list_tensor:Dynamic, counter:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns an op that seeks the next element in a list of strings.
		
		Seeking happens in a round robin fashion. This op creates a variable called
		obtain_next_counter that is initialized to -1 and is used to keep track of
		which element in the list was returned, and a variable
		obtain_next_expanded_list to hold the list. If num_epochs is not None, then we
		limit the number of times we go around the string_list before OutOfRangeError
		is thrown. It creates a variable to keep track of this.
		
		Args:
		  string_list: A list of strings.
		  shuffle: If true, we shuffle the string_list differently for each epoch.
		  seed: Seed used for shuffling.
		  num_epochs: Returns OutOfRangeError once string_list has been repeated
		              num_epoch times. If unspecified then keeps on looping.
		
		Returns:
		  An op that produces the next element in the provided list.
	**/
	static public function seek_next(string_list:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?num_epochs:Dynamic):Dynamic;
}