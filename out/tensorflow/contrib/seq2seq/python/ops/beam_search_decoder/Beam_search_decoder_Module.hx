/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.beam_search_decoder;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.beam_search_decoder") extern class Beam_search_decoder_Module {
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
		Performs a single step of Beam Search Decoding.
		
		Args:
		  time: Beam search time step, should start at 0. At time 0 we assume
		    that all beams are equal and consider only the first beam for
		    continuations.
		  logits: Logits at the current time step. A tensor of shape
		    `[batch_size, beam_width, vocab_size]`
		  next_cell_state: The next state from the cell, e.g. an instance of
		    AttentionWrapperState if the cell is attentional.
		  beam_state: Current state of the beam search.
		    An instance of `BeamSearchDecoderState`.
		  batch_size: The batch size for this input.
		  beam_width: Python int.  The size of the beams.
		  end_token: The int32 end token.
		  length_penalty_weight: Float weight to penalize length. Disabled with 0.0.
		
		Returns:
		  A new beam state.
	**/
	static public function _beam_search_step(time:Dynamic, logits:Dynamic, next_cell_state:Dynamic, beam_state:Dynamic, batch_size:Dynamic, beam_width:Dynamic, end_token:Dynamic, length_penalty_weight:Dynamic):Dynamic;
	static public function _check_maybe(t:Dynamic):Dynamic;
	/**
		Calculates scores for beam search hypotheses.
		
		Args:
		  log_probs: The log probabilities with shape
		    `[batch_size, beam_width, vocab_size]`.
		  sequence_lengths: The array of sequence lengths.
		  length_penalty_weight: Float weight to penalize length. Disabled with 0.0.
		
		Returns:
		  The scores normalized by the length_penalty.
	**/
	static public function _get_scores(log_probs:Dynamic, sequence_lengths:Dynamic, length_penalty_weight:Dynamic):Dynamic;
	/**
		Calculates the length penalty. See https://arxiv.org/abs/1609.08144.
		
		Args:
		  sequence_lengths: The sequence length of all hypotheses, a tensor
		    of shape [beam_size, vocab_size].
		  penalty_factor: A scalar that weights the length penalty.
		
		Returns:
		  The length penalty factor, a tensor fo shape [beam_size].
	**/
	static public function _length_penalty(sequence_lengths:Dynamic, penalty_factor:Dynamic):Dynamic;
	/**
		Masks log probabilities.
		
		The result is that finished beams allocate all probability mass to eos and
		unfinished beams remain unchanged.
		
		Args:
		  probs: Log probabiltiies of shape `[batch_size, beam_width, vocab_size]`
		  eos_token: An int32 id corresponding to the EOS token to allocate
		    probability to.
		  finished: A boolean tensor of shape `[batch_size, beam_width]` that
		    specifies which
		    elements in the beam are finished already.
		
		Returns:
		  A tensor of shape `[batch_size, beam_width, vocab_size]`, where unfinished
		  beams stay unchanged and finished beams are replaced with a tensor with all
		  probability on the EOS token.
	**/
	static public function _mask_probs(probs:Dynamic, eos_token:Dynamic, finished:Dynamic):Dynamic;
	/**
		Maybe applies _tensor_gather_helper.
		
		This applies _tensor_gather_helper when the gather_from dims is at least as
		big as the length of gather_shape. This is used in conjunction with nest so
		that we don't apply _tensor_gather_helper to inapplicable values like scalars.
		
		Args:
		  gather_indices: The tensor indices that we use to gather.
		  gather_from: The tensor that we are gathering from.
		  batch_size: The batch size.
		  range_size: The number of values in each range. Likely equal to beam_width.
		  gather_shape: What we should reshape gather_from to in order to preserve the
		    correct values. An example is when gather_from is the attention from an
		    AttentionWrapperState with shape [batch_size, beam_width, attention_size].
		    There, we want to preserve the attention_size elements, so gather_shape is
		    [batch_size * beam_width, -1]. Then, upon reshape, we still have the
		    attention_size as desired.
		
		Returns:
		  output: Gathered tensor of shape tf.shape(gather_from)[:1+len(gather_shape)]
		    or the original tensor if its dimensions are too small.
	**/
	static public function _maybe_tensor_gather_helper(gather_indices:Dynamic, gather_from:Dynamic, batch_size:Dynamic, range_size:Dynamic, gather_shape:Dynamic):Dynamic;
	/**
		Helper for gathering the right indices from the tensor.
		
		This works by reshaping gather_from to gather_shape (e.g. [-1]) and then
		gathering from that according to the gather_indices, which are offset by
		the right amounts in order to preserve the batch order.
		
		Args:
		  gather_indices: The tensor indices that we use to gather.
		  gather_from: The tensor that we are gathering from.
		  batch_size: The input batch size.
		  range_size: The number of values in each range. Likely equal to beam_width.
		  gather_shape: What we should reshape gather_from to in order to preserve the
		    correct values. An example is when gather_from is the attention from an
		    AttentionWrapperState with shape [batch_size, beam_width, attention_size].
		    There, we want to preserve the attention_size elements, so gather_shape is
		    [batch_size * beam_width, -1]. Then, upon reshape, we still have the
		    attention_size as desired.
		
		Returns:
		  output: Gathered tensor of shape tf.shape(gather_from)[:1+len(gather_shape)]
	**/
	static public function _tensor_gather_helper(gather_indices:Dynamic, gather_from:Dynamic, batch_size:Dynamic, range_size:Dynamic, gather_shape:Dynamic):Dynamic;
	/**
		Core single-tensor implementation of tile_batch.
	**/
	static public function _tile_batch(t:Dynamic, multiplier:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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