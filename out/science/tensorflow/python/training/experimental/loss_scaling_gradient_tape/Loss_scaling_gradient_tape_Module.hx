/* This file is generated, do not edit! */
package tensorflow.python.training.experimental.loss_scaling_gradient_tape;
@:pythonImport("tensorflow.python.training.experimental.loss_scaling_gradient_tape") extern class Loss_scaling_gradient_tape_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute gradients and update the loss scale until the gradients are finite.
		
		This must be called in a cross-replica context.
		
		This is a function instead of a method of LossScaleGradientTape, as the `self`
		parameter would be meaningless. There is one LossScaleGradientTape per
		replica, but this function is called once total (not per replica), so there
		cannot be a singular `self` parameter.
		
		Args:
		  distribution: The distribution strategy in effect.
		  loss_scale_gradient_tapes: A PerReplica value of LossScaleGradientTapes.
		    Contains the LossScaleGradientTape of each replica.
		  loss_scale: The loss scale to use to scale the loss and unscale the
		    gradient.
		  target: a list or nested structure of Tensors or Variables to be
		    differentiated.
		  sources: a list or nested structure of Tensors or Variables. `target` will
		    be differentiated against elements in `sources`.
		  output_gradients: Passed to GradientTape.gradient
		  unconnected_gradients: Pass to GradientTape.gradient.
		
		Returns:
		  The gradients of `target` with respect to `sources`.
	**/
	static public function _compute_gradients_until_finite(distribution:Dynamic, loss_scale_gradient_tapes:Dynamic, loss_scale:Dynamic, target:Dynamic, sources:Dynamic, output_gradients:Dynamic, unconnected_gradients:Dynamic):Dynamic;
	/**
		Converts tensors and DistributedVariables to PerReplica values.
		
		Args:
		  distribution: The distribution strategy in effect.
		  values: A list of tensors, variables, DistributedValues, or anything else
		    that can be converted to a PerReplcia value
		
		Returns:
		  `values`, but each element has been converted to a PerReplica value.
	**/
	static public function _convert_to_per_replicas(distribution:Dynamic, values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}