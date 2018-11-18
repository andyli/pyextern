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
	static public function _check_checkpoint_available(model_dir:Dynamic):Dynamic;
	/**
		Returns hooks if all are `SessionRunHook`, raises TypeError otherwise.
	**/
	static public function _check_hooks_type(hooks:Dynamic):Dynamic;
	/**
		Check listeners type.
	**/
	static public function _check_listeners_type(saving_listeners:Dynamic):Dynamic;
	/**
		Combines scaffold(s) returned from `distribution.call_for_each_tower`.
	**/
	static public function _combine_distributed_scaffold(grouped_scaffold:Dynamic, distribution:Dynamic):Dynamic;
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
	static public function _extract_metric_update_ops(eval_dict:Dynamic, ?distribution:Dynamic):Dynamic;
	/**
		Returns default `tf.estimator.WarmStartSettings`.
		
		Args:
		  warm_start_from: Either a string representing the filepath of a checkpoint
		    or `SavedModel` to initialize from, or an instance of
		    `tf.estimator.WarmStartSettings`.
		
		Returns:
		  Either None or an instance of `WarmStartSettings`.
		
		Raises:
		  ValueError: If `warm_start_from` is not `None` but is neither a string nor
		  an
		    instance of `WarmStartSettings`.
	**/
	static public function _get_default_warm_start_settings(warm_start_from:Dynamic):Dynamic;
	/**
		Creates a replica device setter if required as a default `device_fn`.
		
		`Estimator` uses `tf.train.ReplicaDeviceSetter` as a default device placer. It
		sets the
		distributed related arguments such as number of `ps_replicas` based on given
		`config`.
		
		Args:
		  config: A `tf.estimator.RunConfig` instance.
		
		Returns:
		  A replica device setter, or `None`.
	**/
	static public function _get_replica_device_setter(config:Dynamic):Dynamic;
	/**
		Return path to variables checkpoint in a `SavedModel` directory.
	**/
	static public function _get_saved_model_ckpt(saved_model_dir:Dynamic):Dynamic;
	/**
		Returns `True` if `Dataset` or `QueueRunner` has been used.
	**/
	static public function _has_dataset_or_queue_runner(maybe_tensor:Dynamic):Dynamic;
	static public function _load_global_step_from_checkpoint_dir(checkpoint_dir:Dynamic):Dynamic;
	/**
		Creates a metric for loss and throws an error if one already exists.
	**/
	static public function _verify_and_create_loss_metric(eval_metric_ops:Dynamic, loss:Dynamic, ?distribution:Dynamic):Dynamic;
	/**
		Verifies `model_fn` arguments.
	**/
	static public function _verify_model_fn_args(model_fn:Dynamic, params:Dynamic):Dynamic;
	/**
		Writes `checkpoint_path` into summary file in the given output directory.
		
		Args:
		  output_dir: `str`, directory to write the summary file in.
		  checkpoint_path: `str`, checkpoint file path to be written to summary file.
		  current_global_step: `int`, the current global step.
	**/
	static public function _write_checkpoint_path_to_summary(output_dir:Dynamic, checkpoint_path:Dynamic, current_global_step:Dynamic):Dynamic;
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
		Create a `tf.train.Scaffold.ready_for_local_init_op` inside a tower.
	**/
	static public function create_per_tower_ready_for_local_init_op(scaffold:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Overwrite estimator config by `model_dir` and `session_config` if needed.
		
		Args:
		  config: Original estimator config.
		  model_dir: Estimator model checkpoint directory.
		
		Returns:
		  Overwritten estimator config.
		
		Raises:
		  ValueError: Model directory inconsistent between `model_dir` and `config`.
	**/
	static public function maybe_overwrite_model_dir_and_session_config(config:Dynamic, model_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}