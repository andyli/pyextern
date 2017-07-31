/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.loss;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.loss") extern class Loss_Module {
	static public var __all__ : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Weighted cross-entropy loss for a sequence of logits.
		
		Depending on the values of `average_across_timesteps` and
		`average_across_batch`, the return Tensor will have rank 0, 1, or 2 as these
		arguments reduce the cross-entropy at each target, which has shape
		`[batch_size, sequence_length]`, over their respective dimensions. For
		example, if `average_across_timesteps` is `True` and `average_across_batch`
		is `False`, then the return Tensor will have shape `[batch_size]`.
		
		Args:
		  logits: A Tensor of shape
		    `[batch_size, sequence_length, num_decoder_symbols]` and dtype float.
		    The logits correspond to the prediction across all classes at each
		    timestep.
		  targets: A Tensor of shape `[batch_size, sequence_length]` and dtype
		    int. The target represents the true class at each timestep.
		  weights: A Tensor of shape `[batch_size, sequence_length]` and dtype
		    float. `weights` constitutes the weighting of each prediction in the
		    sequence. When using `weights` as masking, set all valid timesteps to 1
		    and all padded timesteps to 0, e.g. a mask returned by `tf.sequence_mask`.
		  average_across_timesteps: If set, sum the cost across the sequence
		    dimension and divide the cost by the total label weight across timesteps.
		  average_across_batch: If set, sum the cost across the batch dimension and
		    divide the returned cost by the batch size.
		  softmax_loss_function: Function (labels, logits) -> loss-batch
		    to be used instead of the standard softmax (the default if this is None).
		    **Note that to avoid confusion, it is required for the function to accept
		    named arguments.**
		  name: Optional name for this operation, defaults to "sequence_loss".
		
		Returns:
		  A float Tensor of rank 0, 1, or 2 depending on the
		  `average_across_timesteps` and `average_across_batch` arguments. By default,
		  it has rank 0 (scalar) and is the weighted average cross-entropy
		  (log-perplexity) per symbol.
		
		Raises:
		  ValueError: logits does not have 3 dimensions or targets does not have 2
		              dimensions or weights does not have 2 dimensions.
	**/
	static public function sequence_loss(logits:Dynamic, targets:Dynamic, weights:Dynamic, ?average_across_timesteps:Dynamic, ?average_across_batch:Dynamic, ?softmax_loss_function:Dynamic, ?name:Dynamic):Dynamic;
}