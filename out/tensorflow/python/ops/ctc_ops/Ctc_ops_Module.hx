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
	/**
		The derivative provided by CTC Loss.
		
		Args:
		   op: the CTCLoss op.
		   grad_loss: The backprop for cost.
		
		Returns:
		   The CTC Loss gradient.
	**/
	static public function _CTCLossGrad(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
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
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		If `merge_repeated` is `True`, merge repeated classes in the output beams.
		This means that if consecutive entries in a beam are the same,
		only the first of these is emitted.  That is, when the top path
		is `A B B B B`, the return value is:
		
		  * `A B` if `merge_repeated = True`.
		  * `A B B B B` if `merge_repeated = False`.
		
		Args:
		  inputs: 3-D `float` `Tensor`, size
		    `[max_time x batch_size x num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
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
		    `decoded[j].shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length[j]]`.
		  log_probability: A `float` matrix `(batch_size x top_paths)` containing
		      sequence log-probabilities.
	**/
	static public function ctc_beam_search_decoder(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in input (best path).
		
		Note: Regardless of the value of merge_repeated, if the maximum index of a
		given time and batch corresponds to the blank index `(num_classes - 1)`, no
		new element is emitted.
		
		If `merge_repeated` is `True`, merge repeated classes in output.
		This means that if consecutive logits' maximum indices are the same,
		only the first of these is emitted.  The sequence `A B B * B * B` (where '*'
		is the blank label) becomes
		
		  * `A B B B` if `merge_repeated=True`.
		  * `A B B B B` if `merge_repeated=False`.
		
		Args:
		  inputs: 3-D `float` `Tensor` sized
		    `[max_time x batch_size x num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
		  merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A tuple `(decoded, neg_sum_logits)` where
		  decoded: A single-element list. `decoded[0]`
		    is an `SparseTensor` containing the decoded outputs s.t.:
		    `decoded.indices`: Indices matrix `(total_decoded_outputs x 2)`.
		      The rows store: `[batch, time]`.
		    `decoded.values`: Values vector, size `(total_decoded_outputs)`.
		      The vector stores the decoded classes.
		    `decoded.shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length]`
		  neg_sum_logits: A `float` matrix `(batch_size x 1)` containing, for the
		      sequence found, the negative of the sum of the greatest logit at each
		      timeframe.
	**/
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Computes the CTC (Connectionist Temporal Classification) Loss.
		
		This op implements the CTC loss as presented in the article:
		
		[A. Graves, S. Fernandez, F. Gomez, J. Schmidhuber.
		Connectionist Temporal Classification: Labelling Unsegmented Sequence Data
		with Recurrent Neural Networks. ICML 2006, Pittsburgh, USA, pp. 369-376.](http://www.cs.toronto.edu/~graves/icml_2006.pdf)
		
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
		    `labels.indices[i, :] == [b, t]` means `labels.values[i]` stores
		    the id for (batch b, time t).
		    `labels.values[i]` must take on values in `[0, num_labels)`.
		    See `core/ops/ctc_ops.cc` for more details.
		  inputs: 3-D `float` `Tensor`.
		    If time_major == False, this will be a `Tensor` shaped:
		      `[batch_size x max_time x num_classes]`.
		    If time_major == True (default), this will be a `Tensor` shaped:
		      `[max_time x batch_size x num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector, size `[batch_size]`.
		    The sequence lengths.
		  preprocess_collapse_repeated: Boolean.  Default: False.
		    If True, repeated labels are collapsed prior to the CTC calculation.
		  ctc_merge_repeated: Boolean.  Default: True.
		  ignore_longer_outputs_than_inputs: Boolean. Default: False.
		    If True, sequences with longer outputs than inputs will be ignored.
		  time_major: The shape format of the `inputs` Tensors.
		    If True, these `Tensors` must be shaped `[max_time, batch_size, num_classes]`.
		    If False, these `Tensors` must be shaped `[batch_size, max_time, num_classes]`.
		    Using `time_major = True` (default) is a bit more efficient because it avoids
		    transposes at the beginning of the ctc_loss calculation.  However, most
		    TensorFlow data is batch-major, so by this function also accepts inputs
		    in batch-major form.
		
		Returns:
		  A 1-D `float` `Tensor`, size `[batch]`, containing the negative log probabilities.
		
		Raises:
		  TypeError: if labels is not a `SparseTensor`.
	**/
	static public function ctc_loss(labels:Dynamic, inputs:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?time_major:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}