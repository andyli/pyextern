/* This file is generated, do not edit! */
package tensorflow.python.estimator.export.export;
@:pythonImport("tensorflow.python.estimator.export.export") extern class Export_Module {
	static public var _FRIENDLY_METHOD_NAMES : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _SINGLE_FEATURE_DEFAULT_NAME : Dynamic;
	static public var _SINGLE_LABEL_DEFAULT_NAME : Dynamic;
	static public var _SINGLE_RECEIVER_DEFAULT_NAME : Dynamic;
	static public var _SINGLE_TENSOR_DEFAULT_NAMES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that passed `tensor` is a Tensor or SparseTensor.
	**/
	static public function _check_tensor(tensor:Dynamic, name:Dynamic, ?error_label:Dynamic):Dynamic;
	static public function _check_tensor_key(name:Dynamic, ?error_label:Dynamic):Dynamic;
	/**
		Log a report of which signatures were produced.
	**/
	static public function _log_signature_report(signature_def_map:Dynamic, excluded_signatures:Dynamic):Dynamic;
	/**
		Creates a placeholder that matches the dtype and shape of passed tensor.
		
		Args:
		  t: Tensor or EagerTensor
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  Placeholder that matches the passed tensor.
	**/
	static public function _placeholder_from_tensor(t:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	static public function _placeholders_from_receiver_tensors_dict(input_vals:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Ensure that tensors is a dict of str to Tensor mappings.
		
		Args:
		  tensors: dict of str to Tensors, or a single Tensor.
		  field_name: name of the member field of `ServingInputReceiver`
		    whose value is being passed to `tensors`.
		
		Returns:
		  dict of str to Tensors; this is the original dict if one was passed, or
		  the original tensor wrapped in a dictionary.
		
		Raises:
		  ValueError: if tensors is None, or has non-string keys,
		    or non-Tensor values
	**/
	static public function _wrap_and_check_input_tensors(tensors:Dynamic, field_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build `SignatureDef`s for all export outputs.
		
		Args:
		  receiver_tensors: a `Tensor`, or a dict of string to `Tensor`, specifying
		    input nodes where this receiver expects to be fed by default.  Typically,
		    this is a single placeholder expecting serialized `tf.Example` protos.
		  export_outputs: a dict of ExportOutput instances, each of which has
		    an as_signature_def instance method that will be called to retrieve
		    the signature_def for all export output tensors.
		  receiver_tensors_alternatives: a dict of string to additional
		    groups of receiver tensors, each of which may be a `Tensor` or a dict of
		    string to `Tensor`.  These named receiver tensor alternatives generate
		    additional serving signatures, which may be used to feed inputs at
		    different points within the input receiver subgraph.  A typical usage is
		    to allow feeding raw feature `Tensor`s *downstream* of the
		    tf.parse_example() op.  Defaults to None.
		  serving_only: boolean; if true, resulting signature defs will only include
		    valid serving signatures. If false, all requested signatures will be
		    returned.
		
		Returns:
		  signature_def representing all passed args.
		
		Raises:
		  ValueError: if export_outputs is not a dict
	**/
	static public function build_all_signature_defs(receiver_tensors:Dynamic, export_outputs:Dynamic, ?receiver_tensors_alternatives:Dynamic, ?serving_only:Dynamic):Dynamic;
	/**
		Build a serving_input_receiver_fn expecting fed tf.Examples.
		
		Creates a serving_input_receiver_fn that expects a serialized tf.Example fed
		into a string placeholder.  The function parses the tf.Example according to
		the provided feature_spec, and returns all parsed Tensors as features.
		
		Args:
		  feature_spec: a dict of string to `VarLenFeature`/`FixedLenFeature`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  A serving_input_receiver_fn suitable for use in serving.
	**/
	static public function build_parsing_serving_input_receiver_fn(feature_spec:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Build a serving_input_receiver_fn expecting feature Tensors.
		
		Creates an serving_input_receiver_fn that expects all features to be fed
		directly.
		
		Args:
		  features: a dict of string to `Tensor`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  A serving_input_receiver_fn.
	**/
	static public function build_raw_serving_input_receiver_fn(features:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Build a supervised_input_receiver_fn for raw features and labels.
		
		This function wraps tensor placeholders in a supervised_receiver_fn
		with the expectation that the features and labels appear precisely as
		the model_fn expects them. Features and labels can therefore be dicts of
		tensors, or raw tensors.
		
		Args:
		  features: a dict of string to `Tensor` or `Tensor`.
		  labels: a dict of string to `Tensor` or `Tensor`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  A supervised_input_receiver_fn.
		
		Raises:
		  ValueError: if features and labels have overlapping keys.
	**/
	static public function build_raw_supervised_input_receiver_fn(features:Dynamic, labels:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Get a function that returns a SupervisedInputReceiver matching an input_fn.
		
		Note that this function calls the input_fn in a local graph in order to
		extract features and labels. Placeholders are then created from those
		features and labels in the default graph.
		
		Args:
		  input_fn: An Estimator input_fn, which is a function that returns one of:
		
		    * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		    * A tuple (features, labels): Where `features` is a `Tensor` or a
		      dictionary of string feature name to `Tensor` and `labels` is a
		      `Tensor` or a dictionary of string label name to `Tensor`. Both
		      `features` and `labels` are consumed by `model_fn`. They should
		      satisfy the expectation of `model_fn` from inputs.
		
		  **input_fn_args: set of kwargs to be passed to the input_fn. Note that
		    these will not be checked or validated here, and any errors raised by
		    the input_fn will be thrown to the top.
		
		Returns:
		  A function taking no arguments that, when called, returns a
		  SupervisedInputReceiver. This function can be passed in as part of the
		  input_receiver_map when exporting SavedModels from Estimator with multiple
		  modes.
	**/
	static public function build_supervised_input_receiver_fn_from_input_fn(input_fn:Dynamic, ?input_fn_args:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Builds a directory name based on the argument but starting with 'temp-'.
		
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
		
		Raises:
		  RuntimeError: if repeated attempts fail to obtain a unique timestamped
		    directory name.
	**/
	static public function get_timestamped_export_dir(export_dir_base:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}