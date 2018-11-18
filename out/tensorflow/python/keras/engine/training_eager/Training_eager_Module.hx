/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_eager;
@:pythonImport("tensorflow.python.keras.engine.training_eager") extern class Training_eager_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _eager_loss_fn(outputs:Dynamic, targets:Dynamic, loss_fn:Dynamic, output_name:Dynamic):Dynamic;
	/**
		Calculates the metrics for each output of the given model.
		
		Arguments:
		    model: The model on which metrics are being calculated.
		    outputs: The outputs of the given model.
		    targets: The predictions or targets of the given model.
		    sample_weights: Optional list of sample weights for each output.
		    masks: Optional list of masks for each output.
		
		Returns:
		    Returns the metric results for each output of the model.
	**/
	static public function _eager_metrics_fn(model:Dynamic, outputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?masks:Dynamic):Dynamic;
	/**
		Calculates the loss for a given model.
		
		Arguments:
		    model: The model on which metrics are being calculated.
		    inputs: Either a dictionary of inputs to the model or a list of input
		      arrays.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    training: Whether the model should be run in inference or training mode.
		
		Returns:
		   Returns the model output, total loss, loss value calculated using the
		   specified loss function and masks for each output. The total loss includes
		   regularization losses and applies masking and sample weighting
		   to the loss value.
	**/
	static public function _model_loss(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Calculate the loss and gradient for one input batch.
		
		   The model weights are updated if training is set to True.
		
		Arguments:
		    model: Model whose loss has to be calculated.
		    inputs: List of input arrays.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    training: The boolean represents if the weights of the model are updated.
		            'fit' methods will set this to True while 'evaluate' methods will
		            set this to False.
		
		Returns:
		    output of the model, total loss, the loss and the mask
		    associated with each output.
		
		Raises:
		    ValueError: If the model has no loss to optimize.
	**/
	static public function _process_single_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?training:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Fit function for eager execution.
		
		Arguments:
		    model: Instance of the model that is being executed in Eager mode.
		    inputs: List of input arrays.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    class_weight: Optional class-weight array to weight the importance of
		        samples in `inputs` based on the class they belong to, as conveyed by
		        `targets`.
		    val_inputs: Input data for validation.
		    val_targets: Target data for validation.
		    val_sample_weights: Sample weight data for validation.
		    batch_size: Integer batch size or None if unknown.
		    epochs: Number of times to iterate over the data
		    verbose: Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    shuffle: Whether to shuffle the data at the beginning of each epoch
		    initial_epoch: Epoch at which to start training
		        (useful for resuming a previous training run)
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. Ignored with the default value of `None`.
		    validation_steps: Number of steps to run validation for (only if doing
		      validation from data tensors). Ignored with default value of `None`.
		
		Returns:
		    `History` object.
		
		Raises:
		  ValueError: In case of invalid argument values.
	**/
	static public function fit_loop(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?class_weight:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic):Dynamic;
	/**
		Fit function for eager execution when input is given as dataset iterator.
		
		Updates the given epoch logs.
		
		Arguments:
		    model: Instance of the `Model`.
		    inputs: Input dataset iterator.
		    class_weight: Optional class-weight array to weight the importance of
		        samples in `inputs` based on the class they belong to, as conveyed by
		        the targets from the `inputs` iterator.
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch.
		    epoch_logs: Dictionary of logs from every epoch.
		    val_inputs: Input data for validation.
		    val_targets: Target data for validation.
		    val_sample_weights: Sample weight data for validation.
		    epochs: Number of times to iterate over the data
		    verbose: Verbosity mode, 0, 1 or 2
		    callbacks: CallbackList instance. Controls callbacks during training.
		    validation_steps: Number of steps to run validation for (only if doing
		      validation from data tensors). Ignored with default value of `None`.
		    do_validation: Boolean value indicating whether we should do validation.
		    batch_size: int, val_inputs and val_targets will be evaled batch by
		      batch with size batch_size if they are array.
		
		Raises:
		    ValueError: In case of mismatch between given number of inputs and
		      expectations of the model.
	**/
	static public function iterator_fit_loop(model:Dynamic, inputs:Dynamic, class_weight:Dynamic, steps_per_epoch:Dynamic, epoch_logs:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_steps:Dynamic, ?do_validation:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Predict function for eager execution when input is dataset iterator.
		
		Arguments:
		    model: Instance of `Model`.
		    inputs: Input dataset iterator.
		    steps: Total number of steps (batches of samples) before declaring
		        `_predict_loop` finished.
		    verbose: Verbosity mode.
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions (if the model has multiple outputs).
		
		Raises:
		    ValueError: In case of mismatch between given number of inputs and
		      expectations of the model.
	**/
	static public function iterator_predict_loop(model:Dynamic, inputs:Dynamic, steps:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Test function for eager execution when input is given as dataset iterator.
		
		Arguments:
		    model: Model instance that is being evaluated in Eager mode.
		    inputs: Input dataset iterator.
		    steps: Total number of steps (batches of samples) before declaring
		    predictions finished.
		    verbose: Verbosity mode.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		Raises:
		    ValueError: In case of mismatch between given number of inputs and
		      expectations of the model.
	**/
	static public function iterator_test_loop(model:Dynamic, inputs:Dynamic, steps:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Predict function for eager execution.
		
		Arguments:
		    model: Instance of `Model`.
		    inputs: List of input arrays.
		    batch_size: integer batch size.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring `_predict_loop` finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	static public function predict_loop(model:Dynamic, inputs:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Test function for eager execution.
		
		Arguments:
		    model: Model instance that is being evaluated in Eager mode.
		    inputs: List of input arrays.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    batch_size: integer batch size or `None`.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	static public function test_loop(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Calculates the loss for one input batch.
		
		Arguments:
		    model: Model whose loss has to be calculated.
		    inputs: Input batch data.
		    targets: Target batch data.
		    sample_weights: Sample weight batch data.
		
		Returns:
		    total loss, loss and metrics associated with each output.
	**/
	static public function test_on_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic):Dynamic;
	/**
		Calculates the loss and gradient updates for one input batch.
		
		Arguments:
		    model: Model whose loss has to be calculated.
		    inputs: Input batch data.
		    targets: Target batch data.
		    sample_weights: Sample weight batch data.
		
		Returns:
		    total loss and the loss associated with each output.
	**/
	static public function train_on_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic):Dynamic;
}