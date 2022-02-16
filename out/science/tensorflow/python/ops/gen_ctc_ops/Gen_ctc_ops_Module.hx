/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ctc_ops;
@:pythonImport("tensorflow.python.ops.gen_ctc_ops") extern class Gen_ctc_ops_Module {
	/**
		Performs beam search decoding on the logits given in input.
		
		A note about the attribute merge_repeated: For the beam search decoder,
		this means that if consecutive entries in a beam are the same, only
		the first of these is emitted.  That is, when the top path is "A B B B B",
		"A B" is returned if merge_repeated = True but "A B B B B" is
		returned if merge_repeated = False.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths, size `(batch)`.
		  beam_width: An `int` that is `>= 1`.
		    A scalar >= 0 (beam search beam width).
		  top_paths: An `int` that is `>= 1`.
		    A scalar >= 0, <= beam_width (controls output size).
		  merge_repeated: An optional `bool`. Defaults to `True`.
		    If true, merge repeated classes in output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (decoded_indices, decoded_values, decoded_shape, log_probability).
		
		  decoded_indices: A list of `top_paths` `Tensor` objects with type `int64`.
		  decoded_values: A list of `top_paths` `Tensor` objects with type `int64`.
		  decoded_shape: A list of `top_paths` `Tensor` objects with type `int64`.
		  log_probability: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function CTCBeamSearchDecoder(inputs:Dynamic, sequence_length:Dynamic, beam_width:Dynamic, top_paths:Dynamic, ?merge_repeated:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in inputs.
		
		A note about the attribute merge_repeated: if enabled, when
		consecutive logits' maximum indices are the same, only the first of
		these is emitted.  Labeling the blank '*', the sequence "A B B * B B"
		becomes "A B B" if merge_repeated = True and "A B B B B" if
		merge_repeated = False.
		
		Regardless of the value of merge_repeated, if the maximum index of a given
		time and batch corresponds to the blank, index `(num_classes - 1)`, no new
		element is emitted.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths, size `(batch_size)`.
		  merge_repeated: An optional `bool`. Defaults to `False`.
		    If True, merge repeated classes in output.
		  blank_index: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (decoded_indices, decoded_values, decoded_shape, log_probability).
		
		  decoded_indices: A `Tensor` of type `int64`.
		  decoded_values: A `Tensor` of type `int64`.
		  decoded_shape: A `Tensor` of type `int64`.
		  log_probability: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function CTCGreedyDecoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the CTC Loss (log probability) for each batch entry.  Also calculates
		
		the gradient.  This class performs the softmax operation for you, so inputs
		should be e.g. linear projections of outputs by an LSTM.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  labels_indices: A `Tensor` of type `int64`.
		    The indices of a `SparseTensor<int32, 2>`.
		    `labels_indices(i, :) == [b, t]` means `labels_values(i)` stores the id for
		    `(batch b, time t)`.
		  labels_values: A `Tensor` of type `int32`.
		    The values (labels) associated with the given batch and time.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths (batch).
		  preprocess_collapse_repeated: An optional `bool`. Defaults to `False`.
		    Scalar, if true then repeated labels are
		    collapsed prior to the CTC calculation.
		  ctc_merge_repeated: An optional `bool`. Defaults to `True`.
		    Scalar.  If set to false, *during* CTC calculation
		    repeated non-blank labels will not be merged and are interpreted as
		    individual labels.  This is a simplified version of CTC.
		  ignore_longer_outputs_than_inputs: An optional `bool`. Defaults to `False`.
		    Scalar. If set to true, during CTC
		    calculation, items that have longer output sequences than input sequences
		    are skipped: they don't contribute to the loss term and have zero-gradient.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, gradient).
		
		  loss: A `Tensor`. Has the same type as `inputs`.
		  gradient: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function CTCLoss(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the CTC Loss (log probability) for each batch entry.  Also calculates
		
		the gradient.  This class performs the softmax operation for you, so inputs
		should be e.g. linear projections of outputs by an LSTM.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits. Default blank
		    label is 0 rather num_classes - 1.
		  labels_indices: A `Tensor` of type `int64`.
		    The indices of a `SparseTensor<int32, 2>`.
		    `labels_indices(i, :) == [b, t]` means `labels_values(i)` stores the id for
		    `(batch b, time t)`.
		  labels_values: A `Tensor` of type `int32`.
		    The values (labels) associated with the given batch and time.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths (batch).
		  preprocess_collapse_repeated: An optional `bool`. Defaults to `False`.
		    Scalar, if true then repeated labels are
		    collapsed prior to the CTC calculation.
		  ctc_merge_repeated: An optional `bool`. Defaults to `True`.
		    Scalar.  If set to false, *during* CTC calculation
		    repeated non-blank labels will not be merged and are interpreted as
		    individual labels.  This is a simplified version of CTC.
		  ignore_longer_outputs_than_inputs: An optional `bool`. Defaults to `False`.
		    Scalar. If set to true, during CTC
		    calculation, items that have longer output sequences than input sequences
		    are skipped: they don't contribute to the loss term and have zero-gradient.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, gradient).
		
		  loss: A `Tensor` of type `float32`.
		  gradient: A `Tensor` of type `float32`.
	**/
	static public function CTCLossV2(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		A note about the attribute merge_repeated: For the beam search decoder,
		this means that if consecutive entries in a beam are the same, only
		the first of these is emitted.  That is, when the top path is "A B B B B",
		"A B" is returned if merge_repeated = True but "A B B B B" is
		returned if merge_repeated = False.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths, size `(batch)`.
		  beam_width: An `int` that is `>= 1`.
		    A scalar >= 0 (beam search beam width).
		  top_paths: An `int` that is `>= 1`.
		    A scalar >= 0, <= beam_width (controls output size).
		  merge_repeated: An optional `bool`. Defaults to `True`.
		    If true, merge repeated classes in output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (decoded_indices, decoded_values, decoded_shape, log_probability).
		
		  decoded_indices: A list of `top_paths` `Tensor` objects with type `int64`.
		  decoded_values: A list of `top_paths` `Tensor` objects with type `int64`.
		  decoded_shape: A list of `top_paths` `Tensor` objects with type `int64`.
		  log_probability: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function ctc_beam_search_decoder(inputs:Dynamic, sequence_length:Dynamic, beam_width:Dynamic, top_paths:Dynamic, ?merge_repeated:Dynamic, ?name:Dynamic):Dynamic;
	static public function ctc_beam_search_decoder_eager_fallback(inputs:Dynamic, sequence_length:Dynamic, beam_width:Dynamic, top_paths:Dynamic, merge_repeated:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in inputs.
		
		A note about the attribute merge_repeated: if enabled, when
		consecutive logits' maximum indices are the same, only the first of
		these is emitted.  Labeling the blank '*', the sequence "A B B * B B"
		becomes "A B B" if merge_repeated = True and "A B B B B" if
		merge_repeated = False.
		
		Regardless of the value of merge_repeated, if the maximum index of a given
		time and batch corresponds to the blank, index `(num_classes - 1)`, no new
		element is emitted.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths, size `(batch_size)`.
		  merge_repeated: An optional `bool`. Defaults to `False`.
		    If True, merge repeated classes in output.
		  blank_index: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (decoded_indices, decoded_values, decoded_shape, log_probability).
		
		  decoded_indices: A `Tensor` of type `int64`.
		  decoded_values: A `Tensor` of type `int64`.
		  decoded_shape: A `Tensor` of type `int64`.
		  log_probability: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	static public function ctc_greedy_decoder_eager_fallback(inputs:Dynamic, sequence_length:Dynamic, merge_repeated:Dynamic, blank_index:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Calculates the CTC Loss (log probability) for each batch entry.  Also calculates
		
		the gradient.  This class performs the softmax operation for you, so inputs
		should be e.g. linear projections of outputs by an LSTM.
		
		Args:
		  inputs: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits.
		  labels_indices: A `Tensor` of type `int64`.
		    The indices of a `SparseTensor<int32, 2>`.
		    `labels_indices(i, :) == [b, t]` means `labels_values(i)` stores the id for
		    `(batch b, time t)`.
		  labels_values: A `Tensor` of type `int32`.
		    The values (labels) associated with the given batch and time.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths (batch).
		  preprocess_collapse_repeated: An optional `bool`. Defaults to `False`.
		    Scalar, if true then repeated labels are
		    collapsed prior to the CTC calculation.
		  ctc_merge_repeated: An optional `bool`. Defaults to `True`.
		    Scalar.  If set to false, *during* CTC calculation
		    repeated non-blank labels will not be merged and are interpreted as
		    individual labels.  This is a simplified version of CTC.
		  ignore_longer_outputs_than_inputs: An optional `bool`. Defaults to `False`.
		    Scalar. If set to true, during CTC
		    calculation, items that have longer output sequences than input sequences
		    are skipped: they don't contribute to the loss term and have zero-gradient.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, gradient).
		
		  loss: A `Tensor`. Has the same type as `inputs`.
		  gradient: A `Tensor`. Has the same type as `inputs`.
	**/
	static public function ctc_loss(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function ctc_loss_eager_fallback(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, preprocess_collapse_repeated:Dynamic, ctc_merge_repeated:Dynamic, ignore_longer_outputs_than_inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Calculates the CTC Loss (log probability) for each batch entry.  Also calculates
		
		the gradient.  This class performs the softmax operation for you, so inputs
		should be e.g. linear projections of outputs by an LSTM.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		    3-D, shape: `(max_time x batch_size x num_classes)`, the logits. Default blank
		    label is 0 rather num_classes - 1.
		  labels_indices: A `Tensor` of type `int64`.
		    The indices of a `SparseTensor<int32, 2>`.
		    `labels_indices(i, :) == [b, t]` means `labels_values(i)` stores the id for
		    `(batch b, time t)`.
		  labels_values: A `Tensor` of type `int32`.
		    The values (labels) associated with the given batch and time.
		  sequence_length: A `Tensor` of type `int32`.
		    A vector containing sequence lengths (batch).
		  preprocess_collapse_repeated: An optional `bool`. Defaults to `False`.
		    Scalar, if true then repeated labels are
		    collapsed prior to the CTC calculation.
		  ctc_merge_repeated: An optional `bool`. Defaults to `True`.
		    Scalar.  If set to false, *during* CTC calculation
		    repeated non-blank labels will not be merged and are interpreted as
		    individual labels.  This is a simplified version of CTC.
		  ignore_longer_outputs_than_inputs: An optional `bool`. Defaults to `False`.
		    Scalar. If set to true, during CTC
		    calculation, items that have longer output sequences than input sequences
		    are skipped: they don't contribute to the loss term and have zero-gradient.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, gradient).
		
		  loss: A `Tensor` of type `float32`.
		  gradient: A `Tensor` of type `float32`.
	**/
	static public function ctc_loss_v2(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function ctc_loss_v2_eager_fallback(inputs:Dynamic, labels_indices:Dynamic, labels_values:Dynamic, sequence_length:Dynamic, preprocess_collapse_repeated:Dynamic, ctc_merge_repeated:Dynamic, ignore_longer_outputs_than_inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}