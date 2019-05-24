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
		    return_stateful_result: Boolean, indicates whether the stateful
		      (aggregated)/stateless metric result should be returned.
		
		Returns:
		    Returns the metric results for each output of the model.
	**/
	static public function _eager_metrics_fn(model:Dynamic, outputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?masks:Dynamic, ?return_stateful_result:Dynamic):Dynamic;
	/**
		Calculates the loss for a given model.
		
		Arguments:
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
		
		Arguments:
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
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Squeeze or expand last dimension if needed.
		
		1. Squeezes last dim of `y_pred` or `y_true` if their rank differs by 1
		(using `confusion_matrix.remove_squeezable_dimensions`).
		2. Squeezes or expands last dim of `sample_weight` if its rank differs by 1
		from the new rank of `y_pred`.
		If `sample_weight` is scalar, it is kept scalar.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  y_pred: Predicted values, a `Tensor` of arbitrary dimensions.
		  y_true: Optional label `Tensor` whose dimensions match `y_pred`.
		  sample_weight: Optional weight scalar or `Tensor` whose dimensions match
		    `y_pred`.
		
		Returns:
		  Tuple of `y_pred`, `y_true` and `sample_weight`. Each of them possibly has
		  the last dimension squeezed,
		  `sample_weight` could be extended by one dimension.
	**/
	static public function squeeze_or_expand_dimensions(y_pred:Dynamic, y_true:Dynamic, sample_weight:Dynamic):Dynamic;
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