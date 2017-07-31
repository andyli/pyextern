/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.ops.gen_beam_search_ops;
@:pythonImport("tensorflow.contrib.seq2seq.ops.gen_beam_search_ops") extern class Gen_beam_search_ops_Module {
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
		Calculates the full beams from the per-step ids and parent beam ids.
		
		This op implements the following mathematical equations:
		
		```python
		TODO(ebrevdo): fill in
		```
		
		Args:
		  step_ids: A `Tensor`. Must be one of the following types: `int32`.
		    `[max_time, batch_size, beam_width]`.
		  parent_ids: A `Tensor`. Must have the same type as `step_ids`.
		    `[max_time, batch_size, beam_width]`.
		  sequence_length: A `Tensor`. Must have the same type as `step_ids`.
		    `[batch_size, beam_width]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `step_ids`.
		  `[max_time, batch_size, beam_width]`.
	**/
	static public function gather_tree(step_ids:Dynamic, parent_ids:Dynamic, sequence_length:Dynamic, ?name:Dynamic):Dynamic;
}