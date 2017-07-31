/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.state_saving_rnn_estimator;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.state_saving_rnn_estimator") extern class State_saving_rnn_estimator_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the initial state of the `RNNCell` used in the RNN.
		
		Args:
		  cell: A `RNNCell` to be used in the RNN.
		
		Returns:
		  A Python dict mapping state names to the `RNNCell`'s initial state for
		  consumption by the SQSS.
	**/
	static public function _get_initial_states(cell:Dynamic):Dynamic;
	/**
		Gets the name of a column or its parent columns' names.
		
		Args:
		  column: A sequence feature column derived from `FeatureColumn`.
		
		Returns:
		  A list of the name of `column` or the names of its parent columns,
		  if any exist.
	**/
	static public function _get_name_or_parent_names(column:Dynamic):Dynamic;
	/**
		Creates a state saving RNN model function for an `Estimator`.
		
		Args:
		  cell_type: A subclass of `RNNCell` or one of 'basic_rnn,' 'lstm' or 'gru'.
		  target_column: An initialized `TargetColumn`, used to calculate prediction
		    and loss.
		  problem_type: `ProblemType.CLASSIFICATION` or
		  `ProblemType.LINEAR_REGRESSION`.
		  optimizer: A subclass of `Optimizer`, an instance of an `Optimizer` or a
		    string.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  num_units: The number of units in the `RNNCell`.
		  num_threads: The Python integer number of threads enqueuing input examples
		    into a queue.
		  queue_capacity: The max capacity of the queue in number of examples.
		    Needs to be at least `batch_size`. When iterating over the same input
		    example multiple times reusing their keys the `queue_capacity` must be
		    smaller than the number of examples.
		  batch_size: Python integer, the size of the minibatch produced by the SQSS.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  predict_probabilities: A boolean indicating whether to predict probabilities
		    for all classes.
		    Must only be used with `ProblemType.CLASSIFICATION`.
		  learning_rate: Learning rate used for optimization. This argument has no
		    effect if `optimizer` is an instance of an `Optimizer`.
		  gradient_clipping_norm: A float. Gradients will be clipped to this value.
		  dropout_keep_probabilities: a list of dropout keep probabilities or `None`.
		    If given a list, it must have length `len(num_units) + 1`.
		  name: A string that will be used to create a scope for the RNN.
		  seed: Fixes the random seed used for generating input keys by the SQSS.
		
		Returns:
		  A model function to be passed to an `Estimator`.
		
		Raises:
		  ValueError: `problem_type` is not one of
		    `ProblemType.LINEAR_REGRESSION`
		    or `ProblemType.CLASSIFICATION`.
		  ValueError: `predict_probabilities` is `True` for `problem_type` other
		    than `ProblemType.CLASSIFICATION`.
		  ValueError: `num_unroll` is not positive.
	**/
	static public function _get_rnn_model_fn(cell_type:Dynamic, target_column:Dynamic, problem_type:Dynamic, optimizer:Dynamic, num_unroll:Dynamic, num_units:Dynamic, num_threads:Dynamic, queue_capacity:Dynamic, batch_size:Dynamic, sequence_feature_columns:Dynamic, ?context_feature_columns:Dynamic, ?predict_probabilities:Dynamic, ?learning_rate:Dynamic, ?gradient_clipping_norm:Dynamic, ?dropout_keep_probabilities:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Constructs the name string for state component `i`.
	**/
	static public function _get_state_name(i:Dynamic):Dynamic;
	/**
		Gets the state names for an `RNNCell`.
		
		Args:
		  cell: A `RNNCell` to be used in the RNN.
		
		Returns:
		  State names in the form of a string, a list of strings, or a list of
		  string pairs, depending on the type of `cell.state_size`.
		
		Raises:
		  TypeError: If cell.state_size is of type TensorShape.
	**/
	static public function _get_state_names(cell:Dynamic):Dynamic;
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
		Prepares features for batching by the SQSS.
		
		In preparation for batching by the SQSS, this function:
		- Extracts the input key from the features dict.
		- Separates sequence and context features dicts from the features dict.
		- Adds the labels tensor to the sequence features dict.
		
		Args:
		  features: A dict of Python string to an iterable of `Tensor` or
		    `SparseTensor` of rank 2, the `features` argument of a TF.Learn model_fn.
		  labels: An iterable of `Tensor`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		
		Returns:
		  sequence_features: A dict mapping feature names to sequence features.
		  context_features: A dict mapping feature names to context features.
		
		Raises:
		  ValueError: If `features` does not contain a value for every key in
		    `sequence_feature_columns` or `context_feature_columns`.
	**/
	static public function _prepare_features_for_sqss(features:Dynamic, labels:Dynamic, mode:Dynamic, sequence_feature_columns:Dynamic, context_feature_columns:Dynamic):Dynamic;
	/**
		Prepares features batched by the SQSS for input to a state-saving RNN.
		
		Args:
		  sequence_features: A dict of sequence feature name to `Tensor` or
		    `SparseTensor`, with `Tensor`s of shape `[batch_size, num_unroll, ...]`
		    or `SparseTensors` of dense shape `[batch_size, num_unroll, d]`.
		  context_features: A dict of context feature name to `Tensor`, with
		    tensors of shape `[batch_size, 1, ...]` and type float32.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		
		Returns:
		  features_by_time: A list of length `num_unroll` with `Tensor` entries of
		    shape `[batch_size, sum(sequence_features dimensions) +
		    sum(context_features dimensions)]` of type float32.
		    Context features are copied into each time step.
	**/
	static public function _prepare_inputs_for_rnn(sequence_features:Dynamic, context_features:Dynamic, sequence_feature_columns:Dynamic, num_unroll:Dynamic):Dynamic;
	/**
		Reads a batch from a state saving sequence queue.
		
		Args:
		  cell: An initialized `RNNCell` to be used in the RNN.
		  features: A dict of Python string to an iterable of `Tensor`, the
		    `features` argument of a TF.Learn model_fn.
		  labels: An iterable of `Tensor`, the `labels` argument of a
		    TF.Learn model_fn.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  batch_size: Python integer, the size of the minibatch produced by the SQSS.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  num_threads: The Python integer number of threads enqueuing input examples
		    into a queue. Defaults to 3.
		  queue_capacity: The max capacity of the queue in number of examples.
		    Needs to be at least `batch_size`. Defaults to 1000. When iterating
		    over the same input example multiple times reusing their keys the
		    `queue_capacity` must be smaller than the number of examples.
		  seed: Fixes the random seed used for generating input keys by the SQSS.
		
		Returns:
		  batch: A `NextQueuedSequenceBatch` containing batch_size `SequenceExample`
		    values and their saved internal states.
	**/
	static public function _read_batch(cell:Dynamic, features:Dynamic, labels:Dynamic, mode:Dynamic, num_unroll:Dynamic, batch_size:Dynamic, sequence_feature_columns:Dynamic, ?context_feature_columns:Dynamic, ?num_threads:Dynamic, ?queue_capacity:Dynamic, ?seed:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build a state saving RNN and apply a fully connected layer.
		
		Args:
		  cell: An instance of `RNNCell`.
		  inputs: A length `T` list of inputs, each a `Tensor` of shape
		    `[batch_size, input_size, ...]`.
		  num_label_columns: The desired output dimension.
		  state_saver: A state saver object with methods `state` and `save_state`.
		  state_name: Python string or tuple of strings.  The name to use with the
		    state_saver. If the cell returns tuples of states (i.e.,
		    `cell.state_size` is a tuple) then `state_name` should be a tuple of
		    strings having the same length as `cell.state_size`.  Otherwise it should
		    be a single string.
		  scope: `VariableScope` for the created subgraph; defaults to "rnn".
		
		Returns:
		  activations: The output of the RNN, projected to `num_label_columns`
		    dimensions, a `Tensor` of shape `[batch_size, T, num_label_columns]`.
		  final_state: The final state output by the RNN
	**/
	static public function construct_state_saving_rnn(cell:Dynamic, inputs:Dynamic, num_label_columns:Dynamic, state_saver:Dynamic, state_name:Dynamic, ?scope:Dynamic):Dynamic;
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