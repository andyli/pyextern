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
		Shape function for the CTCBeamSearchDecoder op.
	**/
	static public function _CTCBeamSearchDecoderShape(op:Dynamic):Dynamic;
	/**
		Shape function for the CTCGreedyDecoder op.
	**/
	static public function _CTCGreedyDecoderShape(op:Dynamic):Dynamic;
	/**
		The derivative provided by CTC Loss.
		
		Args:
		   op: the CTCLoss op.
		   grad_loss: The backprop for cost.
		
		Returns:
		   The CTC Loss gradient.
	**/
	static public function _CTCLossGrad(op:Dynamic, grad_loss:Dynamic, _:Dynamic):Dynamic;
	/**
		Shape function for the CTCLoss op.
	**/
	static public function _CTCLossShape(op:Dynamic):Dynamic;
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
		`ctc_beam_search_decoder` with `top_paths=1` (but that decoder is faster
		for this special case).
		
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
		
		  * `A B` if `merge_repeated=True`.
		  * `A B B B B B` if `merge_repeated=False`.
		
		Args:
		  inputs: 3-D `float` `Tensor` sized
		    `[max_time x batch_size x num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
		  merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A tuple `(decoded, log_probabilities)` where
		  decoded: A single-element list. `decoded[0]`
		    is an `SparseTensor` containing the decoded outputs s.t.:
		    `decoded.indices`: Indices matrix `(total_decoded_outputs x 2)`.
		      The rows store: `[batch, time]`.
		    `decoded.values`: Values vector, size `(total_decoded_outputs)`.
		      The vector stores the decoded classes.
		    `decoded.shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length]`
		  log_probability: A `float` matrix `(batch_size x 1)` containing sequence
		      log-probabilities.
	**/
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Computes the CTC (Connectionist Temporal Classification) Loss.
		
		This op implements the CTC loss as presented in the article:
		
		A. Graves, S. Fernandez, F. Gomez, J. Schmidhuber.
		Connectionist Temporal Classification: Labelling Unsegmented Sequence Data
		with Recurrent Neural Networks. ICML 2006, Pittsburgh, USA, pp. 369-376.
		
		http://www.cs.toronto.edu/~graves/icml_2006.pdf
		
		Input requirements:
		
		```
		sequence_length(b) <= time for all b
		
		max(labels.indices(labels.indices[:, 1] == b, 2))
		  <= sequence_length(b) for all b.
		```
		
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
		
		Args:
		  inputs: 3-D `float` `Tensor` sized
		    `[max_time x batch_size x num_classes]`.  The logits.
		  labels: An `int32` `SparseTensor`.
		    `labels.indices[i, :] == [b, t]` means `labels.values[i]` stores
		    the id for (batch b, time t).  See `core/ops/ctc_ops.cc` for more details.
		  sequence_length: 1-D `int32` vector, size `[batch_size]`.
		    The sequence lengths.
		  preprocess_collapse_repeated: Boolean.  Default: False.
		    If True, repeated labels are collapsed prior to the CTC calculation.
		  ctc_merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A 1-D `float` `Tensor`, size `[batch]`, containing the negative log probabilities.
		
		Raises:
		  TypeError: if labels is not a `SparseTensor`.
	**/
	static public function ctc_loss(inputs:Dynamic, labels:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}