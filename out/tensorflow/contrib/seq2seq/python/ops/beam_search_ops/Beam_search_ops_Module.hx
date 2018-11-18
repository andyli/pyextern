/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.beam_search_ops;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.beam_search_ops") extern class Beam_search_ops_Module {
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
		Calculates the full beams from the per-step ids and parent beam ids.
		
		On CPU, if an out of bound parent id is found, an error is returned.
		On GPU, if an out of bound parent id is found, a -1 is stored in the
		corresponding output value and the execution for that beam returns early.
		
		For a given beam, past the time step containing the first decoded `end_token`
		all values are filled in with `end_token`.
		
		TODO(ebrevdo): fill in the remainder of this docstring.
		
		Args:
		  step_ids: A `Tensor`. Must be one of the following types: `int32`.
		    `[max_time, batch_size, beam_width]`.
		  parent_ids: A `Tensor`. Must have the same type as `step_ids`.
		    `[max_time, batch_size, beam_width]`.
		  max_sequence_lengths: A `Tensor` of type `int32`. `[batch_size]`.
		  end_token: A `Tensor`. Must have the same type as `step_ids`. `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `step_ids`.
		  `[max_time, batch_size, beam_width]`.
	**/
	static public function gather_tree(step_ids:Dynamic, parent_ids:Dynamic, max_sequence_lengths:Dynamic, end_token:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}