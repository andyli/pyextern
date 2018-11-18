/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.rnn_common;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.rnn_common") extern class Rnn_common_Module {
	static public var _CELL_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Constructs and return a single `RNNCell`.
		
		Args:
		  cell_type: Either a string identifying the `RNNCell` type or a subclass of
		    `RNNCell`.
		  num_units: The number of units in the `RNNCell`.
		Returns:
		  An initialized `RNNCell`.
		Raises:
		  ValueError: `cell_type` is an invalid `RNNCell` name.
		  TypeError: `cell_type` is not a string or a subclass of `RNNCell`.
	**/
	static public function _get_single_cell(cell_type:Dynamic, num_units:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Applies dropout to the outputs and inputs of `cell`.
		
		Args:
		  cells: A list of `RNNCell`s.
		  dropout_keep_probabilities: a list whose elements are either floats in
		  `[0.0, 1.0]` or `None`. It must have length one greater than `cells`.
		  random_seed: Seed for random dropout.
		
		Returns:
		  A list of `RNNCell`s, the result of applying the supplied dropouts.
		
		Raises:
		  ValueError: If `len(dropout_keep_probabilities) != len(cells) + 1`.
	**/
	static public function apply_dropout(cells:Dynamic, dropout_keep_probabilities:Dynamic, ?random_seed:Dynamic):Dynamic;
	/**
		Constructs cells, applies dropout and assembles a `MultiRNNCell`.
		
		The cell type chosen by DynamicRNNEstimator.__init__() is the same as
		returned by this function when called with the same arguments.
		
		Args:
		  num_units: A single `int` or a list/tuple of `int`s. The size of the
		    `RNNCell`s.
		  cell_type: A string identifying the `RNNCell` type or a subclass of
		    `RNNCell`.
		  dropout_keep_probabilities: a list of dropout probabilities or `None`. If a
		    list is given, it must have length `len(cell_type) + 1`.
		
		Returns:
		  An initialized `RNNCell`.
	**/
	static public function construct_rnn_cell(num_units:Dynamic, ?cell_type:Dynamic, ?dropout_keep_probabilities:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns eval metric ops for given `problem_type` and `prediction_type`.
		
		Args:
		  problem_type: `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  prediction_type: `PredictionType.SINGLE_VALUE` or
		    `PredictionType.MULTIPLE_VALUE`.
		  sequence_length: A `Tensor` with shape `[batch_size]` and dtype `int32`
		    containing the length of each sequence in the batch. If `None`, sequences
		    are assumed to be unpadded.
		  prediction_dict: A dict of prediction tensors.
		  labels: The label `Tensor`.
		
		Returns:
		  A `dict` mapping strings to the result of calling the metric_fn.
	**/
	static public function get_eval_metric_ops(problem_type:Dynamic, prediction_type:Dynamic, sequence_length:Dynamic, prediction_dict:Dynamic, labels:Dynamic):Dynamic;
	/**
		Remove entries outside `sequence_lengths` and returned flattened results.
		
		Args:
		  activations: Output of the RNN, shape `[batch_size, padded_length, k]`.
		  labels: Label values, shape `[batch_size, padded_length]`.
		  sequence_lengths: A `Tensor` of shape `[batch_size]` with the unpadded
		    length of each sequence. If `None`, then each sequence is unpadded.
		
		Returns:
		  activations_masked: `logit` values with those beyond `sequence_lengths`
		    removed for each batch. Batches are then concatenated. Shape
		    `[tf.sum(sequence_lengths), k]` if `sequence_lengths` is not `None` and
		    shape `[batch_size * padded_length, k]` otherwise.
		  labels_masked: Label values after removing unneeded entries. Shape
		    `[tf.sum(sequence_lengths)]` if `sequence_lengths` is not `None` and shape
		    `[batch_size * padded_length]` otherwise.
	**/
	static public function mask_activations_and_labels(activations:Dynamic, labels:Dynamic, sequence_lengths:Dynamic):Dynamic;
	/**
		Maps `activations` from the RNN to predictions for multi value models.
		
		If `predict_probabilities` is `False`, this function returns a `dict`
		containing single entry with key `prediction_key.PredictionKey.CLASSES` for
		`problem_type` `ProblemType.CLASSIFICATION` or
		`prediction_key.PredictionKey.SCORE` for `problem_type`
		`ProblemType.LINEAR_REGRESSION`.
		
		If `predict_probabilities` is `True`, it will contain a second entry with key
		`prediction_key.PredictionKey.PROBABILITIES`. The
		value of this entry is a `Tensor` of probabilities with shape
		`[batch_size, padded_length, num_classes]`.
		
		Note that variable length inputs will yield some predictions that don't have
		meaning. For example, if `sequence_length = [3, 2]`, then prediction `[1, 2]`
		has no meaningful interpretation.
		
		Args:
		  activations: Output from an RNN. Should have dtype `float32` and shape
		    `[batch_size, padded_length, ?]`.
		  target_column: An initialized `TargetColumn`, calculate predictions.
		  problem_type: Either `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  predict_probabilities: A Python boolean, indicating whether probabilities
		    should be returned. Should only be set to `True` for
		    classification/logistic regression problems.
		Returns:
		  A `dict` mapping strings to `Tensors`.
	**/
	static public function multi_value_predictions(activations:Dynamic, target_column:Dynamic, problem_type:Dynamic, predict_probabilities:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public function select_last_activations(activations:Dynamic, sequence_lengths:Dynamic):Dynamic;
}