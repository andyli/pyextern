/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.rnn;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.rnn") extern class Rnn_Module {
	static public var USE_DEFAULT : Dynamic;
	static public var _CELL_TYPES : Dynamic;
	static public var _DEFAULT_CLIP_NORM : Dynamic;
	static public var _DEFAULT_LEARNING_RATE : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assert arguments are valid and return rnn_cell_fn.
	**/
	static public function _assert_rnn_cell_fn(rnn_cell_fn:Dynamic, num_units:Dynamic, cell_type:Dynamic):Dynamic;
	/**
		Replicates `context_input` across all timesteps of `sequence_input`.
		
		Expands dimension 1 of `context_input` then tiles it `sequence_length` times.
		This value is appended to `sequence_input` on dimension 2 and the result is
		returned.
		
		Args:
		  sequence_input: A `Tensor` of dtype `float32` and shape `[batch_size,
		    padded_length, d0]`.
		  context_input: A `Tensor` of dtype `float32` and shape `[batch_size, d1]`.
		
		Returns:
		  A `Tensor` of dtype `float32` and shape `[batch_size, padded_length,
		  d0 + d1]`.
		
		Raises:
		  ValueError: If `sequence_input` does not have rank 3 or `context_input` does
		    not have rank 2.
	**/
	static public function _concatenate_context_input(sequence_input:Dynamic, context_input:Dynamic):Dynamic;
	/**
		Convenience function to create `rnn_cell_fn` for canned RNN Estimators.
		
		Args:
		  num_units: Iterable of integer number of hidden units per RNN layer.
		  cell_type: A subclass of `tf.nn.rnn_cell.RNNCell` or a string specifying
		    the cell type. Supported strings are: `'basic_rnn'`, `'lstm'`, and
		    `'gru'`.
		
		Returns:
		  A function that takes a single argument, an instance of
		  `tf.estimator.ModeKeys`, and returns an instance derived from
		  `tf.nn.rnn_cell.RNNCell`.
		
		Raises:
		  ValueError: If cell_type is not supported.
	**/
	static public function _make_rnn_cell_fn(num_units:Dynamic, ?cell_type:Dynamic):Dynamic;
	/**
		Function builder for a rnn logit_fn.
		
		Args:
		  output_units: An int indicating the dimension of the logit layer.
		  rnn_cell_fn: A function with one argument, a `tf.estimator.ModeKeys`, and
		    returns an object of type `tf.nn.rnn_cell.RNNCell`.
		  sequence_feature_columns: An iterable containing the `FeatureColumn`s
		    that represent sequential input.
		  context_feature_columns: An iterable containing the `FeatureColumn`s
		    that represent contextual input.
		  input_layer_partitioner: Partitioner for input layer.
		  return_sequences: A boolean indicating whether to return the last output
		    in the output sequence, or the full sequence.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If output_units is not an int.
	**/
	static public function _rnn_logit_fn_builder(output_units:Dynamic, rnn_cell_fn:Dynamic, sequence_feature_columns:Dynamic, context_feature_columns:Dynamic, input_layer_partitioner:Dynamic, ?return_sequences:Dynamic):Dynamic;
	/**
		Recurrent Neural Net model_fn.
		
		Args:
		  features: dict of `Tensor` and `SparseTensor` objects returned from
		    `input_fn`.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] with labels.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  head: A `Head` instance.
		  rnn_cell_fn: A function with one argument, a `tf.estimator.ModeKeys`, and
		    returns an object of type `tf.nn.rnn_cell.RNNCell`.
		  sequence_feature_columns: Iterable containing `FeatureColumn`s that
		    represent sequential model inputs.
		  context_feature_columns: Iterable containing `FeatureColumn`s that
		    represent model inputs not associated with a specific timestep.
		  return_sequences: A boolean indicating whether to return the last output
		    in the output sequence, or the full sequence.
		  optimizer: String, `tf.Optimizer` object, or callable that creates the
		    optimizer to use for training. If not specified, will use the Adagrad
		    optimizer with a default learning rate of 0.05 and gradient clip norm of
		    5.0.
		  input_layer_partitioner: Partitioner for input layer. Defaults
		    to `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: If mode or optimizer is invalid, or features has the wrong type.
	**/
	static public function _rnn_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, rnn_cell_fn:Dynamic, sequence_feature_columns:Dynamic, context_feature_columns:Dynamic, ?return_sequences:Dynamic, ?optimizer:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Selects the nth set of activations for each n in `sequence_length`.
		
		Returns a `Tensor` of shape `[batch_size, k]`. If `sequence_length` is not
		`None`, then `output[i, :] = activations[i, sequence_length[i] - 1, :]`. If
		`sequence_length` is `None`, then `output[i, :] = activations[i, -1, :]`.
		
		Args:
		  activations: A `Tensor` with shape `[batch_size, padded_length, k]`.
		  sequence_lengths: A `Tensor` with shape `[batch_size]` or `None`.
		Returns:
		  A `Tensor` of shape `[batch_size, k]`.
	**/
	static public function _select_last_activations(activations:Dynamic, sequence_lengths:Dynamic):Dynamic;
	static public function _single_rnn_cell(num_units:Dynamic, cell_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}