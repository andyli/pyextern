/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_estimator;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_estimator") extern class Tpu_estimator_Module {
	static public var _BATCH_SIZE_KEY : Dynamic;
	static public var _CROSS_REPLICA_SUM_OP : Dynamic;
	static public var _CTX_KEY : Dynamic;
	static public var _INITIAL_LOSS : Dynamic;
	static public var _ITERATIONS_PER_LOOP_VAR : Dynamic;
	static public var _ONE_GIGABYTE : Dynamic;
	static public var _RESERVED_PARAMS_KEYS : Dynamic;
	static public var _REWRITE_FOR_INFERENCE_MODE : Dynamic;
	static public var _TPU_ENQUEUE_OPS : Dynamic;
	static public var _TPU_ESTIMATOR : Dynamic;
	static public var _TPU_TRAIN_OP : Dynamic;
	static public var _USE_TPU_KEY : Dynamic;
	static public var _WRAP_INPUT_FN_INTO_WHILE_LOOP : Dynamic;
	static public var _ZERO_LOSS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a new item into `params`.
	**/
	static public function _add_item_to_params(params:Dynamic, key:Dynamic, value:Dynamic):Dynamic;
	/**
		Clones `export_output` but with new `tensors`.
		
		Args:
		  export_output: an `ExportOutput` object such as `ClassificationOutput`,
		    `RegressionOutput`, or `PredictOutput`.
		  tensors: a list of `Tensors` used to construct a new `export_output`.
		
		Returns:
		  A dict similar to `export_output` but with `tensors`.
		
		Raises:
		  ValueError: if `export_output` is not one of `ClassificationOutput`,
		      `RegressionOutput`, or `PredictOutput`.
	**/
	static public function _clone_export_output_with_tensors(export_output:Dynamic, tensors:Dynamic):Dynamic;
	static public function _create_global_step(graph:Dynamic):Dynamic;
	/**
		Creates or gets the iterations_per_loop variable.
		
		In TPUEstimator, the user provided computation, the model_fn, is wrapped
		inside a tf.while_loop for peak performance. The iterations of the loop are
		specified by this variable, which adjusts its value on the CPU after each TPU
		program execution and before the next TPU execution.
		
		The purpose of using a variable, rather then a constant, is to allow
		TPUEstimator adapt the TPU training iterations according to the final steps
		specified by users. For example, if the user sets the iterations_per_loop as 4
		in TPUConfig and steps as 10 in TPUEstimator.train(), the iterations_per_loop
		variable will have the following value before each TPU training.
		
		    - 1-th TPU execution: iterations_per_loop = 4
		    - 2-th TPU execution: iterations_per_loop = 4
		    - 3-th TPU execution: iterations_per_loop = 2
		
		As model_fn increases the global step once per train_op invocation, the global
		step is 10 after all TPU executions, matching the steps=10 inputs passed in by
		users.
		
		Returns:
		  A TF non-trainable resource variable.
		
		Raises:
		  RuntimeError: If multi iterations_per_loop variables were found.
	**/
	static public function _create_or_get_iterations_per_loop():Dynamic;
	/**
		Executes `model_fn_wrapper` multiple times on all TPU shards.
	**/
	static public function _eval_on_tpu_system(ctx:Dynamic, model_fn_wrapper:Dynamic, dequeue_fn:Dynamic):Dynamic;
	/**
		Get a list of `Tensors` used in `export_output`.
		
		Args:
		  export_output: an `ExportOutput` object such as `ClassificationOutput`,
		    `RegressionOutput`, or `PredictOutput`.
		
		Returns:
		  a list of tensors used in export_output.
		
		Raises:
		  ValueError: if `export_output` is not one of `ClassificationOutput`,
		      `RegressionOutput`, or `PredictOutput`.
	**/
	static public function _export_output_to_tensors(export_output:Dynamic):Dynamic;
	static public function _extract_key_names(tensor_or_dict:Dynamic):Dynamic;
	/**
		Retrieves the Scaffold from `captured_scaffold_fn`.
	**/
	static public function _get_scaffold(captured_scaffold_fn:Dynamic):Dynamic;
	/**
		Returns an op to increase the eval step for TPU evaluation.
		
		Args:
		  iterations_per_loop: Tensor. The number of eval steps running in TPU system
		    before returning to CPU host for each `Session.run`.
		
		Returns:
		  An operation
	**/
	static public function _increase_eval_step_op(iterations_per_loop:Dynamic):Dynamic;
	/**
		A Python 2 and 3 compatible util to check whether `obj` is iterable.
	**/
	static public function _is_iterable(obj:Dynamic):Dynamic;
	/**
		Executes `model_fn_wrapper` multiple times on all TPU shards.
	**/
	static public function _predict_on_tpu_system(ctx:Dynamic, model_fn_wrapper:Dynamic, dequeue_fn:Dynamic):Dynamic;
	/**
		Create varriables synchronization ops.
		
		Gets the variables back from TPU nodes. This means the variables updated
		by TPU will now be *synced* to host memory.
		In BROADCAST mode, we skip this sync since the variables are ususally too
		big to transmit via RPC.
		
		Args:
		  ctx: A `_InternalTPUContext` instance with mode.
		
		Returns:
		  A list of sync ops.
	**/
	static public function _sync_variables_ops(ctx:Dynamic):Dynamic;
	/**
		Executes `model_fn_wrapper` multiple times on all TPU shards.
	**/
	static public function _train_on_tpu_system(ctx:Dynamic, model_fn_wrapper:Dynamic, dequeue_fn:Dynamic):Dynamic;
	/**
		Validate graph before running distributed training.
		
		Raises:
		  ValueError: If the graph seems invalid for running on device
	**/
	static public function _validate_tpu_training_graph():Dynamic;
	static public function _verify_cross_hosts_transfer_size(tensor_dict:Dynamic, message:Dynamic):Dynamic;
	/**
		Wraps the ops generated by `op_fn` in tf.while_loop.
	**/
	static public function _wrap_computation_in_while_loop(device:Dynamic, op_fn:Dynamic):Dynamic;
	/**
		Wraps the ops generated by `op_fn` in tf.while_loop.
	**/
	static public function _wrap_computation_in_while_loop_with_stopping_signals(device:Dynamic, op_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Export `Estimator` trained model for TPU inference.
		
		Args:
		  estimator: `Estimator` with which model has been trained.
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported SavedModels.
		  serving_input_receiver_fn: A function that takes no argument and returns a
		    `ServingInputReceiver` or `TensorServingInputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel, or `None` if no extra assets are needed.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs.
		
		Returns:
		  The string path to the exported directory.
	**/
	static public function export_estimator_savedmodel(estimator:Dynamic, export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Generates infeed enqueue ops for one input_fn on all the hosts.
	**/
	static public function generate_broadcast_enqueue_ops_fn(ctx:Dynamic, input_fn:Dynamic, inputs_structure_recorder:Dynamic, num_hosts:Dynamic):Dynamic;
	/**
		Generates infeed enqueue ops for per-core input_fn on a single host.
	**/
	static public function generate_per_core_enqueue_ops_fn_for_host(ctx:Dynamic, input_fn:Dynamic, inputs_structure_recorder:Dynamic, host_device:Dynamic, host_id:Dynamic):Dynamic;
	/**
		Generates infeed enqueue ops for per-host input_fn on a single host.
	**/
	static public function generate_per_host_enqueue_ops_fn_for_host(ctx:Dynamic, input_fn:Dynamic, inputs_structure_recorder:Dynamic, batch_axis:Dynamic, device:Dynamic, host_id:Dynamic):Dynamic;
	/**
		Generates infeed enqueue ops for per-host input_fn on a single host.
	**/
	static public function generate_per_host_v2_enqueue_ops_fn_for_host(ctx:Dynamic, input_fn:Dynamic, inputs_structure_recorder:Dynamic, device:Dynamic, host_id:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}