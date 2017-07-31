/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.attention_wrapper;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.attention_wrapper") extern class Attention_wrapper_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _maybe_mask_score(score:Dynamic, memory_sequence_length:Dynamic, score_mask_value:Dynamic):Dynamic;
	/**
		Convert to tensor and possibly mask `memory`.
		
		Args:
		  memory: `Tensor`, shaped `[batch_size, max_time, ...]`.
		  memory_sequence_length: `int32` `Tensor`, shaped `[batch_size]`.
		  check_inner_dims_defined: Python boolean.  If `True`, the `memory`
		    argument's shape is checked to ensure all but the two outermost
		    dimensions are fully defined.
		
		Returns:
		  A (possibly masked), checked, new `memory`.
		
		Raises:
		  ValueError: If `check_inner_dims_defined` is `True` and not
		    `memory.shape[2:].is_fully_defined()`.
	**/
	static public function _prepare_memory(memory:Dynamic, memory_sequence_length:Dynamic, check_inner_dims_defined:Dynamic):Dynamic;
	/**
		Create tensors of zeros based on state_size, batch_size, and dtype.
	**/
	static public function _zero_state_tensors(state_size:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns batched one-hot vectors.
		
		The depth index containing the `1` is that of the maximum logit value.
		
		Args:
		  logits: A batch tensor of logit values.
		  name: Name to use when creating ops.
		Returns:
		  A batched one-hot tensor.
	**/
	static public function hardmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}