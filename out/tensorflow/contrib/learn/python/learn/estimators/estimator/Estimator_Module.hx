/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.estimator;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.estimator") extern class Estimator_Module {
	static public var AS_ITERABLE_DATE : Dynamic;
	static public var AS_ITERABLE_INSTRUCTIONS : Dynamic;
	static public var SCIKIT_DECOUPLE_DATE : Dynamic;
	static public var SCIKIT_DECOUPLE_INSTRUCTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a `str` representation of a `dict`.
		
		Args:
		  dictionary: The `dict` to be represented as `str`.
		
		Returns:
		  A `str` representing the `dictionary`.
	**/
	static public function _dict_to_str(dictionary:Dynamic):Dynamic;
	/**
		Make inputs into input and feed functions.
		
		Args:
		  x: Numpy, Pandas or Dask matrix or iterable.
		  y: Numpy, Pandas or Dask matrix or iterable.
		  input_fn: Pre-defined input function for training data.
		  feed_fn: Pre-defined data feeder function.
		  batch_size: Size to split data into parts. Must be >= 1.
		  shuffle: Whether to shuffle the inputs.
		  epochs: Number of epochs to run.
		
		Returns:
		  Data input and feeder function based on training data.
		
		Raises:
		  ValueError: Only one of `(x & y)` or `input_fn` must be provided.
	**/
	static public function _get_input_fn(x:Dynamic, y:Dynamic, input_fn:Dynamic, feed_fn:Dynamic, batch_size:Dynamic, ?shuffle:Dynamic, ?epochs:Dynamic):Dynamic;
	/**
		Creates a replica device setter if required.
		
		Args:
		  config: A RunConfig instance.
		
		Returns:
		  A replica device setter, or None.
	**/
	static public function _get_replica_device_setter(config:Dynamic):Dynamic;
	static public function _identity_feature_engineering_fn(features:Dynamic, labels:Dynamic):Dynamic;
	/**
		Add metrics based on `features`, `labels`, and `predictions`.
		
		`metrics` contains a specification for how to run metrics. It is a dict
		mapping friendly names to either `MetricSpec` objects, or directly to a metric
		function (assuming that `predictions` and `labels` are single tensors), or to
		`(pred_name, metric)` `tuple`, which passes `predictions[pred_name]` and
		`labels` to `metric` (assuming `labels` is a single tensor).
		
		Users are encouraged to use `MetricSpec` objects, which are more flexible and
		cleaner. They also lead to clearer errors.
		
		Args:
		  metrics: A dict mapping names to metrics specification, for example
		    `MetricSpec` objects.
		  features: A dict of tensors returned from an input_fn as features/inputs.
		  labels: A single tensor or a dict of tensors returned from an input_fn as
		    labels.
		  predictions: A single tensor or a dict of tensors output from a model as
		    predictions.
		
		Returns:
		  A dict mapping the friendly given in `metrics` to the result of calling the
		  given metric function.
		
		Raises:
		  ValueError: If metrics specifications do not work with the type of
		    `features`, `labels`, or `predictions` provided. Mostly, a dict is given
		    but no pred_name specified.
	**/
	static public function _make_metrics_ops(metrics:Dynamic, features:Dynamic, labels:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Get argument names for function-like object.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `tuple` of string argument names.
		
		Raises:
		  ValueError: if partial function has positionally bound arguments
	**/
	static public function _model_fn_args(fn:Dynamic):Dynamic;
	/**
		Verifies validity of co-existance of input arguments.
	**/
	static public function _verify_input_args(x:Dynamic, y:Dynamic, input_fn:Dynamic, feed_fn:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Writes a `dict` into summary file in given output directory.
		
		Args:
		  output_dir: `str`, directory to write the summary file in.
		  dictionary: the `dict` to be written to summary file.
		  current_global_step: `int`, the current global step.
	**/
	static public function _write_dict_to_summary(output_dir:Dynamic, dictionary:Dynamic, current_global_step:Dynamic):Dynamic;
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
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String. or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, or the second element of a deprecated_tuple is not a
		    list.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by input `x`.
		
		This interprets all inputs as dense, fixed-length float values.
		
		Args:
		  x: Real-valued matrix of shape [n_samples, n_features...]. Can be
		     iterator that returns arrays of features.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input(x:Dynamic):Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by `input_fn`.
		
		This interprets all inputs as dense, fixed-length float values. This creates
		a local graph in which it calls `input_fn` to build the tensors, then discards
		it.
		
		Args:
		  input_fn: Input function returning a tuple of:
		      features - Dictionary of string feature name to `Tensor` or `Tensor`.
		      labels - `Tensor` of label values.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input_fn(input_fn:Dynamic):Dynamic;
	/**
		Returns list of all variables in the latest checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(name, shape)`.
	**/
	static public function list_variables(checkpoint_dir:Dynamic):Dynamic;
	/**
		Returns a Tensor with the contents of the given variable in the checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  name: Name of the tensor to return.
		
		Returns:
		  `Tensor` object.
	**/
	static public function load_variable(checkpoint_dir:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}