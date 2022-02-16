/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.distributed_training_utils_v1;
@:pythonImport("tensorflow.python.keras.distribute.distributed_training_utils_v1") extern class Distributed_training_utils_v1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a cloned model on each replica.
	**/
	static public function _build_distributed_network(model:Dynamic, strategy:Dynamic, mode:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Build an updated model on replicas.
		
		We create a new Keras model while sharing the variables from the old graph.
		Building a new sub-graph is required since the original keras model creates
		placeholders for the input and the output that are not accessible till we
		call iterator.get_next() inside the step_fn for `fit`/`evaluate`/`predict`.
		
		The sharing of weights and layers between the old and the new model guarantee
		that we're using Strategy variables and any updates on either model are
		reflected correctly in callbacks and loop iterations.
		
		We need to make sure we share the optimizers between the old and the new model
		as well so that optimizer state is not lost if the user is running fit
		multiple times.
		
		Args:
		  model: Model to be replicated across Replicas
		  mode: Which of fit/eval/predict is building the distributed network
		  inputs: Input variables to be passed to the model
		  targets: Target tensor to be passed to model.compile
		
		Returns:
		  A new model with shared layers with the old model.
	**/
	static public function _build_network_on_replica(model:Dynamic, mode:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Clone and build the given keras_model.
	**/
	static public function _clone_and_build_model(model:Dynamic, mode:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Copies weights from original model to distributed models.
	**/
	static public function _copy_weights_to_distributed_model(original_model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Copies weights from first distributed model back to original model.
	**/
	static public function _copy_weights_to_original_model(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Custom compile for TPU predict mode.
	**/
	static public function _custom_compile_for_predict(model:Dynamic):Dynamic;
	static public function _generate_cache_key(mode:Dynamic):Dynamic;
	/**
		Get elements from the iterator and verify the input shape and type.
	**/
	static public function _get_input_from_iterator(iterator:Dynamic, model:Dynamic):Dynamic;
	/**
		Makes function to run one step of distributed model eager execution.
	**/
	static public function _make_eager_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Makes or reuses function to run one step of distributed model execution.
	**/
	static public function _make_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Clones or re-uses models to run one step of distributed model execution.
	**/
	static public function _make_execution_function_with_cloning(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Creates a function to run one step of distributed model execution.
	**/
	static public function _make_execution_function_without_cloning(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Makes function to run one step of distributed model in graph mode.
	**/
	static public function _make_graph_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		A single step of the distributed execution on a replica.
	**/
	static public function _make_replica_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Build models on each replica.
	**/
	static public function _make_replicated_models_with_cloning(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Aggregates the per-replica batch-level outputs from a distributed step.
	**/
	static public function _per_replica_aggregate_batch(strategy:Dynamic, batch_outs:Dynamic, model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Prepare feed values to the model execution function.
		
		Args:
		  model: Model to prepare feed values for.
		  inputs: List or dict of model inputs.
		  targets: Optional list of model targets.
		  sample_weights: Optional list of sample weight arrays.
		  mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		
		Returns:
		  Feed values for the model in the given mode.
	**/
	static public function _prepare_feed_values(model:Dynamic, inputs:Dynamic, targets:Dynamic, sample_weights:Dynamic, mode:Dynamic):Dynamic;
	static public function _reset_metrics(model:Dynamic):Dynamic;
	/**
		Update sample_weight_mode of the distributed model.
	**/
	static public function _update_sample_weight_modes(model:Dynamic, mode:Dynamic, sample_weights:Dynamic):Dynamic;
	/**
		Utility to wait for variables to be initialized.
	**/
	static public function _wait_for_variable_initialization(session:Dynamic):Dynamic;
	/**
		Create a cloned model on each replica.
	**/
	static public function clone_model_on_replicas(model:Dynamic, strategy:Dynamic, mode:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Concats prediction outputs along the batch dimension.
	**/
	static public function concat_along_batch_dimension(outputs:Dynamic):Dynamic;
	static public function distributed_scope(strategy:Dynamic, learning_phase:Dynamic):Dynamic;
	/**
		Filter Callbacks based on the worker context when running multi-worker.
		
		Args:
		  callbacks_list: A list of `Callback` instances.
		  model: Keras model instance.
		
		Returns:
		  The list of `Callback` instances that should be run on this worker.
	**/
	static public function filter_distributed_callbacks(callbacks_list:Dynamic, model:Dynamic):Dynamic;
	/**
		Unwraps and flattens a nest of PerReplica parameters.
		
		PerReplica values have one value associated with each device. Each entry in
		the PerReplica dict has a device `key` and the corresponding value on the
		device as the `value`. In this function we take a PerReplica value or a list
		of PerReplica values and return all the values in the PerReplica dict.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training and
		    validation.
		  per_replica_values: List of PerReplica object or a single PerReplica object.
		
		Returns:
		  List of values of all the PerReplica objects.
	**/
	static public function flatten_per_replica_values(distribution_strategy:Dynamic, per_replica_values:Dynamic):Dynamic;
	static public function get_batch_dimension(iterator:Dynamic):Dynamic;
	static public function get_distributed_function(model:Dynamic, mode:Dynamic):Dynamic;
	static public function get_distributed_model(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Calculate the number of batches and steps/steps_per_epoch.
		
		Args:
		  distribution_strategy: The DistributionStrategy used to compile the model.
		  num_samples: The number of samples from which we determine the batch size
		    and steps.
		  steps:  The specified number of steps.
		  batch_size: The specified batch_size.
		  mode: ModeKey representing whether input will be used for training,
		    evaluation, or prediction. This is used to relax the constraints on
		    consuming all the training samples to keep compatibility till we support
		    partial batches. If none, then partial batches are not allowed.
		
		Returns:
		  steps: The steps or steps_per_epoch argument depending on if a user is
		      calling `fit`, `evaluate` or `predict`. If the is_training flag is set
		      we don't require the number of samples to be used completely.
		  batch_size: The batch size to be used in model iterations.
		
		Raises:
		  ValueError: If the number of batches or steps evaluates to 0.
	**/
	static public function get_input_params(distribution_strategy:Dynamic, num_samples:Dynamic, steps:Dynamic, batch_size:Dynamic, ?mode:Dynamic):Dynamic;
	static public function get_iterator(dataset:Dynamic, distribution_strategy:Dynamic):Dynamic;
	/**
		Initialize or restore variables or wait for variables to be initialized.
	**/
	static public function init_restore_or_wait_for_variables():Dynamic;
	static public function initialize_iterator(iterator:Dynamic, distribution_strategy:Dynamic):Dynamic;
	static public function is_current_worker_chief():Dynamic;
	/**
		Returns whether a dataset contains a final partial batch.
	**/
	static public function is_dataset_shape_fully_defined(dataset:Dynamic):Dynamic;
	/**
		Decide whether this model is going to be distributed via cloning.
		
		We are going to distribute the model by cloning in graph mode.
		
		Args:
		  model: Keras model to distribute.
		
		Returns:
		  True if the `model` is going to be distributed using cloning and False
		  otherwise.
	**/
	static public function is_distributing_by_cloning(model:Dynamic):Dynamic;
	/**
		Process the batch size and step size based on input and dist strategy.
	**/
	static public function process_batch_and_step_size(strategy:Dynamic, inputs:Dynamic, batch_size:Dynamic, steps_per_epoch:Dynamic, mode:Dynamic, ?validation_split:Dynamic):Dynamic;
	static public function set_distributed_function(model:Dynamic, mode:Dynamic, distributed_function:Dynamic):Dynamic;
	static public function set_distributed_model(model:Dynamic, mode:Dynamic, distributed_model:Dynamic):Dynamic;
	/**
		Sets the weights of the replicated models.
		
		The weights of the replicated models are set to the weights of the original
		model. The weights of the replicated model are Mirrored variables and hence
		we need to use the `update` call within a DistributionStrategy scope.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training
		      and validation.
		  dist_model: The replicated models on the different devices.
		  weights: The weights of the original model.
	**/
	static public function set_weights(distribution_strategy:Dynamic, dist_model:Dynamic, weights:Dynamic):Dynamic;
	/**
		Unwrap the list of outputs contained in the PerReplica parameters.
	**/
	static public function unwrap_output_dict(strategy:Dynamic, grouped_outputs:Dynamic, mode:Dynamic):Dynamic;
	/**
		Unwrap the list of outputs contained in the PerReplica parameters.
		
		This function calls `flatten_per_replica_values` to parse each of the input
		parameters into a list of outputs on the different devices. If we set
		`with_loss_tensor` to be True, we also call `reduce` on the list of losses on
		the different devices to give us one loss tensor.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training and
		      validation.
		  grouped_outputs: PerReplica outputs returned from the train or test function
		      that we ran on each device.
		  with_loss_tensor: Boolean that indicates if we need to add the reduced loss
		      tensor as one of the outputs.
		
		Returns:
		  Values of each of the PerReplica outputs.
	**/
	static public function unwrap_outputs(distribution_strategy:Dynamic, grouped_outputs:Dynamic, ?with_loss_tensor:Dynamic):Dynamic;
	/**
		Unwrap the list of values contained in the PerReplica parameters.
		
		This function calls `flatten_per_replica_values` to parse each of the input
		parameters into a list of values on the different devices. If we set
		`with_loss_tensor` to be True, we also call `reduce` on the list of losses on
		the different devices to give us one loss tensor.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training and
		      validation.
		  grouped_inputs: PerReplica inputs returned from the train or test function
		      that we ran on each device.
		  grouped_outputs: PerReplica outputs returned from the train or test function
		      that we ran on each device.
		  grouped_updates: PerReplica updates returned from the train or test function
		      that we ran on each device.
		  grouped_session_args: PerReplica session args returned from the train or
		      test function that we ran on each device.
		  with_loss_tensor: Boolean that indicates if we need to add the reduced loss
		      tensor as one of the outputs.
		
		Returns:
		  Values of each of the PerReplica parameters.
	**/
	static public function unwrap_values(distribution_strategy:Dynamic, grouped_inputs:Dynamic, grouped_outputs:Dynamic, ?grouped_updates:Dynamic, ?grouped_session_args:Dynamic, ?with_loss_tensor:Dynamic):Dynamic;
	static public function validate_all_tensor_shapes(x:Dynamic, x_values:Dynamic):Dynamic;
	static public function validate_all_tensor_types(x:Dynamic, x_values:Dynamic):Dynamic;
	/**
		Validate whether given callbacks are supported by DistributionStrategy.
		
		Args:
		  input_callbacks: List of callbacks passed by the user to fit.
		  optimizer: Optimizer instance used to train the model.
		
		Raises:
		  ValueError: If `LearningRateScheduler` or `ReduceLROnPlateau` is one of the
		      callbacks passed.
		  ValueError: If `write_grads` is one of the parameters passed as part of the
		      TensorBoard callback.
	**/
	static public function validate_callbacks(input_callbacks:Dynamic, optimizer:Dynamic):Dynamic;
	/**
		Validate all the components of a DistributedValue Dataset input.
		
		Args:
		  distribution_strategy: The current DistributionStrategy used to call
		      `fit`/`evaluate`.
		  x: Input Dataset DistributedValue object. For example, when we use
		      `MirroredStrategy` this is a PerReplica object with a tensor for each
		      device set in the dict. x can also be a tuple or dict. The keys of the
		      dict should match the names of the input layers of the model.
		  y: Target Dataset DistributedValue object. For example, when we use
		      `MirroredStrategy` this is a PerReplica object with a tensor for each
		      device set in the dict. y can also be a tuple or dict. The keys of the
		      dict should match the names of the output layers of the model.
		  sample_weights: Sample weights Dataset DistributedValue object. For example,
		      when we use `MirroredStrategy` this is a PerReplica object with a tensor
		      for each device set in the dict.
		
		Returns:
		  The unwrapped values list of the x and y DistributedValues inputs.
		
		Raises:
		  ValueError: If x and y do not have support for being evaluated as tensors.
		      or if x and y contain elements that are not tensors or if x and y
		      contain elements that have a shape or dtype mismatch.
	**/
	static public function validate_distributed_dataset_inputs(distribution_strategy:Dynamic, x:Dynamic, y:Dynamic, ?sample_weights:Dynamic):Dynamic;
	/**
		Validate inputs when using DistributionStrategy.
		
		Args:
		  x: Model Inputs.
		  y: Model Targets.
		
		Raises:
		  ValueError: if input is not a Dataset or a numpy array(when we use
		    MirroredStrategy).
	**/
	static public function validate_inputs(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Validates PerReplica dataset input list.
		
		Args:
		  distribution_strategy: The current DistributionStrategy used to call
		    `fit`, `evaluate` and `predict`.
		  x: A list of PerReplica objects that represent the input or
		    target values.
		
		Returns:
		  List containing the first element of each of the PerReplica objects in
		  the input list.
		
		Raises:
		  ValueError: If any of the objects in the `per_replica_list` is not a tensor.
	**/
	static public function validate_per_replica_inputs(distribution_strategy:Dynamic, x:Dynamic):Dynamic;
}