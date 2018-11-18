/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.layers;
@:pythonImport("tensorflow.contrib.layers.python.layers.layers") extern class Layers_Module {
	static public var DATA_FORMAT_NCDHW : Dynamic;
	static public var DATA_FORMAT_NCHW : Dynamic;
	static public var DATA_FORMAT_NDHWC : Dynamic;
	static public var DATA_FORMAT_NHWC : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds variable (or all its parts) to all collections with that name.
	**/
	static public function _add_variable_to_collections(variable:Dynamic, collections_set:Dynamic, collections_name:Dynamic):Dynamic;
	static public function _apply_activation(y:Dynamic, activation_fn:Dynamic, output_collections:Dynamic):Dynamic;
	/**
		Build a model variable getter that respects scope getter and renames.
	**/
	static public function _build_variable_getter(?rename:Dynamic):Dynamic;
	/**
		Helper function for `inner_flatten`.
	**/
	static public function _dense_inner_flatten(inputs:Dynamic, new_rank:Dynamic):Dynamic;
	/**
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. For example:
		
		```python
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		One can set updates_collections=None to force the updates in place, but that
		can have a speed penalty, especially in distributed settings.
		
		Args:
		  inputs: A tensor with 2 or more dimensions, where the first dimension has
		    `batch_size`. The normalization is over all but the last dimension if
		    `data_format` is `NHWC` and the second dimension if `data_format` is
		    `NCHW`.
		  decay: Decay for the moving average. Reasonable values for `decay` are close
		    to 1.0, typically in the multiple-nines range: 0.999, 0.99, 0.9, etc.
		    Lower `decay` value (recommend trying `decay`=0.9) if model experiences
		    reasonably good training performance but poor validation and/or test
		    performance.
		  center: If True, add offset of `beta` to normalized tensor.  If False,
		    `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  param_initializers: Optional initializers for beta, gamma, moving mean and
		    moving variance.
		  param_regularizers: Optional regularizer for beta and gamma.
		  updates_collections: Collections to collect the update ops for computation.
		    The updates_ops need to be executed with the train_op.
		    If None, a control dependency would be added to make sure the updates are
		    computed in place.
		  is_training: Whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  zero_debias_moving_mean: Use zero_debias for moving_mean.
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If the rank of `inputs` is neither 2 or 4.
		  ValueError: If rank or `C` dimension of `inputs` is undefined.
	**/
	static public function _fused_batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?param_regularizers:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic, ?zero_debias_moving_mean:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Flattens inner dimensions of `inputs`, returns a Tensor with `new_rank`.
		
		For example:
		'''
		    x = tf.random_uniform(shape=[1, 2, 3, 4, 5, 6])
		    y = _inner_flatten(x, 4)
		    assert y.get_shape().as_list() == [1, 2, 3, (4 * 5 * 6)]
		'''
		This layer will fail at run time if `new_rank` is greater than the current
		rank of `inputs`.
		
		Args:
		  inputs: A `Tensor` or `SparseTensor`.
		  new_rank: The desired rank of the returned `Tensor` or `SparseTensor`.
		  output_collections: Collection to which the outputs will be added.
		  scope: Optional scope for `name_scope`.
		Returns:
		  A `Tensor` or `SparseTensor` containing the same values as `inputs`, but
		  with innermost dimensions flattened to obtain rank `new_rank`.
		
		Raises:
		  TypeError: `inputs` is not a `Tensor` or `SparseTensor`.
	**/
	static public function _inner_flatten(inputs:Dynamic, new_rank:Dynamic, ?output_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Getter that uses model_variable for compatibility with core layers.
	**/
	static public function _model_variable_getter(getter:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?rename:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?_:python.KwArgs<Dynamic>):Dynamic;
	/**
		Python gradient helper function for scale_gradient function below.
	**/
	static public function _scale_gradient_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Shape helper function for scale_gradient function below.
	**/
	static public function _scale_gradient_shape(op:Dynamic):Dynamic;
	/**
		Helper function for `inner_flatten`.
	**/
	static public function _sparse_inner_flatten(inputs:Dynamic, new_rank:Dynamic):Dynamic;
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
		  inputs: A 4-D tensor of shape `[batch_size, height, width, channels]` if
		    `data_format` is `NHWC`, and `[batch_size, channels, height, width]` if
		    `data_format` is `NCHW`.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
	**/
	static public function avg_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 3D average pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 5-D tensor of shape `[batch_size, depth, height, width, channels]`
		    if `data_format` is `NDHWC`, and `[batch_size, channels, depth, height,
		    width]` if `data_format` is `NCDHW`.
		  kernel_size: A list of length 3: [kernel_depth, kernel_height, kernel_width]
		    of the pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
	**/
	static public function avg_pool3d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected. The
		normalization is over all but the last dimension if `data_format` is `NHWC`
		and all but the second dimension if `data_format` is `NCHW`.  In case of a 2D
		tensor this corresponds to the batch dimension, while in case of a 4D tensor
		this
		corresponds to the batch and space dimensions.
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. For example:
		
		```python
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		One can set updates_collections=None to force the updates in place, but that
		can have a speed penalty, especially in distributed settings.
		
		Args:
		  inputs: A tensor with 2 or more dimensions, where the first dimension has
		    `batch_size`. The normalization is over all but the last dimension if
		    `data_format` is `NHWC` and the second dimension if `data_format` is
		    `NCHW`.
		  decay: Decay for the moving average. Reasonable values for `decay` are close
		    to 1.0, typically in the multiple-nines range: 0.999, 0.99, 0.9, etc.
		    Lower `decay` value (recommend trying `decay`=0.9) if model experiences
		    reasonably good training performance but poor validation and/or test
		    performance. Try zero_debias_moving_mean=True for improved stability.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  param_initializers: Optional initializers for beta, gamma, moving mean and
		    moving variance.
		  param_regularizers: Optional regularizer for beta and gamma.
		  updates_collections: Collections to collect the update ops for computation.
		    The updates_ops need to be executed with the train_op.
		    If None, a control dependency would be added to make sure the updates are
		    computed in place.
		  is_training: Whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  batch_weights: An optional tensor of shape `[batch_size]`,
		    containing a frequency weight for each batch item. If present,
		    then the batch normalization uses weighted mean and
		    variance. (This can be used to correct for bias in training
		    example selection.)
		  fused: if `None` or `True`, use a faster, fused implementation if possible.
		    If `False`, use the system recommended implementation.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  zero_debias_moving_mean: Use zero_debias for moving_mean. It creates a new
		    pair of variables 'moving_mean/biased' and 'moving_mean/local_step'.
		  scope: Optional scope for `variable_scope`.
		  renorm: Whether to use Batch Renormalization
		    (https://arxiv.org/abs/1702.03275). This adds extra variables during
		    training. The inference is the same for either value of this parameter.
		  renorm_clipping: A dictionary that may map keys 'rmax', 'rmin', 'dmax' to
		    scalar `Tensors` used to clip the renorm correction. The correction
		    `(r, d)` is used as `corrected_value = normalized_value * r + d`, with
		    `r` clipped to [rmin, rmax], and `d` to [-dmax, dmax]. Missing rmax, rmin,
		    dmax are set to inf, 0, inf, respectively.
		  renorm_decay: Momentum used to update the moving means and standard
		    deviations with renorm. Unlike `momentum`, this affects training
		    and should be neither too small (which would add noise) nor too large
		    (which would give stale estimates). Note that `decay` is still applied
		    to get the means and variances for inference.
		  adjustment: A function taking the `Tensor` containing the (dynamic) shape of
		    the input tensor and returning a pair (scale, bias) to apply to the
		    normalized values (before gamma and beta), only during training. For
		    example,
		      `adjustment = lambda shape: (
		        tf.random_uniform(shape[-1:], 0.93, 1.07),
		        tf.random_uniform(shape[-1:], -0.1, 0.1))`
		    will scale the normalized value by up to 7% up or down, then shift the
		    result by up to 0.1 (with independent scaling and bias for each feature
		    but shared across all examples), and finally apply gamma and/or beta. If
		    `None`, no adjustment is applied.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
	**/
	static public function batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?param_regularizers:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?batch_weights:Dynamic, ?fused:Dynamic, ?data_format:Dynamic, ?zero_debias_moving_mean:Dynamic, ?scope:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_decay:Dynamic, ?adjustment:Dynamic):Dynamic;
	/**
		Adds a bias to the inputs.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: A tensor of with at least rank 2 and value for the last dimension,
		    e.g. `[batch_size, depth]`, `[None, None, None, depth]`.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  initializer: An initializer for the bias, defaults to 0.
		  regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the result of adding biases to the inputs.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `data_format` is `NCHW` and rank of `inputs` is not 4.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or `C` dimension of `inputs` is undefined.
	**/
	static public function bias_add(inputs:Dynamic, ?activation_fn:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv1d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
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
		  inputs: A 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: A list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function conv2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `normalizer_fn` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 2.
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function conv2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv3d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution3d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		Args:
		  inputs: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]` for `NDHWC` data format or
		    `[batch, in_channels, depth, height, width]` for `NCDHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 3 holding the [kernel_depth, kernel_height,
		    kernel_width] of the filters. Can be an int if both values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		Returns:
		  A tensor representing the output of the operation.
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 3.
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function conv3d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?conv_dims:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution1d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
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
		  inputs: A 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: A list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function convolution2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `normalizer_fn` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 2.
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function convolution2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution3d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution3d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		Args:
		  inputs: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]` for `NDHWC` data format or
		    `[batch, in_channels, depth, height, width]` for `NCDHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 3 holding the [kernel_depth, kernel_height,
		    kernel_width] of the filters. Can be an int if both values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		Returns:
		  A tensor representing the output of the operation.
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 3.
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function convolution3d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Converts a dense tensor into a sparse tensor.
		
		An example use would be to convert dense labels to sparse ones
		so that they can be fed to the ctc_loss.
		
		Args:
		   tensor: An `int` `Tensor` to be converted to a `Sparse`.
		   eos_token: An integer.
		     It is part of the target label that signifies the end of a sentence.
		   outputs_collections: Collection to add the outputs.
		   scope: Optional scope for name_scope.
	**/
	static public function dense_to_sparse(tensor:Dynamic, ?eos_token:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: The tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A tensor representing the output of the operation.
	**/
	static public function dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic, ?seed:Dynamic):Dynamic;
	static public function elu(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Flattens the input while maintaining the batch_size.
		
		  Assumes that the first dimension represents the batch.
		
		Args:
		  inputs: A tensor of size [batch_size, ...].
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A flattened tensor with shape [batch_size, k].
		Raises:
		  ValueError: If inputs rank is unknown or less than 2.
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
		  inputs: A tensor of at least rank 2 and static value for the last dimension;
		    i.e. `[batch_size, depth]`, `[None, None, None, channels]`.
		  num_outputs: Integer or long, the number of output units in the layer.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collections per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		   The tensor variable representing the result of the series of operations.
		
		Raises:
		  ValueError: If x has rank less than 2 or if its last dimension is not set.
	**/
	static public function fully_connected(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Functional interface for GDN layer.
		
		Based on the papers:
		
		  "Density Modeling of Images using a Generalized Normalization
		  Transformation"
		  Johannes Ballé, Valero Laparra, Eero P. Simoncelli
		  https://arxiv.org/abs/1511.06281
		
		  "End-to-end Optimized Image Compression"
		  Johannes Ballé, Valero Laparra, Eero P. Simoncelli
		  https://arxiv.org/abs/1611.01704
		
		Implements an activation function that is essentially a multivariate
		generalization of a particular sigmoid-type function:
		
		```
		y[i] = x[i] / sqrt(beta[i] + sum_j(gamma[j, i] * x[j]))
		```
		
		where `i` and `j` run over channels. This implementation never sums across
		spatial dimensions. It is similar to local response normalization, but much
		more flexible, as `beta` and `gamma` are trainable parameters.
		
		Args:
		  inputs: Tensor input.
		  inverse: If `False` (default), compute GDN response. If `True`, compute IGDN
		    response (one step of fixed point iteration to invert GDN; the division
		    is replaced by multiplication).
		  beta_min: Lower bound for beta, to prevent numerical error from causing
		    square root of zero or negative values.
		  gamma_init: The gamma matrix will be initialized as the identity matrix
		    multiplied with this value. If set to zero, the layer is effectively
		    initialized to the identity operation, since beta is initialized as one.
		    A good default setting is somewhere between 0 and 0.5.
		  reparam_offset: Offset added to the reparameterization of beta and gamma.
		    The reparameterization of beta and gamma as their square roots lets the
		    training slow down when their values are close to zero, which is desirable
		    as small values in the denominator can lead to a situation where gradient
		    noise on beta/gamma leads to extreme amounts of noise in the GDN
		    activations. However, without the offset, we would get zero gradients if
		    any elements of beta or gamma were exactly zero, and thus the training
		    could get stuck. To prevent this, we add this small constant. The default
		    value was empirically determined as a good starting point. Making it
		    bigger potentially leads to more gradient noise on the activations, making
		    it too small may lead to numerical precision issues.
		  data_format: Format of input tensor. Currently supports `'channels_first'`
		    and `'channels_last'`.
		  activity_regularizer: Regularizer function for the output.
		  trainable: Boolean, if `True`, also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: String, the name of the layer. Layers with the same name will
		    share weights, but to avoid mistakes we require `reuse=True` in such
		    cases.
		  reuse: Boolean, whether to reuse the weights of a previous layer by the same
		    name.
		
		Returns:
		  Output tensor.
	**/
	static public function gdn(inputs:Dynamic, ?inverse:Dynamic, ?beta_min:Dynamic, ?gamma_init:Dynamic, ?reparam_offset:Dynamic, ?data_format:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Convert a batch of images into a batch of sequences.
		
		Args:
		  inputs: a (num_images, height, width, depth) tensor
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Raises:
		   ValueError: If `data_format` is not either NCHW or NHWC.
		
		Returns:
		  (width, num_images*height, depth) sequence tensor
	**/
	static public function images_to_sequence(inputs:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Layer Normalization layer.
		
		Based on the paper:
		
		  "Layer Normalization"
		
		  Jimmy Lei Ba, Jamie Ryan Kiros, Geoffrey E. Hinton
		
		  https://arxiv.org/abs/1607.06450.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Given a tensor `inputs` of rank `R`, moments are calculated and normalization
		is performed over axes `begin_norm_axis ... R - 1`.  Scaling and centering,
		if requested, is performed over axes `begin_params_axis .. R - 1`.
		
		By default, `begin_norm_axis = 1` and `begin_params_axis = -1`,
		meaning that normalization is performed over all but the first axis
		(the `HWC` if `inputs` is `NHWC`), while the `beta` and `gamma` trainable
		parameters are calculated for the rightmost axis (the `C` if `inputs` is
		`NHWC`).  Scaling and recentering is performed via broadcast of the
		`beta` and `gamma` parameters with the normalized tensor.
		
		The shapes of `beta` and `gamma` are `inputs.shape[begin_params_axis:]`,
		and this part of the inputs' shape must be fully defined.
		
		Args:
		  inputs: A tensor having rank `R`. The normalization is performed over
		    axes `begin_norm_axis ... R - 1` and centering and scaling parameters
		    are calculated over `begin_params_axis ... R - 1`.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  begin_norm_axis: The first normalization dimension: normalization will be
		    performed along dimensions `begin_norm_axis : rank(inputs)`
		  begin_params_axis: The first parameter (beta, gamma) dimension: scale
		    and centering parameters will have dimensions
		    `begin_params_axis : rank(inputs)` and will be broadcast with the
		    normalized inputs accordingly.
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation, having the same
		  shape and dtype as `inputs`.
		
		Raises:
		  ValueError: If the rank of `inputs` is not known at graph build time,
		    or if `inputs.shape[begin_params_axis:]` is not fully defined at
		    graph build time.
	**/
	static public function layer_norm(inputs:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?activation_fn:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?begin_norm_axis:Dynamic, ?begin_params_axis:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds the parameters for a fully connected layer and returns the output.
		
		A fully connected layer is generally defined as a matrix multiply:
		`y = f(w * x + b)` where `f` is given by `activation_fn`. If
		`activation_fn` is `None`, the result of `y = w * x + b` is
		returned.
		
		If `x` has shape [\\(\text{dim}_0, \text{dim}_1, ..., \text{dim}_n\\)]
		with more than 2 dimensions (\\(n > 1\\)), then we repeat the matrix
		multiply along the first dimensions. The result r is a tensor of shape
		[\\(\text{dim}_0, ..., \text{dim}_{n-1},\\) `num_output_units`],
		where \\( r_{i_0, ..., i_{n-1}, k} =
		\sum_{0 \leq j < \text{dim}_n} x_{i_0, ... i_{n-1}, j} \cdot w_{j, k}\\).
		This is accomplished by reshaping `x` to 2-D
		[\\(\text{dim}_0 \cdot ... \cdot \text{dim}_{n-1}, \text{dim}_n\\)]
		before the matrix multiply and afterwards reshaping it to
		[\\(\text{dim}_0, ..., \text{dim}_{n-1},\\) `num_output_units`].
		
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
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  weight_init: An optional weight initialization, defaults to
		    `xavier_initializer`.
		  bias_init: An initializer for the bias, defaults to 0. Set to `None` in
		    order to disable bias.
		  name: The name for this operation is used to name operations and to find
		    variables. If specified it must be unique for this scope, otherwise a
		    unique name starting with "fully_connected" will be created.  See
		    `tf.variable_scope` for details.
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
		  ValueError: If x has rank less than 2 or if its last dimension is not set.
	**/
	static public function legacy_fully_connected(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_linear(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_relu(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function linear(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 2D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 4-D tensor of shape `[batch_size, height, width, channels]` if
		    `data_format` is `NHWC`, and `[batch_size, channels, height, width]` if
		    `data_format` is `NCHW`.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If 'kernel_size' is not a 2-D list
	**/
	static public function max_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 3D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 5-D tensor of shape `[batch_size, depth, height, width, channels]`
		    if `data_format` is `NDHWC`, and `[batch_size, channels, depth, height,
		    width]` if `data_format` is `NCDHW`.
		  kernel_size: A list of length 3: [kernel_depth, kernel_height, kernel_width]
		    of the pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If 'kernel_size' is not a 3-D list
	**/
	static public function max_pool3d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a maxout op from https://arxiv.org/abs/1302.4389
		
		"Maxout Networks" Ian J. Goodfellow, David Warde-Farley, Mehdi Mirza, Aaron
		Courville,
		 Yoshua Bengio
		
		Usually the operation is performed in the filter/channel dimension. This can
		also be
		used after fully-connected layers to reduce number of features.
		
		Arguments:
		  inputs: Tensor input
		  num_units: Specifies how many features will remain after maxout
		    in the `axis` dimension (usually channel).
		    This must be a factor of number of features.
		  axis: The dimension where max pooling will be performed. Default is the
		  last dimension.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: if num_units is not multiple of number of features.
	**/
	static public function maxout(inputs:Dynamic, num_units:Dynamic, ?axis:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Transform numeric labels into onehot_labels using `tf.one_hot`.
		
		Args:
		  labels: [batch_size] target labels.
		  num_classes: Total number of classes.
		  on_value: A scalar defining the on-value.
		  off_value: A scalar defining the off-value.
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		
		Returns:
		  One-hot encoding of the labels.
	**/
	static public function one_hot_encoding(labels:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Project into the Poincare ball with norm <= 1.0 - epsilon.
		
		https://en.wikipedia.org/wiki/Poincare_ball_model
		
		Used in
		Poincare Embeddings for Learning Hierarchical Representations
		Maximilian Nickel, Douwe Kiela
		https://arxiv.org/pdf/1705.08039.pdf
		
		For a 1-D tensor with `axis = 0`, computes
		
		              (x * (1 - epsilon)) / ||x||     if ||x|| > 1 - epsilon
		    output =
		               x                              otherwise
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		Args:
		  x: A `Tensor`.
		  axis: Axis along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A small deviation from the edge of the unit sphere for numerical
		    stability.
		  name: A name for this operation (optional).
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function poincare_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds a pooling op.
		
		
		Args:
		  inputs: Tensor of rank N+2, of shape
		    `[batch_size] + input_spatial_shape + [num_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  kernel_size: Sequence of N ints >= 1.  Can also be a single integer to
		    specify the same value for all spatial dimensions.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  padding: The padding algorithm, must be "SAME" or "VALID".
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilation_rate: Optional.  Dilation rate.  Sequence of N ints >= 1.  Defaults
		    to [1]*N.  Can also be a single integer to specify the same value for all
		    spatial dimensions.  If any value of dilation_rate is > 1, then all values
		    of stride must be 1.
		  stride: Optional.  Sequence of N ints >= 1.  Defaults to [1]*N.  Can also be
		    a single integer to specify the same value for all spatial dimensions.  If
		    any value of stride is > 1, then all values of dilation_rate must be 1.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If arguments are invalid.
	**/
	static public function pool(inputs:Dynamic, kernel_size:Dynamic, pooling_type:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?stride:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
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
		  A tensor result of applying the layer, repetitions times.
		Raises:
		  ValueError: If the op is unknown or wrong.
	**/
	static public function repeat(inputs:Dynamic, repetitions:Dynamic, layer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scale_gradient(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `normalizer_fn` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise,
		the `normalizer_fn` is applied. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: A tensor of size [batch_size, height, width, channels].
		  num_outputs: The number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: A list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  rate: A list of length 2: [rate_height, rate_width], specifying the dilation
		    rates for atrous convolution. Can be an int if both rates are the same.
		    If any value is larger than one, then both stride values need to be one.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the depthwise weights.
		  pointwise_initializer: An initializer for the pointwise weights.
		    default set to None, means use weights_initializer.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		Raises:
		  ValueError: If `data_format` is invalid.
	**/
	static public function separable_conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `normalizer_fn` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise,
		the `normalizer_fn` is applied. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: A tensor of size [batch_size, height, width, channels].
		  num_outputs: The number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: A list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  rate: A list of length 2: [rate_height, rate_width], specifying the dilation
		    rates for atrous convolution. Can be an int if both rates are the same.
		    If any value is larger than one, then both stride values need to be one.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the depthwise weights.
		  pointwise_initializer: An initializer for the pointwise weights.
		    default set to None, means use weights_initializer.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		Raises:
		  ValueError: If `data_format` is invalid.
	**/
	static public function separable_convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Convert a batch of sequences into a batch of images.
		
		Args:
		  inputs: (num_steps, num_batches, depth) sequence tensor
		  height: the height of the images
		  output_data_format: Format of output tensor.
		    Currently supports `'channels_first'` and `'channels_last'`.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A tensor representing the output of the operation.
	**/
	static public function sequence_to_images(inputs:Dynamic, height:Dynamic, ?output_data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs softmax on Nth dimension of N-dimensional logit tensor.
		
		For two-dimensional logits this reduces to tf.nn.softmax. The N-th dimension
		needs to have a specified number of elements (number of classes).
		
		Args:
		  logits: N-dimensional `Tensor` with logits, where N > 1.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` with same shape and type as logits.
	**/
	static public function softmax(logits:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Computes the spatial softmax of a convolutional feature map.
		
		First computes the softmax over the spatial extent of each channel of a
		convolutional feature map. Then computes the expected 2D position of the
		points of maximal activation for each channel, resulting in a set of
		feature keypoints [x1, y1, ... xN, yN] for all N channels.
		
		Read more here:
		"Learning visual feature spaces for robotic manipulation with
		deep spatial autoencoders." Finn et al., http://arxiv.org/abs/1509.06113.
		
		Args:
		  features: A `Tensor` of size [batch_size, W, H, num_channels]; the
		    convolutional feature map.
		  temperature: Softmax temperature (optional). If None, a learnable
		    temperature is created.
		  name: A name for this operation (optional).
		  variables_collections: Collections for the temperature variable.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		Returns:
		  feature_keypoints: A `Tensor` with size [batch_size, num_channels * 2];
		    the expected 2D locations of each channel's feature keypoint (normalized
		    to the range (-1,1)). The inner dimension is arranged as
		    [x1, y1, ... xN, yN].
		Raises:
		  ValueError: If unexpected data_format specified.
		  ValueError: If num_channels dimension is unspecified.
	**/
	static public function spatial_softmax(features:Dynamic, ?temperature:Dynamic, ?name:Dynamic, ?variables_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic):Dynamic;
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
		  A `Tensor` result of applying the stacked layers.
		
		Raises:
		  ValueError: If the op is unknown or wrong.
	**/
	static public function stack(inputs:Dynamic, layer:Dynamic, stack_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Normalizes the given input across the specified dimension to unit length.
		
		Note that the rank of `input` must be known.
		
		Args:
		  inputs: A `Tensor` of arbitrary size.
		  dim: The dimension along which the input is normalized.
		  epsilon: A small value to add to the inputs to avoid dividing by zero.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  The normalized `Tensor`.
		
		Raises:
		  ValueError: If dim is smaller than the number of dimensions in 'inputs'.
	**/
	static public function unit_norm(inputs:Dynamic, dim:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
}