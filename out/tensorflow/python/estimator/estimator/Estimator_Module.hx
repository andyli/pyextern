/* This file is generated, do not edit! */
package tensorflow.python.estimator.estimator;
@:pythonImport("tensorflow.python.estimator.estimator") extern class Estimator_Module {
	static public var _VALID_MODEL_FN_ARGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns hooks if all are SessionRunHook, raises TypeError otherwise.
	**/
	static public function _check_hooks_type(hooks:Dynamic):Dynamic;
	/**
		Get a `str` representation of a `dict`.
		
		Args:
		  dictionary: The `dict` to be represented as `str`.
		
		Returns:
		  A `str` representing the `dictionary`.
	**/
	static public function _dict_to_str(dictionary:Dynamic):Dynamic;
	/**
		Separate update operations from metric value operations.
	**/
	static public function _extract_metric_update_ops(eval_dict:Dynamic):Dynamic;
	/**
		Creates a replica device setter if required as a default device_fn.
		
		`Estimator` uses ReplicaDeviceSetter as a default device placer. It sets the
		distributed related arguments such as number of ps_replicas based on given
		config.
		
		Args:
		  config: A `RunConfig` instance.
		
		Returns:
		  A replica device setter, or None.
	**/
	static public function _get_replica_device_setter(config:Dynamic):Dynamic;
	static public function _load_global_step_from_checkpoint_dir(checkpoint_dir:Dynamic):Dynamic;
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
		Verifies model fn arguments.
	**/
	static public function _verify_model_fn_args(model_fn:Dynamic, params:Dynamic):Dynamic;
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
		Build `SignatureDef`s for all export outputs.
	**/
	static public function build_all_signature_defs(receiver_tensors:Dynamic, export_outputs:Dynamic):Dynamic;
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