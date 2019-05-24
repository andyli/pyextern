/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils") extern class Saved_model_export_utils_Module {
	static public var DEFAULT_INPUT_ALTERNATIVE_KEY : Dynamic;
	static public var FEATURES_INPUT_ALTERNATIVE_KEY : Dynamic;
	static public var MAX_DIRECTORY_CREATION_ATTEMPTS : Dynamic;
	static public var _FALLBACK_DEFAULT_OUTPUT_ALTERNATIVE_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compares two evaluation results and returns true if the 2nd one is better.
		
		Both evaluation results should have the values for MetricKey.LOSS, which are
		used for comparison.
		
		Args:
		  curr_best_eval_result: current best eval metrics.
		  cand_eval_result: candidate eval metrics.
		
		Returns:
		  True if cand_eval_result is better.
		
		Raises:
		  ValueError: If input eval result is None or no loss is available.
	**/
	static public function _default_compare_fn(curr_best_eval_result:Dynamic, cand_eval_result:Dynamic):Dynamic;
	static public function _export_version_parser(path:Dynamic):Dynamic;
	static public function _get_classification_classes(output_tensors:Dynamic):Dynamic;
	static public function _get_classification_scores(output_tensors:Dynamic):Dynamic;
	static public function _is_classification_problem(problem_type:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	static public function _is_regression_problem(problem_type:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build `SignatureDef`s from all pairs of input and output alternatives. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
	**/
	static public function build_all_signature_defs(input_alternatives:Dynamic, output_alternatives:Dynamic, actual_default_output_alternative_key:Dynamic):Dynamic;
	/**
		Build a SignatureDef using problem type and input and output Tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Note that this delegates the actual creation of the signatures to methods in
		//third_party/tensorflow/python/saved_model/signature_def_utils.py, which may
		assign names to the input and output tensors (depending on the problem type)
		that are standardized in the context of SavedModel.
		
		Args:
		  input_tensors: a dict of string key to `Tensor`
		  output_tensors: a dict of string key to `Tensor`
		  problem_type: an instance of constants.ProblemType, specifying
		    classification, regression, etc.
		
		Returns:
		  A SignatureDef using SavedModel standard keys where possible.
		
		Raises:
		  ValueError: if input_tensors or output_tensors is None or empty.
	**/
	static public function build_standardized_signature_def(input_tensors:Dynamic, output_tensors:Dynamic, problem_type:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Extend ExportStrategy, calling post_export_fn after export. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  base_export_strategy: An ExportStrategy that can be passed to the Experiment
		    constructor.
		  post_export_fn: A user-specified function to call after exporting the
		    SavedModel. Takes two arguments - the path to the SavedModel exported by
		    base_export_strategy and the directory where to export the SavedModel
		    modified by the post_export_fn. Returns the path to the exported
		    SavedModel.
		  post_export_name: The directory name under the export base directory where
		    SavedModels generated by the post_export_fn will be written. If None, the
		    directory name of base_export_strategy is used.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function extend_export_strategy(base_export_strategy:Dynamic, post_export_fn:Dynamic, ?post_export_name:Dynamic):Dynamic;
	/**
		Deletes older exports, retaining only a given number of the most recent. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Export subdirectories are assumed to be named with monotonically increasing
		integers; the most recent are taken to be those with the largest values.
		
		Args:
		  export_dir_base: the base directory under which each export is in a
		    versioned subdirectory.
		  exports_to_keep: the number of recent exports to retain.
	**/
	static public function garbage_collect_exports(export_dir_base:Dynamic, exports_to_keep:Dynamic):Dynamic;
	/**
		Obtain all input alternatives using the input_fn output and heuristics. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
	**/
	static public function get_input_alternatives(input_ops:Dynamic):Dynamic;
	/**
		Locate the most recent SavedModel export in a directory of many exports. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		This method assumes that SavedModel subdirectories are named as a timestamp
		(seconds from epoch), as produced by get_timestamped_export_dir().
		
		Args:
		  export_dir_base: A base directory containing multiple timestamped
		                   directories.
		
		Returns:
		  A gc.Path, with is just a namedtuple of (path, export_version).
	**/
	static public function get_most_recent_export(export_dir_base:Dynamic):Dynamic;
	/**
		Obtain all output alternatives using the model_fn output and heuristics. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  model_fn_ops: a `ModelFnOps` object produced by a `model_fn`.  This may or
		    may not have output_alternatives populated.
		  default_output_alternative_key: the name of the head to serve when an
		    incoming serving request does not explicitly request a specific head.
		    Not needed for single-headed models.
		
		Returns:
		  A tuple of (output_alternatives, actual_default_output_alternative_key),
		  where the latter names the head that will actually be served by default.
		  This may differ from the requested default_output_alternative_key when
		  a) no output_alternatives are provided at all, so one must be generated, or
		  b) there is exactly one head, which is used regardless of the requested
		  default.
		
		Raises:
		  ValueError: if the requested default_output_alternative_key is not available
		    in output_alternatives, or if there are multiple output_alternatives and
		    no default is specified.
	**/
	static public function get_output_alternatives(model_fn_ops:Dynamic, ?default_output_alternative_key:Dynamic):Dynamic;
	/**
		Builds a directory name based on the argument but starting with 'temp-'. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		This relies on the fact that TensorFlow Serving ignores subdirectories of
		the base directory that can't be parsed as integers.
		
		Args:
		  timestamped_export_dir: the name of the eventual export directory, e.g.
		    /foo/bar/<timestamp>
		
		Returns:
		  A sister directory prefixed with 'temp-', e.g. /foo/bar/temp-<timestamp>.
	**/
	static public function get_temp_export_dir(timestamped_export_dir:Dynamic):Dynamic;
	/**
		Builds a path to a new subdirectory within the base directory. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Each export is written into a new subdirectory named using the
		current time.  This guarantees monotonically increasing version
		numbers even across multiple runs of the pipeline.
		The timestamp used is the number of seconds since epoch UTC.
		
		Args:
		  export_dir_base: A string containing a directory to write the exported
		      graph and checkpoints.
		Returns:
		  The full path of the new subdirectory (which is not actually created yet).
		
		Raises:
		  RuntimeError: if repeated attempts fail to obtain a unique timestamped
		    directory name.
	**/
	static public function get_timestamped_export_dir(export_dir_base:Dynamic):Dynamic;
	/**
		Creates an custom ExportStrategy for use with tf.contrib.learn.Experiment. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  serving_input_fn: a function that takes no arguments and returns an
		    `InputFnOps`.
		  exports_to_keep: an integer indicating how many historical best models need
		    to be preserved.
		  model_dir: Directory where model parameters, graph etc. are saved. This will
		      be used to load eval metrics from the directory when the export strategy
		      is created. So the best metrics would not be lost even if the export
		      strategy got preempted, which guarantees that only the best model would
		      be exported regardless of preemption. If None, however, the export
		      strategy would not be preemption-safe. To be preemption-safe, both
		      model_dir and event_file_pattern would be needed.
		  event_file_pattern: event file name pattern relative to model_dir, e.g.
		      "eval_continuous/*.tfevents.*". If None, however, the export strategy
		      would not be preemption-safe. To be preemption-safe, both
		      model_dir and event_file_pattern would be needed.
		  compare_fn: a function that select the 'best' candidate from a dictionary
		      of evaluation result keyed by corresponding checkpoint path.
		  default_output_alternative_key: the key for default serving signature for
		      multi-headed inference graphs.
		  strip_default_attrs: Boolean. If True, default attrs in the
		    `GraphDef` will be stripped on write. This is recommended for better
		    forward compatibility of the resulting `SavedModel`.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_best_model_export_strategy(serving_input_fn:Dynamic, ?exports_to_keep:Dynamic, ?model_dir:Dynamic, ?event_file_pattern:Dynamic, ?compare_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Create an ExportStrategy for use with Experiment. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  serving_input_fn: A function that takes no arguments and returns an
		    `InputFnOps`.
		  default_output_alternative_key: the name of the head to serve when an
		    incoming serving request does not explicitly request a specific head.
		    Must be `None` if the estimator inherits from `tf.estimator.Estimator`
		    or for single-headed models.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel.  Each key should give the destination
		    path (including the filename) relative to the assets.extra directory.
		    The corresponding value gives the full path of the source file to be
		    copied.  For example, the simple case of copying a single file without
		    renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format.
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to None to disable garbage
		    collection.
		  strip_default_attrs: Boolean. If True, default attrs in the
		    `GraphDef` will be stripped on write. This is recommended for better
		    forward compatibility of the resulting `SavedModel`.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_export_strategy(serving_input_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Create an ExportStrategy for use with Experiment, using `FeatureColumn`s. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.estimator.export.build_parsing_serving_input_receiver_fn
		
		Creates a SavedModel export that expects to be fed with a single string
		Tensor containing serialized tf.Examples.  At serving time, incoming
		tf.Examples will be parsed according to the provided `FeatureColumn`s.
		
		Args:
		  feature_columns: An iterable of `FeatureColumn`s representing the features
		    that must be provided at serving time (excluding labels!).
		  default_output_alternative_key: the name of the head to serve when an
		    incoming serving request does not explicitly request a specific head.
		    Must be `None` if the estimator inherits from `tf.estimator.Estimator`
		    or for single-headed models.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel.  Each key should give the destination
		    path (including the filename) relative to the assets.extra directory.
		    The corresponding value gives the full path of the source file to be
		    copied.  For example, the simple case of copying a single file without
		    renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format.
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to None to disable garbage
		    collection.
		  target_core: If True, prepare an ExportStrategy for use with
		    tensorflow.python.estimator.*.  If False (default), prepare an
		    ExportStrategy for use with tensorflow.contrib.learn.python.learn.*.
		  strip_default_attrs: Boolean. If True, default attrs in the
		    `GraphDef` will be stripped on write. This is recommended for better
		    forward compatibility of the resulting `SavedModel`.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_parsing_export_strategy(feature_columns:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic, ?target_core:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}