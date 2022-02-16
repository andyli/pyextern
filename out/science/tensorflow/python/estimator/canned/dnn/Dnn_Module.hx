/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.dnn;
@:pythonImport("tensorflow.python.estimator.canned.dnn") extern class Dnn_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_hidden_layer_summary(value:Dynamic, tag:Dynamic):Dynamic;
	/**
		Deep Neural Net model_fn v1.
		
		Args:
		  features: dict of `Tensor`.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of dtype
		    `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction. See
		    `ModeKeys`.
		  head: A `head_lib._Head` instance.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  optimizer: String, `tf.Optimizer` object, or callable that creates the
		    optimizer to use for training. If not specified, will use the Adagrad
		    optimizer with a default learning rate of 0.05.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer. Defaults to
		    `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		  use_tpu: Whether to make a DNN model able to run on TPU. Will make function
		    return a `_TPUEstimatorSpec` instance and disable variable partitioning.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: If features has the wrong type.
	**/
	static public function _dnn_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?use_tpu:Dynamic, ?batch_norm:Dynamic):Dynamic;
	/**
		Function builder for dnn logits, trainable variables and update ops.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the MultiHead
		    case, this should be the sum of all component Heads' logit dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		  features: This is the first item returned from the `input_fn` passed to
		    `train`, `evaluate`, and `predict`. This should be a single `Tensor` or
		    `dict` of same.
		  mode: Optional. Specifies if this training, evaluation or prediction. See
		    `ModeKeys`.
		
		Returns:
		  A `Tensor` representing the logits, or a list of `Tensor`'s representing
		    multiple logits in the MultiHead case.
		  A list of trainable variables.
		  A list of update ops.
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function _dnn_model_fn_builder_v2(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, batch_norm:Dynamic, features:Dynamic, mode:Dynamic):Dynamic;
	/**
		Get EstimatorSpec for DNN Model.
	**/
	static public function _get_dnn_estimator_spec(use_tpu:Dynamic, head:Dynamic, features:Dynamic, labels:Dynamic, mode:Dynamic, logits:Dynamic, optimizer:Dynamic):Dynamic;
	static public function _get_previous_name_scope():Dynamic;
	/**
		Returns the name of an op given the name of its scope.
		
		Args:
		  name: the name of the scope.
		
		Returns:
		  the name of the op (equal to scope name minus any trailing slash).
	**/
	static public function _name_from_scope_name(name:Dynamic):Dynamic;
	static public function _validate_features(features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the MultiHead
		    case, this should be the sum of all component Heads' logit dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, input_layer_partitioner:Dynamic, batch_norm:Dynamic):Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the MultiHead
		    case, this should be the sum of all component Heads' logit dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder_v2(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, batch_norm:Dynamic):Dynamic;
	/**
		Deep Neural Net model_fn v2.
		
		This function is different than _dnn_model_fn_v1 in the way it handles the
		optimizer when a String optimizer name is passed.
		
		Args:
		  features: dict of `Tensor`.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of dtype
		    `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction. See
		    `ModeKeys`.
		  head: A `base_head.Head` instance.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  optimizer: String, `tf.keras.optimizers.Optimizer` object, or callable that
		    creates the optimizer to use for training. If not specified, will use the
		    Adagrad optimizer. If it is String, the default learning rate of the
		    optimizer will be used. If it is String, and optimizer does not have a
		    default learning rate, then, a fixed learning rate of 0.05 is used.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  config: `RunConfig` object to configure the runtime settings.
		  use_tpu: Whether to make a DNN model able to run on TPU. Will make function
		    return a `_TPUEstimatorSpec` instance and disable variable partitioning.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: If features has the wrong type.
	**/
	static public function dnn_model_fn_v2(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?config:Dynamic, ?use_tpu:Dynamic, ?batch_norm:Dynamic):Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}