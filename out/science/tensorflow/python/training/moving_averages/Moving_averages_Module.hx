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
	/**
		Applies updates depending on the context.
	**/
	static public function _update(strategy:Dynamic, _var:Dynamic, update_fn:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute the delta required for a debiased Variable.
		
		All exponential moving averages initialized with Tensors are initialized to 0,
		and therefore are biased to 0. Variables initialized to 0 and used as EMAs are
		similarly biased. This function creates the debias updated amount according to
		a scale factor, as in (Kingma et al., 2015).
		
		To demonstrate the bias the results from 0-initialization, take an EMA that
		was initialized to `0` with decay `b`. After `t` timesteps of seeing the
		constant `c`, the variable have the following value:
		
		```
		  EMA = 0*b^(t) + c*(1 - b)*b^(t-1) + c*(1 - b)*b^(t-2) + ...
		      = c*(1 - b^t)
		```
		
		To have the true value `c`, we would divide by the scale factor `1 - b^t`.
		
		In order to perform debiasing, we use two shadow variables. One keeps track of
		the biased estimate, and the other keeps track of the number of updates that
		have occurred.
		
		Args:
		  strategy: `Strategy` used to create and update variables.
		  unbiased_var: A Variable representing the current value of the unbiased EMA.
		  value: A Tensor representing the most recent value.
		  decay: A Tensor representing `1-decay` for the EMA.
		
		Returns:
		  The amount that the unbiased variable should be updated. Computing this
		  tensor will also update the shadow variables appropriately.
		
		References:
		  Adam - A Method for Stochastic Optimization:
		    [Kingma et al., 2015](https://arxiv.org/abs/1412.6980)
		    ([pdf](https://arxiv.org/pdf/1412.6980.pdf))
	**/
	static public function _zero_debias(strategy:Dynamic, unbiased_var:Dynamic, value:Dynamic, decay:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the moving average of a variable.
		
		The moving average of 'variable' updated with 'value' is:
		  variable * decay + value * (1 - decay)
		
		The returned Operation sets 'variable' to the newly computed moving average,
		by performing this subtraction:
		   variable -= (1 - decay) * (variable - value)
		
		Since variables that are initialized to a `0` value will be `0` biased,
		`zero_debias` optionally enables scaling by the mathematically correct
		debiasing factor of
		  1 - decay ** num_updates
		See Section 3 of (Kingma et al., 2015) for more details.
		
		The names of the debias shadow variables, by default, include both the scope
		they were created in and the scope of the variables they debias. They are also
		given a uniquifying-suffix.
		
		E.g.:
		
		```
		  with tf.compat.v1.variable_scope('scope1'):
		    with tf.compat.v1.variable_scope('scope2'):
		      var = tf.compat.v1.get_variable('foo')
		      update_1 = tf.assign_moving_average(var, 0.0, 1.0)
		      update_2 = tf.assign_moving_average(var, 0.0, 0.9)
		
		  # var.name: 'scope1/scope2/foo'
		  # shadow var names: 'scope1/scope2/scope1/scope2/foo/biased'
		  #                   'scope1/scope2/scope1/scope2/foo/biased_1'
		```
		
		Args:
		  variable: A Variable.
		  value: A tensor with the same shape as 'variable'.
		  decay: A float Tensor or float value.  The moving average decay.
		  zero_debias: A python bool. If true, assume the variable is 0-initialized
		    and unbias it, as in (Kingma et al., 2015). See docstring in
		      `_zero_debias` for more details.
		  name: Optional name of the returned operation.
		
		Returns:
		  A tensor which if evaluated will compute and return the new moving average.
		
		References:
		  Adam - A Method for Stochastic Optimization:
		    [Kingma et al., 2015](https://arxiv.org/abs/1412.6980)
		    ([pdf](https://arxiv.org/pdf/1412.6980.pdf))
	**/
	static public function assign_moving_average(variable:Dynamic, value:Dynamic, decay:Dynamic, ?zero_debias:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		  weight:  `Tensor` that keeps the current value of a weight. Shape should be
		    able to multiply `value`.
		  truediv:  Boolean, if `True`, dividing by `moving_average(weight)` is
		    floating point division.  If `False`, use division implied by dtypes.
		  collections:  List of graph collections keys to add the internal variables
		    `value * weight` and `weight` to. Defaults to
		    `[GraphKeys.GLOBAL_VARIABLES]`.
		  name: Optional name of the returned operation. Defaults to
		    "WeightedMovingAvg".
		
		Returns:
		  An Operation that updates and returns the weighted moving average.
	**/
	static public function weighted_moving_average(value:Dynamic, decay:Dynamic, weight:Dynamic, ?truediv:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
}