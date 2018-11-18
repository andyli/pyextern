/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.backend;
@:pythonImport("tensorflow.contrib.keras.api.keras.backend") extern class Backend_Module {
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
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function abs(x:Dynamic):Dynamic;
	/**
		Bitwise reduction (logical AND).
		
		Arguments:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		    keepdims: whether the drop or broadcast the reduction axes.
		
		Returns:
		    A uint8 tensor (0s and 1s).
	**/
	static public function all(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Bitwise reduction (logical OR).
		
		Arguments:
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
		
		Arguments:
		    start: Start value.
		    stop: Stop value.
		    step: Difference between two successive values.
		    dtype: Integer dtype to use.
		
		Returns:
		    An integer tensor.
	**/
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns the index of the maximum value along an axis.
		
		Arguments:
		    x: Tensor or variable.
		    axis: axis along which to perform the reduction.
		
		Returns:
		    A tensor.
	**/
	static public function argmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the index of the minimum value along an axis.
		
		Arguments:
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
		
		Arguments:
		    x: Keras tensor or variable with `ndim >= 2`.
		    y: Keras tensor or variable with `ndim >= 2`.
		    axes: list of (or single) int with target dimensions.
		        The lengths of `axes[0]` and `axes[1]` should be the same.
		
		Returns:
		    A tensor with shape equal to the concatenation of `x`'s shape
		    (less the dimension that was summed over) and `y`'s shape
		    (less the batch dimension and the dimension that was summed over).
		    If the final rank is 1, we reshape it to `(batch_size, 1)`.
		
		Examples:
		    Assume `x = [[1, 2], [3, 4]]` and `y = [[5, 6], [7, 8]]`
		    `batch_dot(x, y, axes=1) = [[17, 53]]` which is the main diagonal
		    of `x.dot(y.T)`, although we never have to calculate the off-diagonal
		    elements.
		
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
		
		```python
		    >>> x_batch = K.ones(shape=(32, 20, 1))
		    >>> y_batch = K.ones(shape=(32, 30, 20))
		    >>> xy_batch_dot = K.batch_dot(x_batch, y_batch, axes=[1, 2])
		    >>> K.int_shape(xy_batch_dot)
		    (32, 1, 30)
		```
	**/
	static public function batch_dot(x:Dynamic, y:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Turn a nD tensor into a 2D tensor with same 0th dimension.
		
		In other words, it flattens each data samples of a batch.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function batch_flatten(x:Dynamic):Dynamic;
	/**
		Returns the value of more than one tensor variable.
		
		Arguments:
		    tensors: list of ops to run.
		
		Returns:
		    A list of Numpy arrays.
	**/
	static public function batch_get_value(tensors:Dynamic):Dynamic;
	/**
		Applies batch normalization on x given mean, var, beta and gamma.
		
		I.e. returns:
		`output = (x - mean) / (sqrt(var) + epsilon) * gamma + beta`
		
		Arguments:
		    x: Input tensor or variable.
		    mean: Mean of batch.
		    var: Variance of batch.
		    beta: Tensor with which to center the input.
		    gamma: Tensor by which to scale the input.
		    epsilon: Fuzz factor.
		
		Returns:
		    A tensor.
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, _var:Dynamic, beta:Dynamic, gamma:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Sets the values of many tensor variables at once.
		
		Arguments:
		    tuples: a list of tuples `(tensor, value)`.
		        `value` should be a Numpy array.
	**/
	static public function batch_set_value(tuples:Dynamic):Dynamic;
	/**
		Adds a bias vector to a tensor.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: Keras tensor (or variable).
		    dtype: String, either (`'float16'`, `'float32'`, or `'float64'`).
		
		Returns:
		    Keras tensor with dtype `dtype`.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> input = K.placeholder((2, 3), dtype='float32')
		    >>> input
		    <tf.Tensor 'Placeholder_2:0' shape=(2, 3) dtype=float32>
		    # It doesn't work in-place as below.
		    >>> K.cast(input, dtype='float16')
		    <tf.Tensor 'Cast_1:0' shape=(2, 3) dtype=float16>
		    >>> input
		    <tf.Tensor 'Placeholder_2:0' shape=(2, 3) dtype=float32>
		    # you need to assign it.
		    >>> input = K.cast(input, dtype='float16')
		    >>> input
		    <tf.Tensor 'Cast_2:0' shape=(2, 3) dtype=float16>
		```
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Cast a Numpy array to the default Keras float type.
		
		Arguments:
		    x: Numpy array.
		
		Returns:
		    The same Numpy array, cast to its new type.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> K.floatx()
		    'float32'
		    >>> arr = numpy.array([1.0, 2.0], dtype='float64')
		    >>> arr.dtype
		    dtype('float64')
		    >>> new_arr = K.cast_to_floatx(arr)
		    >>> new_arr
		    array([ 1.,  2.], dtype=float32)
		    >>> new_arr.dtype
		    dtype('float32')
		```
	**/
	static public function cast_to_floatx(x:Dynamic):Dynamic;
	/**
		Categorical crossentropy between an output tensor and a target tensor.
		
		Arguments:
		    target: A tensor of the same shape as `output`.
		    output: A tensor resulting from a softmax
		        (unless `from_logits` is True, in which
		        case `output` is expected to be the logits).
		    from_logits: Boolean, whether `output` is the
		        result of a softmax, or is a tensor of logits.
		    axis: Int specifying the channels axis. `axis=-1` corresponds to data
		        format `channels_last', and `axis=1` corresponds to data format
		        `channels_first`.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `axis` is neither -1 nor one of the axes of `output`.
	**/
	static public function categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Destroys the current TF graph and creates a new one.
		
		Useful to avoid clutter from old models / layers.
	**/
	static public function clear_session():Dynamic;
	/**
		Element-wise value clipping.
		
		Arguments:
		    x: Tensor or variable.
		    min_value: Python float or integer.
		    max_value: Python float or integer.
		
		Returns:
		    A tensor.
	**/
	static public function clip(x:Dynamic, min_value:Dynamic, max_value:Dynamic):Dynamic;
	/**
		Concatenates a list of tensors alongside the specified axis.
		
		Arguments:
		    tensors: list of tensors to concatenate.
		    axis: concatenation axis.
		
		Returns:
		    A tensor.
	**/
	static public function concatenate(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: `"channels_last"` or `"channels_first"`.
		        Whether to use Theano or TensorFlow data format
		        for inputs/kernels/outputs.
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
		
		Arguments:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    output_shape: 1D int tensor for the output shape.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		        Whether to use Theano or TensorFlow/CNTK data format
		        for inputs/kernels/outputs.
		
		Returns:
		    A tensor, result of transposed 2D convolution.
		
		Raises:
		    ValueError: if `data_format` is neither `channels_last` or
		    `channels_first`.
	**/
	static public function conv2d_transpose(x:Dynamic, kernel:Dynamic, output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		3D convolution.
		
		Arguments:
		    x: Tensor or variable.
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		        Whether to use Theano or TensorFlow/CNTK data format
		        for inputs/kernels/outputs.
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
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function cos(x:Dynamic):Dynamic;
	/**
		Returns the static number of elements in a variable or tensor.
		
		Arguments:
		    x: Variable or tensor.
		
		Returns:
		    Integer, the number of scalars in `x`.
		
		Example:
		```python
		    >>> kvar = K.zeros((2,3))
		    >>> K.count_params(kvar)
		    6
		    >>> K.eval(kvar)
		    array([[ 0.,  0.,  0.],
		           [ 0.,  0.,  0.]], dtype=float32)
		```
	**/
	static public function count_params(x:Dynamic):Dynamic;
	/**
		Runs CTC loss algorithm on each batch element.
		
		Arguments:
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
		
		Arguments:
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
		            Important: blank labels are returned as `-1`.
		        Tensor `(top_paths, )` that contains
		            the log probability of each decoded sequence.
	**/
	static public function ctc_decode(y_pred:Dynamic, input_length:Dynamic, ?greedy:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic):Dynamic;
	/**
		Converts CTC labels from dense to sparse.
		
		Arguments:
		    labels: dense CTC labels.
		    label_lengths: length of the labels.
		
		Returns:
		    A sparse tensor representation of the labels.
	**/
	static public function ctc_label_dense_to_sparse(labels:Dynamic, label_lengths:Dynamic):Dynamic;
	/**
		Multiplies 2 tensors (and/or variables) and returns a *tensor*.
		
		When attempting to multiply a nD tensor
		with a nD tensor, it reproduces the Theano behavior.
		(e.g. `(2, 3) * (4, 3, 5) -> (2, 4, 5)`)
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor, dot product of `x` and `y`.
		
		Examples:
		```python
		    # dot product between tensors
		    >>> x = K.placeholder(shape=(2, 3))
		    >>> y = K.placeholder(shape=(3, 4))
		    >>> xy = K.dot(x, y)
		    >>> xy
		    <tf.Tensor 'MatMul_9:0' shape=(2, 4) dtype=float32>
		```
		
		```python
		    # dot product between tensors
		    >>> x = K.placeholder(shape=(32, 28, 3))
		    >>> y = K.placeholder(shape=(3, 4))
		    >>> xy = K.dot(x, y)
		    >>> xy
		    <tf.Tensor 'MatMul_9:0' shape=(32, 28, 4) dtype=float32>
		```
		
		```python
		    # Theano-like behavior example
		    >>> x = K.random_uniform_variable(shape=(2, 3), low=0, high=1)
		    >>> y = K.ones((4, 3, 5))
		    >>> xy = K.dot(x, y)
		    >>> K.int_shape(xy)
		    (2, 4, 5)
		```
	**/
	static public function dot(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Sets entries in `x` to zero at random, while scaling the entire tensor.
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    String, dtype of `x`.
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> K.dtype(K.placeholder(shape=(2,4,5)))
		    'float32'
		    >>> K.dtype(K.placeholder(shape=(2,4,5), dtype='float32'))
		    'float32'
		    >>> K.dtype(K.placeholder(shape=(2,4,5), dtype='float64'))
		    'float64'
		    # Keras variable
		    >>> kvar = K.variable(np.array([[1, 2], [3, 4]]))
		    >>> K.dtype(kvar)
		    'float32_ref'
		    >>> kvar = K.variable(np.array([[1, 2], [3, 4]]), dtype='float32')
		    >>> K.dtype(kvar)
		    'float32_ref'
		```
	**/
	static public function dtype(x:Dynamic):Dynamic;
	/**
		Exponential linear unit.
		
		Arguments:
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
		```python
		    >>> keras.backend.epsilon()
		    1e-07
		```
	**/
	static public function epsilon():Dynamic;
	/**
		Element-wise equality between two tensors.
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Evaluates the value of a variable.
		
		Arguments:
		    x: A variable.
		
		Returns:
		    A Numpy array.
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.variable(np.array([[1, 2], [3, 4]]), dtype='float32')
		    >>> K.eval(kvar)
		    array([[ 1.,  2.],
		           [ 3.,  4.]], dtype=float32)
		```
	**/
	static public function eval(x:Dynamic):Dynamic;
	/**
		Element-wise exponential.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function exp(x:Dynamic):Dynamic;
	/**
		Adds a 1-sized dimension at index "axis".
		
		Arguments:
		    x: A tensor or variable.
		    axis: Position where to add a new axis.
		
		Returns:
		    A tensor with expanded dimensions.
	**/
	static public function expand_dims(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Instantiate an identity matrix and returns it.
		
		Arguments:
		    size: Integer, number of rows/columns.
		    dtype: String, data type of returned Keras variable.
		    name: String, name of returned Keras variable.
		
		Returns:
		    A Keras variable, an identity matrix.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.eye(3)
		    >>> K.eval(kvar)
		    array([[ 1.,  0.,  0.],
		           [ 0.,  1.,  0.],
		           [ 0.,  0.,  1.]], dtype=float32)
		```
	**/
	static public function eye(size:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flatten a tensor.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor, reshaped into 1-D
	**/
	static public function flatten(x:Dynamic):Dynamic;
	/**
		Returns the default float type, as a string.
		
		E.g. 'float16', 'float32', 'float64'.
		
		Returns:
		    String, the current default float type.
		
		Example:
		```python
		    >>> keras.backend.floatx()
		    'float32'
		```
	**/
	static public function floatx():Dynamic;
	/**
		Reduce elems using fn to combine them from left to right.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    inputs: List of placeholder tensors.
		    outputs: List of output tensors.
		    updates: List of update ops.
		    **kwargs: Passed to `tf.Session.run`.
		
		Returns:
		    Output values as Numpy arrays.
		
		Raises:
		    ValueError: if invalid kwargs are passed in.
	**/
	@:native("function")
	static public function _function(inputs:Dynamic, outputs:Dynamic, ?updates:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieves the elements of indices `indices` in the tensor `reference`.
		
		Arguments:
		    reference: A tensor.
		    indices: An integer tensor of indices.
		
		Returns:
		    A tensor of same type as `reference`.
	**/
	static public function gather(reference:Dynamic, indices:Dynamic):Dynamic;
	/**
		Returns the TF session to be used by the backend.
		
		If a default TensorFlow session is available, we will return it.
		
		Else, we will return the global Keras session.
		
		If no global Keras session exists at this point:
		we will create a new global session.
		
		Note that you can manually set the global session
		via `K.set_session(sess)`.
		
		Returns:
		    A TensorFlow session.
	**/
	static public function get_session():Dynamic;
	/**
		Associates a string prefix with an integer counter in a TensorFlow graph.
		
		Arguments:
		  prefix: String prefix to index.
		
		Returns:
		  Unique integer ID.
		
		Example:
		
		```
		  >>> get_uid('dense')
		  1
		  >>> get_uid('dense')
		  2
		```
	**/
	static public function get_uid(?prefix:Dynamic):Dynamic;
	/**
		Returns the value of a variable.
		
		Arguments:
		    x: input variable.
		
		Returns:
		    A Numpy array.
	**/
	static public function get_value(x:Dynamic):Dynamic;
	/**
		Returns the gradients of `loss` w.r.t. `variables`.
		
		Arguments:
		    loss: Scalar tensor to minimize.
		    variables: List of variables.
		
		Returns:
		    A gradients tensor.
	**/
	static public function gradients(loss:Dynamic, variables:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x > y).
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function greater(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x >= y).
		
		Arguments:
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
		
		Arguments:
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
		```python
		    >>> keras.backend.image_data_format()
		    'channels_first'
		```
	**/
	static public function image_data_format():Dynamic;
	/**
		Selects `x` in test phase, and `alt` otherwise.
		
		Note that `alt` should have the *same shape* as `x`.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tuple of integers (or None entries).
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> input = K.placeholder(shape=(2, 4, 5))
		    >>> K.int_shape(input)
		    (2, 4, 5)
		    >>> val = np.array([[1, 2], [3, 4]])
		    >>> kvar = K.variable(value=val)
		    >>> K.int_shape(kvar)
		    (2, 2)
		```
	**/
	static public function int_shape(x:Dynamic):Dynamic;
	/**
		Returns whether a tensor is a sparse tensor.
		
		Arguments:
		    tensor: A tensor instance.
		
		Returns:
		    A boolean.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> a = K.placeholder((2, 2), sparse=False)
		    >>> print(K.is_sparse(a))
		    False
		    >>> b = K.placeholder((2, 2), sparse=True)
		    >>> print(K.is_sparse(b))
		    True
		```
	**/
	static public function is_sparse(tensor:Dynamic):Dynamic;
	/**
		Normalizes a tensor wrt the L2 norm alongside the specified axis.
		
		Arguments:
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
		Element-wise truth value of (x < y).
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function less(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Element-wise truth value of (x <= y).
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Element-wise log.
		
		Arguments:
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
		(e.g. via `tf.initialize_all_variables()`).
		
		Arguments:
		    value: Python boolean.
	**/
	static public function manual_variable_initialization(value:Dynamic):Dynamic;
	/**
		Map the function fn over the elements elems and return the outputs.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function maximum(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Mean of a tensor, alongside the specified axis.
		
		Arguments:
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
		
		Arguments:
		    x: A tensor or variable.
		    axis: An integer, the axis to find minimum values.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with miminum values of `x`.
	**/
	static public function min(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Element-wise minimum of two tensors.
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function minimum(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Compute the moving average of a variable.
		
		Arguments:
		    x: A Variable.
		    value: A tensor with the same shape as `variable`.
		    momentum: The moving average momentum.
		
		Returns:
		    An Operation to update the variable.
	**/
	static public function moving_average_update(x:Dynamic, value:Dynamic, momentum:Dynamic):Dynamic;
	/**
		Returns the number of axes in a tensor, as an integer.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    Integer (scalar), number of axes.
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> input = K.placeholder(shape=(2, 4, 5))
		    >>> val = np.array([[1, 2], [3, 4]])
		    >>> kvar = K.variable(value=val)
		    >>> K.ndim(input)
		    3
		    >>> K.ndim(kvar)
		    2
		```
	**/
	static public function ndim(x:Dynamic):Dynamic;
	/**
		Computes mean and std for batch then apply batch_normalization on batch.
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		    y: Tensor or variable.
		
		Returns:
		    A bool tensor.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Computes the one-hot representation of an integer tensor.
		
		Arguments:
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
		
		Arguments:
		    shape: Tuple of integers, shape of returned Keras variable.
		    dtype: String, data type of returned Keras variable.
		    name: String, name of returned Keras variable.
		
		Returns:
		    A Keras variable, filled with `1.0`.
		    Note that if `shape` was symbolic, we cannot return a variable,
		    and will return a dynamically-shaped tensor instead.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.ones((3,4))
		    >>> K.eval(kvar)
		    array([[ 1.,  1.,  1.,  1.],
		           [ 1.,  1.,  1.,  1.],
		           [ 1.,  1.,  1.,  1.]], dtype=float32)
		```
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates an all-ones variable of the same shape as another tensor.
		
		Arguments:
		    x: Keras variable or tensor.
		    dtype: String, dtype of returned Keras variable.
		         None uses the dtype of x.
		    name: String, name for the variable to create.
		
		Returns:
		    A Keras variable with the shape of x filled with ones.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.variable(np.random.random((2,3)))
		    >>> kvar_ones = K.ones_like(kvar)
		    >>> K.eval(kvar_ones)
		    array([[ 1.,  1.,  1.],
		           [ 1.,  1.,  1.]], dtype=float32)
		```
	**/
	static public function ones_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Permutes axes in a tensor.
		
		Arguments:
		    x: Tensor or variable.
		    pattern: A tuple of
		        dimension indices, e.g. `(0, 2, 1)`.
		
		Returns:
		    A tensor.
	**/
	static public function permute_dimensions(x:Dynamic, pattern:Dynamic):Dynamic;
	/**
		Instantiates a placeholder tensor and returns it.
		
		Arguments:
		    shape: Shape of the placeholder
		        (integer tuple, may include `None` entries).
		    ndim: Number of axes of the tensor.
		        At least one of {`shape`, `ndim`} must be specified.
		        If both are specified, `shape` is used.
		    dtype: Placeholder type.
		    sparse: Boolean, whether the placeholder should have a sparse type.
		    name: Optional name string for the placeholder.
		
		Returns:
		    Tensor instance (with Keras metadata included).
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> input_ph = K.placeholder(shape=(2, 4, 5))
		    >>> input_ph
		    <tf.Tensor 'Placeholder_4:0' shape=(2, 4, 5) dtype=float32>
		```
	**/
	static public function placeholder(?shape:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D Pooling.
		
		Arguments:
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
		    ValueError: if `pool_mode` is neither `"max"` or `"avg"`.
	**/
	static public function pool2d(x:Dynamic, pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?pool_mode:Dynamic):Dynamic;
	/**
		3D Pooling.
		
		Arguments:
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
		
		Arguments:
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
		
		```python
		   >>> x = K.print_tensor(x, message="x is: ")
		```
		
		Arguments:
		    x: Tensor to print.
		    message: Message to print jointly with the tensor.
		
		Returns:
		    The same tensor `x`, unchanged.
	**/
	static public function print_tensor(x:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Multiplies the values in a tensor, alongside the specified axis.
		
		Arguments:
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
		Returns a tensor with random binomial distribution of values.
		
		Arguments:
		    shape: A tuple of integers, the shape of tensor to create.
		    p: A float, `0. <= p <= 1`, probability of binomial distribution.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
	**/
	static public function random_binomial(shape:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns a tensor with normal distribution of values.
		
		Arguments:
		    shape: A tuple of integers, the shape of tensor to create.
		    mean: A float, mean of the normal distribution to draw samples.
		    stddev: A float, standard deviation of the normal distribution
		        to draw samples.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
	**/
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Instantiates a variable with values drawn from a normal distribution.
		
		Arguments:
		    shape: Tuple of integers, shape of returned Keras variable.
		    mean: Float, mean of the normal distribution.
		    scale: Float, standard deviation of the normal distribution.
		    dtype: String, dtype of returned Keras variable.
		    name: String, name of returned Keras variable.
		    seed: Integer, random seed.
		
		Returns:
		    A Keras variable, filled with drawn samples.
		
		Example:
		```python
		    # TensorFlow example
		    >>> kvar = K.random_normal_variable((2,3), 0, 1)
		    >>> kvar
		    <tensorflow.python.ops.variables.Variable object at 0x10ab12dd0>
		    >>> K.eval(kvar)
		    array([[ 1.19591331,  0.68685907, -0.63814116],
		           [ 0.92629528,  0.28055015,  1.70484698]], dtype=float32)
		```
	**/
	static public function random_normal_variable(shape:Dynamic, mean:Dynamic, scale:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Returns a tensor with uniform distribution of values.
		
		Arguments:
		    shape: A tuple of integers, the shape of tensor to create.
		    minval: A float, lower boundary of the uniform distribution
		        to draw samples.
		    maxval: A float, upper boundary of the uniform distribution
		        to draw samples.
		    dtype: String, dtype of returned tensor.
		    seed: Integer, random seed.
		
		Returns:
		    A tensor.
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Instantiates a variable with values drawn from a uniform distribution.
		
		Arguments:
		    shape: Tuple of integers, shape of returned Keras variable.
		    low: Float, lower boundary of the output interval.
		    high: Float, upper boundary of the output interval.
		    dtype: String, dtype of returned Keras variable.
		    name: String, name of returned Keras variable.
		    seed: Integer, random seed.
		
		Returns:
		    A Keras variable, filled with drawn samples.
		
		Example:
		```python
		    # TensorFlow example
		    >>> kvar = K.random_uniform_variable((2,3), 0, 1)
		    >>> kvar
		    <tensorflow.python.ops.variables.Variable object at 0x10ab40b10>
		    >>> K.eval(kvar)
		    array([[ 0.10940075,  0.10047495,  0.476143  ],
		           [ 0.66137183,  0.00869417,  0.89220798]], dtype=float32)
		```
	**/
	static public function random_uniform_variable(shape:Dynamic, low:Dynamic, high:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Rectified linear unit.
		
		With default values, it returns element-wise `max(x, 0)`.
		
		Otherwise, it follows:
		`f(x) = max_value` for `x >= max_value`,
		`f(x) = x` for `threshold <= x < max_value`,
		`f(x) = alpha * (x - threshold)` otherwise.
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		    n: Python integer, number of times to repeat.
		
		Returns:
		    A tensor.
	**/
	static public function repeat(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Repeats the elements of a tensor along an axis, like `np.repeat`.
		
		If `x` has shape `(s1, s2, s3)` and `axis` is `1`, the output
		will have shape `(s1, s2 * rep, s3)`.
		
		Arguments:
		    x: Tensor or variable.
		    rep: Python integer, number of times to repeat.
		    axis: Axis along which to repeat.
		
		Returns:
		    A tensor.
	**/
	static public function repeat_elements(x:Dynamic, rep:Dynamic, axis:Dynamic):Dynamic;
	/**
		Resets graph identifiers.
		  
	**/
	static public function reset_uids():Dynamic;
	/**
		Reshapes a tensor to the specified shape.
		
		Arguments:
		    x: Tensor or variable.
		    shape: Target shape tuple.
		
		Returns:
		    A tensor.
	**/
	static public function reshape(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Resizes the images contained in a 4D tensor.
		
		Arguments:
		    x: Tensor or variable to resize.
		    height_factor: Positive integer.
		    width_factor: Positive integer.
		    data_format: One of `"channels_first"`, `"channels_last"`.
		
		Returns:
		    A tensor.
		
		Raises:
		    ValueError: if `data_format` is neither
		        `channels_last` or `channels_first`.
	**/
	static public function resize_images(x:Dynamic, height_factor:Dynamic, width_factor:Dynamic, data_format:Dynamic):Dynamic;
	/**
		Resizes the volume contained in a 5D tensor.
		
		Arguments:
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
		
		Arguments:
		    x: Tensor to reverse.
		    axes: Integer or iterable of integers.
		        Axes to reverse.
		
		Returns:
		    A tensor.
	**/
	static public function reverse(x:Dynamic, axes:Dynamic):Dynamic;
	/**
		Iterates over the time dimension of a tensor.
		
		Arguments:
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
		        (at least 3D).
		    initial_states: Tensor with shape `(samples, output_dim)`
		        (no time dimension),
		        containing the initial values for the states used in
		        the step function.
		    go_backwards: Boolean. If True, do the iteration over the time
		        dimension in reverse order and return the reversed sequence.
		    mask: Binary tensor with shape `(samples, time, 1)`,
		        with a zero for every element that is masked.
		    constants: List of constant values passed at each step.
		    unroll: Whether to unroll the RNN or to use a symbolic `while_loop`.
		    input_length: If specified, assume time dimension is of this length.
		
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
	static public function rnn(step_function:Dynamic, inputs:Dynamic, initial_states:Dynamic, ?go_backwards:Dynamic, ?mask:Dynamic, ?constants:Dynamic, ?unroll:Dynamic, ?input_length:Dynamic):Dynamic;
	/**
		Element-wise rounding to the closest integer.
		
		In case of tie, the rounding mode used is "half to even".
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function round(x:Dynamic):Dynamic;
	/**
		2D convolution with separable filters.
		
		Arguments:
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
	**/
	static public function separable_conv2d(x:Dynamic, depthwise_kernel:Dynamic, pointwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		Sets the value of the fuzz factor used in numeric expressions.
		
		Arguments:
		    value: float. New value of epsilon.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> K.epsilon()
		    1e-07
		    >>> K.set_epsilon(1e-05)
		    >>> K.epsilon()
		    1e-05
		```
	**/
	static public function set_epsilon(value:Dynamic):Dynamic;
	/**
		Sets the default float type.
		
		Arguments:
		    value: String; 'float16', 'float32', or 'float64'.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> K.floatx()
		    'float32'
		    >>> K.set_floatx('float16')
		    >>> K.floatx()
		    'float16'
		```
		
		Raises:
		    ValueError: In case of invalid value.
	**/
	static public function set_floatx(value:Dynamic):Dynamic;
	/**
		Sets the value of the image data format convention.
		
		Arguments:
		    data_format: string. `'channels_first'` or `'channels_last'`.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> K.image_data_format()
		    'channels_first'
		    >>> K.set_image_data_format('channels_last')
		    >>> K.image_data_format()
		    'channels_last'
		```
		
		Raises:
		    ValueError: In case of invalid `data_format` value.
	**/
	static public function set_image_data_format(data_format:Dynamic):Dynamic;
	/**
		Sets the learning phase to a fixed value.
		
		Arguments:
		    value: Learning phase value, either 0 or 1 (integers).
		
		Raises:
		    ValueError: if `value` is neither `0` nor `1`.
	**/
	static public function set_learning_phase(value:Dynamic):Dynamic;
	/**
		Sets the global TensorFlow session.
		
		Arguments:
		    session: A TF Session.
	**/
	static public function set_session(session:Dynamic):Dynamic;
	/**
		Sets the value of a variable, from a Numpy array.
		
		Arguments:
		    x: Tensor to set to a new value.
		    value: Value to set the tensor to, as a Numpy array
		        (of the same shape).
	**/
	static public function set_value(x:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns the symbolic shape of a tensor or variable.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A symbolic shape (which is itself a tensor).
		
		Examples:
		
		```python
		    # TensorFlow example
		    >>> from keras import backend as K
		    >>> tf_session = K.get_session()
		    >>> val = np.array([[1, 2], [3, 4]])
		    >>> kvar = K.variable(value=val)
		    >>> input = keras.backend.placeholder(shape=(2, 4, 5))
		    >>> K.shape(kvar)
		    <tf.Tensor 'Shape_8:0' shape=(2,) dtype=int32>
		    >>> K.shape(input)
		    <tf.Tensor 'Shape_9:0' shape=(3,) dtype=int32>
		    # To get integer shape (Instead, you can use K.int_shape(x))
		    >>> K.shape(kvar).eval(session=tf_session)
		    array([2, 2], dtype=int32)
		    >>> K.shape(input).eval(session=tf_session)
		    array([2, 4, 5], dtype=int32)
		```
	**/
	static public function shape(x:Dynamic):Dynamic;
	/**
		Element-wise sigmoid.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sigmoid(x:Dynamic):Dynamic;
	/**
		Element-wise sign.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sign(x:Dynamic):Dynamic;
	/**
		Computes sin of x element-wise.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sin(x:Dynamic):Dynamic;
	/**
		Softmax of a tensor.
		
		Arguments:
		    x: A tensor or variable.
		    axis: The dimension softmax would be performed on.
		        The default is -1 which indicates the last dimension.
		
		Returns:
		    A tensor.
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Softplus of a tensor.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function softplus(x:Dynamic):Dynamic;
	/**
		Softsign of a tensor.
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function softsign(x:Dynamic):Dynamic;
	/**
		Categorical crossentropy with integer targets.
		
		Arguments:
		    target: An integer tensor.
		    output: A tensor resulting from a softmax
		        (unless `from_logits` is True, in which
		        case `output` is expected to be the logits).
		    from_logits: Boolean, whether `output` is the
		        result of a softmax, or is a tensor of logits.
		    axis: Int specifying the channels axis. `axis=-1` corresponds to data
		        format `channels_last', and `axis=1` corresponds to data format
		        `channels_first`.
		
		Returns:
		    Output tensor.
		
		Raises:
		    ValueError: if `axis` is neither -1 nor one of the axes of `output`.
	**/
	static public function sparse_categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Pads the 2nd and 3rd dimensions of a 4D tensor.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function sqrt(x:Dynamic):Dynamic;
	/**
		Element-wise square.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function square(x:Dynamic):Dynamic;
	/**
		Removes a 1-dimension from the tensor at index "axis".
		
		Arguments:
		    x: A tensor or variable.
		    axis: Axis to drop.
		
		Returns:
		    A tensor with the same data as `x` but reduced dimensions.
	**/
	static public function squeeze(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		Stacks a list of rank `R` tensors into a rank `R+1` tensor.
		
		Arguments:
		    x: List of tensors.
		    axis: Axis along which to perform stacking.
		
		Returns:
		    A tensor.
	**/
	static public function stack(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Standard deviation of a tensor, alongside the specified axis.
		
		Arguments:
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the standard deviation.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`,
		        the reduced dimension is retained with length 1.
		
		Returns:
		    A tensor with the standard deviation of elements of `x`.
	**/
	static public function std(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns `variables` but with zero gradient w.r.t. every other variable.
		
		Arguments:
		    variables: Tensor or list of tensors to consider constant with respect
		      to any other variable.
		
		
		Returns:
		    A single tensor or a list of tensors (depending on the passed argument)
		    that has no gradient with respect to any other variable.
	**/
	static public function stop_gradient(variables:Dynamic):Dynamic;
	/**
		Sum of the values in a tensor, alongside the specified axis.
		
		Arguments:
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
		
		Arguments:
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
		
		Arguments:
		    x: A tensor or variable.
		
		Returns:
		    A tensor.
	**/
	static public function tanh(x:Dynamic):Dynamic;
	/**
		Pads the middle dimension of a 3D tensor.
		
		Arguments:
		    x: Tensor or variable.
		    padding: Tuple of 2 integers, how many zeros to
		        add at the start and end of dim 1.
		
		Returns:
		    A padded 3D tensor.
	**/
	static public function temporal_padding(x:Dynamic, ?padding:Dynamic):Dynamic;
	/**
		Converts a sparse tensor into a dense tensor and returns it.
		
		Arguments:
		    tensor: A tensor instance (potentially sparse).
		
		Returns:
		    A dense tensor.
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> b = K.placeholder((2, 2), sparse=True)
		    >>> print(K.is_sparse(b))
		    True
		    >>> c = K.to_dense(b)
		    >>> print(K.is_sparse(c))
		    False
		```
	**/
	static public function to_dense(tensor:Dynamic):Dynamic;
	/**
		Transposes a tensor and returns it.
		
		Arguments:
		    x: Tensor or variable.
		
		Returns:
		    A tensor.
		
		Examples:
		```python
		    >>> var = K.variable([[1, 2, 3], [4, 5, 6]])
		    >>> K.eval(var)
		    array([[ 1.,  2.,  3.],
		           [ 4.,  5.,  6.]], dtype=float32)
		    >>> var_transposed = K.transpose(var)
		    >>> K.eval(var_transposed)
		    array([[ 1.,  4.],
		           [ 2.,  5.],
		           [ 3.,  6.]], dtype=float32)
		```
		
		```python
		    >>> input = K.placeholder((2, 3))
		    >>> input
		    <tf.Tensor 'Placeholder_11:0' shape=(2, 3) dtype=float32>
		    >>> input_transposed = K.transpose(input)
		    >>> input_transposed
		    <tf.Tensor 'transpose_4:0' shape=(3, 2) dtype=float32>
		
		```
	**/
	static public function transpose(x:Dynamic):Dynamic;
	/**
		Returns a tensor with truncated random normal distribution of values.
		
		The generated values follow a normal distribution
		with specified mean and standard deviation,
		except that values whose magnitude is more than
		two standard deviations from the mean are dropped and re-picked.
		
		Arguments:
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
		
		Arguments:
		    x: A Variable.
		    increment: A tensor of same shape as `x`.
		
		Returns:
		    The variable `x` updated.
	**/
	static public function update_add(x:Dynamic, increment:Dynamic):Dynamic;
	/**
		Update the value of `x` by subtracting `decrement`.
		
		Arguments:
		    x: A Variable.
		    decrement: A tensor of same shape as `x`.
		
		Returns:
		    The variable `x` updated.
	**/
	static public function update_sub(x:Dynamic, decrement:Dynamic):Dynamic;
	/**
		Variance of a tensor, alongside the specified axis.
		
		Arguments:
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
		
		Arguments:
		    value: Numpy array, initial value of the tensor.
		    dtype: Tensor type.
		    name: Optional name string for the tensor.
		    constraint: Optional projection function to be
		        applied to the variable after an optimizer update.
		
		Returns:
		    A variable instance (with Keras metadata included).
		
		Examples:
		```python
		    >>> from keras import backend as K
		    >>> val = np.array([[1, 2], [3, 4]])
		    >>> kvar = K.variable(value=val, dtype='float64', name='example_var')
		    >>> K.dtype(kvar)
		    'float64'
		    >>> print(kvar)
		    example_var
		    >>> kvar.eval()
		    array([[ 1.,  2.],
		           [ 3.,  4.]])
		```
	**/
	static public function variable(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Instantiates an all-zeros variable and returns it.
		
		Arguments:
		    shape: Tuple of integers, shape of returned Keras variable
		    dtype: String, data type of returned Keras variable
		    name: String, name of returned Keras variable
		
		Returns:
		    A variable (including Keras metadata), filled with `0.0`.
		    Note that if `shape` was symbolic, we cannot return a variable,
		    and will return a dynamically-shaped tensor instead.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.zeros((3,4))
		    >>> K.eval(kvar)
		    array([[ 0.,  0.,  0.,  0.],
		           [ 0.,  0.,  0.,  0.],
		           [ 0.,  0.,  0.,  0.]], dtype=float32)
		```
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates an all-zeros variable of the same shape as another tensor.
		
		Arguments:
		    x: Keras variable or Keras tensor.
		    dtype: String, dtype of returned Keras variable.
		         None uses the dtype of x.
		    name: String, name for the variable to create.
		
		Returns:
		    A Keras variable with the shape of x filled with zeros.
		
		Example:
		```python
		    >>> from keras import backend as K
		    >>> kvar = K.variable(np.random.random((2,3)))
		    >>> kvar_zeros = K.zeros_like(kvar)
		    >>> K.eval(kvar_zeros)
		    array([[ 0.,  0.,  0.],
		           [ 0.,  0.,  0.]], dtype=float32)
		```
	**/
	static public function zeros_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}