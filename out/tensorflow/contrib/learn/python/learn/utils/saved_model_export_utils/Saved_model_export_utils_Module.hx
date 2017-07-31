/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils") extern class Saved_model_export_utils_Module {
	static public var DEFAULT_INPUT_ALTERNATIVE_KEY : Dynamic;
	static public var FEATURES_INPUT_ALTERNATIVE_KEY : Dynamic;
	static public var _FALLBACK_DEFAULT_OUTPUT_ALTERNATIVE_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _export_version_parser(path:Dynamic):Dynamic;
	static public function _get_classification_classes(output_tensors:Dynamic):Dynamic;
	static public function _get_classification_scores(output_tensors:Dynamic):Dynamic;
	static public function _is_classification_problem(problem_type:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	static public function _is_regression_problem(problem_type:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build `SignatureDef`s from all pairs of input and output alternatives.
	**/
	static public function build_all_signature_defs(input_alternatives:Dynamic, output_alternatives:Dynamic, actual_default_output_alternative_key:Dynamic):Dynamic;
	/**
		Build a SignatureDef using problem type and input and output Tensors.
		
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
	static public var division : Dynamic;
	/**
		Deletes older exports, retaining only a given number of the most recent.
		
		Export subdirectories are assumed to be named with monotonically increasing
		integers; the most recent are taken to be those with the largest values.
		
		Args:
		  export_dir_base: the base directory under which each export is in a
		    versioned subdirectory.
		  exports_to_keep: the number of recent exports to retain.
	**/
	static public function garbage_collect_exports(export_dir_base:Dynamic, exports_to_keep:Dynamic):Dynamic;
	/**
		Obtain all input alternatives using the input_fn output and heuristics.
	**/
	static public function get_input_alternatives(input_ops:Dynamic):Dynamic;
	/**
		Locate the most recent SavedModel export in a directory of many exports.
		
		This method assumes that SavedModel subdirectories are named as a timestamp
		(seconds from epoch), as produced by get_timestamped_export_dir().
		
		Args:
		  export_dir_base: A base directory containing multiple timestamped
		                   directories.
		
		Returns:
		  A gc.Path, whith is just a namedtuple of (path, export_version).
	**/
	static public function get_most_recent_export(export_dir_base:Dynamic):Dynamic;
	/**
		Obtain all output alternatives using the model_fn output and heuristics.
		
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
		Builds a path to a new subdirectory within the base directory.
		
		Each export is written into a new subdirectory named using the
		current time.  This guarantees monotonically increasing version
		numbers even across multiple runs of the pipeline.
		The timestamp used is the number of seconds since epoch UTC.
		
		Args:
		  export_dir_base: A string containing a directory to write the exported
		      graph and checkpoints.
		Returns:
		  The full path of the new subdirectory (which is not actually created yet).
	**/
	static public function get_timestamped_export_dir(export_dir_base:Dynamic):Dynamic;
	/**
		Create an ExportStrategy for use with Experiment.
		
		Args:
		  serving_input_fn: A function that takes no arguments and returns an
		    `InputFnOps`.
		  default_output_alternative_key: the name of the head to serve when an
		    incoming serving request does not explicitly request a specific head.
		    Must be `None` if the estimator inherits from ${tf.estimator.Estimator}
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
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_export_strategy(serving_input_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	/**
		Create an ExportStrategy for use with Experiment, using `FeatureColumn`s.
		
		Creates a SavedModel export that expects to be fed with a single string
		Tensor containing serialized tf.Examples.  At serving time, incoming
		tf.Examples will be parsed according to the provided `FeatureColumn`s.
		
		Args:
		  feature_columns: An iterable of `FeatureColumn`s representing the features
		    that must be provided at serving time (excluding labels!).
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to None to disable garbage
		    collection.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_parsing_export_strategy(feature_columns:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}