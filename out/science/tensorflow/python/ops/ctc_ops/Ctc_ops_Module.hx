/* This file is generated, do not edit! */
package tensorflow.python.ops.ctc_ops;
@:pythonImport("tensorflow.python.ops.ctc_ops") extern class Ctc_ops_Module {
	/**
		Multiply after broadcasting vec to match dimensions of mat.
		
		Args:
		  vec: A 1-D tensor of dimension [D0]
		  mat: A 2-D tensor of dimension [D0, D1]
		
		Returns:
		  A tensor of dimension [D0, D1], the result of vec * mat
	**/
	static public function _BroadcastMul(vec:Dynamic, mat:Dynamic):Dynamic;
	static public var _CPU_DEVICE_NAME : Dynamic;
	/**
		The derivative provided by CTC Loss.
		
		Args:
		   op: the CTCLoss op.
		   grad_loss: The backprop for cost.
		
		Returns:
		   The CTC Loss gradient.
	**/
	static public function _CTCLossGrad(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
	static public function _CTCLossGradImpl(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
	/**
		The derivative provided by CTC Loss V2.
		
		Args:
		   op: the CTCLossV2 op.
		   grad_loss: The backprop for cost.
		
		Returns:
		   The CTC Loss V2 gradient.
	**/
	static public function _CTCLossV2Grad(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
	static public var _DEFUN_API_NAME_ATTRIBUTE : Dynamic;
	static public var _DEFUN_DEVICE_ATTRIBUTE : Dynamic;
	static public var _GPU_DEVICE_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ctc_loss_grad(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
	static public function _ctc_loss_impl(labels:Dynamic, ?inputs:Dynamic, ?sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?time_major:Dynamic, ?logits:Dynamic, ?use_cudnn:Dynamic):Dynamic;
	static public function _ctc_loss_op_cudnn(labels:Dynamic, logits:Dynamic, logit_length:Dynamic, logits_time_major:Dynamic, blank_index:Dynamic):Dynamic;
	static public function _ctc_loss_op_standard(labels:Dynamic, logits:Dynamic, logit_length:Dynamic, logits_time_major:Dynamic, blank_index:Dynamic):Dynamic;
	static public function _ctc_loss_shape(op:Dynamic):Dynamic;
	/**
		Compute CTC alignment model transition matrix.
		
		Args:
		  label_seq: tensor of shape [batch_size, max_seq_length]
		
		Returns:
		  tensor of shape [batch_size, states, states] with a state transition matrix
		  computed for each sequence of the batch.
	**/
	static public function _ctc_state_trans(label_seq:Dynamic):Dynamic;
	/**
		Forward-backward algorithm computed in log domain.
		
		Args:
		  state_trans_log_probs: tensor of shape [states, states] or if different
		    transition matrix per batch [batch_size, states, states]
		  initial_state_log_probs: tensor of shape [batch_size, states]
		  final_state_log_probs: tensor of shape [batch_size, states]
		  observed_log_probs: tensor of shape [frames, batch_size, states]
		  sequence_length: tensor of shape [batch_size]
		
		Returns:
		  forward backward log probabilites: tensor of shape [frames, batch, states]
		  log_likelihood: tensor of shape [batch_size]
		
		Raises:
		  ValueError: If state_trans_log_probs has unknown or incorrect rank.
	**/
	static public function _forward_backward_log(state_trans_log_probs:Dynamic, initial_state_log_probs:Dynamic, final_state_log_probs:Dynamic, observed_log_probs:Dynamic, sequence_length:Dynamic):Dynamic;
	static public function _generate_defun_backend(unique_api_name:Dynamic, preferred_device:Dynamic, func:Dynamic):Dynamic;
	/**
		Parse the current context and return the device type, eg CPU/GPU.
	**/
	static public function _get_context_device_type():Dynamic;
	/**
		Get value of tensor shape[i] preferring static value if available.
	**/
	static public function _get_dim(tensor:Dynamic, i:Dynamic):Dynamic;
	/**
		Project ilabel log probs to state log probs.
	**/
	static public function _ilabel_to_state(labels:Dynamic, num_labels:Dynamic, ilabel_log_probs:Dynamic):Dynamic;
	/**
		Repeatedly applies callable `fn` to a sequence of elements.
		
		Implemented by functional_ops.While, tpu friendly, no gradient.
		
		This is similar to functional_ops.scan but significantly faster on tpu/gpu
		for the forward backward use case.
		
		Examples:
		  scan(lambda a, e: a + e, [1.0, 2.0, 3.0], 1.0) => [2.0, 4.0, 7.0]
		
		  Multiple accumulators:
		    scan(lambda a, e: (a[0] + e, a[1] * e), [1.0, 2.0, 3.0], (0.0, 1.0))
		
		  Multiple inputs:
		    scan(lambda a, e: a + (e[0] * e[1]), (elems1, elems2), 0.0)
		
		Args:
		  fn: callable, fn(accumulators, element) return new accumulator values. The
		    (possibly nested) sequence of accumulators is the same as `initial` and
		    the return value must have the same structure.
		  elems: A (possibly nested) tensor which will be unpacked along the first
		    dimension. The resulting slices will be the second argument to fn. The
		    first dimension of all nested input tensors must be the same.
		  initial: A tensor or (possibly nested) sequence of tensors with initial
		    values for the accumulators.
		  reverse: (optional) True enables scan and output elems in reverse order.
		  inclusive: (optional) True includes the initial accumulator values in the
		    output. Length of output will be len(elem sequence) + 1. Not meaningful if
		    final_only is True.
		  final_only: (optional) When True, return only the final accumulated values,
		    not the concatenation of accumulated values for each input.
		
		Returns:
		  A (possibly nested) sequence of tensors with the results of applying fn
		  to tensors unpacked from elems and previous accumulator values.
	**/
	static public function _scan(fn:Dynamic, elems:Dynamic, initial:Dynamic, ?reverse:Dynamic, ?inclusive:Dynamic, ?final_only:Dynamic):Dynamic;
	/**
		Sum state log probs to ilabel log probs.
	**/
	static public function _state_to_olabel(labels:Dynamic, num_labels:Dynamic, states:Dynamic):Dynamic;
	/**
		Sum state log probs to ilabel log probs using unique label indices.
	**/
	static public function _state_to_olabel_unique(labels:Dynamic, num_labels:Dynamic, states:Dynamic, unique:Dynamic):Dynamic;
	/**
		Take logsumexp for each unique state out of all label states.
		
		Args:
		  idx: tensor of shape [batch, label_length] For each sequence, indices into a
		    set of unique labels as computed by calling unique.
		  states: tensor of shape [frames, batch, label_length] Log probabilities for
		    each label state.
		
		Returns:
		  tensor of shape [frames, batch_size, label_length], log probabilites summed
		    for each unique label of the sequence.
	**/
	static public function _sum_states(idx:Dynamic, states:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Merge repeated labels into single labels.
		
		Args:
		  labels: Tensor of shape [batch, max value in seq_length]
		  seq_length: Tensor of shape [batch], sequence length of each batch element.
		  name: A name for this `Op`. Defaults to "collapse_repeated_labels".
		
		Returns:
		  A tuple `(collapsed_labels, new_seq_length)` where
		
		  collapsed_labels: Tensor of shape [batch, max_seq_length] with repeated
		  labels collapsed and padded to max_seq_length, eg:
		  `[[A, A, B, B, A], [A, B, C, D, E]] => [[A, B, A, 0, 0], [A, B, C, D, E]]`
		
		  new_seq_length: int tensor of shape [batch] with new sequence lengths.
	**/
	static public function collapse_repeated(labels:Dynamic, seq_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		If `merge_repeated` is `True`, merge repeated classes in the output beams.
		This means that if consecutive entries in a beam are the same,
		only the first of these is emitted.  That is, when the sequence is
		`A B B * B * B` (where '*' is the blank label), the return value is:
		
		  * `A B` if `merge_repeated = True`.
		  * `A B B B` if `merge_repeated = False`.
		
		Args:
		  inputs: 3-D `float` `Tensor`, size `[max_time x batch_size x num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths, having size
		    `[batch_size]`.
		  beam_width: An int scalar >= 0 (beam search beam width).
		  top_paths: An int scalar >= 0, <= beam_width (controls output size).
		  merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A tuple `(decoded, log_probabilities)` where
		
		  decoded: A list of length top_paths, where `decoded[j]`
		    is a `SparseTensor` containing the decoded outputs:
		
		    `decoded[j].indices`: Indices matrix `(total_decoded_outputs[j] x 2)`
		      The rows store: [batch, time].
		
		    `decoded[j].values`: Values vector, size `(total_decoded_outputs[j])`.
		      The vector stores the decoded classes for beam j.
		
		    `decoded[j].dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length[j]]`.
		
		  log_probability: A `float` matrix `(batch_size x top_paths)` containing
		      sequence log-probabilities.
	**/
	static public function ctc_beam_search_decoder(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		Args:
		  inputs: 3-D `float` `Tensor`, size `[max_time, batch_size, num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths, having size
		    `[batch_size]`.
		  beam_width: An int scalar >= 0 (beam search beam width).
		  top_paths: An int scalar >= 0, <= beam_width (controls output size).
		
		Returns:
		  A tuple `(decoded, log_probabilities)` where
		
		  decoded: A list of length top_paths, where `decoded[j]`
		    is a `SparseTensor` containing the decoded outputs:
		
		    `decoded[j].indices`: Indices matrix `[total_decoded_outputs[j], 2]`;
		      The rows store: `[batch, time]`.
		
		    `decoded[j].values`: Values vector, size `[total_decoded_outputs[j]]`.
		      The vector stores the decoded classes for beam `j`.
		
		    `decoded[j].dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length[j]]`.
		
		  log_probability: A `float` matrix `[batch_size, top_paths]` containing
		      sequence log-probabilities.
	**/
	static public function ctc_beam_search_decoder_v2(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in input (best path).
		
		Given a tensor as `inputs`, the `blank_index` parameter defines the class
		index of the blank symbol.
		
		For example:
		
		If `blank_index` is equal to 1:
		
		>>> inf = float("inf")
		>>> logits = tf.constant([[[   0., -inf, -inf],
		...                        [ -2.3, -inf, -0.1]],
		...                       [[ -inf, -0.5, -inf],
		...                        [ -inf, -inf, -0.1]],
		...                       [[ -inf, -inf, -inf],
		...                        [ -0.1, -inf, -2.3]]])
		>>> seq_lens = tf.constant([2, 3])
		>>> outputs = tf.nn.ctc_greedy_decoder(
		...     logits,
		...     seq_lens,
		...     blank_index=1)
		
		Notes:
		
		- Regardless of the value of `merge_repeated`, if an index of a
		  given time and batch corresponds to the `blank_index`, no new
		  element is emitted.
		- Default `blank_index` is `(num_classes - 1)`, unless overriden.
		
		If `merge_repeated` is `True`, merge repeated classes in output.
		This means that if consecutive logits' maximum indices are the same,
		only the first of these is emitted.  The sequence `A B B * B * B` (where '*'
		is the blank label) becomes
		
		  * `A B B B` if `merge_repeated=True`.
		  * `A B B B B` if `merge_repeated=False`.
		
		Args:
		  inputs: 3-D `float` `Tensor` sized `[max_time, batch_size, num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths, having size
		    `[batch_size]`.
		  merge_repeated: Boolean.  Default: True.
		  blank_index: (Optional). Default: `num_classes - 1`. Define the class index
		    to use for the blank label. Negative values will start from num_classes,
		    ie, -1 will reproduce the ctc_greedy_decoder behavior of using
		    num_classes - 1 for the blank symbol, which corresponds to the default.
		
		Returns:
		  A tuple `(decoded, neg_sum_logits)` where
		
		  decoded: A single-element list. `decoded[0]`
		    is an `SparseTensor` containing the decoded outputs s.t.:
		
		    `decoded.indices`: Indices matrix `(total_decoded_outputs, 2)`.
		      The rows store: `[batch, time]`.
		
		    `decoded.values`: Values vector, size `(total_decoded_outputs)`.
		      The vector stores the decoded classes.
		
		    `decoded.dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length]`
		
		  neg_sum_logits: A `float` matrix `(batch_size x 1)` containing, for the
		      sequence found, the negative of the sum of the greatest logit at each
		      timeframe.
	**/
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic, ?blank_index:Dynamic):Dynamic;
	/**
		Computes the CTC (Connectionist Temporal Classification) Loss.
		
		This op implements the CTC loss as presented in (Graves et al., 2006).
		
		Input requirements:
		
		```
		sequence_length(b) <= time for all b
		
		max(labels.indices(labels.indices[:, 1] == b, 2))
		  <= sequence_length(b) for all b.
		```
		
		Notes:
		
		This class performs the softmax operation for you, so inputs should
		be e.g. linear projections of outputs by an LSTM.
		
		The `inputs` Tensor's innermost dimension size, `num_classes`, represents
		`num_labels + 1` classes, where num_labels is the number of true labels, and
		the largest value `(num_classes - 1)` is reserved for the blank label.
		
		For example, for a vocabulary containing 3 labels `[a, b, c]`,
		`num_classes = 4` and the labels indexing is `{a: 0, b: 1, c: 2, blank: 3}`.
		
		Regarding the arguments `preprocess_collapse_repeated` and
		`ctc_merge_repeated`:
		
		If `preprocess_collapse_repeated` is True, then a preprocessing step runs
		before loss calculation, wherein repeated labels passed to the loss
		are merged into single labels.  This is useful if the training labels come
		from, e.g., forced alignments and therefore have unnecessary repetitions.
		
		If `ctc_merge_repeated` is set False, then deep within the CTC calculation,
		repeated non-blank labels will not be merged and are interpreted
		as individual labels.  This is a simplified (non-standard) version of CTC.
		
		Here is a table of the (roughly) expected first order behavior:
		
		* `preprocess_collapse_repeated=False`, `ctc_merge_repeated=True`
		
		  Classical CTC behavior: Outputs true repeated classes with blanks in
		  between, and can also output repeated classes with no blanks in
		  between that need to be collapsed by the decoder.
		
		* `preprocess_collapse_repeated=True`, `ctc_merge_repeated=False`
		
		  Never learns to output repeated classes, as they are collapsed
		  in the input labels before training.
		
		* `preprocess_collapse_repeated=False`, `ctc_merge_repeated=False`
		
		  Outputs repeated classes with blanks in between, but generally does not
		  require the decoder to collapse/merge repeated classes.
		
		* `preprocess_collapse_repeated=True`, `ctc_merge_repeated=True`
		
		  Untested.  Very likely will not learn to output repeated classes.
		
		The `ignore_longer_outputs_than_inputs` option allows to specify the behavior
		of the CTCLoss when dealing with sequences that have longer outputs than
		inputs. If true, the CTCLoss will simply return zero gradient for those
		items, otherwise an InvalidArgument error is returned, stopping training.
		
		Args:
		  labels: An `int32` `SparseTensor`.
		    `labels.indices[i, :] == [b, t]` means `labels.values[i]` stores the id
		      for (batch b, time t). `labels.values[i]` must take on values in `[0,
		      num_labels)`. See `core/ops/ctc_ops.cc` for more details.
		  inputs: 3-D `float` `Tensor`.
		    If time_major == False, this will be a `Tensor` shaped: `[batch_size,
		      max_time, num_classes]`.
		    If time_major == True (default), this will be a `Tensor` shaped:
		      `[max_time, batch_size, num_classes]`. The logits.
		  sequence_length: 1-D `int32` vector, size `[batch_size]`. The sequence
		    lengths.
		  preprocess_collapse_repeated: Boolean.  Default: False. If True, repeated
		    labels are collapsed prior to the CTC calculation.
		  ctc_merge_repeated: Boolean.  Default: True.
		  ignore_longer_outputs_than_inputs: Boolean. Default: False. If True,
		    sequences with longer outputs than inputs will be ignored.
		  time_major: The shape format of the `inputs` Tensors. If True, these
		    `Tensors` must be shaped `[max_time, batch_size, num_classes]`. If False,
		    these `Tensors` must be shaped `[batch_size, max_time, num_classes]`.
		    Using `time_major = True` (default) is a bit more efficient because it
		    avoids transposes at the beginning of the ctc_loss calculation.  However,
		    most TensorFlow data is batch-major, so by this function also accepts
		    inputs in batch-major form.
		  logits: Alias for inputs.
		
		Returns:
		  A 1-D `float` `Tensor`, size `[batch]`, containing the negative log
		    probabilities.
		
		Raises:
		  TypeError: if labels is not a `SparseTensor`.
		
		References:
		    Connectionist Temporal Classification - Labeling Unsegmented Sequence Data
		    with Recurrent Neural Networks:
		      [Graves et al., 2006](https://dl.acm.org/citation.cfm?id=1143891)
		      ([pdf](http://www.cs.toronto.edu/~graves/icml_2006.pdf))
	**/
	static public function ctc_loss(labels:Dynamic, ?inputs:Dynamic, ?sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?time_major:Dynamic, ?logits:Dynamic):Dynamic;
	/**
		Computes the CTC loss and gradients.
		
		Most users will want fwd_bwd.ctc_loss
		
		This function returns the computed gradient, it does not have a gradient
		of its own defined.
		
		Args:
		  logits: tensor of shape [frames, batch_size, num_labels]
		  labels: tensor of shape [batch_size, max_label_seq_length]
		  label_length: tensor of shape [batch_size] Length of reference label
		    sequence in labels.
		  logit_length: tensor of shape [batch_size] Length of input sequence in
		    logits.
		  unique: (optional) unique label indices as computed by unique(labels) If
		    supplied, enables an implementation that is faster and more memory
		    efficient on TPU.
		
		Returns:
		  loss: tensor of shape [batch_size]
		  gradient: tensor of shape [frames, batch_size, num_labels]
	**/
	static public function ctc_loss_and_grad(logits:Dynamic, labels:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?unique:Dynamic):Dynamic;
	/**
		Computes CTC (Connectionist Temporal Classification) loss.
		
		This op implements the CTC loss as presented in (Graves et al., 2006),
		using the batched forward backward algorithm described in (Sim et al., 2017).
		
		Notes:
		  Significant differences from tf.compat.v1.nn.ctc_loss:
		    Supports GPU and TPU (tf.compat.v1.nn.ctc_loss supports CPU only):
		      For batched operations, GPU and TPU are significantly faster than using
		      ctc_loss on CPU.
		      This implementation runs on CPU, but significantly slower than ctc_loss.
		    Blank label is 0 rather num_classes - 1, unless overridden by blank_index.
		    Logits and labels are dense arrays with padding rather than SparseTensor.
		    The only mode supported is the same as:
		      preprocess_collapse_repeated=False, ctc_merge_repeated=True
		      To collapse labels, the caller can preprocess label sequence first.
		
		  The dense implementation supports both CPU, GPU and TPU. A fast path is
		  provided that significantly improves memory use for large vocabulary if the
		  caller preprocesses label sequences to get unique label indices on the CPU
		  (eg. in the data input pipeline) using ctc_ops.unique and simplifies this in
		  the optional "unique" kwarg. This is especially useful for TPU and GPU but
		  also works with if used on CPU.
		
		Args:
		  labels: tensor of shape [batch_size, max_label_seq_length]
		  logits: tensor of shape [frames, batch_size, num_labels], if
		    logits_time_major == False, shape is [batch_size, frames, num_labels].
		  label_length: tensor of shape [batch_size] Length of reference label
		    sequence in labels.
		  logit_length: tensor of shape [batch_size] Length of input sequence in
		    logits.
		  logits_time_major: (optional) If True (default), logits is shaped [time,
		    batch, logits]. If False, shape is [batch, time, logits]
		  unique: (optional) Unique label indices as computed by unique(labels). If
		    supplied, enable a faster, memory efficient implementation on TPU.
		  blank_index: (optional) Set the class index to use for the blank label.
		    Negative values will start from num_classes, ie, -1 will reproduce the
		    ctc_loss behavior of using num_classes - 1 for the blank symbol. There is
		    some memory/performance overhead to switching from the default of 0 as an
		    additional shifted copy of the logits may be created.
		  name: A name for this `Op`. Defaults to "ctc_loss_dense".
		
		Returns:
		  loss: tensor of shape [batch_size], negative log probabilities.
		
		References:
		    Connectionist Temporal Classification - Labeling Unsegmented Sequence Data
		    with Recurrent Neural Networks:
		      [Graves et al., 2006](https://dl.acm.org/citation.cfm?id=1143891)
		      ([pdf](http://www.cs.toronto.edu/~graves/icml_2006.pdf))
		    Improving the efficiency of forward-backward algorithm using batched
		    computation in TensorFlow:
		      [Sim et al., 2017](https://ieeexplore.ieee.org/document/8268944)
		      ([pdf](http://bacchiani.net/resume/papers/ASRU2017.pdf))
	**/
	static public function ctc_loss_dense(labels:Dynamic, logits:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?logits_time_major:Dynamic, ?unique:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes CTC (Connectionist Temporal Classification) loss.
		
		This op implements the CTC loss as presented in (Graves et al., 2006).
		
		Notes:
		
		- Same as the "Classic CTC" in TensorFlow 1.x's tf.compat.v1.nn.ctc_loss
		  setting of preprocess_collapse_repeated=False, ctc_merge_repeated=True
		- Labels may be supplied as either a dense, zero-padded tensor with a
		  vector of label sequence lengths OR as a SparseTensor.
		- On TPU and GPU: Only dense padded labels are supported.
		- On CPU: Caller may use SparseTensor or dense padded labels but calling with
		  a SparseTensor will be significantly faster.
		- Default blank label is 0 rather num_classes - 1, unless overridden by
		  blank_index.
		
		Args:
		  labels: tensor of shape [batch_size, max_label_seq_length] or SparseTensor
		  logits: tensor of shape [frames, batch_size, num_labels], if
		    logits_time_major == False, shape is [batch_size, frames, num_labels].
		  label_length: tensor of shape [batch_size], None if labels is SparseTensor
		    Length of reference label sequence in labels.
		  logit_length: tensor of shape [batch_size] Length of input sequence in
		    logits.
		  logits_time_major: (optional) If True (default), logits is shaped [time,
		    batch, logits]. If False, shape is [batch, time, logits]
		  unique: (optional) Unique label indices as computed by
		    ctc_unique_labels(labels).  If supplied, enable a faster, memory efficient
		    implementation on TPU.
		  blank_index: (optional) Set the class index to use for the blank label.
		    Negative values will start from num_classes, ie, -1 will reproduce the
		    ctc_loss behavior of using num_classes - 1 for the blank symbol. There is
		    some memory/performance overhead to switching from the default of 0 as an
		    additional shifted copy of the logits may be created.
		  name: A name for this `Op`. Defaults to "ctc_loss_dense".
		
		Returns:
		  loss: tensor of shape [batch_size], negative log probabilities.
		
		References:
		    Connectionist Temporal Classification - Labeling Unsegmented Sequence Data
		    with Recurrent Neural Networks:
		      [Graves et al., 2006](https://dl.acm.org/citation.cfm?id=1143891)
		      ([pdf](http://www.cs.toronto.edu/~graves/icml_2006.pdf))
	**/
	static public function ctc_loss_v2(labels:Dynamic, logits:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?logits_time_major:Dynamic, ?unique:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes CTC (Connectionist Temporal Classification) loss.
		
		This op implements the CTC loss as presented in (Graves et al., 2006).
		
		Notes:
		
		- Same as the "Classic CTC" in TensorFlow 1.x's tf.compat.v1.nn.ctc_loss
		  setting of preprocess_collapse_repeated=False, ctc_merge_repeated=True
		- Labels may be supplied as either a dense, zero-padded tensor with a
		  vector of label sequence lengths OR as a SparseTensor.
		- On TPU and GPU: Only dense padded labels are supported.
		- On CPU: Caller may use SparseTensor or dense padded labels but calling with
		  a SparseTensor will be significantly faster.
		- Default blank label is 0 rather num_classes - 1, unless overridden by
		  blank_index.
		
		Args:
		  labels: tensor of shape [batch_size, max_label_seq_length] or SparseTensor
		  logits: tensor of shape [frames, batch_size, num_labels], if
		    logits_time_major == False, shape is [batch_size, frames, num_labels].
		  label_length: tensor of shape [batch_size], None if labels is SparseTensor
		    Length of reference label sequence in labels.
		  logit_length: tensor of shape [batch_size] Length of input sequence in
		    logits.
		  logits_time_major: (optional) If True (default), logits is shaped [time,
		    batch, logits]. If False, shape is [batch, time, logits]
		  unique: (optional) Unique label indices as computed by
		    ctc_unique_labels(labels).  If supplied, enable a faster, memory efficient
		    implementation on TPU.
		  blank_index: (optional) Set the class index to use for the blank label.
		    Negative values will start from num_classes, ie, -1 will reproduce the
		    ctc_loss behavior of using num_classes - 1 for the blank symbol. There is
		    some memory/performance overhead to switching from the default of 0 as an
		    additional shifted copy of the logits may be created.
		  name: A name for this `Op`. Defaults to "ctc_loss_dense".
		
		Returns:
		  loss: tensor of shape [batch_size], negative log probabilities.
		
		References:
		    Connectionist Temporal Classification - Labeling Unsegmented Sequence Data
		    with Recurrent Neural Networks:
		      [Graves et al., 2006](https://dl.acm.org/citation.cfm?id=1143891)
		      ([pdf](http://www.cs.toronto.edu/~graves/icml_2006.pdf))
	**/
	static public function ctc_loss_v3(labels:Dynamic, logits:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?logits_time_major:Dynamic, ?unique:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes CTC alignment initial and final state log probabilities.
		
		Create the initial/final state values directly as log values to avoid
		having to take a float64 log on tpu (which does not exist).
		
		Args:
		  seq_lengths: int tensor of shape [batch_size], seq lengths in the batch.
		  max_seq_length: int, max sequence length possible.
		
		Returns:
		  initial_state_log_probs, final_state_log_probs
	**/
	static public function ctc_state_log_probs(seq_lengths:Dynamic, max_seq_length:Dynamic):Dynamic;
	/**
		Get unique labels and indices for batched labels for `tf.nn.ctc_loss`.
		
		For use with `tf.nn.ctc_loss` optional argument `unique`: This op can be
		used to preprocess labels in input pipeline to for better speed/memory use
		computing the ctc loss on TPU.
		
		Example:
		  ctc_unique_labels([[3, 4, 4, 3]]) ->
		    unique labels padded with 0: [[3, 4, 0, 0]]
		    indices of original labels in unique: [0, 1, 1, 0]
		
		Args:
		  labels: tensor of shape [batch_size, max_label_length] padded with 0.
		  name: A name for this `Op`. Defaults to "ctc_unique_labels".
		
		Returns:
		  tuple of
		    - unique labels, tensor of shape `[batch_size, max_label_length]`
		    - indices into unique labels, shape `[batch_size, max_label_length]`
	**/
	static public function ctc_unique_labels(labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert dense labels with sequence lengths to sparse tensor.
		
		Args:
		  dense: tensor of shape [batch, max_length]
		  length: int tensor of shape [batch] The length of each sequence in dense.
		
		Returns:
		  tf.sparse.SparseTensor with values only for the valid elements of sequences.
	**/
	static public function dense_labels_to_sparse(dense:Dynamic, length:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}