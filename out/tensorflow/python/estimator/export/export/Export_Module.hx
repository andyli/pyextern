/* This file is generated, do not edit! */
package tensorflow.python.estimator.export.export;
@:pythonImport("tensorflow.python.estimator.export.export") extern class Export_Module {
	static public var _SINGLE_FEATURE_DEFAULT_NAME : Dynamic;
	static public var _SINGLE_RECEIVER_DEFAULT_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build `SignatureDef`s for all export outputs.
	**/
	static public function build_all_signature_defs(receiver_tensors:Dynamic, export_outputs:Dynamic):Dynamic;
	/**
		Build a serving_input_receiver_fn expecting fed tf.Examples.
		
		Creates an input_fn that expects a serialized tf.Example fed into a string
		placeholder.  The function parses the tf.Example according to the provided
		feature_spec, and returns all parsed Tensors as features.  This input_fn is
		for use at serving time, so the labels return value is always None.
		
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
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}