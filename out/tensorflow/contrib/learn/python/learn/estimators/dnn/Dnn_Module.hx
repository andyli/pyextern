/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.dnn;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.dnn") extern class Dnn_Module {
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
		Deep Neural Net model_fn.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `fit`).
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of
		    dtype `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `_Head` instance.
		    * hidden_units: List of hidden units per layer.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * optimizer: string, `Optimizer` object, or callable that defines the
		        optimizer to use for training. If `None`, will use the Adagrad
		        optimizer with a default learning rate of 0.05.
		    * activation_fn: Activation function applied to each layer. If `None`,
		        will use `tf.nn.relu`.
		    * dropout: When not `None`, the probability we will drop out a given
		        coordinate.
		    * gradient_clip_norm: A float > 0. If provided, gradients are
		        clipped to their global norm with this clipping ratio.
		    * embedding_lr_multipliers: Optional. A dictionary from
		        `EmbeddingColumn` to a `float` multiplier. Multiplier will be used to
		        multiply with learning rate for the embedding variables.
		    * input_layer_min_slice_size: Optional. The min slice size of input layer
		        partitions. If not provided, will use the default of 64M.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  predictions: A dict of `Tensor` objects.
		  loss: A scalar containing the loss of the step.
		  train_op: The op for training.
	**/
	static public function _dnn_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
	static public function _get_feature_dict(features:Dynamic):Dynamic;
	static public function _get_optimizer(optimizer:Dynamic):Dynamic;
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
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
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
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}