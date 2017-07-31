/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq;
@:pythonImport("tensorflow.contrib.seq2seq") extern class Seq2seq_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Perform dynamic decoding with `decoder`.
		
		Calls initialize() once and step() repeatedly on the Decoder object.
		
		Args:
		  decoder: A `Decoder` instance.
		  output_time_major: Python boolean.  Default: `False` (batch major).  If
		    `True`, outputs are returned as time major tensors (this mode is faster).
		    Otherwise, outputs are returned as batch major tensors (this adds extra
		    time to the computation).
		  impute_finished: Python boolean.  If `True`, then states for batch
		    entries which are marked as finished get copied through and the
		    corresponding outputs get zeroed out.  This causes some slowdown at
		    each time step, but ensures that the final state and outputs have
		    the correct values and that backprop ignores time steps that were
		    marked as finished.
		  maximum_iterations: `int32` scalar, maximum allowed number of decoding
		     steps.  Default is `None` (decode until the decoder is fully done).
		  parallel_iterations: Argument passed to `tf.while_loop`.
		  swap_memory: Argument passed to `tf.while_loop`.
		  scope: Optional variable scope to use.
		
		Returns:
		  `(final_outputs, final_state, final_sequence_lengths)`.
		
		Raises:
		  TypeError: if `decoder` is not an instance of `Decoder`.
		  ValueError: if `maximum_iterations` is provided but is not a scalar.
	**/
	static public function dynamic_decode(decoder:Dynamic, ?output_time_major:Dynamic, ?impute_finished:Dynamic, ?maximum_iterations:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?scope:Dynamic):Dynamic;
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
	/**
		Tile the batch dimension of a (possibly nested structure of) tensor(s) t.
		
		For each tensor t in a (possibly nested structure) of tensors,
		this function takes a tensor t shaped `[batch_size, s0, s1, ...]` composed of
		minibatch entries `t[0], ..., t[batch_size - 1]` and tiles it to have a shape
		`[batch_size * multiplier, s0, s1, ...]` composed of minibatch entries
		`t[0], t[0], ..., t[1], t[1], ...` where each minibatch entry is repeated
		`multiplier` times.
		
		Args:
		  t: `Tensor` shaped `[batch_size, ...]`.
		  multiplier: Python int.
		  name: Name scope for any created operations.
		
		Returns:
		  A (possibly nested structure of) `Tensor` shaped
		  `[batch_size * multiplier, ...]`.
		
		Raises:
		  ValueError: if tensor(s) `t` do not have a statically known rank or
		  the rank is < 1.
	**/
	static public function tile_batch(t:Dynamic, multiplier:Dynamic, ?name:Dynamic):Dynamic;
}