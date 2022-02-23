/* This file is generated, do not edit! */
package tensorflow.python.keras.activations;
@:pythonImport("tensorflow.python.keras.activations") extern class Activations_Module {
	static public var _TF_ACTIVATIONS_V2 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns activation function given a string identifier.
		
		Args:
		  name: The name of the activation function.
		  custom_objects: Optional `{function_name: function_obj}`
		    dictionary listing user-provided activation functions.
		
		Returns:
		    Corresponding activation function.
		
		For example:
		
		>>> tf.keras.activations.deserialize('linear')
		 <function linear at 0x1239596a8>
		>>> tf.keras.activations.deserialize('sigmoid')
		 <function sigmoid at 0x123959510>
		>>> tf.keras.activations.deserialize('abcd')
		Traceback (most recent call last):
		...
		ValueError: Unknown activation function:abcd
		
		Raises:
		    ValueError: `Unknown activation function` if the input string does not
		    denote any defined Tensorflow activation function.
	**/
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Turns the serialized form of a Keras object back into an actual object.
		
		This function is for mid-level library implementers rather than end users.
		
		Importantly, this utility requires you to provide the dict of `module_objects`
		to use for looking up the object config; this is not populated by default.
		If you need a deserialization utility that has preexisting knowledge of
		built-in Keras objects, use e.g. `keras.layers.deserialize(config)`,
		`keras.metrics.deserialize(config)`, etc.
		
		Calling `deserialize_keras_object` while underneath the
		`SharedObjectLoadingScope` context manager will cause any already-seen shared
		objects to be returned as-is rather than creating a new object.
		
		Args:
		  identifier: the serialized form of the object.
		  module_objects: A dictionary of built-in objects to look the name up in.
		    Generally, `module_objects` is provided by midlevel library implementers.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, `custom_objects` is provided by the end user.
		  printable_module_name: A human-readable string representing the type of the
		    object. Printed in case of exception.
		
		Returns:
		  The deserialized object.
		
		Example:
		
		A mid-level library implementer might want to implement a utility for
		retrieving an object from its config, as such:
		
		```python
		def deserialize(config, custom_objects=None):
		   return deserialize_keras_object(
		     identifier,
		     module_objects=globals(),
		     custom_objects=custom_objects,
		     name="MyObjectType",
		   )
		```
		
		This is how e.g. `keras.layers.deserialize()` is implemented.
	**/
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Exponential Linear Unit.
		
		The exponential linear unit (ELU) with `alpha > 0` is:
		`x` if `x > 0` and
		`alpha * (exp(x) - 1)` if `x < 0`
		The ELU hyperparameter `alpha` controls the value to which an
		ELU saturates for negative net inputs. ELUs diminish the
		vanishing gradient effect.
		
		ELUs have negative values which pushes the mean of the activations
		closer to zero.
		Mean activations that are closer to zero enable faster learning as they
		bring the gradient closer to the natural gradient.
		ELUs saturate to a negative value when the argument gets smaller.
		Saturation means a small derivative which decreases the variation
		and the information that is propagated to the next layer.
		
		Example Usage:
		
		>>> import tensorflow as tf
		>>> model = tf.keras.Sequential()
		>>> model.add(tf.keras.layers.Conv2D(32, (3, 3), activation='elu',
		...          input_shape=(28, 28, 1)))
		>>> model.add(tf.keras.layers.MaxPooling2D((2, 2)))
		>>> model.add(tf.keras.layers.Conv2D(64, (3, 3), activation='elu'))
		>>> model.add(tf.keras.layers.MaxPooling2D((2, 2)))
		>>> model.add(tf.keras.layers.Conv2D(64, (3, 3), activation='elu'))
		
		<tensorflow.python.keras.engine.sequential.Sequential object ...>
		
		Args:
		    x: Input tensor.
		    alpha: A scalar, slope of negative section. `alpha` controls the value to
		      which an ELU saturates for negative net inputs.
		
		Returns:
		    The exponential linear unit (ELU) activation function: `x` if `x > 0` and
		    `alpha * (exp(x) - 1)` if `x < 0`.
		
		
		Reference:
		    [Fast and Accurate Deep Network Learning by Exponential Linear Units
		    (ELUs) (Clevert et al, 2016)](https://arxiv.org/abs/1511.07289)
	**/
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Exponential activation function.
		
		For example:
		
		>>> a = tf.constant([-3.0,-1.0, 0.0,1.0,3.0], dtype = tf.float32)
		>>> b = tf.keras.activations.exponential(a)
		>>> b.numpy()
		array([0.04978707,  0.36787945,  1.,  2.7182817 , 20.085537], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    Tensor with exponential activation: `exp(x)`.
	**/
	static public function exponential(x:Dynamic):Dynamic;
	/**
		Applies the Gaussian error linear unit (GELU) activation function.
		
		Gaussian error linear unit (GELU) computes
		`x * P(X <= x)`, where `P(X) ~ N(0, 1)`.
		The (GELU) nonlinearity weights inputs by their value, rather than gates
		inputs by their sign as in ReLU.
		
		For example:
		
		>>> x = tf.constant([-3.0, -1.0, 0.0, 1.0, 3.0], dtype=tf.float32)
		>>> y = tf.keras.activations.gelu(x)
		>>> y.numpy()
		array([-0.00404951, -0.15865529,  0.        ,  0.8413447 ,  2.9959507 ],
		    dtype=float32)
		>>> y = tf.keras.activations.gelu(x, approximate=True)
		>>> y.numpy()
		array([-0.00363752, -0.15880796,  0.        ,  0.841192  ,  2.9963627 ],
		    dtype=float32)
		
		Args:
		    x: Input tensor.
		    approximate: A `bool`, whether to enable approximation.
		
		Returns:
		    The gaussian error linear activation:
		    `0.5 * x * (1 + tanh(sqrt(2 / pi) * (x + 0.044715 * x^3)))`
		    if `approximate` is `True` or
		    `x * P(X <= x) = 0.5 * x * (1 + erf(x / sqrt(2)))`,
		    where `P(X) ~ N(0, 1)`,
		    if `approximate` is `False`.
		
		Reference:
		  - [Gaussian Error Linear Units (GELUs)](https://arxiv.org/abs/1606.08415)
	**/
	static public function gelu(x:Dynamic, ?approximate:Dynamic):Dynamic;
	/**
		Returns function.
		
		Args:
		    identifier: Function or string
		
		Returns:
		    Function corresponding to the input string or input function.
		
		For example:
		
		>>> tf.keras.activations.get('softmax')
		 <function softmax at 0x1222a3d90>
		>>> tf.keras.activations.get(tf.keras.activations.softmax)
		 <function softmax at 0x1222a3d90>
		>>> tf.keras.activations.get(None)
		 <function linear at 0x1239596a8>
		>>> tf.keras.activations.get(abs)
		 <built-in function abs>
		>>> tf.keras.activations.get('abcd')
		Traceback (most recent call last):
		...
		ValueError: Unknown activation function:abcd
		
		Raises:
		    ValueError: Input is an unknown function or string, i.e., the input does
		    not denote any defined function.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Hard sigmoid activation function.
		
		A faster approximation of the sigmoid activation.
		Piecewise linear approximation of the sigmoid function.
		Ref: 'https://en.wikipedia.org/wiki/Hard_sigmoid'
		
		For example:
		
		>>> a = tf.constant([-3.0,-1.0, 0.0,1.0,3.0], dtype = tf.float32)
		>>> b = tf.keras.activations.hard_sigmoid(a)
		>>> b.numpy()
		array([0. , 0.3, 0.5, 0.7, 1. ], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		  The hard sigmoid activation, defined as:
		
		    - `if x < -2.5: return 0`
		    - `if x > 2.5: return 1`
		    - `if -2.5 <= x <= 2.5: return 0.2 * x + 0.5`
	**/
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the Leaky ReLU activation function.
		
		Source: [Rectifier Nonlinearities Improve Neural Network Acoustic Models.
		AL Maas, AY Hannun, AY Ng - Proc. ICML, 2013]
		(https://ai.stanford.edu/~amaas/papers/relu_hybrid_icml2013_final.pdf).
		
		Args:
		  features: A `Tensor` representing preactivation values. Must be one of
		    the following types: `float16`, `float32`, `float64`, `int32`, `int64`.
		  alpha: Slope of the activation function at x < 0.
		  name: A name for the operation (optional).
		
		Returns:
		  The activation value.
		
		References:
		  Rectifier Nonlinearities Improve Neural Network Acoustic Models:
		    [Maas et al., 2013]
		    (http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.693.1422)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.693.1422&rep=rep1&type=pdf))
	**/
	static public function leaky_relu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Linear activation function (pass-through).
		
		For example:
		
		>>> a = tf.constant([-3.0,-1.0, 0.0,1.0,3.0], dtype = tf.float32)
		>>> b = tf.keras.activations.linear(a)
		>>> b.numpy()
		array([-3., -1.,  0.,  1.,  3.], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    The input, unmodified.
	**/
	static public function linear(x:Dynamic):Dynamic;
	/**
		Computes log softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Applies the rectified linear unit activation function.
		
		With default values, this returns the standard ReLU activation:
		`max(x, 0)`, the element-wise maximum of 0 and the input tensor.
		
		Modifying default parameters allows you to use non-zero thresholds,
		change the max value of the activation,
		and to use a non-zero multiple of the input for values below the threshold.
		
		For example:
		
		>>> foo = tf.constant([-10, -5, 0.0, 5, 10], dtype = tf.float32)
		>>> tf.keras.activations.relu(foo).numpy()
		array([ 0.,  0.,  0.,  5., 10.], dtype=float32)
		>>> tf.keras.activations.relu(foo, alpha=0.5).numpy()
		array([-5. , -2.5,  0. ,  5. , 10. ], dtype=float32)
		>>> tf.keras.activations.relu(foo, max_value=5).numpy()
		array([0., 0., 0., 5., 5.], dtype=float32)
		>>> tf.keras.activations.relu(foo, threshold=5).numpy()
		array([-0., -0.,  0.,  0., 10.], dtype=float32)
		
		Args:
		    x: Input `tensor` or `variable`.
		    alpha: A `float` that governs the slope for values lower than the
		      threshold.
		    max_value: A `float` that sets the saturation threshold (the largest value
		      the function will return).
		    threshold: A `float` giving the threshold value of the activation function
		      below which values will be damped or set to zero.
		
		Returns:
		    A `Tensor` representing the input tensor,
		    transformed by the relu activation function.
		    Tensor will be of the same shape and dtype of input `x`.
	**/
	static public function relu(x:Dynamic, ?alpha:Dynamic, ?max_value:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Computes Rectified Linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  Convolutional Deep Belief Networks on CIFAR-10:
		    Krizhevsky et al., 2010
		    ([pdf](http://www.cs.utoronto.ca/~kriz/conv-cifar10-aug2010.pdf))
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scaled Exponential Linear Unit (SELU).
		
		The Scaled Exponential Linear Unit (SELU) activation function is defined as:
		
		- `if x > 0: return scale * x`
		- `if x < 0: return scale * alpha * (exp(x) - 1)`
		
		where `alpha` and `scale` are pre-defined constants
		(`alpha=1.67326324` and `scale=1.05070098`).
		
		Basically, the SELU activation function multiplies `scale` (> 1) with the
		output of the `tf.keras.activations.elu` function to ensure a slope larger
		than one for positive inputs.
		
		The values of `alpha` and `scale` are
		chosen so that the mean and variance of the inputs are preserved
		between two consecutive layers as long as the weights are initialized
		correctly (see `tf.keras.initializers.LecunNormal` initializer)
		and the number of input units is "large enough"
		(see reference paper for more information).
		
		Example Usage:
		
		>>> num_classes = 10  # 10-class problem
		>>> model = tf.keras.Sequential()
		>>> model.add(tf.keras.layers.Dense(64, kernel_initializer='lecun_normal',
		...                                 activation='selu'))
		>>> model.add(tf.keras.layers.Dense(32, kernel_initializer='lecun_normal',
		...                                 activation='selu'))
		>>> model.add(tf.keras.layers.Dense(16, kernel_initializer='lecun_normal',
		...                                 activation='selu'))
		>>> model.add(tf.keras.layers.Dense(num_classes, activation='softmax'))
		
		Args:
		    x: A tensor or variable to compute the activation function for.
		
		Returns:
		    The scaled exponential unit activation: `scale * elu(x, alpha)`.
		
		Notes:
		    - To be used together with the
		      `tf.keras.initializers.LecunNormal` initializer.
		    - To be used together with the dropout variant
		      `tf.keras.layers.AlphaDropout` (not regular dropout).
		
		References:
		    - [Klambauer et al., 2017](https://arxiv.org/abs/1706.02515)
	**/
	static public function selu(x:Dynamic):Dynamic;
	/**
		Returns the string identifier of an activation function.
		
		Args:
		    activation : Function object.
		
		Returns:
		    String denoting the name attribute of the input function
		
		For example:
		
		>>> tf.keras.activations.serialize(tf.keras.activations.tanh)
		'tanh'
		>>> tf.keras.activations.serialize(tf.keras.activations.sigmoid)
		'sigmoid'
		>>> tf.keras.activations.serialize('abcd')
		Traceback (most recent call last):
		...
		ValueError: ('Cannot serialize', 'abcd')
		
		Raises:
		    ValueError: The input function is not a valid one.
	**/
	static public function serialize(activation:Dynamic):Dynamic;
	/**
		Serialize a Keras object into a JSON-compatible representation.
		
		Calls to `serialize_keras_object` while underneath the
		`SharedObjectSavingScope` context manager will cause any objects re-used
		across multiple layers to be saved with a special shared object ID. This
		allows the network to be re-created properly during deserialization.
		
		Args:
		  instance: The object to serialize.
		
		Returns:
		  A dict-like, JSON-compatible representation of the object's config.
	**/
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Sigmoid activation function, `sigmoid(x) = 1 / (1 + exp(-x))`.
		
		Applies the sigmoid activation function. For small values (<-5),
		`sigmoid` returns a value close to zero, and for large values (>5)
		the result of the function gets close to 1.
		
		Sigmoid is equivalent to a 2-element Softmax, where the second element is
		assumed to be zero. The sigmoid function always returns a value between
		0 and 1.
		
		For example:
		
		>>> a = tf.constant([-20, -1.0, 0.0, 1.0, 20], dtype = tf.float32)
		>>> b = tf.keras.activations.sigmoid(a)
		>>> b.numpy()
		array([2.0611537e-09, 2.6894143e-01, 5.0000000e-01, 7.3105860e-01,
		         1.0000000e+00], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    Tensor with the sigmoid activation: `1 / (1 + exp(-x))`.
	**/
	static public function sigmoid(x:Dynamic):Dynamic;
	/**
		Computes the SiLU or Swish activation function: `x * sigmoid(x)`.
		
		The SiLU activation function was introduced in "Gaussian Error Linear Units
		(GELUs)" [Hendrycks et al. 2016](https://arxiv.org/abs/1606.08415) and
		"Sigmoid-Weighted Linear Units for Neural Network Function Approximation in
		Reinforcement Learning"
		[Elfwing et al. 2017](https://arxiv.org/abs/1702.03118) and was independently
		discovered (and called swish) in "Searching for Activation Functions"
		[Ramachandran et al. 2017](https://arxiv.org/abs/1710.05941)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		
		Returns:
		  The activation value.
	**/
	static public function silu(features:Dynamic):Dynamic;
	/**
		Softmax converts a vector of values to a probability distribution.
		
		The elements of the output vector are in range (0, 1) and sum to 1.
		
		Each vector is handled independently. The `axis` argument sets which axis
		of the input the function is applied along.
		
		Softmax is often used as the activation for the last
		layer of a classification network because the result could be interpreted as
		a probability distribution.
		
		The softmax of each vector x is computed as
		`exp(x) / tf.reduce_sum(exp(x))`.
		
		The input values in are the log-odds of the resulting probability.
		
		Args:
		  x : Input tensor.
		  axis: Integer, axis along which the softmax normalization is applied.
		
		Returns:
		  Tensor, output of softmax transformation (all values are non-negative
		    and sum to 1).
		
		Examples:
		
		**Example 1: standalone usage**
		
		>>> inputs = tf.random.normal(shape=(32, 10))
		>>> outputs = tf.keras.activations.softmax(inputs)
		>>> tf.reduce_sum(outputs[0, :])  # Each sample in the batch now sums to 1
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0000001>
		
		**Example 2: usage in a `Dense` layer**
		
		>>> layer = tf.keras.layers.Dense(32, activation=tf.keras.activations.softmax)
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Softplus activation function, `softplus(x) = log(exp(x) + 1)`.
		
		Example Usage:
		
		>>> a = tf.constant([-20, -1.0, 0.0, 1.0, 20], dtype = tf.float32)
		>>> b = tf.keras.activations.softplus(a)
		>>> b.numpy()
		array([2.0611537e-09, 3.1326166e-01, 6.9314718e-01, 1.3132616e+00,
		         2.0000000e+01], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    The softplus activation: `log(exp(x) + 1)`.
	**/
	static public function softplus(x:Dynamic):Dynamic;
	/**
		Softsign activation function, `softsign(x) = x / (abs(x) + 1)`.
		
		Example Usage:
		
		>>> a = tf.constant([-1.0, 0.0, 1.0], dtype = tf.float32)
		>>> b = tf.keras.activations.softsign(a)
		>>> b.numpy()
		array([-0.5,  0. ,  0.5], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    The softsign activation: `x / (abs(x) + 1)`.
	**/
	static public function softsign(x:Dynamic):Dynamic;
	/**
		Swish activation function, `swish(x) = x * sigmoid(x)`.
		
		Swish activation function which returns `x*sigmoid(x)`.
		It is a smooth, non-monotonic function that consistently matches
		or outperforms ReLU on deep networks, it is unbounded above and
		bounded below.
		
		
		Example Usage:
		
		>>> a = tf.constant([-20, -1.0, 0.0, 1.0, 20], dtype = tf.float32)
		>>> b = tf.keras.activations.swish(a)
		>>> b.numpy()
		array([-4.1223075e-08, -2.6894143e-01,  0.0000000e+00,  7.3105860e-01,
		          2.0000000e+01], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    The swish activation applied to `x` (see reference paper for details).
		
		Reference:
		  - [Ramachandran et al., 2017](https://arxiv.org/abs/1710.05941)
	**/
	static public function swish(x:Dynamic):Dynamic;
	/**
		Hyperbolic tangent activation function.
		
		For example:
		
		>>> a = tf.constant([-3.0,-1.0, 0.0,1.0,3.0], dtype = tf.float32)
		>>> b = tf.keras.activations.tanh(a)
		>>> b.numpy()
		array([-0.9950547, -0.7615942,  0.,  0.7615942,  0.9950547], dtype=float32)
		
		Args:
		    x: Input tensor.
		
		Returns:
		    Tensor of same shape and dtype of input `x`, with tanh activation:
		    `tanh(x) = sinh(x)/cosh(x) = ((exp(x) - exp(-x))/(exp(x) + exp(-x)))`.
	**/
	static public function tanh(x:Dynamic):Dynamic;
}