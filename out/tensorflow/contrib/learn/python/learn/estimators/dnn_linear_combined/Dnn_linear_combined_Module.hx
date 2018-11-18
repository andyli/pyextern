/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.dnn_linear_combined;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.dnn_linear_combined") extern class Dnn_linear_combined_Module {
	static public var _DNN_LEARNING_RATE : Dynamic;
	static public var _FIX_GLOBAL_STEP_INCREMENT_DATE : Dynamic;
	static public var _FIX_GLOBAL_STEP_INCREMENT_INSTRUCTIONS : Dynamic;
	static public var _LINEAR_LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_hidden_layer_summary(value:Dynamic, tag:Dynamic):Dynamic;
	static public function _add_layer_summary(value:Dynamic, tag:Dynamic):Dynamic;
	static public function _as_iterable(preds:Dynamic, output:Dynamic):Dynamic;
	static public function _check_no_sync_replicas_optimizer(optimizer:Dynamic):Dynamic;
	/**
		Deep Neural Net and Linear combined model_fn.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `fit`).
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of dtype
		    `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance.
		    * linear_feature_columns: An iterable containing all the feature columns
		        used by the Linear model.
		    * linear_optimizer: string, `Optimizer` object, or callable that defines
		        the optimizer to use for training the Linear model. Defaults to the
		        Ftrl optimizer.
		    * joint_linear_weights: If True a single (possibly partitioned) variable
		        will be used to store the linear model weights. It's faster, but
		        requires all columns are sparse and have the 'sum' combiner.
		    * dnn_feature_columns: An iterable containing all the feature columns used
		        by the DNN model.
		    * dnn_optimizer: string, `Optimizer` object, or callable that defines the
		        optimizer to use for training the DNN model. Defaults to the Adagrad
		        optimizer.
		    * dnn_hidden_units: List of hidden units per DNN layer.
		    * dnn_activation_fn: Activation function applied to each DNN layer. If
		        `None`, will use `tf.nn.relu`.
		    * dnn_dropout: When not `None`, the probability we will drop out a given
		        DNN coordinate.
		    * gradient_clip_norm: A float > 0. If provided, gradients are
		        clipped to their global norm with this clipping ratio.
		    * embedding_lr_multipliers: Optional. A dictionary from
		        `EmbeddingColumn` to a `float` multiplier. Multiplier will be used to
		        multiply with learning rate for the embedding variables.
		    * input_layer_partitioner: Optional. Partitioner for input layer.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  `ModelFnOps`
		
		Raises:
		  ValueError: If both `linear_feature_columns` and `dnn_features_columns`
		    are empty at the same time, or `input_layer_partitioner` is missing.
	**/
	static public function _dnn_linear_combined_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Converts embedding lr multipliers to variable based gradient multiplier.
	**/
	static public function _extract_embedding_lr_multipliers(embedding_lr_multipliers:Dynamic, collection_key:Dynamic, input_layer_scope:Dynamic):Dynamic;
	static public function _get_embedding_variable(column:Dynamic, collection_key:Dynamic, input_layer_scope:Dynamic):Dynamic;
	static public function _get_feature_dict(features:Dynamic):Dynamic;
	static public function _get_optimizer(optimizer:Dynamic):Dynamic;
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
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: If `True`, warn only the first time this function is called with
		    deprecated argument values. Otherwise, every call (with a deprecated
		    argument value) will log a warning.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}