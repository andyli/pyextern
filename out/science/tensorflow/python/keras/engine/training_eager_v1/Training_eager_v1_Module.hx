/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_eager_v1;
@:pythonImport("tensorflow.python.keras.engine.training_eager_v1") extern class Training_eager_v1_Module {
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
		
		Args:
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
		
		Args:
		    model: The model on which metrics are being calculated.
		    inputs: Either a dictionary of inputs to the model or a list of input
		      arrays.
		    targets: List of target arrays.
		    output_loss_metrics: List of metrics that are used to aggregated output
		      loss values.
		    sample_weights: Optional list of sample weight arrays.
		    training: Whether the model should be run in inference or training mode.
		
		Returns:
		   Returns the model output, total loss, loss value calculated using the
		   specified loss function and masks for each output. The total loss includes
		   regularization losses and applies masking and sample weighting
		   to the loss value.
	**/
	static public function _model_loss(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?output_loss_metrics:Dynamic, ?sample_weights:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Calculate the loss and gradient for one input batch.
		
		   The model weights are updated if training is set to True.
		
		Args:
		    model: Model whose loss has to be calculated.
		    inputs: List of input arrays.
		    targets: List of target arrays.
		    output_loss_metrics: List of metrics that are used to aggregated output
		      loss values.
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
	static public function _process_single_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?output_loss_metrics:Dynamic, ?sample_weights:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Calculates the loss for one input batch.
		
		Args:
		    model: Model whose loss has to be calculated.
		    inputs: Input batch data.
		    targets: Target batch data.
		    sample_weights: Sample weight batch data.
		    output_loss_metrics: List of metrics that are used to aggregated output
		      loss values.
		
		Returns:
		    Dict with three items:
		      'total_loss': single tensor for overall loss,
		      'output_losses': list of tensors for loss corresponding to each of the
		        model output. Could be a empty list when model has only one output.
		      'metrics': list of tensors for metric specified.
	**/
	static public function test_on_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?output_loss_metrics:Dynamic):Dynamic;
	/**
		Calculates the loss and gradient updates for one input batch.
		
		Args:
		    model: Model whose loss has to be calculated.
		    inputs: Input batch data.
		    targets: Target batch data.
		    sample_weights: Sample weight batch data.
		    output_loss_metrics: List of metrics that are used to aggregated output
		      loss values.
		
		Returns:
		    Dict with three items:
		      'total_loss': list with a single tensor for overall loss,
		      'output_losses': list of tensors for loss corresponding to each of the
		        model output. Could be a empty list when model has only one output.
		      'metrics': list of tensors for metric specified.
	**/
	static public function train_on_batch(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?output_loss_metrics:Dynamic):Dynamic;
}