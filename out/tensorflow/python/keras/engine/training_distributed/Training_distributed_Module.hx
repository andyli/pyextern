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
		Aggregates stateless metrics values across towers.
		
		When using `MirroredStrategy`, the number of towers is equal to the
		number of devices over which training is distributed. This may not always be
		the case.
		
		Args:
		  num_devices: Number of devices over which the model is being distributed.
		  out_labels: The list of metric names passed to `compile`.
		  stateful_metric_names: List of stateful metric names on the model.
		  outs: The output from all the towers.
		
		Returns:
		  The average value of each metric across the towers.
	**/
	static public function _aggregate_metrics_across_towers(num_devices:Dynamic, out_labels:Dynamic, stateful_metric_names:Dynamic, outs:Dynamic):Dynamic;
	/**
		Clone and build the given keras_model.
	**/
	static public function _clone_and_build_model(model:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
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
		
		Returns:
		    Returns `None`.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function _experimental_fit_loop(model:Dynamic, iterator:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic):Dynamic;
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
	static public function _experimental_predict_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Test loop for evaluating with TPU DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the outputs.
	**/
	static public function _experimental_test_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Get elements from the iterator and verify the input shape and type.
	**/
	static public function _get_input_from_iterator(iterator:Dynamic, model:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a cloned model on each tower.
	**/
	static public function clone_model_on_towers(model:Dynamic, strategy:Dynamic, ?make_callback_model:Dynamic, ?inputs:Dynamic, ?targets:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Fit loop for training with DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator for input data.
		    epochs: Number of times to iterate over the data
		    verbose: Integer, Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    val_iterator: Iterator for validation data.
		    initial_epoch: Epoch at which to start training
		        (useful for resuming a previous training run)
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. Ignored with the default value of `None`.
		    validation_steps: Number of steps to run validation for
		        (only if doing validation from data tensors).
		        Ignored with the default value of `None`.
		
		Returns:
		    `History` object.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function fit_loop(model:Dynamic, iterator:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_iterator:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic):Dynamic;
	/**
		Predict loop for predicting with DistributionStrategy.
		
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
	static public function predict_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Test loop for evaluating with DistributionStrategy.
		
		Arguments:
		    model: Keras Model instance.
		    iterator: Iterator for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the outputs.
	**/
	static public function test_loop(model:Dynamic, iterator:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
}