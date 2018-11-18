/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.dnn_linear_combined;
@:pythonImport("tensorflow.python.estimator.canned.dnn_linear_combined") extern class Dnn_linear_combined_Module {
	static public var _DNN_LEARNING_RATE : Dynamic;
	static public var _LINEAR_LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_layer_summary(value:Dynamic, tag:Dynamic):Dynamic;
	static public function _check_no_sync_replicas_optimizer(optimizer:Dynamic):Dynamic;
	/**
		Deep Neural Net and Linear combined model_fn.
		
		Args:
		  features: dict of `Tensor`.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of dtype
		    `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  head: A `Head` instance.
		  linear_feature_columns: An iterable containing all the feature columns used
		    by the Linear model.
		  linear_optimizer: string, `Optimizer` object, or callable that defines the
		    optimizer to use for training the Linear model. Defaults to the Ftrl
		    optimizer.
		  dnn_feature_columns: An iterable containing all the feature columns used by
		    the DNN model.
		  dnn_optimizer: string, `Optimizer` object, or callable that defines the
		    optimizer to use for training the DNN model. Defaults to the Adagrad
		    optimizer.
		  dnn_hidden_units: List of hidden units per DNN layer.
		  dnn_activation_fn: Activation function applied to each DNN layer. If `None`,
		    will use `tf.nn.relu`.
		  dnn_dropout: When not `None`, the probability we will drop out a given DNN
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  config: `RunConfig` object to configure the runtime settings.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		  linear_sparse_combiner: A string specifying how to reduce the linear model
		    if a categorical column is multivalent.  One of "mean", "sqrtn", and
		    "sum".
		Returns:
		  An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: If both `linear_feature_columns` and `dnn_features_columns`
		    are empty at the same time, or `input_layer_partitioner` is missing,
		    or features has the wrong type.
	**/
	static public function _dnn_linear_combined_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, ?linear_feature_columns:Dynamic, ?linear_optimizer:Dynamic, ?dnn_feature_columns:Dynamic, ?dnn_optimizer:Dynamic, ?dnn_hidden_units:Dynamic, ?dnn_activation_fn:Dynamic, ?dnn_dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?batch_norm:Dynamic, ?linear_sparse_combiner:Dynamic):Dynamic;
	/**
		Returns the default learning rate of the linear model.
		
		The calculation is a historical artifact of this initial implementation, but
		has proven a reasonable choice.
		
		Args:
		  num_linear_feature_columns: The number of feature columns of the linear
		    model.
		
		Returns:
		  A float.
	**/
	static public function _linear_learning_rate(num_linear_feature_columns:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}