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
	/**
		Implements Bahdanau-style (additive) scoring function.
		
		This attention has two forms.  The first is Bhandanau attention,
		as described in:
		
		Dzmitry Bahdanau, Kyunghyun Cho, Yoshua Bengio.
		"Neural Machine Translation by Jointly Learning to Align and Translate."
		ICLR 2015. https://arxiv.org/abs/1409.0473
		
		The second is the normalized form.  This form is inspired by the
		weight normalization article:
		
		Tim Salimans, Diederik P. Kingma.
		"Weight Normalization: A Simple Reparameterization to Accelerate
		 Training of Deep Neural Networks."
		https://arxiv.org/abs/1602.07868
		
		To enable the second form, set `normalize=True`.
		
		Args:
		  processed_query: Tensor, shape `[batch_size, num_units]` to compare to keys.
		  keys: Processed memory, shape `[batch_size, max_time, num_units]`.
		  normalize: Whether to normalize the score function.
		
		Returns:
		  A `[batch_size, max_time]` tensor of unnormalized score values.
	**/
	static public function _bahdanau_score(processed_query:Dynamic, keys:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Computes the attention and alignments for a given attention_mechanism.
	**/
	static public function _compute_attention(attention_mechanism:Dynamic, cell_output:Dynamic, attention_state:Dynamic, attention_layer:Dynamic):Dynamic;
	/**
		Implements Luong-style (multiplicative) scoring function.
		
		This attention has two forms.  The first is standard Luong attention,
		as described in:
		
		Minh-Thang Luong, Hieu Pham, Christopher D. Manning.
		"Effective Approaches to Attention-based Neural Machine Translation."
		EMNLP 2015.  https://arxiv.org/abs/1508.04025
		
		The second is the scaled form inspired partly by the normalized form of
		Bahdanau attention.
		
		To enable the second form, call this function with `scale=True`.
		
		Args:
		  query: Tensor, shape `[batch_size, num_units]` to compare to keys.
		  keys: Processed memory, shape `[batch_size, max_time, num_units]`.
		  scale: Whether to apply a scale to the score function.
		
		Returns:
		  A `[batch_size, max_time]` tensor of unnormalized score values.
		
		Raises:
		  ValueError: If `key` and `query` depths do not match.
	**/
	static public function _luong_score(query:Dynamic, keys:Dynamic, scale:Dynamic):Dynamic;
	static public function _maybe_mask_score(score:Dynamic, memory_sequence_length:Dynamic, score_mask_value:Dynamic):Dynamic;
	/**
		Attention probability function for monotonic attention.
		
		Takes in unnormalized attention scores, adds pre-sigmoid noise to encourage
		the model to make discrete attention decisions, passes them through a sigmoid
		to obtain "choosing" probabilities, and then calls monotonic_attention to
		obtain the attention distribution.  For more information, see
		
		Colin Raffel, Minh-Thang Luong, Peter J. Liu, Ron J. Weiss, Douglas Eck,
		"Online and Linear-Time Attention by Enforcing Monotonic Alignments."
		ICML 2017.  https://arxiv.org/abs/1704.00784
		
		Args:
		  score: Unnormalized attention scores, shape `[batch_size, alignments_size]`
		  previous_alignments: Previous attention distribution, shape
		    `[batch_size, alignments_size]`
		  sigmoid_noise: Standard deviation of pre-sigmoid noise.  Setting this larger
		    than 0 will encourage the model to produce large attention scores,
		    effectively making the choosing probabilities discrete and the resulting
		    attention distribution one-hot.  It should be set to 0 at test-time, and
		    when hard attention is not desired.
		  mode: How to compute the attention distribution.  Must be one of
		    'recursive', 'parallel', or 'hard'.  See the docstring for
		    `tf.contrib.seq2seq.monotonic_attention` for more information.
		  seed: (optional) Random seed for pre-sigmoid noise.
		
		Returns:
		  A `[batch_size, alignments_size]`-shape tensor corresponding to the
		  resulting attention distribution.
	**/
	static public function _monotonic_probability_fn(score:Dynamic, previous_alignments:Dynamic, sigmoid_noise:Dynamic, mode:Dynamic, ?seed:Dynamic):Dynamic;
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
	/**
		Compute monotonic attention distribution from choosing probabilities.
		
		Monotonic attention implies that the input sequence is processed in an
		explicitly left-to-right manner when generating the output sequence.  In
		addition, once an input sequence element is attended to at a given output
		timestep, elements occurring before it cannot be attended to at subsequent
		output timesteps.  This function generates attention distributions according
		to these assumptions.  For more information, see `Online and Linear-Time
		Attention by Enforcing Monotonic Alignments`.
		
		Args:
		  p_choose_i: Probability of choosing input sequence/memory element i.  Should
		    be of shape (batch_size, input_sequence_length), and should all be in the
		    range [0, 1].
		  previous_attention: The attention distribution from the previous output
		    timestep.  Should be of shape (batch_size, input_sequence_length).  For
		    the first output timestep, preevious_attention[n] should be [1, 0, 0, ...,
		    0] for all n in [0, ... batch_size - 1].
		  mode: How to compute the attention distribution.  Must be one of
		    'recursive', 'parallel', or 'hard'.
		      * 'recursive' uses tf.scan to recursively compute the distribution.
		        This is slowest but is exact, general, and does not suffer from
		        numerical instabilities.
		      * 'parallel' uses parallelized cumulative-sum and cumulative-product
		        operations to compute a closed-form solution to the recurrence
		        relation defining the attention distribution.  This makes it more
		        efficient than 'recursive', but it requires numerical checks which
		        make the distribution non-exact.  This can be a problem in particular
		        when input_sequence_length is long and/or p_choose_i has entries very
		        close to 0 or 1.
		      * 'hard' requires that the probabilities in p_choose_i are all either 0
		        or 1, and subsequently uses a more efficient and exact solution.
		
		Returns:
		  A tensor of shape (batch_size, input_sequence_length) representing the
		  attention distributions for each sequence in the batch.
		
		Raises:
		  ValueError: mode is not one of 'recursive', 'parallel', 'hard'.
	**/
	static public function monotonic_attention(p_choose_i:Dynamic, previous_attention:Dynamic, mode:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes cumprod of x in logspace using cumsum to avoid underflow.
		
		The cumprod function and its gradient can result in numerical instabilities
		when its argument has very small and/or zero values.  As long as the argument
		is all positive, we can instead compute the cumulative product as
		exp(cumsum(log(x))).  This function can be called identically to tf.cumprod.
		
		Args:
		  x: Tensor to take the cumulative product of.
		  *args: Passed on to cumsum; these are identical to those in cumprod.
		  **kwargs: Passed on to cumsum; these are identical to those in cumprod.
		Returns:
		  Cumulative product of x.
	**/
	static public function safe_cumprod(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}