/* This file is generated, do not edit! */
package keras.backend.theano_backend;
@:pythonImport("keras.backend.theano_backend") extern class Theano_backend_Module {
	static public var NAME_SCOPE_STACK : Dynamic;
	static public function T_softsign(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _LEARNING_PHASE : Dynamic;
	static public var _UID_PREFIXES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assert_has_capability(module:Dynamic, func:Dynamic):Dynamic;
	static public function _assert_sparse_module():Dynamic;
	static public function _is_explicit_shape(shape:Dynamic):Dynamic;
	/**
		Apply batch normalization on x given mean, var, beta and gamma.
		    
	**/
	static public function _old_batch_normalization(x:Dynamic, mean:Dynamic, _var:Dynamic, beta:Dynamic, gamma:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Computes mean and std for batch then apply batch_normalization on batch.
		    
	**/
	static public function _old_normalize_batch_in_training(x:Dynamic, gamma:Dynamic, beta:Dynamic, reduction_axes:Dynamic, ?epsilon:Dynamic):Dynamic;
	static public function _postprocess_conv2d_output(conv_out:Dynamic, x:Dynamic, padding:Dynamic, kernel_shape:Dynamic, strides:Dynamic, data_format:Dynamic):Dynamic;
	static public function _postprocess_conv3d_output(conv_out:Dynamic, x:Dynamic, padding:Dynamic, kernel_shape:Dynamic, strides:Dynamic, data_format:Dynamic):Dynamic;
	static public function _prepare_name(name:Dynamic, _default:Dynamic):Dynamic;
	static public function _preprocess_conv2d_depthwise_filter_shape(filter_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv2d_depthwise_kernel(kernel:Dynamic, kernel_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv2d_filter_shape(filter_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv2d_image_shape(image_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv2d_input(x:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv2d_kernel(kernel:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv3d_filter_shape(filter_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv3d_input(x:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv3d_kernel(kernel:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_conv3d_volume_shape(volume_shape:Dynamic, data_format:Dynamic):Dynamic;
	static public function _preprocess_padding(padding:Dynamic):Dynamic;
	static public function _set_keras_shape_for_reduction(x:Dynamic, y:Dynamic, axis:Dynamic, keepdims:Dynamic):Dynamic;
	static public function abs(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Bitwise reduction (logical AND).
		    
	**/
	static public function all(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Bitwise reduction (logical OR).
		    
	**/
	static public function any(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Creates a 1-D tensor containing a sequence of integers.
		
		The function arguments use the same convention as
		Theano's arange: if only one argument is provided,
		it is in fact the "stop" argument.
		
		The default type of the returned tensor is 'int32' to
		match TensorFlow's default.
	**/
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function argmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function argmin(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Batchwise dot product.
		
		batch_dot results in a tensor with less dimensions than the input.
		If the number of dimensions is reduced to 1, we use `expand_dims` to
		make sure that ndim is at least 2.
		
		# Arguments
		    x, y: tensors with ndim >= 2
		    axes: list (or single) int with target dimensions
		
		# Returns
		    A tensor with shape equal to the concatenation of x's shape
		    (less the dimension that was summed over) and y's shape
		    (less the batch dimension and the dimension that was summed over).
		    If the final rank is 1, we reshape it to (batch_size, 1).
		
		# Examples
		    Assume x = [[1, 2], [3, 4]]   and y = [[5, 6], [7, 8]]
		    batch_dot(x, y, axes=1) = [[17, 53]] which is the main diagonal
		    of x.dot(y.T), although we never have to calculate the off-diagonal
		    elements.
		
		    Shape inference:
		    Let x's shape be (100, 20) and y's shape be (100, 30, 20).
		    If dot_axes is (1, 2), to find the output shape of resultant tensor,
		        loop through each dimension in x's shape and y's shape:
		    x.shape[0] : 100 : append to output shape
		    x.shape[1] : 20 : do not append to output shape,
		        dimension 1 of x has been summed over. (dot_axes[0] = 1)
		    y.shape[0] : 100 : do not append to output shape,
		        always ignore first dimension of y
		    y.shape[1] : 30 : append to output shape
		    y.shape[2] : 20 : do not append to output shape,
		        dimension 2 of y has been summed over. (dot_axes[1] = 2)
		
		    output_shape = (100, 30)
	**/
	static public function batch_dot(x:Dynamic, y:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Turn a n-D tensor into a 2D tensor where
		the first dimension is conserved.
	**/
	static public function batch_flatten(x:Dynamic):Dynamic;
	/**
		Returns the value of more than one tensor variable,
		as a list of Numpy arrays.
	**/
	static public function batch_get_value(xs:Dynamic):Dynamic;
	/**
		Apply batch normalization on x given mean, var, beta and gamma.
		    
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, _var:Dynamic, beta:Dynamic, gamma:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic):Dynamic;
	static public function batch_set_value(tuples:Dynamic):Dynamic;
	static public function bias_add(x:Dynamic, bias:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function binary_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic):Dynamic;
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	static public function categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	static public function clip(x:Dynamic, min_value:Dynamic, max_value:Dynamic):Dynamic;
	static public function concatenate(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		1D convolution.
		
		# Arguments
		    kernel: kernel tensor.
		    strides: stride integer.
		    padding: string, `"same"`, `"causal"` or `"valid"`.
		    data_format: string, one of "channels_last", "channels_first"
		    dilation_rate: integer.
	**/
	static public function conv1d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		2D convolution.
		
		# Arguments
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, "same" or "valid".
		    data_format: "channels_last" or "channels_first".
		        Whether to use Theano or TensorFlow data format
		    in inputs/kernels/outputs.
	**/
	static public function conv2d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		2D deconvolution (transposed convolution).
		
		# Arguments
		    kernel: kernel tensor.
		    output_shape: desired dimensions of output.
		    strides: strides tuple.
		    padding: string, "same" or "valid".
		    data_format: "channels_last" or "channels_first".
		        Whether to use Theano or TensorFlow data format
		        in inputs/kernels/outputs.
		    dilation_rate: tuple of 2 integers.
		
		# Raises
		    ValueError: if using an even kernel size with padding 'same'.
	**/
	static public function conv2d_transpose(x:Dynamic, kernel:Dynamic, output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		3D convolution.
		
		# Arguments
		    kernel: kernel tensor.
		    strides: strides tuple.
		    padding: string, "same" or "valid".
		    data_format: "channels_last" or "channels_first".
		        Whether to use Theano or TensorFlow data format
		    in inputs/kernels/outputs.
	**/
	static public function conv3d(x:Dynamic, kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		3D deconvolution (transposed convolution).
		
		# Arguments
		    kernel: kernel tensor.
		    output_shape: desired dimensions of output.
		    strides: strides tuple.
		    padding: string, "same" or "valid".
		    data_format: "channels_last" or "channels_first".
		        Whether to use Theano or TensorFlow data format
		    in inputs/kernels/outputs.
		
		# Raises
		    ValueError: if using an even kernel size with padding 'same'.
	**/
	static public function conv3d_transpose(x:Dynamic, kernel:Dynamic, output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function cos(x:Dynamic):Dynamic;
	/**
		Returns the number of scalars in a tensor.
		
		Return: numpy integer.
	**/
	static public function count_params(x:Dynamic):Dynamic;
	/**
		Runs CTC loss algorithm on each batch element.
		
		# Arguments
		    y_true: tensor (samples, max_string_length) containing the truth labels
		    y_pred: tensor (samples, time_steps, num_categories) containing the prediction,
		            or output of the softmax
		    input_length: tensor (samples,1) containing the sequence length for
		            each batch item in y_pred
		    label_length: tensor (samples,1) containing the sequence length for
		            each batch item in y_true
		
		# Returns
		    Tensor with shape (samples,1) containing the
		        CTC loss of each element
	**/
	static public function ctc_batch_cost(y_true:Dynamic, y_pred:Dynamic, input_length:Dynamic, label_length:Dynamic):Dynamic;
	static public function ctc_cost(predict:Dynamic, Y:Dynamic):Dynamic;
	static public function ctc_create_skip_idxs(Y:Dynamic):Dynamic;
	static public function ctc_interleave_blanks(Y:Dynamic):Dynamic;
	static public function ctc_path_probs(predict:Dynamic, Y:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function ctc_update_log_p(skip_idxs:Dynamic, zeros:Dynamic, active:Dynamic, log_p_curr:Dynamic, log_p_prev:Dynamic):Dynamic;
	/**
		Cumulative product of the values in a tensor, alongside the specified axis.
		
		# Arguments
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the product.
		
		# Returns
		    A tensor of the cumulative product of values of `x` along `axis`.
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Cumulative sum of the values in a tensor, alongside the specified axis.
		
		# Arguments
		    x: A tensor or variable.
		    axis: An integer, the axis to compute the sum.
		
		# Returns
		    A tensor of the cumulative sum of values of `x` along `axis`.
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		2D convolution with separable filters.
		
		# Arguments
		    x: input tensor
		    depthwise_kernel: convolution kernel for the depthwise convolution.
		    strides: strides tuple (length 2).
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of integers,
		        dilation rates for the separable convolution.
		
		# Returns
		    Output tensor.
		
		# Raises
		    ValueError: if `data_format` is neither `"channels_last"` or `"channels_first"`.
	**/
	static public function depthwise_conv2d(x:Dynamic, depthwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dot(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Sets entries in `x` to zero at random,
		while scaling the entire tensor.
		
		# Arguments
		    x: tensor
		    level: fraction of the entries in the tensor
		        that will be set to 0.
		    noise_shape: shape for randomly generated keep/drop flags,
		        must be broadcastable to the shape of `x`
		    seed: random seed to ensure determinism.
	**/
	static public function dropout(x:Dynamic, level:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic):Dynamic;
	static public function dtype(x:Dynamic):Dynamic;
	/**
		Exponential linear unit
		
		# Arguments
		    x: Tensor to compute the activation function for.
		    alpha: scalar
	**/
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Returns the value of the fuzz factor used in numeric expressions.
		
		# Returns
		    A float.
		
		# Example
		```python
		    >>> keras.backend.epsilon()
		    1e-07
		```
	**/
	static public function epsilon():Dynamic;
	static public function equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns the value of a tensor.
		    
	**/
	static public function eval(x:Dynamic):Dynamic;
	static public function exp(x:Dynamic):Dynamic;
	/**
		Add a 1-sized dimension at index "dim".
		    
	**/
	static public function expand_dims(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Instantiates an identity matrix.
		    
	**/
	static public function eye(size:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function flatten(x:Dynamic):Dynamic;
	/**
		Returns the default float type, as a string.
		(e.g. 'float16', 'float32', 'float64').
		
		# Returns
		    String, the current default float type.
		
		# Example
		```python
		    >>> keras.backend.floatx()
		    'float32'
		```
	**/
	static public function floatx():Dynamic;
	/**
		Reduce elems using fn to combine them from left to right.
		
		# Arguments
		    fn: Callable that will be called upon each element in elems and an
		        accumulator, for instance lambda acc, x: acc + x
		    elems: tensor
		    initializer: The first value used (elems[0] in case of None)
		    name: A string name for the foldl node in the graph
		
		# Returns
		    Same type and shape as initializer
	**/
	static public function foldl(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduce elems using fn to combine them from right to left.
		
		# Arguments
		    fn: Callable that will be called upon each element in elems and an
		        accumulator, for instance lambda acc, x: acc + x
		    elems: tensor
		    initializer: The first value used (elems[-1] in case of None)
		    name: A string name for the foldr node in the graph
		
		# Returns
		    Same type and shape as initializer
	**/
	static public function foldr(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?name:Dynamic):Dynamic;
	@:native("function")
	static public function _function(inputs:Dynamic, outputs:Dynamic, ?updates:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieves the elements of indices `indices` in the tensor `reference`.
		
		# Arguments
		    reference: A tensor.
		    indices: An integer tensor of indices.
		
		# Returns
		    A tensor of same type as `reference`.
	**/
	static public function gather(reference:Dynamic, indices:Dynamic):Dynamic;
	/**
		Provides a unique UID given a string prefix.
		
		# Arguments
		    prefix: string.
		
		# Returns
		    An integer.
		
		# Example
		```python
		    >>> keras.backend.get_uid('dense')
		    1
		    >>> keras.backend.get_uid('dense')
		    2
		```
	**/
	static public function get_uid(?prefix:Dynamic):Dynamic;
	static public function get_value(x:Dynamic):Dynamic;
	static public function get_variable_shape(x:Dynamic):Dynamic;
	static public function gradients(loss:Dynamic, variables:Dynamic):Dynamic;
	static public function greater(x:Dynamic, y:Dynamic):Dynamic;
	static public function greater_equal(x:Dynamic, y:Dynamic):Dynamic;
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		For Python 2, checks if there is an argument with the given name.
		
		For Python 3, checks if there is an argument with the given name, and
		also whether this argument can be called with a keyword (i.e. if it is
		not a positional-only argument).
		
		# Arguments
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		# Returns
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	/**
		Returns a tensor with the same content as the input tensor.
		
		# Arguments
		    x: The input tensor.
		    name: String, name for the variable to create.
		
		# Returns
		    A tensor of the same shape, type and content.
	**/
	static public function identity(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This function corresponds to an if statement, returning (and evaluating)
		inputs in the ``then_branch`` if ``condition`` evaluates to True or
		inputs in the ``else_branch`` if ``condition`` evalutates to False.
		
		:type condition: scalar like
		:param condition:
		    ``condition`` should be a tensor scalar representing the condition.
		    If it evaluates to 0 it corresponds to False, anything else stands
		    for True.
		
		:type then_branch: list of theano expressions/ theano expression
		:param then_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    true. The number of variables should match those in the
		    ``else_branch``, and there should be a one to one correspondance
		    (type wise) with the tensors provided in the else branch
		
		:type else_branch: list of theano expressions/ theano expressions
		:param else_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    false. The number of variables should match those in the then branch,
		    and there should be a one to one correspondace (type wise) with the
		    tensors provided in the then branch.
		
		:return:
		    A list of theano variables or a single variable (depending on the
		    nature of the ``then_branch`` and ``else_branch``). More exactly if
		    ``then_branch`` and ``else_branch`` is a tensor, then
		    the return variable will be just a single variable, otherwise a
		    list. The value returns correspond either to the values in the
		    ``then_branch`` or in the ``else_branch`` depending on the value of
		    ``cond``.
	**/
	static public function ifelse(condition:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Legacy getter for `image_data_format`.
		
		# Returns
		    string, one of `'th'`, `'tf'`
	**/
	static public function image_dim_ordering():Dynamic;
	/**
		Selects `x` in test phase, and `alt` otherwise.
		Note that `alt` should have the *same shape* as `x`.
		
		# Returns
		    Either `x` or `alt` based on `K.learning_phase`.
	**/
	static public function in_test_phase(x:Dynamic, alt:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Returns whether the `targets` are in the top `k` `predictions`.
		
		# Arguments
		    predictions: A tensor of shape `(batch_size, classes)` and type `float32`.
		    targets: A 1D tensor of length `batch_size` and type `int32` or `int64`.
		    k: An `int`, number of top elements to consider.
		
		# Returns
		    A 1D tensor of length `batch_size` and type `bool`.
		    `output[i]` is `True` if `predictions[i, targets[i]]` is within top-`k`
		    values of `predictions[i]`.
	**/
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic):Dynamic;
	/**
		Selects `x` in train phase, and `alt` otherwise.
		
		Note that `alt` should have the *same shape* as `x`.
		
		# Returns
		    Either `x` or `alt` based on the `training` flag.
		    the `training` flag defaults to `K.learning_phase()`.
	**/
	static public function in_train_phase(x:Dynamic, alt:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Returns the shape of a Keras tensor or a Keras variable as a tuple of
		integers or None entries.
		
		# Arguments
		    x: Tensor or variable.
		
		# Returns
		    A tuple of integers (or None entries).
	**/
	static public function int_shape(x:Dynamic):Dynamic;
	/**
		Returns whether `x` is a Keras tensor.
		
		A "Keras tensor" is a tensor that was returned by a Keras layer,
		(`Layer` class) or by `Input`.
		
		# Arguments
		    x: A candidate tensor.
		
		# Returns
		    A boolean: Whether the argument is a Keras tensor.
		
		# Raises
		    ValueError: In case `x` is not a symbolic tensor.
		
		# Examples
		```python
		    >>> from keras import backend as K
		    >>> from keras.layers import Input, Dense
		    >>> np_var = numpy.array([1, 2])
		    >>> K.is_keras_tensor(np_var) # A numpy array is not a symbolic tensor.
		    ValueError
		    >>> k_var = tf.placeholder('float32', shape=(1,1))
		    >>> K.is_keras_tensor(k_var) # A variable indirectly created outside of keras is not a Keras tensor.
		    False
		    >>> keras_var = K.variable(np_var)
		    >>> K.is_keras_tensor(keras_var)  # A variable created with the keras backend is not a Keras tensor.
		    False
		    >>> keras_placeholder = K.placeholder(shape=(2, 4, 5))
		    >>> K.is_keras_tensor(keras_placeholder)  # A placeholder is not a Keras tensor.
		    False
		    >>> keras_input = Input([10])
		    >>> K.is_keras_tensor(keras_input) # An Input is a Keras tensor.
		    True
		    >>> keras_layer_output = Dense(10)(keras_input)
		    >>> K.is_keras_tensor(keras_layer_output) # Any Keras layer output is a Keras tensor.
		    True
		```
	**/
	static public function is_keras_tensor(x:Dynamic):Dynamic;
	/**
		Returns whether `x` is a placeholder.
		
		# Arguments
		    x: A candidate placeholder.
		
		# Returns
		    Boolean.
	**/
	static public function is_placeholder(x:Dynamic):Dynamic;
	static public function is_sparse(tensor:Dynamic):Dynamic;
	static public function is_tensor(x:Dynamic):Dynamic;
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function learning_phase():Dynamic;
	static public function less(x:Dynamic, y:Dynamic):Dynamic;
	static public function less_equal(x:Dynamic, y:Dynamic):Dynamic;
	static public function local_conv1d(inputs:Dynamic, kernel:Dynamic, kernel_size:Dynamic, strides:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function local_conv2d(inputs:Dynamic, kernel:Dynamic, kernel_size:Dynamic, strides:Dynamic, output_shape:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function log(x:Dynamic):Dynamic;
	/**
		Computes log(sum(exp(elements across dimensions of a tensor))).
		
		This function is more numerically stable than log(sum(exp(x))).
		It avoids overflows caused by taking the exp of large inputs and
		underflows caused by taking the log of small inputs.
		
		# Arguments
		    x: A tensor or variable.
		    axis: An integer, the axis to reduce over.
		    keepdims: A boolean, whether to keep the dimensions or not.
		        If `keepdims` is `False`, the rank of the tensor is reduced
		        by 1. If `keepdims` is `True`, the reduced dimension is
		        retained with length 1.
		
		# Returns
		    The reduced tensor.
	**/
	static public function logsumexp(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Map the function fn over the elements elems and return the outputs.
		
		# Arguments
		    fn: Callable that will be called upon each element in elems
		    elems: tensor, at least 2 dimensional
		    name: A string name for the map node in the graph
		
		# Returns
		    Tensor with first dimension equal to the elems and second depending on
		    fn
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function max(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function maximum(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Mean of a tensor, alongside the specified axis.
		    
	**/
	static public function mean(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function min(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function minimum(x:Dynamic, y:Dynamic):Dynamic;
	static public function moving_average_update(variable:Dynamic, value:Dynamic, momentum:Dynamic):Dynamic;
	static public function name_scope(name:Dynamic):Dynamic;
	static public function ndim(x:Dynamic):Dynamic;
	/**
		Computes mean and std for batch then apply batch_normalization on batch.
		    
	**/
	static public function normalize_batch_in_training(x:Dynamic, gamma:Dynamic, beta:Dynamic, reduction_axes:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Checks that the value correspond to a valid data format.
		
		# Arguments
		    value: String or None. `'channels_first'` or `'channels_last'`.
		
		# Returns
		    A string, either `'channels_first'` or `'channels_last'`
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.normalize_data_format(None)
		    'channels_first'
		    >>> K.normalize_data_format('channels_last')
		    'channels_last'
		```
		
		# Raises
		    ValueError: if `value` or the global `data_format` invalid.
	**/
	static public function normalize_data_format(value:Dynamic):Dynamic;
	static public function not_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Input: nD integer tensor of shape (batch_size, dim1, dim2, ... dim(n-1))
		Output: (n + 1)D one hot representation of the input
		with shape (batch_size, dim1, dim2, ... dim(n-1), num_classes)
	**/
	static public function one_hot(indices:Dynamic, num_classes:Dynamic):Dynamic;
	/**
		Instantiates an all-ones variable.
		    
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function ones_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function pattern_broadcast(x:Dynamic, broadcastable:Dynamic):Dynamic;
	/**
		Transpose dimensions.
		
		pattern should be a tuple or list of
		dimension indices, e.g. [0, 2, 1].
	**/
	static public function permute_dimensions(x:Dynamic, pattern:Dynamic):Dynamic;
	/**
		Instantiate an input data placeholder variable.
		    
	**/
	static public function placeholder(?shape:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?name:Dynamic):Dynamic;
	static public function pool2d(x:Dynamic, pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?pool_mode:Dynamic):Dynamic;
	static public function pool3d(x:Dynamic, pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?pool_mode:Dynamic):Dynamic;
	static public function pow(x:Dynamic, a:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Print the message and the tensor when evaluated and return the same
		tensor.
	**/
	static public function print_tensor(x:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Multiply the values in a tensor, alongside the specified axis.
		    
	**/
	static public function prod(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return True if bool(x) is True for all values x in the iterable.
		
		If the iterable is empty, return True.
	**/
	static public function py_all(iterable:Dynamic):Dynamic;
	/**
		Return True if bool(x) is True for any x in the iterable.
		
		If the iterable is empty, return False.
	**/
	static public function py_any(iterable:Dynamic):Dynamic;
	/**
		Return the sum of a 'start' value (default: 0) plus an iterable of numbers
		
		When the iterable is empty, return the start value.
		This function is intended specifically for use with numeric values and may
		reject non-numeric types.
	**/
	static public function py_sum(iterable:Dynamic, ?start:Dynamic):Dynamic;
	static public function random_binomial(shape:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static public function random_normal_variable(shape:Dynamic, mean:Dynamic, scale:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static public function random_uniform_variable(shape:Dynamic, low:Dynamic, high:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function relu(x:Dynamic, ?alpha:Dynamic, ?max_value:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Repeat a 2D tensor.
		
		If x has shape (samples, dim) and n=2,
		the output will have shape (samples, 2, dim).
	**/
	static public function repeat(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Repeat the elements of a tensor along an axis, like np.repeat.
		
		If x has shape (s1, s2, s3) and axis=1, the output
		will have shape (s1, s2 * rep, s3).
	**/
	static public function repeat_elements(x:Dynamic, rep:Dynamic, axis:Dynamic):Dynamic;
	static public function reset_uids():Dynamic;
	static public function reshape(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Resize the images contained in a 4D tensor of shape
		- [batch, channels, height, width] (for 'channels_first' data_format)
		- [batch, height, width, channels] (for 'channels_last' data_format)
		by a factor of (height_factor, width_factor). Both factors should be
		positive integers.
	**/
	static public function resize_images(x:Dynamic, height_factor:Dynamic, width_factor:Dynamic, data_format:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Resize the volume contained in a 5D tensor of shape
		- [batch, channels, depth, height, width] (for 'channels_first' data_format)
		- [batch, depth, height, width, channels] (for 'channels_last' data_format)
		by a factor of (depth_factor, height_factor, width_factor).
		Both factors should be positive integers.
	**/
	static public function resize_volumes(x:Dynamic, depth_factor:Dynamic, height_factor:Dynamic, width_factor:Dynamic, data_format:Dynamic):Dynamic;
	/**
		Reverse a tensor along the specified axes
		    
	**/
	static public function reverse(x:Dynamic, axes:Dynamic):Dynamic;
	/**
		Iterates over the time dimension of a tensor.
		
		# Arguments
		    step_function:
		        Parameters:
		            inputs: Tensor with shape (samples, ...) (no time dimension),
		                representing input for the batch of samples at a certain
		                time step.
		            states: List of tensors.
		        Returns:
		            outputs: Tensor with shape (samples, ...) (no time dimension),
		            new_states: List of tensors, same length and shapes
		                as 'states'.
		    inputs: Tensor of temporal data of shape (samples, time, ...)
		        (at least 3D).
		    initial_states: Tensor with shape (samples, ...) (no time dimension),
		        containing the initial values for the states used in
		        the step function.
		    go_backwards: Boolean. If True, do the iteration over the time
		        dimension in reverse order and return the reversed sequence.
		    mask: Binary tensor with shape (samples, time),
		        with a zero for every element that is masked.
		    constants: A list of constant values passed at each step.
		    unroll: Whether to unroll the RNN or to use a symbolic loop
		        (`while_loop` or `scan` depending on backend).
		    input_length: Static number of timesteps in the input.
		        Must be specified if using `unroll`.
		
		# Returns
		    A tuple (last_output, outputs, new_states).
		
		    last_output: The latest output of the rnn, of shape `(samples, ...)`
		    outputs: Tensor with shape `(samples, time, ...)` where each
		        entry `outputs[s, t]` is the output of the step function
		        at time `t` for sample `s`.
		    new_states: List of tensors, latest states returned by
		        the step function, of shape `(samples, ...)`.
	**/
	static public function rnn(step_function:Dynamic, inputs:Dynamic, initial_states:Dynamic, ?go_backwards:Dynamic, ?mask:Dynamic, ?constants:Dynamic, ?unroll:Dynamic, ?input_length:Dynamic):Dynamic;
	static public function round(x:Dynamic):Dynamic;
	/**
		1D convolution with separable filters.
		
		# Arguments
		    x: input tensor
		    depthwise_kernel: convolution kernel for the depthwise convolution.
		    pointwise_kernel: kernel for the 1x1 convolution.
		    strides: strides integer.
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: integer dilation rate.
		
		# Returns
		    Output tensor.
		
		# Raises
		    ValueError: if `data_format` is neither `"channels_last"` or `"channels_first"`.
	**/
	static public function separable_conv1d(x:Dynamic, depthwise_kernel:Dynamic, pointwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		2D convolution with separable filters.
		
		# Arguments
		    x: input tensor
		    depthwise_kernel: convolution kernel for the depthwise convolution.
		    pointwise_kernel: kernel for the 1x1 convolution.
		    strides: strides tuple (length 2).
		    padding: string, `"same"` or `"valid"`.
		    data_format: string, `"channels_last"` or `"channels_first"`.
		    dilation_rate: tuple of integers,
		        dilation rates for the separable convolution.
		
		# Returns
		    Output tensor.
		
		# Raises
		    ValueError: if `data_format` is neither `"channels_last"` or `"channels_first"`.
	**/
	static public function separable_conv2d(x:Dynamic, depthwise_kernel:Dynamic, pointwise_kernel:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic):Dynamic;
	/**
		Legacy setter for `image_data_format`.
		
		# Arguments
		    dim_ordering: string. `tf` or `th`.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.image_data_format()
		    'channels_first'
		    >>> K.set_image_data_format('channels_last')
		    >>> K.image_data_format()
		    'channels_last'
		```
		
		# Raises
		    ValueError: if `dim_ordering` is invalid.
	**/
	static public function set_image_dim_ordering(dim_ordering:Dynamic):Dynamic;
	static public function set_learning_phase(value:Dynamic):Dynamic;
	static public function set_value(x:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		Warning: type returned will be different for
		Theano backend (Theano tensor type) and TF backend (TF TensorShape).
	**/
	static public function shape(x:Dynamic):Dynamic;
	static public function sigmoid(x:Dynamic):Dynamic;
	static public function sign(x:Dynamic):Dynamic;
	static public function sin(x:Dynamic):Dynamic;
	static public function slice(x:Dynamic, start:Dynamic, size:Dynamic):Dynamic;
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function softplus(x:Dynamic):Dynamic;
	static public function softsign(x:Dynamic):Dynamic;
	static public function sparse_categorical_crossentropy(target:Dynamic, output:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Pad the 2nd and 3rd dimensions of a 4D tensor
		with "padding[0]" and "padding[1]" (resp.) zeros left and right.
	**/
	static public function spatial_2d_padding(x:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Pad the 2nd, 3rd and 4th dimensions of a 5D tensor
		with "padding[0]", "padding[1]" and "padding[2]" (resp.) zeros left and right.
	**/
	static public function spatial_3d_padding(x:Dynamic, ?padding:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function sqrt(x:Dynamic):Dynamic;
	static public function square(x:Dynamic):Dynamic;
	/**
		Remove a 1-dimension from the tensor at index "axis".
		    
	**/
	static public function squeeze(x:Dynamic, axis:Dynamic):Dynamic;
	static public function stack(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function std(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns `variables` but with zero gradient w.r.t. every other variable.
		
		# Arguments
		    variables: tensor or list of tensors to consider constant with respect
		        to any other variable.
		
		# Returns
		    A single tensor or a list of tensors (depending on the passed argument)
		        that has constant gradient with respect to any other variable.
	**/
	static public function stop_gradient(variables:Dynamic):Dynamic;
	/**
		Sum of the values in a tensor, alongside the specified axis.
		    
	**/
	static public function sum(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Switches between two operations depending on a scalar value.
		
		Note that both `then_expression` and `else_expression`
		should be symbolic tensors of the *same shape*.
		
		# Arguments
		    condition: scalar tensor (`int` or `bool`).
		    then_expression: either a tensor, or a callable that returns a tensor.
		    else_expression: either a tensor, or a callable that returns a tensor.
		
		# Returns
		    The selected tensor.
	**/
	@:native("switch")
	static public function _switch(condition:Dynamic, then_expression:Dynamic, else_expression:Dynamic):Dynamic;
	static public function tanh(x:Dynamic):Dynamic;
	/**
		Pad the middle dimension of a 3D tensor
		with "padding" zeros left and right.
		
		Apologies for the inane API, but Theano makes this
		really hard.
	**/
	static public function temporal_padding(x:Dynamic, ?padding:Dynamic):Dynamic;
	static public function tile(x:Dynamic, n:Dynamic):Dynamic;
	static public function to_dense(tensor:Dynamic):Dynamic;
	static public function transpose(x:Dynamic):Dynamic;
	/**
		Converts a tuple or a list to the correct `data_format`.
		
		It does so by switching the positions of its elements.
		
		# Arguments
		    shape: Tuple or list, often representing shape,
		        corresponding to `'channels_last'`.
		    target_format: A string, either `'channels_first'` or `'channels_last'`.
		    spatial_axes: A tuple of integers.
		        Correspond to the indexes of the spatial axes.
		        For example, if you pass a shape
		        representing (batch_size, timesteps, rows, cols, channels),
		        then `spatial_axes=(2, 3)`.
		
		# Returns
		    A tuple or list, with the elements permuted according
		    to `target_format`.
		
		# Example
		```python
		    >>> from keras.utils.generic_utils import transpose_shape
		    >>> transpose_shape((16, 128, 128, 32),'channels_first', spatial_axes=(1, 2))
		    (16, 32, 128, 128)
		    >>> transpose_shape((16, 128, 128, 32), 'channels_last', spatial_axes=(1, 2))
		    (16, 128, 128, 32)
		    >>> transpose_shape((128, 128, 32), 'channels_first', spatial_axes=(0, 1))
		    (32, 128, 128)
		```
		
		# Raises
		    ValueError: if `value` or the global `data_format` invalid.
	**/
	static public function transpose_shape(shape:Dynamic, target_format:Dynamic, spatial_axes:Dynamic):Dynamic;
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static public function update(x:Dynamic, new_x:Dynamic):Dynamic;
	static public function update_add(x:Dynamic, increment:Dynamic):Dynamic;
	static public function update_sub(x:Dynamic, decrement:Dynamic):Dynamic;
	@:native("var")
	static public function _var(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Instantiates a variable and returns it.
		
		# Arguments
		    value: Numpy array, initial value of the tensor.
		    dtype: Tensor type.
		    name: Optional name string for the tensor.
		    constraint: Optional projection function to be
		        applied to the variable after an optimizer update.
		
		# Returns
		    A variable instance (with Keras metadata included).
	**/
	static public function variable(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Instantiates an all-zeros variable.
		    
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function zeros_like(x:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}