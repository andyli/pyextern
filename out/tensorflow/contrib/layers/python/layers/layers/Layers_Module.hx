/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.layers;
@:pythonImport("tensorflow.contrib.layers.python.layers.layers") extern class Layers_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _apply_activation(y:Dynamic, activation_fn:Dynamic, output_collections:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function add_arg_scope(func:Dynamic):Dynamic;
	/**
		Adds a 2D average pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A `Tensor` of size [batch_size, height, width, channels].
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for op_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
	**/
	static public function avg_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: a tensor of size `[batch_size, height, width, channels]`
		          or `[batch_size, channels]`.
		  decay: decay for the moving average.
		  center: If True, subtract `beta`. If False, `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: small float added to variance to avoid dividing by zero.
		  activation_fn: Optional activation function.
		  updates_collections: collections to collect the update ops for computation.
		    If None, a control dependency would be added to make sure the updates are
		    computed.
		  is_training: whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional collections for the variables.
		  outputs_collections: collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: if rank or last dimension of `inputs` is undefined.
	**/
	static public function batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a bias to the inputs.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: a tensor of with at least rank 2 and value for the last dimension,
		    e.g. `[batch_size, depth]`, `[None, None, None, depth]`.
		  activation_fn: Optional activation function.
		  initializer: An initializer for the bias, defaults to 0.
		  regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional collections for the variables.
		  outputs_collections: collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the result of adding biases to the inputs.
	**/
	static public function bias_add(inputs:Dynamic, ?activation_fn:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 2D convolution followed by an optional batch_norm layer.
		
		`convolution2d` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved with the `inputs` to produce a
		`Tensor` of activations. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the activations. Finally, if `activation_fn` is not `None`,
		it is applied to the activations as well.
		
		Performs a'trous convolution with input stride equal to rate if rate is
		greater than one.
		
		Args:
		  inputs: a 4-D tensor  `[batch_size, height, width, channels]`.
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 `[kernel_height, kernel_width]` of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: one of `VALID` or `SAME`.
		  rate: integer. If less than or equal to 1, a standard convolution is used.
		    If greater than 1, than the a'trous convolution is applied and `stride`
		    must be set to 1.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if both 'rate' and `stride` are larger than one.
	**/
	static public function conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: a 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: the padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function conv2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if 'kernel_size' is not a list of length 2.
	**/
	static public function conv2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 2D convolution followed by an optional batch_norm layer.
		
		`convolution2d` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved with the `inputs` to produce a
		`Tensor` of activations. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the activations. Finally, if `activation_fn` is not `None`,
		it is applied to the activations as well.
		
		Performs a'trous convolution with input stride equal to rate if rate is
		greater than one.
		
		Args:
		  inputs: a 4-D tensor  `[batch_size, height, width, channels]`.
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 `[kernel_height, kernel_width]` of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: one of `VALID` or `SAME`.
		  rate: integer. If less than or equal to 1, a standard convolution is used.
		    If greater than 1, than the a'trous convolution is applied and `stride`
		    must be set to 1.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if both 'rate' and `stride` are larger than one.
	**/
	static public function convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: a 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: the padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function convolution2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if 'kernel_size' is not a list of length 2.
	**/
	static public function convolution2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: the tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
	**/
	static public function dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Flattens the input while maintaining the batch_size.
		
		  Assumes that the first dimension represents the batch.
		
		Args:
		  inputs: a tensor of size [batch_size, ...].
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a flattened tensor with shape [batch_size, k].
		Raises:
		  ValueError: if inputs.shape is wrong.
	**/
	static public function flatten(inputs:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a fully connected layer.
		
		`fully_connected` creates a variable called `weights`, representing a fully
		connected weight matrix, which is multiplied by the `inputs` to produce a
		`Tensor` of hidden units. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the hidden units. Finally, if `activation_fn` is not `None`,
		it is applied to the hidden units as well.
		
		Note: that if `inputs` have a rank greater than 2, then `inputs` is flattened
		prior to the initial matrix multiply by `weights`.
		
		Args:
		  inputs: A tensor of with at least rank 2 and value for the last dimension,
		    i.e. `[batch_size, depth]`, `[None, None, None, channels]`.
		  num_outputs: Integer, the number of output units in the layer.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collections per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		   the tensor variable representing the result of the series of operations.
		
		Raises:
		  ValueError: if x has rank less than 2 or if its last dimension is not set.
	**/
	static public function fully_connected(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds the parameters for a fully connected layer and returns the output.
		
		A fully connected layer is generally defined as a matrix multiply:
		`y = f(w * x + b)` where `f` is given by `activation_fn`. If
		`activation_fn` is `None`, the result of `y = w * x + b` is
		returned.
		
		If `x` has shape [\\\(\\text{dim}_0, \\text{dim}_1, ..., \\text{dim}_n\\\)]
		with more than 2 dimensions (\\\(n > 1\\\)), then we repeat the matrix
		multiply along the first dimensions. The result r is a tensor of shape
		[\\\(\\text{dim}_0, ..., \\text{dim}_{n-1},\\\) `num_output_units`],
		where \\\( r_{i_0, ..., i_{n-1}, k} =
		\\sum_{0 \\leq j < \\text{dim}_n} x_{i_0, ... i_{n-1}, j} \cdot w_{j, k}\\\).
		This is accomplished by reshaping `x` to 2-D
		[\\\(\\text{dim}_0 \\cdot ... \\cdot \\text{dim}_{n-1}, \\text{dim}_n\\\)]
		before the matrix multiply and afterwards reshaping it to
		[\\\(\\text{dim}_0, ..., \\text{dim}_{n-1},\\\) `num_output_units`].
		
		This op creates `w` and optionally `b`. Bias (`b`) can be disabled by setting
		`bias_init` to `None`.
		
		The variable creation is compatible with `tf.variable_scope` and so can be
		reused with `tf.variable_scope` or `tf.make_template`.
		
		Most of the details of variable creation can be controlled by specifying the
		initializers (`weight_init` and `bias_init`) and in which collections to place
		the created variables (`weight_collections` and `bias_collections`; note that
		the variables are always added to the `VARIABLES` collection). The output of
		the layer can be placed in custom collections using `output_collections`.
		The collections arguments default to `WEIGHTS`, `BIASES` and `ACTIVATIONS`,
		respectively.
		
		A per layer regularization can be specified by setting `weight_regularizer`
		and `bias_regularizer`, which are applied to the weights and biases
		respectively, and whose output is added to the `REGULARIZATION_LOSSES`
		collection.
		
		Args:
		  x: The input `Tensor`.
		  num_output_units: The size of the output.
		  activation_fn: A function that requires a single Tensor that is applied as a
		    non-linearity. If None is used, do not apply any activation.
		  weight_init: An optional weight initialization, defaults to
		    `xavier_initializer`.
		  bias_init: An initializer for the bias, defaults to 0. Set to `None` in
		    order to disable bias.
		  name: The name for this operation is used to name operations and to find
		    variables. If specified it must be unique for this scope, otherwise a
		    unique name starting with "fully_connected" will be created.  See
		    `tf.variable_op_scope` for details.
		  weight_collections: List of graph collections to which weights are added.
		  bias_collections: List of graph collections to which biases are added.
		  output_collections: List of graph collections to which outputs are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  weight_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for weights.
		  bias_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for biases.
		
		Returns:
		  The output of the fully connected layer.
		
		Raises:
		  ValueError: if x has rank less than 2 or if its last dimension is not set.
	**/
	static public function legacy_fully_connected(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_linear(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_relu(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function linear(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 2D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A `Tensor` of size [batch_size, height, width, channels].
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for op_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a 2-D list
	**/
	static public function max_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Transform numeric labels into onehot_labels using tf.one_hot.
		
		Args:
		  labels: [batch_size] target labels.
		  num_classes: total number of classes.
		  on_value: A scalar defining the on-value.
		  off_value: A scalar defining the off-value.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  one hot encoding of the labels.
	**/
	static public function one_hot_encoding(labels:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function relu(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	static public function relu6(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Applies the same layer with the same arguments repeatedly.
		
		```python
		  y = repeat(x, 3, conv2d, 64, [3, 3], scope='conv1')
		  # It is equivalent to:
		
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_1')
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_2')
		  y = conv2d(x, 64, [3, 3], scope='conv1/conv1_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  repetitions: Int, number of repetitions.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  *args: Extra args for the layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  a tensor result of applying the layer, repetitions times.
		Raises:
		  ValueError: if the op is unknown or wrong.
	**/
	static public function repeat(inputs:Dynamic, repetitions:Dynamic, layer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `batch_norm_params` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise
		it adds a batch normalization layer. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: the number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: a list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: the number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: a list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function separable_conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `batch_norm_params` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise
		it adds a batch normalization layer. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: the number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: a list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: the number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: a list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function separable_convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs softmax on Nth dimension of N-dimensional logit tensor.
		
		For two-dimensional logits this reduces to tf.nn.softmax. The N-th dimension
		needs to have a specified number of elements (number of classes).
		
		Args:
		  logits: N-dimensional `Tensor` with logits, where N > 1.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a `Tensor` with same shape and type as logits.
	**/
	static public function softmax(logits:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Builds a stack of layers by applying layer repeatedly using stack_args.
		
		`stack` allows you to repeatedly apply the same operation with different
		arguments `stack_args[i]`. For each application of the layer, `stack` creates
		a new scope appended with an increasing number. For example:
		
		```python
		  y = stack(x, fully_connected, [32, 64, 128], scope='fc')
		  # It is equivalent to:
		
		  x = fully_connected(x, 32, scope='fc/fc_1')
		  x = fully_connected(x, 64, scope='fc/fc_2')
		  y = fully_connected(x, 128, scope='fc/fc_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  stack_args: A list/tuple of parameters for each call of layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  a `Tensor` result of applying the stacked layers.
		
		Raises:
		  ValueError: if the op is unknown or wrong.
	**/
	static public function stack(inputs:Dynamic, layer:Dynamic, stack_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Normalizes the given input across the specified dimension to unit length.
		
		Note that the rank of `input` must be known.
		
		Args:
		  inputs: A `Tensor` of arbitrary size.
		  dim: The dimension along which the input is normalized.
		  epsilon: A small value to add to the inputs to avoid dividing by zero.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  The normalized `Tensor`.
		
		Raises:
		  ValueError: If dim is smaller than the number of dimensions in 'inputs'.
	**/
	static public function unit_norm(inputs:Dynamic, dim:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
}