/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.dynamic_rnn_estimator;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.dynamic_rnn_estimator") extern class Dynamic_rnn_estimator_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Creates an RNN model function for an `Estimator`.
		
		The model function returns an instance of `ModelFnOps`. When
		`problem_type == ProblemType.CLASSIFICATION` and
		`predict_probabilities == True`, the returned `ModelFnOps` includes an output
		alternative containing the classes and their associated probabilities. When
		`predict_probabilities == False`, only the classes are included. When
		`problem_type == ProblemType.LINEAR_REGRESSION`, the output alternative
		contains only the predicted values.
		
		Args:
		  cell_type: A string, a subclass of `RNNCell` or an instance of an `RNNCell`.
		  num_units: A single `int` or a list of `int`s. The size of the `RNNCell`s.
		  target_column: An initialized `TargetColumn`, used to calculate prediction
		    and loss.
		  problem_type: `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  prediction_type: `PredictionType.SINGLE_VALUE` or
		    `PredictionType.MULTIPLE_VALUE`.
		  optimizer: A subclass of `Optimizer`, an instance of an `Optimizer` or a
		    string.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  predict_probabilities: A boolean indicating whether to predict probabilities
		    for all classes. Must only be used with
		    `ProblemType.CLASSIFICATION`.
		  learning_rate: Learning rate used for optimization. This argument has no
		    effect if `optimizer` is an instance of an `Optimizer`.
		  gradient_clipping_norm: A float. Gradients will be clipped to this value.
		  dropout_keep_probabilities: a list of dropout keep probabilities or `None`.
		    If a list is given, it must have length `len(num_units) + 1`.
		  sequence_length_key: The key that will be used to look up sequence length in
		    the `features` dict.
		  dtype: The dtype of the state and output of the given `cell`.
		  parallel_iterations: Number of iterations to run in parallel. Values >> 1
		    use more memory but take less time, while smaller values use less memory
		    but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  name: A string that will be used to create a scope for the RNN.
		
		Returns:
		  A model function to be passed to an `Estimator`.
		
		Raises:
		  ValueError: `problem_type` is not one of
		    `ProblemType.LINEAR_REGRESSION` or `ProblemType.CLASSIFICATION`.
		  ValueError: `prediction_type` is not one of `PredictionType.SINGLE_VALUE`
		    or `PredictionType.MULTIPLE_VALUE`.
		  ValueError: `predict_probabilities` is `True` for `problem_type` other
		    than `ProblemType.CLASSIFICATION`.
		  ValueError: `len(dropout_keep_probabilities)` is not `len(num_units) + 1`.
	**/
	static public function _get_dynamic_rnn_model_fn(cell_type:Dynamic, num_units:Dynamic, target_column:Dynamic, problem_type:Dynamic, prediction_type:Dynamic, optimizer:Dynamic, sequence_feature_columns:Dynamic, ?context_feature_columns:Dynamic, ?predict_probabilities:Dynamic, ?learning_rate:Dynamic, ?gradient_clipping_norm:Dynamic, ?dropout_keep_probabilities:Dynamic, ?sequence_length_key:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs output alternatives dict for `ModelFnOps`.
		
		Args:
		  prediction_type: either `MULTIPLE_VALUE` or `SINGLE_VALUE`.
		  problem_type: either `CLASSIFICATION` or `LINEAR_REGRESSION`.
		  prediction_dict: a dictionary mapping strings to `Tensor`s containing
		    predictions.
		
		Returns:
		  `None` or a dictionary mapping a string to an output alternative.
		
		Raises:
		  ValueError: `prediction_type` is not one of `SINGLE_VALUE` or
		  `MULTIPLE_VALUE`.
	**/
	static public function _get_output_alternatives(prediction_type:Dynamic, problem_type:Dynamic, prediction_dict:Dynamic):Dynamic;
	/**
		Constructs the name string for state component `i`.
	**/
	static public function _get_state_name(i:Dynamic):Dynamic;
	/**
		Maps `activations` from the RNN to loss for multi value models.
		
		Args:
		  activations: Output from an RNN. Should have dtype `float32` and shape
		    `[batch_size, padded_length, ?]`.
		  labels: A `Tensor` with length `[batch_size, padded_length]`.
		  sequence_length: A `Tensor` with shape `[batch_size]` and dtype `int32`
		    containing the length of each sequence in the batch. If `None`, sequences
		    are assumed to be unpadded.
		  target_column: An initialized `TargetColumn`, calculate predictions.
		  features: A `dict` containing the input and (optionally) sequence length
		    information and initial state.
		Returns:
		  A scalar `Tensor` containing the loss.
	**/
	static public function _multi_value_loss(activations:Dynamic, labels:Dynamic, sequence_length:Dynamic, target_column:Dynamic, features:Dynamic):Dynamic;
	/**
		Maps `activations` from the RNN to loss for multi value models.
		
		Args:
		  activations: Output from an RNN. Should have dtype `float32` and shape
		    `[batch_size, padded_length, ?]`.
		  labels: A `Tensor` with length `[batch_size]`.
		  sequence_length: A `Tensor` with shape `[batch_size]` and dtype `int32`
		    containing the length of each sequence in the batch. If `None`, sequences
		    are assumed to be unpadded.
		  target_column: An initialized `TargetColumn`, calculate predictions.
		  features: A `dict` containing the input and (optionally) sequence length
		    information and initial state.
		Returns:
		  A scalar `Tensor` containing the loss.
	**/
	static public function _single_value_loss(activations:Dynamic, labels:Dynamic, sequence_length:Dynamic, target_column:Dynamic, features:Dynamic):Dynamic;
	/**
		Maps `activations` from the RNN to predictions for single value models.
		
		If `predict_probabilities` is `False`, this function returns a `dict`
		containing single entry with key `PREDICTIONS_KEY`. If `predict_probabilities`
		is `True`, it will contain a second entry with key `PROBABILITIES_KEY`. The
		value of this entry is a `Tensor` of probabilities with shape
		`[batch_size, num_classes]`.
		
		Args:
		  activations: Output from an RNN. Should have dtype `float32` and shape
		    `[batch_size, padded_length, ?]`.
		  sequence_length: A `Tensor` with shape `[batch_size]` and dtype `int32`
		    containing the length of each sequence in the batch. If `None`, sequences
		    are assumed to be unpadded.
		  target_column: An initialized `TargetColumn`, calculate predictions.
		  problem_type: Either `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  predict_probabilities: A Python boolean, indicating whether probabilities
		    should be returned. Should only be set to `True` for
		    classification/logistic regression problems.
		Returns:
		  A `dict` mapping strings to `Tensors`.
	**/
	static public function _single_value_predictions(activations:Dynamic, sequence_length:Dynamic, target_column:Dynamic, problem_type:Dynamic, predict_probabilities:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Combine sequence and context features into input for an RNN.
		
		Args:
		  features: A `dict` containing the input and (optionally) sequence length
		    information and initial state.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features i.e. features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  weight_collections: List of graph collections to which weights are added.
		  scope: Optional scope, passed through to parsing ops.
		Returns:
		  A `Tensor` of dtype `float32` and shape `[batch_size, padded_length, ?]`.
		  This will be used as input to an RNN.
	**/
	static public function build_sequence_input(features:Dynamic, sequence_feature_columns:Dynamic, context_feature_columns:Dynamic, ?weight_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Build an RNN and apply a fully connected layer to get the desired output.
		
		Args:
		  initial_state: The initial state to pass the RNN. If `None`, the
		    default starting state for `self._cell` is used.
		  sequence_input: A `Tensor` with shape `[batch_size, padded_length, d]`
		    that will be passed as input to the RNN.
		  cell: An initialized `RNNCell`.
		  num_label_columns: The desired output dimension.
		  dtype: dtype of `cell`.
		  parallel_iterations: Number of iterations to run in parallel. Values >> 1
		    use more memory but take less time, while smaller values use less memory
		    but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		Returns:
		  activations: The output of the RNN, projected to `num_label_columns`
		    dimensions.
		  final_state: A `Tensor` or nested tuple of `Tensor`s representing the final
		    state output by the RNN.
	**/
	static public function construct_rnn(initial_state:Dynamic, sequence_input:Dynamic, cell:Dynamic, num_label_columns:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic):Dynamic;
	/**
		Reconstructs nested `state` from a dict containing state `Tensor`s.
		
		Args:
		  input_dict: A dict of `Tensor`s.
		  cell: An instance of `RNNCell`.
		Returns:
		  If `input_dict` does not contain keys 'STATE_PREFIX_i' for `0 <= i < n`
		  where `n` is the number of nested entries in `cell.state_size`, this
		  function returns `None`. Otherwise, returns a `Tensor` if `cell.state_size`
		  is an `int` or a nested tuple of `Tensor`s if `cell.state_size` is a nested
		  tuple.
		Raises:
		  ValueError: State is partially specified. The `input_dict` must contain
		    values for all state components or none at all.
	**/
	static public function dict_to_state_tuple(input_dict:Dynamic, cell:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a dict containing flattened `state`.
		
		Args:
		  state: A `Tensor` or a nested tuple of `Tensors`. All of the `Tensor`s must
		  have the same rank and agree on all dimensions except the last.
		
		Returns:
		  A dict containing the `Tensor`s that make up `state`. The keys of the dict
		  are of the form "STATE_PREFIX_i" where `i` is the place of this `Tensor`
		  in a depth-first traversal of `state`.
	**/
	static public function state_tuple_to_dict(state:Dynamic):Dynamic;
}