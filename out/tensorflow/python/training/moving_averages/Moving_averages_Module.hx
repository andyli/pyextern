/* This file is generated, do not edit! */
package tensorflow.python.training.moving_averages;
@:pythonImport("tensorflow.python.training.moving_averages") extern class Moving_averages_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the moving average of a variable.
		
		The moving average of 'variable' updated with 'value' is:
		  variable * decay + value * (1 - decay)
		
		The returned Operation sets 'variable' to the newly computed moving average.
		
		The new value of 'variable' can be set with the 'AssignSub' op as:
		   variable -= (1 - decay) * (variable - value)
		
		Args:
		  variable: A Variable.
		  value: A tensor with the same shape as 'variable'
		  decay: A float Tensor or float value.  The moving average decay.
		  name: Optional name of the returned operation.
		
		Returns:
		  An Operation that updates 'variable' with the newly computed
		  moving average.
	**/
	static public function assign_moving_average(variable:Dynamic, value:Dynamic, decay:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the weighted moving average of `value`.
		
		Conceptually, the weighted moving average is:
		  `moving_average(value * weight) / moving_average(weight)`,
		where a moving average updates by the rule
		  `new_value = decay * old_value + (1 - decay) * update`
		Internally, this Op keeps moving average variables of both `value * weight`
		and `weight`.
		
		Args:
		  value: A numeric `Tensor`.
		  decay: A float `Tensor` or float value.  The moving average decay.
		  weight:  `Tensor` that keeps the current value of a weight.
		    Shape should be able to multiply `value`.
		  truediv:  Boolean, if `True`, dividing by `moving_average(weight)` is
		    floating point division.  If `False`, use division implied by dtypes.
		  collections:  List of graph collections keys to add the internal variables
		    `value * weight` and `weight` to.  Defaults to `[GraphKeys.VARIABLES]`.
		  name: Optional name of the returned operation.
		    Defaults to "WeightedMovingAvg".
		
		Returns:
		  An Operation that updates and returns the weighted moving average.
	**/
	static public function weighted_moving_average(value:Dynamic, decay:Dynamic, weight:Dynamic, ?truediv:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
}