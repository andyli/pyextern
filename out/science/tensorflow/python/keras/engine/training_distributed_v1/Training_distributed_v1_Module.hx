/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_distributed_v1;
@:pythonImport("tensorflow.python.keras.engine.training_distributed_v1") extern class Training_distributed_v1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _build_model(strategy:Dynamic, model:Dynamic, mode:Dynamic, inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Create step fn.
		
		Args:
		  model: a Keras Model instance.
		  mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		  strategy: a `tf.distribute.Strategy` instance.
		  output_labels: the output labels for the step function.
		
		Returns:
		  A step function to run by `tf.distribute.Strategy`.
	**/
	static public function _make_train_step_fn(model:Dynamic, mode:Dynamic, strategy:Dynamic, output_labels:Dynamic):Dynamic;
	static public function _per_replica_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Decorator that handles multi worker training with distribution strategy.
	**/
	static public function _train_with_multi_worker(method:Dynamic):Dynamic;
	/**
		Fit loop for training with TPU tf.distribute.Strategy.
		
		Args:
		    model: Keras Model instance.
		    dataset: Dataset that returns inputs and targets
		    epochs: Number of times to iterate over the data
		    verbose: Integer, Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    initial_epoch: Epoch at which to start training
		        (useful for resuming a previous training run)
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. Ignored with the default value of `None`.
		    val_dataset: Dataset for validation data.
		    validation_steps: Number of steps to run validation for
		        (only if doing validation from data tensors).
		        Ignored with the default value of `None`.
		    validation_freq: Only relevant if validation data is provided. Integer or
		        `collections.abc.Container` instance (e.g. list, tuple, etc.). If an
		        integer, specifies how many training epochs to run before a new
		        validation run is performed, e.g. `validation_freq=2` runs
		        validation every 2 epochs. If a Container, specifies the epochs on
		        which to run validation, e.g. `validation_freq=[1, 2, 10]` runs
		        validation at the end of the 1st, 2nd, and 10th epochs.
		
		Returns:
		    Returns `None`.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function experimental_tpu_fit_loop(model:Dynamic, dataset:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?val_dataset:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic):Dynamic;
	/**
		Predict loop for predicting with TPU tf.distribute.Strategy.
		
		Args:
		    model: Keras Model instance.
		    dataset: Dataset for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring `_predict_loop` finished.
		        Ignored with the default value of `None`.
		    callbacks: List of callbacks to be called during training
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	static public function experimental_tpu_predict_loop(model:Dynamic, dataset:Dynamic, ?verbose:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic):Dynamic;
	/**
		Test loop for evaluating with TPU tf.distribute.Strategy.
		
		Args:
		    model: Keras Model instance.
		    dataset: Dataset for input data.
		    verbose: Integer, Verbosity mode 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		    callbacks: List of callbacks to be called during training
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the outputs.
	**/
	static public function experimental_tpu_test_loop(model:Dynamic, dataset:Dynamic, ?verbose:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic):Dynamic;
}