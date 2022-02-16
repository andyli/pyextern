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
	/**
		Applies cosine decay to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a cosine decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		cosine_decay = 0.5 * (1 + cos(pi * global_step / decay_steps))
		decayed = (1 - alpha) * cosine_decay + alpha
		decayed_learning_rate = learning_rate * decayed
		```
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = cosine_decay(learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  alpha: A scalar `float32` or `float64` Tensor or a Python number. Minimum
		    learning rate value as a fraction of learning_rate.
		  name: String. Optional name of the operation.  Defaults to 'CosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies cosine decay with restarts to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a cosine decay function with
		restarts to a provided initial learning rate.  It requires a `global_step`
		value to compute the decayed learning rate.  You can just pass a TensorFlow
		variable that you increment at each training step.
		
		The function returns the decayed learning rate while taking into account
		possible warm restarts. The learning rate multiplier first decays
		from 1 to `alpha` for `first_decay_steps` steps. Then, a warm
		restart is performed. Each new warm restart runs for `t_mul` times more steps
		and with `m_mul` times smaller initial learning rate.
		
		Example usage:
		```python
		first_decay_steps = 1000
		lr_decayed = cosine_decay_restarts(learning_rate, global_step,
		                                   first_decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  first_decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Number of steps to decay over.
		  t_mul: A scalar `float32` or `float64` `Tensor` or a Python number. Used to
		    derive the number of iterations in the i-th period
		  m_mul: A scalar `float32` or `float64` `Tensor` or a Python number.
		    Used to derive the initial learning rate of the i-th period:
		  alpha: A scalar `float32` or `float64` Tensor or a Python number. Minimum
		    learning rate value as a fraction of the learning_rate.
		  name: String. Optional name of the operation.  Defaults to 'SGDRDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function cosine_decay_restarts(learning_rate:Dynamic, global_step:Dynamic, first_decay_steps:Dynamic, ?t_mul:Dynamic, ?m_mul:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
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
		learning_rate = tf.compat.v1.train.exponential_decay(starter_learning_rate,
		global_step,
		                                           100000, 0.96, staircase=True)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Must
		    be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The decay rate.
		  staircase: Boolean.  If `True` decay the learning rate at discrete intervals
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
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
		decayed_learning_rate = learning_rate / (1 + decay_rate * global_step /
		decay_step)
		```
		
		or, if `staircase` is `True`, as:
		
		```python
		decayed_learning_rate = learning_rate / (1 + decay_rate * floor(global_step /
		decay_step))
		```
		
		Example: decay 1/t with a rate of 0.5:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		decay_steps = 1.0
		decay_rate = 0.5
		learning_rate = tf.compat.v1.train.inverse_time_decay(learning_rate,
		global_step,
		decay_steps, decay_rate)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A Python number. Global step to use for the decay computation.
		    Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'InverseTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function inverse_time_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies linear cosine decay to the learning rate.
		
		Note that linear cosine decay is more aggressive than cosine decay and
		larger initial learning rates can typically be used.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a linear cosine decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		linear_decay = (decay_steps - global_step) / decay_steps)
		cosine_decay = 0.5 * (
		    1 + cos(pi * 2 * num_periods * global_step / decay_steps))
		decayed = (alpha + linear_decay) * cosine_decay + beta
		decayed_learning_rate = learning_rate * decayed
		```
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = linear_cosine_decay(learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  num_periods: Number of periods in the cosine part of the decay. See
		    computation above.
		  alpha: See computation above.
		  beta: See computation above.
		  name: String.  Optional name of the operation.  Defaults to
		    'LinearCosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Neural Optimizer Search with Reinforcement Learning:
		    [Bello et al., 2017](http://proceedings.mlr.press/v70/bello17a.html)
		    ([pdf](http://proceedings.mlr.press/v70/bello17a/bello17a.pdf))
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function linear_cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?num_periods:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies natural exponential decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * global_step /
		decay_step)
		```
		
		or, if `staircase` is `True`, as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * floor(global_step /
		decay_step))
		```
		
		Example: decay exponentially with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		decay_steps = 5
		k = 0.5
		learning_rate = tf.compat.v1.train.natural_exp_decay(learning_rate,
		global_step,
		                                           decay_steps, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A Python number. Global step to use for the decay computation.
		    Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function natural_exp_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies noisy linear cosine decay to the learning rate.
		
		Note that linear cosine decay is more aggressive than cosine decay and
		larger initial learning rates can typically be used.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a noisy linear
		cosine decay function to a provided initial learning rate.
		It requires a `global_step` value to compute the decayed learning rate.
		You can just pass a TensorFlow variable that you increment at each
		training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		linear_decay = (decay_steps - global_step) / decay_steps)
		cosine_decay = 0.5 * (
		    1 + cos(pi * 2 * num_periods * global_step / decay_steps))
		decayed = (alpha + linear_decay + eps_t) * cosine_decay + beta
		decayed_learning_rate = learning_rate * decayed
		```
		where eps_t is 0-centered gaussian noise with variance
		initial_variance / (1 + global_step) ** variance_decay
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = noisy_linear_cosine_decay(
		  learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  initial_variance: initial variance for the noise. See computation above.
		  variance_decay: decay for the noise's variance. See computation above.
		  num_periods: Number of periods in the cosine part of the decay. See
		    computation above.
		  alpha: See computation above.
		  beta: See computation above.
		  name: String.  Optional name of the operation.  Defaults to
		    'NoisyLinearCosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Neural Optimizer Search with Reinforcement Learning:
		    [Bello et al., 2017](http://proceedings.mlr.press/v70/bello17a.html)
		    ([pdf](http://proceedings.mlr.press/v70/bello17a/bello17a.pdf))
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function noisy_linear_cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?initial_variance:Dynamic, ?variance_decay:Dynamic, ?num_periods:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Piecewise constant from boundaries and interval values.
		
		Example: use a learning rate that's 1.0 for the first 100001 steps, 0.5
		  for the next 10000 steps, and 0.1 for any additional steps.
		
		```python
		global_step = tf.Variable(0, trainable=False)
		boundaries = [100000, 110000]
		values = [1.0, 0.5, 0.1]
		learning_rate = tf.compat.v1.train.piecewise_constant(global_step, boundaries,
		values)
		
		# Later, whenever we perform an optimization step, we increment global_step.
		```
		
		Args:
		  x: A 0-D scalar `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`.
		  boundaries: A list of `Tensor`s or `int`s or `float`s with strictly
		    increasing entries, and with all elements having the same type as `x`.
		  values: A list of `Tensor`s or `float`s or `int`s that specifies the values
		    for the intervals defined by `boundaries`. It should have one more element
		    than `boundaries`, and all elements should have the same type.
		  name: A string. Optional name of the operation. Defaults to
		    'PiecewiseConstant'.
		
		Returns:
		  A 0-D Tensor. Its value is `values[0]` when `x <= boundaries[0]`,
		  `values[1]` when `x > boundaries[0]` and `x <= boundaries[1]`, ...,
		  and values[-1] when `x > boundaries[-1]`.
		
		Raises:
		  ValueError: if types of `x` and `boundaries` do not match, or types of all
		      `values` do not match or
		      the number of elements in the lists does not match.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
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
		learning_rate = tf.compat.v1.train.polynomial_decay(starter_learning_rate,
		global_step,
		                                          decay_steps, end_learning_rate,
		                                          power=0.5)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Must
		    be positive.  See the decay computation above.
		  end_learning_rate: A scalar `float32` or `float64` `Tensor` or a Python
		    number.  The minimal end learning rate.
		  power: A scalar `float32` or `float64` `Tensor` or a Python number.  The
		    power of the polynomial. Defaults to linear, 1.0.
		  cycle: A boolean, whether or not it should cycle beyond decay_steps.
		  name: String.  Optional name of the operation. Defaults to
		    'PolynomialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function polynomial_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?end_learning_rate:Dynamic, ?power:Dynamic, ?cycle:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}