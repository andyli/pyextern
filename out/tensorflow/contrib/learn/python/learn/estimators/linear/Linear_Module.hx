/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.linear;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.linear") extern class Linear_Module {
	static public var _LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a fake bias feature column filled with all 1s.
	**/
	static public function _add_bias_column(feature_columns:Dynamic, columns_to_tensors:Dynamic, bias_variable:Dynamic, columns_to_variables:Dynamic):Dynamic;
	static public function _as_iterable(preds:Dynamic, output:Dynamic):Dynamic;
	static public function _get_default_optimizer(feature_columns:Dynamic):Dynamic;
	static public function _get_optimizer(spec:Dynamic):Dynamic;
	/**
		A model_fn for linear models that use a gradient-based optimizer.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `fit`).
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of
		    dtype `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * optimizer: string, `Optimizer` object, or callable that defines the
		        optimizer to use for training. If `None`, will use a FTRL optimizer.
		    * gradient_clip_norm: A float > 0. If provided, gradients are
		        clipped to their global norm with this clipping ratio.
		    * joint_weights: If True, the weights for all columns will be stored in a
		      single (possibly partitioned) variable. It's more efficient, but it's
		      incompatible with SDCAOptimizer, and requires all feature columns are
		      sparse and use the 'sum' combiner.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  A `ModelFnOps` instance.
		
		Raises:
		  ValueError: If mode is not any of the `ModeKeys`.
	**/
	static public function _linear_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
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
	/**
		A model_fn for linear models that use the SDCA optimizer.
		
		Args:
		  features: A dict of `Tensor` keyed by column name.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of
		    dtype `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance. Type must be one of `_BinarySvmHead`,
		        `_RegressionHead` or `_BinaryLogisticHead`.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * optimizer: An `SDCAOptimizer` instance.
		    * weight_column_name: A string defining the weight feature column, or
		        None if there are no weights.
		    * update_weights_hook: A `SessionRunHook` object or None. Used to update
		        model weights.
		
		Returns:
		  A `ModelFnOps` instance.
		
		Raises:
		  ValueError: If `optimizer` is not an `SDCAOptimizer` instance.
		  ValueError: If the type of head is neither `_BinarySvmHead`, nor
		    `_RegressionHead` nor `_MultiClassHead`.
		  ValueError: If mode is not any of the `ModeKeys`.
	**/
	static public function sdca_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic):Dynamic;
}