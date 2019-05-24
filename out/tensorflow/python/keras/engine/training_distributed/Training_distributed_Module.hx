/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_distributed;
@:pythonImport("tensorflow.python.keras.engine.training_distributed") extern class Training_distributed_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Clone and build the given keras_model.
	**/
	static public function _clone_and_build_model(model:Dynamic, ?inputs:Dynamic, ?targets:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Copies weights from original model to distributed models.
	**/
	static public function _copy_weights_to_distributed_model(original_model:Dynamic, grouped_model:Dynamic):Dynamic;
	/**
		Copies weights from first distributed model back to original model.
	**/
	static public function _copy_weights_to_original_model(model:Dynamic, grouped_model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Custom compile for TPU predict mode.
	**/
	static public function _custom_compile_for_predict(model:Dynamic):Dynamic;
	/**
		Get elements from the iterator and verify the input shape and type.
	**/
	static public function _get_input_from_iterator(iterator:Dynamic, model:Dynamic):Dynamic;
	/**
		Makes function to run one step of distributed model eager execution.
	**/
	static public function _make_eager_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Makes function to run one step of distributed model execution.
	**/
	static public function _make_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Aggregates the per-device batch-level outputs from a distributed step.
	**/
	static public function _per_device_aggregate_batch(batch_outs:Dynamic, model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Prepare feed values to the model execution function.
		
		Arguments:
		  model: Model to prepare feed values for.
		  inputs: List or dict of model inputs.
		  targets: Optional list of model targets.
		  sample_weights: Optional list of sample weight arrays.
		  mode: One of 'train'/'test'/'predict'.
		
		Returns:
		  Feed values for the model in the given mode.
	**/
	static public function _prepare_feed_values(model:Dynamic, inputs:Dynamic, targets:Dynamic, sample_weights:Dynamic, mode:Dynamic):Dynamic;
	static public function _reset_metrics(model:Dynamic, ?distributed_model:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a cloned model on each replica.
	**/
	static public function clone_model_on_replicas(model:Dynamic, strategy:Dynamic, ?make_callback_model:Dynamic, ?inputs:Dynamic, ?targets:Dynamic, ?mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Fit loop for training with TPU DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator that returns inputs and targets
		    epochs: Number of times to iterate over the data
		    verbose: Integer, Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    initial_epoch: Epoch at which to start training
		        (useful for resuming a previous training run)
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. Ignored with the default value of `None`.
		    val_iterator: Iterator for validation data.
		    validation_steps: Number of steps to run validation for
		        (only if doing validation from data tensors).
		        Ignored with the default value of `None`.
		
		Returns:
		    Returns `None`.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function experimental_fit_loop(model:Dynamic, iterator:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?val_iterator:Dynamic, ?validation_steps:Dynamic):Dynamic;
	/**
		Predict loop for predicting with TPU DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring `_predict_loop` finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	static public function experimental_predict_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Test loop for evaluating with TPU DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		    initialize_finalize_strategy: Should the strategy initialize and finalize
		        functions be called.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the outputs.
	**/
	static public function experimental_test_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic, ?initialize_finalize_strategy:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}