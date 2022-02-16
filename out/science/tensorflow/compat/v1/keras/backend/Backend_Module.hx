/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.backend;
@:pythonImport("tensorflow.compat.v1.keras.backend") extern class Backend_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Element-wise absolute value.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function abs(x:Dynamic):Dynamic;
	/**
		Bitwise reduction (logical AND).
		
		Args:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		    keepdims: whether the drop or broadcast the reduction axes.
		
		Returns:
		    A uint8 tensor (0s and 1s).
	**/
	static public function all(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Bitwise reduction (logical OR).
		
		Args:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		    keepdims: whether the drop or broadcast the reduction axes.
		
		Returns:
		    A uint8 tensor (0s and 1s).
	**/
	static public function any(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Creates a 1D tensor containing a sequence of integers.
		
		The function arguments use the same convention as
		Theano's arange: if only one argument is provided,
		it is in fact the "stop" argument and "start" is 0.
		
		The default type of the returned tensor is `'int32'` to
		match TensorFlow's default.
		
		Args:
		    start: Start value.
		    stop: Stop value.
		    step: Difference between two successive values.
		    dtype: Integer dtype to use.
		
		Returns:
		    An integer tensor.
		
		Example:
		
		    >>> tf.keras.backend.arange(start=0, stop=10, step=1.5)
		    <tf.Tensor: shape=(7,), dtype=float32,
		        numpy=array([0. , 1.5, 3. , 4.5, 6. , 7.5, 9. ], dtype=float32)>
	**/
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns the index of the maximum value along an axis.
		
		Args:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		
		Returns:
		    A tensor.
	**/
	static public function argmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the index of the minimum value along an axis.
		
		Args:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		
		Returns:
		    A tensor.
	**/
	static public function argmin(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Publicly accessible method for determining the current backend.
		
		Only exists for API compatibility with multi-backend Keras.
		
		Returns:
		    The string "tensorflow".
	**/
	static public function backend():Dynamic;
	/**
		Batchwise dot product.
		
		`batch_dot` is used to compute dot product of `x` and `y` when
		`x` and `y` are data in batch, i.e. in a shape of
		`(batch_size, :)`.
		`batch_dot` results in a tensor or variable with less dimensions
		than the input. If the number of dimensions is reduced to 1,
		we use `expand_dims` to make sure that ndim is at least 2.
		
		Args:
		  x: Keras tensor or variable with `ndim >= 2`.
		  y: Keras tensor or variable with `ndim >= 2`.
		  axes: Tuple or list of integers with target dimensions, or single integer.
		    The sizes of `x.shape[axes[0]]` and `y.shape[axes[1]]` should be equal.
		
		Returns:
		  A tensor with shape equal to the concatenation of `x`'s shape
		  (less the dimension that was summed over) and `y`'s shape
		  (less the batch dimension and the dimension that was summed over).
		  If the final rank is 1, we reshape it to `(batch_size, 1)`.
		
		Examples:
		
		>>> x_batch = tf.keras.backend.ones(shape=(32, 20, 1))
		>>> y_batch = tf.keras.backend.ones(shape=(32, 30, 20))
		>>> xy_batch_dot = tf.keras.backend.batch_dot(x_batch, y_batch, axes=(1, 2))
		>>> tf.keras.backend.int_shape(xy_batch_dot)
		(32, 1, 30)
		
		Shape inference:
		  Let `x`'s shape be `(100, 20)` and `y`'s shape be `(100, 30, 20)`.
		  If `axes` is (1, 2), to find the output shape of resultant tensor,
		      loop through each dimension in `x`'s shape and `y`'s shape:
		  * `x.shape[0]` : 100 : append to output shape
		  * `x.shape[1]` : 20 : do not append to output shape,
		      dimension 1 of `x` has been summed over. (`dot_axes[0]` = 1)
		  * `y.shape[0]` : 100 : do not append to output shape,
		      always ignore first dimension of `y`
		  * `y.shape[1]` : 30 : append to output shape
		  * `y.shape[2]` : 20 : do not append to output shape,
		      dimension 2 of `y` has been summed over. (`dot_axes[1]` = 2)
		  `output_shape` = `(100, 30)`
	**/
	static public function batch_dot(x:Dynamic, y:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Turn a nD tensor into a 2D tensor with same 0th dimension.
		
		In other words, it flattens each data samples of a batch.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
		
		Examples:
		  Flattening a 3D tensor to 2D by collapsing the last dimension.
		
		>>> x_batch = tf.keras.backend.ones(shape=(2, 3, 4, 5))
		>>> x_batch_flatten = batch_flatten(x_batch)
		>>> tf.keras.backend.int_shape(x_batch_flatten)
		(2, 60)
	**/
	static public function batch_flatten(x:Dynamic):Dynamic;
	/**
		Returns the value of more than one tensor variable.
		
		Args:
		    tensors: list of ops to run.
		
		Returns:
		    A list of Numpy arrays.
		
		Raises:
		    RuntimeError: If this method is called inside defun.
	**/
	static public function batch_get_value(tensors:Dynamic):Dynamic;
	/**
		Applies batch normalization on x given mean, var, beta and gamma.
		
		I.e. returns:
		`output = (x - mean) / (sqrt(var) + epsilon) * gamma + beta`
		
		Args:
		    x: Input tensor or variable.
		    mean: Mean of batch.
		    var: Variance of batch.
		    beta: Tensor with which to center the input.
		    gamma: Tensor by which to scale the input.
		    axis: Integer, the axis that should be normalized.
		        (typically the features axis).
		    epsilon: Fuzz factor.
		
		Returns:
		    A tensor.
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, _var:Dynamic, beta:Dynamic, gamma:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Sets the values of many tensor variables at once.
		
		Args:
		    tuples: a list of tuples `(tensor, value)`.
		        `value` should be a Numpy array.
	**/
	static public function batch_set_value(tuples:Dynamic):Dynamic;
	/**
		Adds a bias vector to a tensor.
		
		Args:
		    x: Tensor or variable.
		    bias: Bias tensor to add.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: In one of the two cases below:
		                1. invalid `data_format` argument.
		                2. invalid bias shape.
		                   the bias should be either a vector or
		                   a tensor with ndim(x) - 1 dimension
	**/
	static public function bias_add(x:Dynamic, bias:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Binary crossentropy between an output tensor and a target tensor.
		
		Args:
		    target: A tensor with the same shape as `output`.
		    output: A tensor.
		    from_logits: Whether `output` is expected to be a logits tensor.
		        By default, we consider that `output`
		        encodes a probability distribution.
		
		Returns:
		    A tensor.
	**/
	static public function binary_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic):Dynamic;
	/**
		Casts a tensor to a different dtype and returns it.
		
		You can cast a Keras variable but it still returns a Keras tensor.
		
		Args:
		    x: Keras tensor (or variable).
		    dtype: String, either (`'float16'`, `'float32'`, or `'float64'`).
		
		Returns:
		    Keras tensor with dtype `dtype`.
		
		Examples:
		    Cast a float32 variable to a float64 tensor
		
		>>> input = tf.keras.backend.ones(shape=(1,3))
		>>> print(input)
		<tf.Variable 'Variable:0' shape=(1, 3) dtype=float32,
		numpy=array([[1., 1., 1.]], dtype=float32)>
		>>> cast_input = tf.keras.backend.cast(input, dtype='float64')
		>>> print(cast_input)
		tf.Tensor([[1. 1. 1.]], shape=(1, 3), dtype=float64)
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Cast a Numpy array to the default Keras float type.
		
		Args:
		    x: Numpy array or TensorFlow tensor.
		
		Returns:
		    The same array (Numpy array if `x` was a Numpy array, or TensorFlow tensor
		    if `x` was a tensor), cast to its new type.
		
		Example:
		
		>>> tf.keras.backend.floatx()
		'float32'
		>>> arr = np.array([1.0, 2.0], dtype='float64')
		>>> arr.dtype
		dtype('float64')
		>>> new_arr = cast_to_floatx(arr)
		>>> new_arr
		array([1.,  2.], dtype=float32)
		>>> new_arr.dtype
		dtype('float32')
	**/
	static public function cast_to_floatx(x:Dynamic):Dynamic;
	/**
		Categorical crossentropy between an output tensor and a target tensor.
		
		Args:
		    target: A tensor of the same shape as `output`.
		    output: A tensor resulting from a softmax
		        (unless `from_logits` is True, in which
		        case `output` is expected to be the logits).
		    from_logits: Boolean, whether `output` is the
		        result of a softmax, or is a tensor of logits.
		    axis: Int specifying the channels axis. `axis=-1` corresponds to data
		        format `channels_last`, and `axis=1` corresponds to data format
		        `channels_first`.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `axis` is neither -1 nor one of the axes of `output`.
		
		Example:
		
		>>> a = tf.constant([1., 0., 0., 0., 1., 0., 0., 0., 1.], shape=[3,3])
		>>> print(a)
		tf.Tensor(
		  [[1. 0. 0.]
		   [0. 1. 0.]
		   [0. 0. 1.]], shape=(3, 3), dtype=float32)
		>>> b = tf.constant([.9, .05, .05, .05, .89, .06, .05, .01, .94], shape=[3,3])
		>>> print(b)
		tf.Tensor(
		  [[0.9  0.05 0.05]
		   [0.05 0.89 0.06]
		   [0.05 0.01 0.94]], shape=(3, 3), dtype=float32)
		>>> loss = tf.keras.backend.categorical_crossentropy(a, b)
		>>> print(np.around(loss, 5))
		[0.10536 0.11653 0.06188]
		>>> loss = tf.keras.backend.categorical_crossentropy(a, a)
		>>> print(np.around(loss, 5))
		[0. 0. 0.]
	**/
	static public function categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Resets all state generated by Keras.
		
		Keras manages a global state, which it uses to implement the Functional
		model-building API and to uniquify autogenerated layer names.
		
		If you are creating many models in a loop, this global state will consume
		an increasing amount of memory over time, and you may want to clear it.
		Calling `clear_session()` releases the global state: this helps avoid clutter
		from old models and layers, especially when memory is limited.
		
		Example 1: calling `clear_session()` when creating models in a loop
		
		```python
		for _ in range(100):
		  # Without `clear_session()`, each iteration of this loop will
		  # slightly increase the size of the global state managed by Keras
		  model = tf.keras.Sequential([tf.keras.layers.Dense(10) for _ in range(10)])
		
		for _ in range(100):
		  # With `clear_session()` called at the beginning,
		  # Keras starts with a blank state at each iteration
		  # and memory consumption is constant over time.
		  tf.keras.backend.clear_session()
		  model = tf.keras.Sequential([tf.keras.layers.Dense(10) for _ in range(10)])
		```
		
		Example 2: resetting the layer name generation counter
		
		>>> import tensorflow as tf
		>>> layers = [tf.keras.layers.Dense(10) for _ in range(10)]
		>>> new_layer = tf.keras.layers.Dense(10)
		>>> print(new_layer.name)
		dense_10
		>>> tf.keras.backend.set_learning_phase(1)
		>>> print(tf.keras.backend.learning_phase())
		1
		>>> tf.keras.backend.clear_session()
		>>> new_layer = tf.keras.layers.Dense(10)
		>>> print(new_layer.name)
		dense
	**/
	static public function clear_session():Dynamic;
	/**
		Element-wise value clipping.
		
		Args:
		    x: Tensor or variable.
		    min_value: Python float, integer, or tensor.
		    max_value: Python float, integer, or tensor.
		
		Returns:
		    A tensor.
	**/
	static public function clip(x:Dynamic, min_value:Dynamic, max_value:Dynamic):Dynamic;
	/**
		Concatenates a list of tensors alongside the specified axis.
		
		Args:
		    tensors: list of tensors to concatenate.
		    axis: concatenation axis.
		
		Returns:
		    A tensor.
		
		Example:
		
		    >>> a = tf.constant([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> b = tf.constant([[10, 20, 30], [40, 50, 60], [70, 80, 90]])
		    >>> tf.keras.backend.concatenate((a, b), axis=-1)
		    <tf.Tensor: shape=(3, 6), dtype=int32, numpy=
		    array([[ 1,  2,  3, 10, 20, 30],
		           [ 4,  5,  6, 40, 50, 60],
		           [ 7,  8,  9, 70, 80, 90]], dtype=int32)>
	**/
	static public function concatenate(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		Args:
		    value: A constant value (or list)
		    dtype: The type of the elements of the resulting tensor.
		    shape: Optional dimensions of resulting tensor.
		    name: Optional name for the tensor.
		
		Returns:
		    A Constant Tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		1D convolution.
		
		Args:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    strides: stride integer.
		    padding: string, `"same"`, `"causal"` or `"valid"`.
		    data_format: string, one of "channels_last", "channels_first".
		    dilation_rate: integer dilate rate.
		
		Returns:
		    A tensor, result of 1D convolution.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function conv1d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		2D convolution.
		
		Args:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of 2 integers.
		
		Returns:
		    A tensor, result of 2D convolution.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function conv2d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		2D deconvolution (i.e.
		
		transposed convolution).
		
		Args:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    output_shape: 1D int tensor for the output shape.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: Tuple of 2 integers.
		
		Returns:
		    A tensor, result of transposed 2D convolution.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function conv2d_transpose(x:Dynamic, kernel:Dynamic, output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		3D convolution.
		
		Args:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of 3 integers.
		
		Returns:
		    A tensor, result of 3D convolution.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function conv3d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function cos(x:Dynamic):Dynamic;
	/**
		Returns the static number of elements in a variable or tensor.
		
		Args:
		    x: Variable or tensor.
		
		Returns:
		    Integer, the number of scalars in `x`.
		
		Example:
		
		>>> kvar = tf.keras.backend.zeros((2,3))
		>>> tf.keras.backend.count_params(kvar)
		6
		>>> tf.keras.backend.eval(kvar)
		array([[0.,  0.,  0.],
		       [0.,  0.,  0.]], dtype=float32)
	**/
	static public function count_params(x:Dynamic):Dynamic;
	/**
		Runs CTC loss algorithm on each batch element.
		
		Args:
		    y_true: tensor `(samples, max_string_length)`
		        containing the truth labels.
		    y_pred: tensor `(samples, time_steps, num_categories)`
		        containing the prediction, or output of the softmax.
		    input_length: tensor `(samples, 1)` containing the sequence length for
		        each batch item in `y_pred`.
		    label_length: tensor `(samples, 1)` containing the sequence length for
		        each batch item in `y_true`.
		
		Returns:
		    Tensor with shape (samples,1) containing the
		        CTC loss of each element.
	**/
	static public function ctc_batch_cost(y_true:Dynamic, y_pred:Dynamic, input_length:Dynamic, label_length:Dynamic):Dynamic;
	/**
		Decodes the output of a softmax.
		
		Can use either greedy search (also known as best path)
		or a constrained dictionary search.
		
		Args:
		    y_pred: tensor `(samples, time_steps, num_categories)`
		        containing the prediction, or output of the softmax.
		    input_length: tensor `(samples, )` containing the sequence length for
		        each batch item in `y_pred`.
		    greedy: perform much faster best-path search if `true`.
		        This does not use a dictionary.
		    beam_width: if `greedy` is `false`: a beam search decoder will be used
		        with a beam of this width.
		    top_paths: if `greedy` is `false`,
		        how many of the most probable paths will be returned.
		
		Returns:
		    Tuple:
		        List: if `greedy` is `true`, returns a list of one element that
		            contains the decoded sequence.
		            If `false`, returns the `top_paths` most probable
		            decoded sequences.
		            Each decoded sequence has shape (samples, time_steps).
		            Important: blank labels are returned as `-1`.
		        Tensor `(top_paths, )` that contains
		            the log probability of each decoded sequence.
	**/
	static public function ctc_decode(y_pred:Dynamic, input_length:Dynamic, ?greedy:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic):Dynamic;
	/**
		Converts CTC labels from dense to sparse.
		
		Args:
		    labels: dense CTC labels.
		    label_lengths: length of the labels.
		
		Returns:
		    A sparse tensor representation of the labels.
	**/
	static public function ctc_label_dense_to_sparse(labels:Dynamic, label_lengths:Dynamic):Dynamic;
	/**
		Cumulative product of the values in a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the product.
		
		Returns:
		    A tensor of the cumulative product of values of `x` along `axis`.
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Cumulative sum of the values in a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the sum.
		
		Returns:
		    A tensor of the cumulative sum of values of `x` along `axis`.
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		2D convolution with separable filters.
		
		Args:
		    x: input tensor
		    depthwise_kernel: convolution kernel for the depthwise convolution.
		    strides: strides tuple (length 2).
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of integers,
		        dilation rates for the separable convolution.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function depthwise_conv2d(x:Dynamic, depthwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		Multiplies 2 tensors (and/or variables) and returns a tensor.
		
		This operation corresponds to `numpy.dot(a, b, out=None)`.
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor, dot product of `x` and `y`.
		
		Examples:
		
		If inputs `x` and `y` are 2-D arrays, then it is equivalent to `tf.matmul`.
		>>> x = tf.keras.backend.placeholder(shape=(2, 3))
		>>> y = tf.keras.backend.placeholder(shape=(3, 4))
		>>> xy = tf.keras.backend.dot(x, y)
		>>> xy
		<KerasTensor: shape=(2, 4) dtype=float32 ...>
		
		>>> x = tf.keras.backend.placeholder(shape=(32, 28, 3))
		>>> y = tf.keras.backend.placeholder(shape=(3, 4))
		>>> xy = tf.keras.backend.dot(x, y)
		>>> xy
		<KerasTensor: shape=(32, 28, 4) dtype=float32 ...>
		
		If `x` is an N-D array and `y` is an M-D array (where M>=2), it is a sum
		product over the last axis of `x` and the second-to-last axis of `y`.
		>>> x = tf.keras.backend.random_uniform_variable(
		... shape=(2, 3), low=0., high=1.)
		>>> y = tf.keras.backend.ones((4, 3, 5))
		>>> xy = tf.keras.backend.dot(x, y)
		>>> tf.keras.backend.int_shape(xy)
		(2, 4, 5)
	**/
	static public function dot(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Sets entries in `x` to zero at random, while scaling the entire tensor.
		
		Args:
		    x: tensor
		    level: fraction of the entries in the tensor
		        that will be set to 0.
		    noise_shape: shape for randomly generated keep/drop flags,
		        must be broadcastable to the shape of `x`
		    seed: random seed to ensure determinism.
		
		Returns:
		    A tensor.
	**/
	static public function dropout(x:Dynamic, level:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns the dtype of a Keras tensor or variable, as a string.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    String, dtype of `x`.
		
		Examples:
		
		>>> tf.keras.backend.dtype(tf.keras.backend.placeholder(shape=(2,4,5)))
		'float32'
		>>> tf.keras.backend.dtype(tf.keras.backend.placeholder(shape=(2,4,5),
		...                                                     dtype='float32'))
		'float32'
		>>> tf.keras.backend.dtype(tf.keras.backend.placeholder(shape=(2,4,5),
		...                                                     dtype='float64'))
		'float64'
		>>> kvar = tf.keras.backend.variable(np.array([[1, 2], [3, 4]]))
		>>> tf.keras.backend.dtype(kvar)
		'float32'
		>>> kvar = tf.keras.backend.variable(np.array([[1, 2], [3, 4]]),
		...                                  dtype='float32')
		>>> tf.keras.backend.dtype(kvar)
		'float32'
	**/
	static public function dtype(x:Dynamic):Dynamic;
	/**
		Exponential linear unit.
		
		Args:
		    x: A tensor or variable to compute the activation function for.
		    alpha: A scalar, slope of negative section.
		
		Returns:
		    A tensor.
	**/
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Returns the value of the fuzz factor used in numeric expressions.
		
		Returns:
		    A float.
		
		Example:
		>>> tf.keras.backend.epsilon()
		1e-07
	**/
	static public function epsilon():Dynamic;
	/**
		Element-wise equality between two tensors.
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Evaluates the value of a variable.
		
		Args:
		    x: A variable.
		
		Returns:
		    A Numpy array.
		
		Examples:
		
		>>> kvar = tf.keras.backend.variable(np.array([[1, 2], [3, 4]]),
		...                                  dtype='float32')
		>>> tf.keras.backend.eval(kvar)
		array([[1.,  2.],
		       [3.,  4.]], dtype=float32)
	**/
	static public function eval(x:Dynamic):Dynamic;
	/**
		Element-wise exponential.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function exp(x:Dynamic):Dynamic;
	/**
		Adds a 1-sized dimension at index "axis".
		
		Args:
		    x: A tensor or variable.
		    axis: Position where to add a new axis.
		
		Returns:
		    A tensor with expanded dimensions.
	**/
	static public function expand_dims(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Instantiate an identity matrix and returns it.
		
		Args:
		    size: Integer, number of rows/columns.
		    dtype: String, data type of returned Keras variable.
		    name: String, name of returned Keras variable.
		
		Returns:
		    A Keras variable, an identity matrix.
		
		Example:
		
		
		>>> kvar = tf.keras.backend.eye(3)
		>>> tf.keras.backend.eval(kvar)
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]], dtype=float32)
	**/
	static public function eye(size:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flatten a tensor.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor, reshaped into 1-D
		
		Example:
		
		    >>> b = tf.constant([[1, 2], [3, 4]])
		    >>> b
		    <tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		    array([[1, 2],
		           [3, 4]], dtype=int32)>
		    >>> tf.keras.backend.flatten(b)
		    <tf.Tensor: shape=(4,), dtype=int32,
		        numpy=array([1, 2, 3, 4], dtype=int32)>
	**/
	static public function flatten(x:Dynamic):Dynamic;
	/**
		Returns the default float type, as a string.
		
		E.g. `'float16'`, `'float32'`, `'float64'`.
		
		Returns:
		    String, the current default float type.
		
		Example:
		>>> tf.keras.backend.floatx()
		'float32'
	**/
	static public function floatx():Dynamic;
	/**
		Reduce elems using fn to combine them from left to right.
		
		Args:
		    fn: Callable that will be called upon each element in elems and an
		        accumulator, for instance `lambda acc, x: acc + x`
		    elems: tensor
		    initializer: The first value used (`elems[0]` in case of None)
		    name: A string name for the foldl node in the graph
		
		Returns:
		    Tensor with same type and shape as `initializer`.
	**/
	static public function foldl(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduce elems using fn to combine them from right to left.
		
		Args:
		    fn: Callable that will be called upon each element in elems and an
		        accumulator, for instance `lambda acc, x: acc + x`
		    elems: tensor
		    initializer: The first value used (`elems[-1]` in case of None)
		    name: A string name for the foldr node in the graph
		
		Returns:
		    Same type and shape as initializer
	**/
	static public function foldr(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates a Keras function.
		
		Args:
		    inputs: List of placeholder tensors.
		    outputs: List of output tensors.
		    updates: List of update ops.
		    name: String, name of function.
		    **kwargs: Passed to `tf.Session.run`.
		
		Returns:
		    Output values as Numpy arrays.
		
		Raises:
		    ValueError: if invalid kwargs are passed in or if in eager execution.
	**/
	@:native("function")
	static public function _function(inputs:Dynamic, outputs:Dynamic, ?updates:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieves the elements of indices `indices` in the tensor `reference`.
		
		Args:
		    reference: A tensor.
		    indices: An integer tensor of indices.
		
		Returns:
		    A tensor of same type as `reference`.
		
		Examples:
		
		>>> var = tf.keras.backend.variable([[1, 2, 3], [4, 5, 6]])
		>>> tf.keras.backend.eval(var)
		array([[1., 2., 3.],
		       [4., 5., 6.]], dtype=float32)
		>>> var_gathered = tf.keras.backend.gather(var, [0])
		>>> tf.keras.backend.eval(var_gathered)
		array([[1., 2., 3.]], dtype=float32)
		>>> var_gathered = tf.keras.backend.gather(var, [1])
		>>> tf.keras.backend.eval(var_gathered)
		array([[4., 5., 6.]], dtype=float32)
		>>> var_gathered = tf.keras.backend.gather(var, [0,1,0])
		>>> tf.keras.backend.eval(var_gathered)
		array([[1., 2., 3.],
		       [4., 5., 6.],
		       [1., 2., 3.]], dtype=float32)
	**/
	static public function gather(reference:Dynamic, indices:Dynamic):Dynamic;
	/**
		Returns the TF session to be used by the backend.
		
		If a default TensorFlow session is available, we will return it.
		
		Else, we will return the global Keras session assuming it matches
		the current graph.
		
		If no global Keras session exists at this point:
		we will create a new global session.
		
		Note that you can manually set the global session
		via `K.set_session(sess)`.
		
		Args:
		    op_input_list: An option sequence of tensors or ops, which will be used
		      to determine the current graph. Otherwise the default graph will be
		      used.
		
		Returns:
		    A TensorFlow session.
	**/
	static public function get_session(?op_input_list:Dynamic):Dynamic;
	/**
		Associates a string prefix with an integer counter in a TensorFlow graph.
		
		Args:
		  prefix: String prefix to index.
		
		Returns:
		  Unique integer ID.
		
		Example:
		
		>>> get_uid('dense')
		1
		>>> get_uid('dense')
		2
	**/
	static public function get_uid(?prefix:Dynamic):Dynamic;
	/**
		Returns the value of a variable.
		
		`backend.get_value` is the complement of `backend.set_value`, and provides
		a generic interface for reading from variables while abstracting away the
		differences between TensorFlow 1.x and 2.x semantics.
		
		>>> K = tf.keras.backend  # Common keras convention
		>>> v = K.variable(1.)
		
		>>> # reassign
		>>> K.set_value(v, 2.)
		>>> print(K.get_value(v))
		2.0
		
		>>> # increment
		>>> K.set_value(v, K.get_value(v) + 1)
		>>> print(K.get_value(v))
		3.0
		
		Variable semantics in TensorFlow 2 are eager execution friendly. The above
		code is roughly equivalent to:
		
		>>> v = tf.Variable(1.)
		
		>>> v.assign(2.)
		>>> print(v.numpy())
		2.0
		
		>>> v.assign_add(1.)
		>>> print(v.numpy())
		3.0
		
		Args:
		    x: input variable.
		
		Returns:
		    A Numpy array.
	**/
	static public function get_value(x:Dynamic):Dynamic;
	/**
		Returns the gradients of `loss` w.r.t. `variables`.
		
		Args:
		    loss: Scalar tensor to minimize.
		    variables: List of variables.
		
		Returns:
		    A gradients tensor.
	**/
	static public function gradients(loss:Dynamic, variables:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x > y).
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function greater(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x >= y).
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Segment-wise linear approximation of sigmoid.
		
		Faster than sigmoid.
		Returns `0.` if `x < -2.5`, `1.` if `x > 2.5`.
		In `-2.5 <= x <= 2.5`, returns `0.2 * x + 0.5`.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	/**
		Returns the default image data format convention.
		
		Returns:
		    A string, either `'channels_first'` or `'channels_last'`
		
		Example:
		>>> tf.keras.backend.image_data_format()
		'channels_last'
	**/
	static public function image_data_format():Dynamic;
	/**
		Selects `x` in test phase, and `alt` otherwise.
		
		Note that `alt` should have the *same shape* as `x`.
		
		Args:
		    x: What to return in test phase
		        (tensor or callable that returns a tensor).
		    alt: What to return otherwise
		        (tensor or callable that returns a tensor).
		    training: Optional scalar tensor
		        (or Python boolean, or Python integer)
		        specifying the learning phase.
		
		Returns:
		    Either `x` or `alt` based on `K.learning_phase`.
	**/
	static public function in_test_phase(x:Dynamic, alt:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Returns whether the `targets` are in the top `k` `predictions`.
		
		Args:
		    predictions: A tensor of shape `(batch_size, classes)` and type `float32`.
		    targets: A 1D tensor of length `batch_size` and type `int32` or `int64`.
		    k: An `int`, number of top elements to consider.
		
		Returns:
		    A 1D tensor of length `batch_size` and type `bool`.
		    `output[i]` is `True` if `predictions[i, targets[i]]` is within top-`k`
		    values of `predictions[i]`.
	**/
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic):Dynamic;
	/**
		Selects `x` in train phase, and `alt` otherwise.
		
		Note that `alt` should have the *same shape* as `x`.
		
		Args:
		    x: What to return in train phase
		        (tensor or callable that returns a tensor).
		    alt: What to return otherwise
		        (tensor or callable that returns a tensor).
		    training: Optional scalar tensor
		        (or Python boolean, or Python integer)
		        specifying the learning phase.
		
		Returns:
		    Either `x` or `alt` based on the `training` flag.
		    the `training` flag defaults to `K.learning_phase()`.
	**/
	static public function in_train_phase(x:Dynamic, alt:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Returns the shape of tensor or variable as a tuple of int or None entries.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tuple of integers (or None entries).
		
		Examples:
		
		>>> input = tf.keras.backend.placeholder(shape=(2, 4, 5))
		>>> tf.keras.backend.int_shape(input)
		(2, 4, 5)
		>>> val = np.array([[1, 2], [3, 4]])
		>>> kvar = tf.keras.backend.variable(value=val)
		>>> tf.keras.backend.int_shape(kvar)
		(2, 2)
	**/
	static public function int_shape(x:Dynamic):Dynamic;
	/**
		Returns whether `x` is a Keras tensor.
		
		A "Keras tensor" is a tensor that was returned by a Keras layer,
		(`Layer` class) or by `Input`.
		
		Args:
		    x: A candidate tensor.
		
		Returns:
		    A boolean: Whether the argument is a Keras tensor.
		
		Raises:
		    ValueError: In case `x` is not a symbolic tensor.
		
		Examples:
		
		>>> np_var = np.array([1, 2])
		>>> # A numpy array is not a symbolic tensor.
		>>> tf.keras.backend.is_keras_tensor(np_var)
		Traceback (most recent call last):
		...
		ValueError: Unexpectedly found an instance of type `<class 'numpy.ndarray'>`.
		Expected a symbolic tensor instance.
		>>> keras_var = tf.keras.backend.variable(np_var)
		>>> # A variable created with the keras backend is not a Keras tensor.
		>>> tf.keras.backend.is_keras_tensor(keras_var)
		False
		>>> keras_placeholder = tf.keras.backend.placeholder(shape=(2, 4, 5))
		>>> # A placeholder is a Keras tensor.
		>>> tf.keras.backend.is_keras_tensor(keras_placeholder)
		True
		>>> keras_input = tf.keras.layers.Input([10])
		>>> # An Input is a Keras tensor.
		>>> tf.keras.backend.is_keras_tensor(keras_input)
		True
		>>> keras_layer_output = tf.keras.layers.Dense(10)(keras_input)
		>>> # Any Keras layer output is a Keras tensor.
		>>> tf.keras.backend.is_keras_tensor(keras_layer_output)
		True
	**/
	static public function is_keras_tensor(x:Dynamic):Dynamic;
	/**
		Returns whether a tensor is a sparse tensor.
		
		Args:
		    tensor: A tensor instance.
		
		Returns:
		    A boolean.
		
		Example:
		
		
		>>> a = tf.keras.backend.placeholder((2, 2), sparse=False)
		>>> print(tf.keras.backend.is_sparse(a))
		False
		>>> b = tf.keras.backend.placeholder((2, 2), sparse=True)
		>>> print(tf.keras.backend.is_sparse(b))
		True
	**/
	static public function is_sparse(tensor:Dynamic):Dynamic;
	/**
		Normalizes a tensor wrt the L2 norm alongside the specified axis.
		
		Args:
		    x: Tensor or variable.
		    axis: axis along which to perform normalization.
		
		Returns:
		    A tensor.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the learning phase flag.
		
		The learning phase flag is a bool tensor (0 = test, 1 = train)
		to be passed as input to any Keras function
		that uses a different behavior at train time and test time.
		
		Returns:
		    Learning phase (scalar integer tensor or Python integer).
	**/
	static public function learning_phase():Dynamic;
	/**
		Provides a scope within which the learning phase is equal to `value`.
		
		The learning phase gets restored to its original value upon exiting the scope.
		
		Args:
		   value: Learning phase value, either 0 or 1 (integers).
		          0 = test, 1 = train
		
		Yields:
		  None.
		
		Raises:
		   ValueError: if `value` is neither `0` nor `1`.
	**/
	static public function learning_phase_scope(value:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x < y).
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function less(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x <= y).
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Apply 1D conv with un-shared weights.
		
		Args:
		    inputs: 3D tensor with shape:
		        (batch_size, steps, input_dim)
		        if data_format is "channels_last" or
		        (batch_size, input_dim, steps)
		        if data_format is "channels_first".
		    kernel: the unshared weight for convolution,
		        with shape (output_length, feature_dim, filters).
		    kernel_size: a tuple of a single integer,
		        specifying the length of the 1D convolution window.
		    strides: a tuple of a single integer,
		        specifying the stride length of the convolution.
		    data_format: the data format, channels_first or channels_last.
		
		Returns:
		    A 3d tensor with shape:
		    (batch_size, output_length, filters)
		    if data_format='channels_first'
		    or 3D tensor with shape:
		    (batch_size, filters, output_length)
		    if data_format='channels_last'.
	**/
	static public function local_conv1d(inputs:Dynamic, kernel:Dynamic, kernel_size:Dynamic, strides:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Apply 2D conv with un-shared weights.
		
		Args:
		    inputs: 4D tensor with shape:
		        (batch_size, filters, new_rows, new_cols)
		        if data_format='channels_first'
		        or 4D tensor with shape:
		        (batch_size, new_rows, new_cols, filters)
		        if data_format='channels_last'.
		    kernel: the unshared weight for convolution,
		        with shape (output_items, feature_dim, filters).
		    kernel_size: a tuple of 2 integers, specifying the
		        width and height of the 2D convolution window.
		    strides: a tuple of 2 integers, specifying the strides
		        of the convolution along the width and height.
		    output_shape: a tuple with (output_row, output_col).
		    data_format: the data format, channels_first or channels_last.
		
		Returns:
		    A 4D tensor with shape:
		    (batch_size, filters, new_rows, new_cols)
		    if data_format='channels_first'
		    or 4D tensor with shape:
		    (batch_size, new_rows, new_cols, filters)
		    if data_format='channels_last'.
	**/
	static public function local_conv2d(inputs:Dynamic, kernel:Dynamic, kernel_size:Dynamic, strides:Dynamic, output_shape:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Element-wise log.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function log(x:Dynamic):Dynamic;
	/**
		Sets the manual variable initialization flag.
		
		This boolean flag determines whether
		variables should be initialized
		as they are instantiated (default), or if
		the user should handle the initialization
		(e.g. via `tf.compat.v1.initialize_all_variables()`).
		
		Args:
		    value: Python boolean.
	**/
	static public function manual_variable_initialization(value:Dynamic):Dynamic;
	/**
		Map the function fn over the elements elems and return the outputs.
		
		Args:
		    fn: Callable that will be called upon each element in elems
		    elems: tensor
		    name: A string name for the map node in the graph
		    dtype: Output data type.
		
		Returns:
		    Tensor with dtype `dtype`.
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Maximum value in a tensor.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to find maximum values.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with maximum values of `x`.
	**/
	static public function max(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Element-wise maximum of two tensors.
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor with the element wise maximum value(s) of `x` and `y`.
		
		Examples:
		
		>>> x = tf.Variable([[1, 2], [3, 4]])
		>>> y = tf.Variable([[2, 1], [0, -1]])
		>>> m = tf.keras.backend.maximum(x, y)
		>>> m
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[2, 2],
		       [3, 4]], dtype=int32)>
	**/
	static public function maximum(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Mean of a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: A list of integer. Axes to compute the mean.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1 for each entry in `axis`. If `keepdims` is `True`,
		        the reduced dimensions are retained with length 1.
		
		Returns:
		    A tensor with the mean of elements of `x`.
	**/
	static public function mean(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Minimum value in a tensor.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to find minimum values.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with minimum values of `x`.
	**/
	static public function min(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Element-wise minimum of two tensors.
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function minimum(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Compute the exponential moving average of a value.
		
		The moving average 'x' is updated with 'value' following:
		
		```
		x = x * momentum + value * (1 - momentum)
		```
		
		For example:
		
		>>> x = tf.Variable(0.0)
		>>> momentum=0.9
		>>> moving_average_update(x, value = 2.0, momentum=momentum).numpy()
		>>> x.numpy()
		0.2
		
		The result will be biased towards the initial value of the variable.
		
		If the variable was initialized to zero, you can divide by
		`1 - momentum ** num_updates` to debias it (Section 3 of
		[Kingma et al., 2015](https://arxiv.org/abs/1412.6980)):
		
		>>> num_updates = 1.0
		>>> x_zdb = x/(1 - momentum**num_updates)
		>>> x_zdb.numpy()
		2.0
		
		Args:
		    x: A Variable, the moving average.
		    value: A tensor with the same shape as `x`, the new value to be
		      averaged in.
		    momentum: The moving average momentum.
		
		Returns:
		    The updated variable.
	**/
	static public function moving_average_update(x:Dynamic, value:Dynamic, momentum:Dynamic):Dynamic;
	/**
		Returns the number of axes in a tensor, as an integer.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    Integer (scalar), number of axes.
		
		Examples:
		
		
		>>> input = tf.keras.backend.placeholder(shape=(2, 4, 5))
		>>> val = np.array([[1, 2], [3, 4]])
		>>> kvar = tf.keras.backend.variable(value=val)
		>>> tf.keras.backend.ndim(input)
		3
		>>> tf.keras.backend.ndim(kvar)
		2
	**/
	static public function ndim(x:Dynamic):Dynamic;
	/**
		Computes mean and std for batch then apply batch_normalization on batch.
		
		Args:
		    x: Input tensor or variable.
		    gamma: Tensor by which to scale the input.
		    beta: Tensor with which to center the input.
		    reduction_axes: iterable of integers,
		        axes over which to normalize.
		    epsilon: Fuzz factor.
		
		Returns:
		    A tuple length of 3, `(normalized_tensor, mean, variance)`.
	**/
	static public function normalize_batch_in_training(x:Dynamic, gamma:Dynamic, beta:Dynamic, reduction_axes:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Element-wise inequality between two tensors.
		
		Args:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Computes the one-hot representation of an integer tensor.
		
		Args:
		    indices: nD integer tensor of shape
		        `(batch_size, dim1, dim2, ... dim(n-1))`
		    num_classes: Integer, number of classes to consider.
		
		Returns:
		    (n + 1)D one hot representation of the input
		    with shape `(batch_size, dim1, dim2, ... dim(n-1), num_classes)`
		
		Returns:
		    The one-hot tensor.
	**/
	static public function one_hot(indices:Dynamic, num_classes:Dynamic):Dynamic;
	/**
		Instantiates an all-ones variable and returns it.
		
		Args:
		    shape: Tuple of integers, shape of returned Keras variable.
		    dtype: String, data type of returned Keras variable.
		    name: String, name of returned Keras variable.
		
		Returns:
		    A Keras variable, filled with `1.0`.
		    Note that if `shape` was symbolic, we cannot return a variable,
		    and will return a dynamically-shaped tensor instead.
		
		Example:
		
		
		>>> kvar = tf.keras.backend.ones((3,4))
		>>> tf.keras.backend.eval(kvar)
		array([[1.,  1.,  1.,  1.],
		       [1.,  1.,  1.,  1.],
		       [1.,  1.,  1.,  1.]], dtype=float32)
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates an all-ones variable of the same shape as another tensor.
		
		Args:
		    x: Keras variable or tensor.
		    dtype: String, dtype of returned Keras variable.
		         None uses the dtype of x.
		    name: String, name for the variable to create.
		
		Returns:
		    A Keras variable with the shape of x filled with ones.
		
		Example:
		
		>>> kvar = tf.keras.backend.variable(np.random.random((2,3)))
		>>> kvar_ones = tf.keras.backend.ones_like(kvar)
		>>> tf.keras.backend.eval(kvar_ones)
		array([[1.,  1.,  1.],
		       [1.,  1.,  1.]], dtype=float32)
	**/
	static public function ones_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Permutes axes in a tensor.
		
		Args:
		    x: Tensor or variable.
		    pattern: A tuple of
		        dimension indices, e.g. `(0, 2, 1)`.
		
		Returns:
		    A tensor.
		
		Example:
		
		  >>> a = tf.constant([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
		  >>> a
		  <tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		  array([[ 1,  2,  3],
		         [ 4,  5,  6],
		         [ 7,  8,  9],
		         [10, 11, 12]], dtype=int32)>
		  >>> tf.keras.backend.permute_dimensions(a, pattern=(1, 0))
		  <tf.Tensor: shape=(3, 4), dtype=int32, numpy=
		  array([[ 1,  4,  7, 10],
		         [ 2,  5,  8, 11],
		         [ 3,  6,  9, 12]], dtype=int32)>
	**/
	static public function permute_dimensions(x:Dynamic, pattern:Dynamic):Dynamic;
	/**
		Instantiates a placeholder tensor and returns it.
		
		Args:
		    shape: Shape of the placeholder
		        (integer tuple, may include `None` entries).
		    ndim: Number of axes of the tensor.
		        At least one of {`shape`, `ndim`} must be specified.
		        If both are specified, `shape` is used.
		    dtype: Placeholder type.
		    sparse: Boolean, whether the placeholder should have a sparse type.
		    name: Optional name string for the placeholder.
		    ragged: Boolean, whether the placeholder should have a ragged type.
		        In this case, values of 'None' in the 'shape' argument represent
		        ragged dimensions. For more information about RaggedTensors, see this
		        [guide](https://www.tensorflow.org/guide/ragged_tensors).
		
		Raises:
		    ValueError: If called with sparse = True and ragged = True.
		
		Returns:
		    Tensor instance (with Keras metadata included).
		
		Examples:
		
		
		>>> input_ph = tf.keras.backend.placeholder(shape=(2, 4, 5))
		>>> input_ph
		<KerasTensor: shape=(2, 4, 5) dtype=float32 (created by layer ...)>
	**/
	static public function placeholder(?shape:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?name:Dynamic, ?ragged:Dynamic):Dynamic;
	/**
		2D Pooling.
		
		Args:
		    x: Tensor or variable.
		    pool_size: tuple of 2 integers.
		    strides: tuple of 2 integers.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    pool_mode: string, `"max"` or `"avg"`.
		
		Returns:
		    A tensor, result of 2D pooling.
		
		Raises:
		    ValueError: if `data_format` is neither `"channels_last"` or
		    `"channels_first"`.
		    ValueError: if `pool_size` is not a tuple of 2 integers.
		    ValueError: if `strides` is not a tuple of 2 integers.
		    ValueError: if `pool_mode` is neither `"max"` or `"avg"`.
	**/
	static public function pool2d(x:Dynamic, pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?pool_mode:Dynamic):Dynamic;
	/**
		3D Pooling.
		
		Args:
		    x: Tensor or variable.
		    pool_size: tuple of 3 integers.
		    strides: tuple of 3 integers.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    pool_mode: string, `"max"` or `"avg"`.
		
		Returns:
		    A tensor, result of 3D pooling.
		
		Raises:
		    ValueError: if `data_format` is neither `"channels_last"` or
		    `"channels_first"`.
		    ValueError: if `pool_mode` is neither `"max"` or `"avg"`.
	**/
	static public function pool3d(x:Dynamic, pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?pool_mode:Dynamic):Dynamic;
	/**
		Element-wise exponentiation.
		
		Args:
		    x: Tensor or variable.
		    a: Python integer.
		
		Returns:
		    A tensor.
	**/
	static public function pow(x:Dynamic, a:Dynamic):Dynamic;
	/**
		Prints `message` and the tensor value when evaluated.
		
		Note that `print_tensor` returns a new tensor identical to `x`
		which should be used in the following code. Otherwise the
		print operation is not taken into account during evaluation.
		
		Example:
		
		>>> x = tf.constant([[1.0, 2.0], [3.0, 4.0]])
		>>> tf.keras.backend.print_tensor(x)
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		  array([[1., 2.],
		         [3., 4.]], dtype=float32)>
		
		Args:
		    x: Tensor to print.
		    message: Message to print jointly with the tensor.
		    summarize: The first and last `summarize` elements within each dimension
		        are recursively printed per Tensor. If None, then the first 3 and last
		        3 elements of each dimension are printed for each tensor. If set to
		        -1, it will print all elements of every tensor.
		
		Returns:
		    The same tensor `x`, unchanged.
	**/
	static public function print_tensor(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic):Dynamic;
	/**
		Multiplies the values in a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the product.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with the product of elements of `x`.
	**/
	static public function prod(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns a tensor with random bernoulli distribution of values.
		
		Args:
		    shape: A tuple of integers, the shape of tensor to create.
		    p: A float, `0. <= p <= 1`, probability of bernoulli distribution.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
	**/
	static public function random_bernoulli(shape:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns a tensor with random binomial distribution of values.
		
		DEPRECATED, use `tf.keras.backend.random_bernoulli` instead.
		
		The binomial distribution with parameters `n` and `p` is the probability
		distribution of the number of successful Bernoulli process. Only supports
		`n` = 1 for now.
		
		Args:
		    shape: A tuple of integers, the shape of tensor to create.
		    p: A float, `0. <= p <= 1`, probability of binomial distribution.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
		
		Example:
		
		>>> random_binomial_tensor = tf.keras.backend.random_binomial(shape=(2,3),
		... p=0.5)
		>>> random_binomial_tensor
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=...,
		dtype=float32)>
	**/
	static public function random_binomial(shape:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns a tensor with normal distribution of values.
		
		It is an alias to `tf.random.normal`.
		
		Args:
		    shape: A tuple of integers, the shape of tensor to create.
		    mean: A float, the mean value of the normal distribution to draw samples.
		      Default to 0.0.
		    stddev: A float, the standard deviation of the normal distribution
		      to draw samples. Default to 1.0.
		    dtype: `tf.dtypes.DType`, dtype of returned tensor. Default to use Keras
		      backend dtype which is float32.
		    seed: Integer, random seed. Will use a random numpy integer when not
		      specified.
		
		Returns:
		    A tensor with normal distribution of values.
		
		Example:
		
		>>> random_normal_tensor = tf.keras.backend.random_normal(shape=(2,3),
		... mean=0.0, stddev=1.0)
		>>> random_normal_tensor
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=...,
		dtype=float32)>
	**/
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Instantiates a variable with values drawn from a normal distribution.
		
		Args:
		    shape: Tuple of integers, shape of returned Keras variable.
		    mean: Float, mean of the normal distribution.
		    scale: Float, standard deviation of the normal distribution.
		    dtype: String, dtype of returned Keras variable.
		    name: String, name of returned Keras variable.
		    seed: Integer, random seed.
		
		Returns:
		    A Keras variable, filled with drawn samples.
		
		Example:
		
		>>> kvar = tf.keras.backend.random_normal_variable(shape=(2,3),
		... mean=0.0, scale=1.0)
		>>> kvar
		<tf.Variable 'Variable:0' shape=(2, 3) dtype=float32, numpy=...,
		dtype=float32)>
	**/
	static public function random_normal_variable(shape:Dynamic, mean:Dynamic, scale:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns a tensor with uniform distribution of values.
		
		Args:
		    shape: A tuple of integers, the shape of tensor to create.
		    minval: A float, lower boundary of the uniform distribution
		        to draw samples.
		    maxval: A float, upper boundary of the uniform distribution
		        to draw samples.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
		
		Example:
		
		>>> random_uniform_tensor = tf.keras.backend.random_uniform(shape=(2,3),
		... minval=0.0, maxval=1.0)
		>>> random_uniform_tensor
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=...,
		dtype=float32)>
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Instantiates a variable with values drawn from a uniform distribution.
		
		Args:
		    shape: Tuple of integers, shape of returned Keras variable.
		    low: Float, lower boundary of the output interval.
		    high: Float, upper boundary of the output interval.
		    dtype: String, dtype of returned Keras variable.
		    name: String, name of returned Keras variable.
		    seed: Integer, random seed.
		
		Returns:
		    A Keras variable, filled with drawn samples.
		
		Example:
		
		>>> kvar = tf.keras.backend.random_uniform_variable(shape=(2,3),
		... low=0.0, high=1.0)
		>>> kvar
		<tf.Variable 'Variable:0' shape=(2, 3) dtype=float32, numpy=...,
		dtype=float32)>
	**/
	static public function random_uniform_variable(shape:Dynamic, low:Dynamic, high:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Rectified linear unit.
		
		With default values, it returns element-wise `max(x, 0)`.
		
		Otherwise, it follows:
		`f(x) = max_value` for `x >= max_value`,
		`f(x) = x` for `threshold <= x < max_value`,
		`f(x) = alpha * (x - threshold)` otherwise.
		
		Args:
		    x: A tensor or variable.
		    alpha: A scalar, slope of negative section (default=`0.`).
		    max_value: float. Saturation threshold.
		    threshold: float. Threshold value for thresholded activation.
		
		Returns:
		    A tensor.
	**/
	static public function relu(x:Dynamic, ?alpha:Dynamic, ?max_value:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Repeats a 2D tensor.
		
		if `x` has shape (samples, dim) and `n` is `2`,
		the output will have shape `(samples, 2, dim)`.
		
		Args:
		    x: Tensor or variable.
		    n: Python integer, number of times to repeat.
		
		Returns:
		    A tensor.
		
		Example:
		
		    >>> b = tf.constant([[1, 2], [3, 4]])
		    >>> b
		    <tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		    array([[1, 2],
		           [3, 4]], dtype=int32)>
		    >>> tf.keras.backend.repeat(b, n=2)
		    <tf.Tensor: shape=(2, 2, 2), dtype=int32, numpy=
		    array([[[1, 2],
		            [1, 2]],
		           [[3, 4],
		            [3, 4]]], dtype=int32)>
	**/
	static public function repeat(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Repeats the elements of a tensor along an axis, like `np.repeat`.
		
		If `x` has shape `(s1, s2, s3)` and `axis` is `1`, the output
		will have shape `(s1, s2 * rep, s3)`.
		
		Args:
		    x: Tensor or variable.
		    rep: Python integer, number of times to repeat.
		    axis: Axis along which to repeat.
		
		Returns:
		    A tensor.
		
		Example:
		
		    >>> b = tf.constant([1, 2, 3])
		    >>> tf.keras.backend.repeat_elements(b, rep=2, axis=0)
		    <tf.Tensor: shape=(6,), dtype=int32,
		        numpy=array([1, 1, 2, 2, 3, 3], dtype=int32)>
	**/
	static public function repeat_elements(x:Dynamic, rep:Dynamic, axis:Dynamic):Dynamic;
	/**
		Resets graph identifiers.
		  
	**/
	static public function reset_uids():Dynamic;
	/**
		Reshapes a tensor to the specified shape.
		
		Args:
		    x: Tensor or variable.
		    shape: Target shape tuple.
		
		Returns:
		    A tensor.
		
		Example:
		
		  >>> a = tf.constant([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
		  >>> a
		  <tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		  array([[ 1,  2,  3],
		         [ 4,  5,  6],
		         [ 7,  8,  9],
		         [10, 11, 12]], dtype=int32)>
		  >>> tf.keras.backend.reshape(a, shape=(2, 6))
		  <tf.Tensor: shape=(2, 6), dtype=int32, numpy=
		  array([[ 1,  2,  3,  4,  5,  6],
		         [ 7,  8,  9, 10, 11, 12]], dtype=int32)>
	**/
	static public function reshape(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Resizes the images contained in a 4D tensor.
		
		Args:
		    x: Tensor or variable to resize.
		    height_factor: Positive integer.
		    width_factor: Positive integer.
		    data_format: One of `"channels_first"`, `"channels_last"`.
		    interpolation: A string, one of `nearest` or `bilinear`.
		
		Returns:
		    A tensor.
		
		Raises:
		    ValueError: in case of incorrect value for
		      `data_format` or `interpolation`.
	**/
	static public function resize_images(x:Dynamic, height_factor:Dynamic, width_factor:Dynamic, data_format:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Resizes the volume contained in a 5D tensor.
		
		Args:
		    x: Tensor or variable to resize.
		    depth_factor: Positive integer.
		    height_factor: Positive integer.
		    width_factor: Positive integer.
		    data_format: One of `"channels_first"`, `"channels_last"`.
		
		Returns:
		    A tensor.
		
		Raises:
		    ValueError: if `data_format` is neither
		        `channels_last` or `channels_first`.
	**/
	static public function resize_volumes(x:Dynamic, depth_factor:Dynamic, height_factor:Dynamic, width_factor:Dynamic, data_format:Dynamic):Dynamic;
	/**
		Reverse a tensor along the specified axes.
		
		Args:
		    x: Tensor to reverse.
		    axes: Integer or iterable of integers.
		        Axes to reverse.
		
		Returns:
		    A tensor.
	**/
	static public function reverse(x:Dynamic, axes:Dynamic):Dynamic;
	/**
		Iterates over the time dimension of a tensor.
		
		Args:
		    step_function: RNN step function.
		        Args;
		            input; Tensor with shape `(samples, ...)` (no time dimension),
		                representing input for the batch of samples at a certain
		                time step.
		            states; List of tensors.
		        Returns;
		            output; Tensor with shape `(samples, output_dim)`
		                (no time dimension).
		            new_states; List of tensors, same length and shapes
		                as 'states'. The first state in the list must be the
		                output tensor at the previous timestep.
		    inputs: Tensor of temporal data of shape `(samples, time, ...)`
		        (at least 3D), or nested tensors, and each of which has shape
		        `(samples, time, ...)`.
		    initial_states: Tensor with shape `(samples, state_size)`
		        (no time dimension), containing the initial values for the states used
		        in the step function. In the case that state_size is in a nested
		        shape, the shape of initial_states will also follow the nested
		        structure.
		    go_backwards: Boolean. If True, do the iteration over the time
		        dimension in reverse order and return the reversed sequence.
		    mask: Binary tensor with shape `(samples, time, 1)`,
		        with a zero for every element that is masked.
		    constants: List of constant values passed at each step.
		    unroll: Whether to unroll the RNN or to use a symbolic `while_loop`.
		    input_length: An integer or a 1-D Tensor, depending on whether
		        the time dimension is fixed-length or not. In case of variable length
		        input, it is used for masking in case there's no mask specified.
		    time_major: Boolean. If true, the inputs and outputs will be in shape
		        `(timesteps, batch, ...)`, whereas in the False case, it will be
		        `(batch, timesteps, ...)`. Using `time_major = True` is a bit more
		        efficient because it avoids transposes at the beginning and end of the
		        RNN calculation. However, most TensorFlow data is batch-major, so by
		        default this function accepts input and emits output in batch-major
		        form.
		    zero_output_for_mask: Boolean. If True, the output for masked timestep
		        will be zeros, whereas in the False case, output from previous
		        timestep is returned.
		
		Returns:
		    A tuple, `(last_output, outputs, new_states)`.
		        last_output: the latest output of the rnn, of shape `(samples, ...)`
		        outputs: tensor with shape `(samples, time, ...)` where each
		            entry `outputs[s, t]` is the output of the step function
		            at time `t` for sample `s`.
		        new_states: list of tensors, latest states returned by
		            the step function, of shape `(samples, ...)`.
		
		Raises:
		    ValueError: if input dimension is less than 3.
		    ValueError: if `unroll` is `True` but input timestep is not a fixed
		    number.
		    ValueError: if `mask` is provided (not `None`) but states is not provided
		        (`len(states)` == 0).
	**/
	static public function rnn(step_function:Dynamic, inputs:Dynamic, initial_states:Dynamic, ?go_backwards:Dynamic, ?mask:Dynamic, ?constants:Dynamic, ?unroll:Dynamic, ?input_length:Dynamic, ?time_major:Dynamic, ?zero_output_for_mask:Dynamic):Dynamic;
	/**
		Element-wise rounding to the closest integer.
		
		In case of tie, the rounding mode used is "half to even".
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function round(x:Dynamic):Dynamic;
	/**
		2D convolution with separable filters.
		
		Args:
		    x: input tensor
		    depthwise_kernel: convolution kernel for the depthwise convolution.
		    pointwise_kernel: kernel for the 1x1 convolution.
		    strides: strides tuple (length 2).
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of integers,
		        dilation rates for the separable convolution.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
		    ValueError: if `strides` is not a tuple of 2 integers.
	**/
	static public function separable_conv2d(x:Dynamic, depthwise_kernel:Dynamic, pointwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		Sets the value of the fuzz factor used in numeric expressions.
		
		Args:
		    value: float. New value of epsilon.
		
		Example:
		>>> tf.keras.backend.epsilon()
		1e-07
		>>> tf.keras.backend.set_epsilon(1e-5)
		>>> tf.keras.backend.epsilon()
		1e-05
		 >>> tf.keras.backend.set_epsilon(1e-7)
	**/
	static public function set_epsilon(value:Dynamic):Dynamic;
	/**
		Sets the default float type.
		
		Note: It is not recommended to set this to float16 for training, as this will
		likely cause numeric stability issues. Instead, mixed precision, which is
		using a mix of float16 and float32, can be used by calling
		`tf.keras.mixed_precision.set_global_policy('mixed_float16')`. See the
		[mixed precision guide](
		  https://www.tensorflow.org/guide/keras/mixed_precision) for details.
		
		Args:
		    value: String; `'float16'`, `'float32'`, or `'float64'`.
		
		Example:
		>>> tf.keras.backend.floatx()
		'float32'
		>>> tf.keras.backend.set_floatx('float64')
		>>> tf.keras.backend.floatx()
		'float64'
		>>> tf.keras.backend.set_floatx('float32')
		
		Raises:
		    ValueError: In case of invalid value.
	**/
	static public function set_floatx(value:Dynamic):Dynamic;
	/**
		Sets the value of the image data format convention.
		
		Args:
		    data_format: string. `'channels_first'` or `'channels_last'`.
		
		Example:
		>>> tf.keras.backend.image_data_format()
		'channels_last'
		>>> tf.keras.backend.set_image_data_format('channels_first')
		>>> tf.keras.backend.image_data_format()
		'channels_first'
		>>> tf.keras.backend.set_image_data_format('channels_last')
		
		Raises:
		    ValueError: In case of invalid `data_format` value.
	**/
	static public function set_image_data_format(data_format:Dynamic):Dynamic;
	/**
		Sets the learning phase to a fixed value.
		
		The backend learning phase affects any code that calls
		`backend.learning_phase()`
		In particular, all Keras built-in layers use the learning phase as the default
		for the `training` arg to `Layer.__call__`.
		
		User-written layers and models can achieve the same behavior with code that
		looks like:
		
		```python
		  def call(self, inputs, training=None):
		    if training is None:
		      training = backend.learning_phase()
		```
		
		Args:
		    value: Learning phase value, either 0 or 1 (integers).
		           0 = test, 1 = train
		
		Raises:
		    ValueError: if `value` is neither `0` nor `1`.
	**/
	static public function set_learning_phase(value:Dynamic):Dynamic;
	/**
		Sets the global TensorFlow session.
		
		Args:
		    session: A TF Session.
	**/
	static public function set_session(session:Dynamic):Dynamic;
	/**
		Sets the value of a variable, from a Numpy array.
		
		`backend.set_value` is the complement of `backend.get_value`, and provides
		a generic interface for assigning to variables while abstracting away the
		differences between TensorFlow 1.x and 2.x semantics.
		
		>>> K = tf.keras.backend  # Common keras convention
		>>> v = K.variable(1.)
		
		>>> # reassign
		>>> K.set_value(v, 2.)
		>>> print(K.get_value(v))
		2.0
		
		>>> # increment
		>>> K.set_value(v, K.get_value(v) + 1)
		>>> print(K.get_value(v))
		3.0
		
		Variable semantics in TensorFlow 2 are eager execution friendly. The above
		code is roughly equivalent to:
		
		>>> v = tf.Variable(1.)
		
		>>> v.assign(2.)
		>>> print(v.numpy())
		2.0
		
		>>> v.assign_add(1.)
		>>> print(v.numpy())
		3.0
		
		Args:
		    x: Variable to set to a new value.
		    value: Value to set the tensor to, as a Numpy array
		        (of the same shape).
	**/
	static public function set_value(x:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns the symbolic shape of a tensor or variable.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A symbolic shape (which is itself a tensor).
		
		Examples:
		
		>>> val = np.array([[1, 2], [3, 4]])
		>>> kvar = tf.keras.backend.variable(value=val)
		>>> tf.keras.backend.shape(kvar)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 2], dtype=int32)>
		>>> input = tf.keras.backend.placeholder(shape=(2, 4, 5))
		>>> tf.keras.backend.shape(input)
		<KerasTensor: shape=(3,) dtype=int32 inferred_value=[2, 4, 5] ...>
	**/
	static public function shape(x:Dynamic):Dynamic;
	/**
		Element-wise sigmoid.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sigmoid(x:Dynamic):Dynamic;
	/**
		Element-wise sign.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sign(x:Dynamic):Dynamic;
	/**
		Computes sin of x element-wise.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sin(x:Dynamic):Dynamic;
	/**
		Softmax of a tensor.
		
		Args:
		    x: A tensor or variable.
		    axis: The dimension softmax would be performed on.
		        The default is -1 which indicates the last dimension.
		
		Returns:
		    A tensor.
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Softplus of a tensor.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function softplus(x:Dynamic):Dynamic;
	/**
		Softsign of a tensor.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function softsign(x:Dynamic):Dynamic;
	/**
		Categorical crossentropy with integer targets.
		
		Args:
		    target: An integer tensor.
		    output: A tensor resulting from a softmax
		        (unless `from_logits` is True, in which
		        case `output` is expected to be the logits).
		    from_logits: Boolean, whether `output` is the
		        result of a softmax, or is a tensor of logits.
		    axis: Int specifying the channels axis. `axis=-1` corresponds to data
		        format `channels_last`, and `axis=1` corresponds to data format
		        `channels_first`.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `axis` is neither -1 nor one of the axes of `output`.
	**/
	static public function sparse_categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Pads the 2nd and 3rd dimensions of a 4D tensor.
		
		Args:
		    x: Tensor or variable.
		    padding: Tuple of 2 tuples, padding pattern.
		    data_format: One of `channels_last` or `channels_first`.
		
		Returns:
		    A padded 4D tensor.
		
		Raises:
		    ValueError: if `data_format` is neither
		        `channels_last` or `channels_first`.
	**/
	static public function spatial_2d_padding(x:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Pads 5D tensor with zeros along the depth, height, width dimensions.
		
		Pads these dimensions with respectively
		"padding[0]", "padding[1]" and "padding[2]" zeros left and right.
		
		For 'channels_last' data_format,
		the 2nd, 3rd and 4th dimension will be padded.
		For 'channels_first' data_format,
		the 3rd, 4th and 5th dimension will be padded.
		
		Args:
		    x: Tensor or variable.
		    padding: Tuple of 3 tuples, padding pattern.
		    data_format: One of `channels_last` or `channels_first`.
		
		Returns:
		    A padded 5D tensor.
		
		Raises:
		    ValueError: if `data_format` is neither
		        `channels_last` or `channels_first`.
	**/
	static public function spatial_3d_padding(x:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Element-wise square root.
		
		   This function clips negative tensor values to 0 before computing the
		   square root.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sqrt(x:Dynamic):Dynamic;
	/**
		Element-wise square.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function square(x:Dynamic):Dynamic;
	/**
		Removes a 1-dimension from the tensor at index "axis".
		
		Args:
		    x: A tensor or variable.
		    axis: Axis to drop.
		
		Returns:
		    A tensor with the same data as `x` but reduced dimensions.
	**/
	static public function squeeze(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		Stacks a list of rank `R` tensors into a rank `R+1` tensor.
		
		Args:
		    x: List of tensors.
		    axis: Axis along which to perform stacking.
		
		Returns:
		    A tensor.
		
		Example:
		
		    >>> a = tf.constant([[1, 2],[3, 4]])
		    >>> b = tf.constant([[10, 20],[30, 40]])
		    >>> tf.keras.backend.stack((a, b))
		    <tf.Tensor: shape=(2, 2, 2), dtype=int32, numpy=
		    array([[[ 1,  2],
		            [ 3,  4]],
		           [[10, 20],
		            [30, 40]]], dtype=int32)>
	**/
	static public function stack(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Standard deviation of a tensor, alongside the specified axis.
		
		It is an alias to `tf.math.reduce_std`.
		
		Args:
		    x: A tensor or variable. It should have numerical dtypes. Boolean type
		      inputs will be converted to float.
		    axis: An integer, the axis to compute the standard deviation. If `None`
		      (the default), reduces all dimensions. Must be in the range
		      `[-rank(x), rank(x))`.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`, the reduced dimension is retained with
		        length 1.
		
		Returns:
		    A tensor with the standard deviation of elements of `x` with same dtype.
		    Boolean type input will be converted to float.
	**/
	static public function std(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns `variables` but with zero gradient w.r.t. every other variable.
		
		Args:
		    variables: Tensor or list of tensors to consider constant with respect
		      to any other variable.
		
		
		Returns:
		    A single tensor or a list of tensors (depending on the passed argument)
		    that has no gradient with respect to any other variable.
	**/
	static public function stop_gradient(variables:Dynamic):Dynamic;
	/**
		Sum of the values in a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to sum over.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with sum of `x`.
	**/
	static public function sum(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Switches between two operations depending on a scalar value.
		
		Note that both `then_expression` and `else_expression`
		should be symbolic tensors of the *same shape*.
		
		Args:
		    condition: tensor (`int` or `bool`).
		    then_expression: either a tensor, or a callable that returns a tensor.
		    else_expression: either a tensor, or a callable that returns a tensor.
		
		Returns:
		    The selected tensor.
		
		Raises:
		    ValueError: If rank of `condition` is greater than rank of expressions.
	**/
	@:native("switch")
	static public function _switch(condition:Dynamic, then_expression:Dynamic, else_expression:Dynamic):Dynamic;
	/**
		Element-wise tanh.
		
		Args:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function tanh(x:Dynamic):Dynamic;
	/**
		Pads the middle dimension of a 3D tensor.
		
		Args:
		    x: Tensor or variable.
		    padding: Tuple of 2 integers, how many zeros to
		        add at the start and end of dim 1.
		
		Returns:
		    A padded 3D tensor.
	**/
	static public function temporal_padding(x:Dynamic, ?padding:Dynamic):Dynamic;
	/**
		Creates a tensor by tiling `x` by `n`.
		
		Args:
		    x: A tensor or variable
		    n: A list of integer. The length must be the same as the number of
		        dimensions in `x`.
		
		Returns:
		    A tiled tensor.
	**/
	static public function tile(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Converts a sparse tensor into a dense tensor and returns it.
		
		Args:
		    tensor: A tensor instance (potentially sparse).
		
		Returns:
		    A dense tensor.
		
		Examples:
		
		
		>>> b = tf.keras.backend.placeholder((2, 2), sparse=True)
		>>> print(tf.keras.backend.is_sparse(b))
		True
		>>> c = tf.keras.backend.to_dense(b)
		>>> print(tf.keras.backend.is_sparse(c))
		False
	**/
	static public function to_dense(tensor:Dynamic):Dynamic;
	/**
		Transposes a tensor and returns it.
		
		Args:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
		
		Examples:
		
		>>> var = tf.keras.backend.variable([[1, 2, 3], [4, 5, 6]])
		>>> tf.keras.backend.eval(var)
		array([[1.,  2.,  3.],
		       [4.,  5.,  6.]], dtype=float32)
		>>> var_transposed = tf.keras.backend.transpose(var)
		>>> tf.keras.backend.eval(var_transposed)
		array([[1.,  4.],
		       [2.,  5.],
		       [3.,  6.]], dtype=float32)
		>>> input = tf.keras.backend.placeholder((2, 3))
		>>> input
		<KerasTensor: shape=(2, 3) dtype=float32 ...>
		>>> input_transposed = tf.keras.backend.transpose(input)
		>>> input_transposed
		<KerasTensor: shape=(3, 2) dtype=float32 ...>
	**/
	static public function transpose(x:Dynamic):Dynamic;
	/**
		Returns a tensor with truncated random normal distribution of values.
		
		The generated values follow a normal distribution
		with specified mean and standard deviation,
		except that values whose magnitude is more than
		two standard deviations from the mean are dropped and re-picked.
		
		Args:
		    shape: A tuple of integers, the shape of tensor to create.
		    mean: Mean of the values.
		    stddev: Standard deviation of the values.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static public function update(x:Dynamic, new_x:Dynamic):Dynamic;
	/**
		Update the value of `x` by adding `increment`.
		
		Args:
		    x: A Variable.
		    increment: A tensor of same shape as `x`.
		
		Returns:
		    The variable `x` updated.
	**/
	static public function update_add(x:Dynamic, increment:Dynamic):Dynamic;
	/**
		Update the value of `x` by subtracting `decrement`.
		
		Args:
		    x: A Variable.
		    decrement: A tensor of same shape as `x`.
		
		Returns:
		    The variable `x` updated.
	**/
	static public function update_sub(x:Dynamic, decrement:Dynamic):Dynamic;
	/**
		Variance of a tensor, alongside the specified axis.
		
		Args:
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the variance.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with the variance of elements of `x`.
	**/
	@:native("var")
	static public function _var(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Instantiates a variable and returns it.
		
		Args:
		    value: Numpy array, initial value of the tensor.
		    dtype: Tensor type.
		    name: Optional name string for the tensor.
		    constraint: Optional projection function to be
		        applied to the variable after an optimizer update.
		
		Returns:
		    A variable instance (with Keras metadata included).
		
		Examples:
		
		>>> val = np.array([[1, 2], [3, 4]])
		>>> kvar = tf.keras.backend.variable(value=val, dtype='float64',
		...                                  name='example_var')
		>>> tf.keras.backend.dtype(kvar)
		'float64'
		>>> print(kvar)
		<tf.Variable 'example_var:...' shape=(2, 2) dtype=float64, numpy=
		  array([[1., 2.],
		         [3., 4.]])>
	**/
	static public function variable(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Instantiates an all-zeros variable and returns it.
		
		Args:
		    shape: Tuple or list of integers, shape of returned Keras variable
		    dtype: data type of returned Keras variable
		    name: name of returned Keras variable
		
		Returns:
		    A variable (including Keras metadata), filled with `0.0`.
		    Note that if `shape` was symbolic, we cannot return a variable,
		    and will return a dynamically-shaped tensor instead.
		
		Example:
		
		>>> kvar = tf.keras.backend.zeros((3,4))
		>>> tf.keras.backend.eval(kvar)
		array([[0.,  0.,  0.,  0.],
		       [0.,  0.,  0.,  0.],
		       [0.,  0.,  0.,  0.]], dtype=float32)
		>>> A = tf.constant([1,2,3])
		>>> kvar2 = tf.keras.backend.zeros(A.shape) # [0., 0., 0.]
		>>> tf.keras.backend.eval(kvar2)
		array([0., 0., 0.], dtype=float32)
		>>> kvar3 = tf.keras.backend.zeros(A.shape,dtype=tf.int32)
		>>> tf.keras.backend.eval(kvar3)
		array([0, 0, 0], dtype=int32)
		>>> kvar4 = tf.keras.backend.zeros([2,3])
		>>> tf.keras.backend.eval(kvar4)
		array([[0., 0., 0.],
		       [0., 0., 0.]], dtype=float32)
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates an all-zeros variable of the same shape as another tensor.
		
		Args:
		    x: Keras variable or Keras tensor.
		    dtype: dtype of returned Keras variable.
		           `None` uses the dtype of `x`.
		    name: name for the variable to create.
		
		Returns:
		    A Keras variable with the shape of `x` filled with zeros.
		
		Example:
		
		```python
		kvar = tf.keras.backend.variable(np.random.random((2,3)))
		kvar_zeros = tf.keras.backend.zeros_like(kvar)
		K.eval(kvar_zeros)
		# array([[ 0.,  0.,  0.], [ 0.,  0.,  0.]], dtype=float32)
		```
	**/
	static public function zeros_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}