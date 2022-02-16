/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_estimator;
@:pythonImport("tensorflow.python.tpu.tpu_estimator") extern class Tpu_estimator_Module {
	static public var _ITERATIONS_PER_LOOP_VAR : Dynamic;
	static public var _TPU_ENQUEUE_OPS : Dynamic;
	static public var _TPU_ESTIMATOR : Dynamic;
	static public var _TPU_TRAIN_OP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Retrieves the Scaffold from `captured_scaffold_fn`.
	**/
	static public function _get_scaffold(captured_scaffold_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Call computation.
		
		Args:
		  computation_inputs: A tensor or dict of tensors, the inputs to the
		    computation.
		  computation: A Python function that takes no inputs and builds computation
		    graph. If `computation` returns m outputs, this function will return a
		    list of m Tensors.
		  batch_config: A BatchConfig named tuple specifying the batching
		    configuration to use for inference batching.
		
		Returns:
		  A list of output tensors.
	**/
	static public function call_computation(computation_inputs:Dynamic, computation:Dynamic, ?batch_config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		Returns:
		  The string path to the exported directory.
	**/
	static public function export_estimator_savedmodel(estimator:Dynamic, export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
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
	static public function generate_per_host_v2_enqueue_ops_fn_for_host(ctx:Dynamic, input_fn:Dynamic, inputs_structure_recorder:Dynamic, device:Dynamic, host_id:Dynamic, invocation_index:Dynamic):Dynamic;
	/**
		Convenient wrapper for export_saved_model API v2 to wrap TPU computation.
		
		WARNING: THIS METHOD IS DEPRECATED AND NOT PART OF THE APIS.
		
		Make sure to set
		`export_saved_model_api_version=tpu_estimator.ExportSavedModelApiVersion.V2`
		when initializing TPUEstimator (default API version is V1). This is because
		1) `tpu.rewrite` (or `tpu.compile`) shouldn't be called in a nested way
		    (otherwise validation will throw error like
		    "NotImplementedError: tpu_shard_context cannot be nested.")
		2) When using V1 API, Estimator calls `tpu.rewrite` so
		   using `model_fn_inference_on_tpu` will trigger a nested call.
		   When using V2 API, users of Estimator needs to call `tpu.rewrite` (which
		   the wrapper does).
		
		It puts computation on TPU, add batching around it and round robin computation
		between TPU cores.
		
		See tpu_estimator_test.py for an example.
		
		Args:
		  computation: computation to be put on TPU, which takes inputs_to_tpu as
		    arguments.
		  inputs_to_tpu: a list of tensors as input to computation.
		  num_batch_threads: Number of scheduling threads for processing batches of
		    work. Determines the number of batches processed in parallel.
		  max_batch_size: Batch sizes will never be bigger than this. If None or 0,
		    no batching will done.
		  batch_timeout_micros: Maximum number of microseconds to wait before
		    outputting an incomplete batch.
		  allowed_batch_sizes: Optional list of allowed batch sizes. If left empty,
		    does nothing. Otherwise, supplies a list of batch sizes, causing the op to
		    pad batches up to one of those sizes. The entries must increase
		    monotonically, and the final entry must equal max_batch_size.
		  max_enqueued_batches: The maximum depth of the batch queue. Defaults to 100.
		
		Returns:
		  The unbatched computation output Tensors.
	**/
	static public function inference_on_tpu(computation:Dynamic, inputs_to_tpu:Dynamic, num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?max_enqueued_batches:Dynamic):Dynamic;
	/**
		Convenience wrapper for export_saved_model API v2 for a model_fn.
		WARNING:THIS METHOD IS DEPRECATED AND NOT PART OF THE APIS.
		
		Make sure to set
		`export_saved_model_api_version=tpu_estimator.ExportSavedModelApiVersion.V2`
		when initializing TPUEstimator (default API version is V1). This is because
		1) `tpu.rewrite` (or `tpu.compile`) shouldn't be called in a nested way
		    (otherwise validation will throw error like
		    "NotImplementedError: tpu_shard_context cannot be nested.")
		2) When using V1 API, Estimator calls `tpu.rewrite` so
		   using `model_fn_inference_on_tpu` will trigger a nested call.
		   When using V2 API, users of Estimator needs to call `tpu.rewrite` (which
		   the wrapper does).
		
		It attempts to execute the entire model function on the TPU for prediction.
		Note that this does not support features which are SparseTensors. If you have
		SparseTensor features, consider partitioning your model function further and
		use inference_on_tpu.
		
		Args:
		  model_fn: the model_fn for which we want to inference on TPU.
		  features: a tensor or dict of tensors, serves as the feature inputs to the
		    model.
		  labels: a tensor or dict of tensors, serves as the labels inputs to the
		    model.
		  config: auxiliary config to the Estimator.
		  params: hparams that we want to pass to the model_fn.
		  batch_config: a named tuple to wrap the inference batching configuration
		    inputs.
		
		Returns:
		  An EstimatorSpec containing the outputs in export_outputs and predictions.
	**/
	static public function model_fn_inference_on_tpu(model_fn:Dynamic, features:Dynamic, ?labels:Dynamic, ?config:Dynamic, ?params:Dynamic, ?batch_config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}