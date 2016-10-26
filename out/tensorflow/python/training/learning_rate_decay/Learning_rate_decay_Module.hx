/* This file is generated, do not edit! */
package tensorflow.python.training.learning_rate_decay;
@:pythonImport("tensorflow.python.training.learning_rate_decay") extern class Learning_rate_decay_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Applies exponential decay to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate *
		                        decay_rate ^ (global_step / decay_steps)
		```
		
		If the argument `staircase` is `True`, then `global_step / decay_steps` is an
		integer division and the decayed learning rate follows a staircase function.
		
		Example: decay every 100000 steps with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		learning_rate = tf.train.exponential_decay(starter_learning_rate, global_step,
		                                           100000, 0.96, staircase=True)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The decay rate.
		  staircase: Boolean.  It `True` decay the learning rate at discrete intervals
		  name: String.  Optional name of the operation.  Defaults to 
		    'ExponentialDecay'
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
	**/
	static public function exponential_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies inverse time decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an inverse decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate / (1 + decay_rate * t)
		```
		
		Example: decay 1/t with a rate of 0.5:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		k = 0.5
		learning_rate = tf.train.inverse_time_decay(learning_rate, global_step, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_rate: A Python number.  The decay rate.
		  name: String.  Optional name of the operation.  Defaults to
		    'InverseTimeDecay'
		
		with ops.op_scope([learning_rate, global_step, decay_rate],
		                  name, "InverseTimeDecay") as name:
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
	**/
	static public function inverse_time_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies natural exponential decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * global_step)
		```
		
		Example: decay exponetially with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		k = 0.5
		learning_rate = tf.train.exponential_time_decay(learning_rate, global_step, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_rate: A Python number.  The decay rate.
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialTimeDecay'
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
	**/
	static public function natural_exp_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Piecewise constant from boundaries and interval values.
		
		Example: use a learning rate that's 1.0 for the first 100000 steps, 0.5
		  for steps 100001 to 110000, and 0.1 for any additional steps.
		
		```python
		global_step = tf.Variable(0, trainable=False)
		boundaries = [100000, 110000]
		values = [1.0, 0.5, 0.1]
		learning_rate = tf.train.piecewise_constant(global_step, boundaries, values)
		
		# Later, whenever we perform an optimization step, we increment global_step.
		```
		
		Args:
		  x: A 0-D scalar `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`.
		  boundaries: A list of `Tensor`s or `int`s or `float`s with strictly
		    increasing entries, and with all elements having the same type as `x`.
		  values: A list of `Tensor`s or float`s or `int`s that specifies the values
		    for the intervals defined by `boundaries`. It should have one more element
		    than `boundaries`, and all elements should have the same type.
		  name: A string. Optional name of the operation. Defaults to
		    'PiecewiseConstant'.
		
		Returns:
		  A 0-D Tensor. Its value is `values[0]` when `x <= boundaries[0]`,
		  `values[1]` when `x > boundaries[0]` and `x <= boundaries[1]`, ...,
		  and values[-1] when `x > boundaries[-1]`.
	**/
	static public function piecewise_constant(x:Dynamic, boundaries:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a polynomial decay to the learning rate.
		
		It is commonly observed that a monotonically decreasing learning rate, whose
		degree of change is carefully chosen, results in a better performing model.
		This function applies a polynomial decay function to a provided initial
		`learning_rate` to reach an `end_learning_rate` in the given `decay_steps`.
		
		It requires a `global_step` value to compute the decayed learning rate.  You
		can just pass a TensorFlow variable that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		global_step = min(global_step, decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		If `cycle` is True then a multiple of `decay_steps` is used, the first one
		that is bigger than `global_steps`.
		
		```python
		decay_steps = decay_steps * ceil(global_step / decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		Example: decay from 0.1 to 0.01 in 10000 steps using sqrt (i.e. power=0.5):
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		end_learning_rate = 0.01
		decay_steps = 10000
		learning_rate = tf.train.polynomial_decay(starter_learning_rate, global_step,
		                                          decay_steps, end_learning_rate,
		                                          power=0.5)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  end_learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The minimal end learning rate.
		  power: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The power of the polynomial. Defaults to sqrt, i.e. 0.5.
		  cycle: A boolean, whether or not it should cycle beyond decay_steps.
		  name: String.  Optional name of the operation. Defaults to 'PolynomialDecay'
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
	**/
	static public function polynomial_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?end_learning_rate:Dynamic, ?power:Dynamic, ?cycle:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}