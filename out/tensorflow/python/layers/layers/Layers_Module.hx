/* This file is generated, do not edit! */
package tensorflow.python.layers.layers;
@:pythonImport("tensorflow.python.layers.layers") extern class Layers_Module {
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
		Average Pooling layer for 1D inputs.
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 3.
		  pool_size: An integer or tuple/list of a single integer,
		    representing the size of the pooling window.
		  strides: An integer or tuple/list of a single integer, specifying the
		    strides of the pooling operation.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  name: A string, the name of the layer.
		
		Returns:
		  The output tensor, of rank 3.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 3D inputs (e.g. volumes).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 5.
		  pool_size: An integer or tuple/list of 3 integers:
		    (pool_depth, pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Functional interface for the batch normalization layer.
		
		Reference: http://arxiv.org/abs/1502.03167
		
		"Batch Normalization: Accelerating Deep Network Training by Reducing
		Internal Covariate Shift"
		
		Sergey Ioffe, Christian Szegedy
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. Also, be sure to add
		any batch_normalization ops before getting the update_ops collection.
		Otherwise, update_ops will be empty, and training/inference will not work
		properly. For example:
		
		```python
		  x_norm = tf.layers.batch_normalization(x, training=training)
		
		  # ...
		
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		Arguments:
		  inputs: Tensor input.
		  axis: An `int`, the axis that should be normalized (typically the features
		    axis). For instance, after a `Convolution2D` layer with
		    `data_format="channels_first"`, set `axis=1` in `BatchNormalization`.
		  momentum: Momentum for the moving average.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  beta_initializer: Initializer for the beta weight.
		  gamma_initializer: Initializer for the gamma weight.
		  moving_mean_initializer: Initializer for the moving mean.
		  moving_variance_initializer: Initializer for the moving variance.
		  beta_regularizer: Optional regularizer for the beta weight.
		  gamma_regularizer: Optional regularizer for the gamma weight.
		  beta_constraint: An optional projection function to be applied to the `beta`
		      weight after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  gamma_constraint: An optional projection function to be applied to the
		      `gamma` weight after being updated by an `Optimizer`.
		  training: Either a Python boolean, or a TensorFlow boolean scalar tensor
		    (e.g. a placeholder). Whether to return the output in training mode
		    (normalized with statistics of the current batch) or in inference mode
		    (normalized with moving statistics). **NOTE**: make sure to set this
		    parameter correctly, or else your training/inference will not work
		    properly.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  name: String, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		  renorm: Whether to use Batch Renormalization
		    (https://arxiv.org/abs/1702.03275). This adds extra variables during
		    training. The inference is the same for either value of this parameter.
		  renorm_clipping: A dictionary that may map keys 'rmax', 'rmin', 'dmax' to
		    scalar `Tensors` used to clip the renorm correction. The correction
		    `(r, d)` is used as `corrected_value = normalized_value * r + d`, with
		    `r` clipped to [rmin, rmax], and `d` to [-dmax, dmax]. Missing rmax, rmin,
		    dmax are set to inf, 0, inf, respectively.
		  renorm_momentum: Momentum used to update the moving means and standard
		    deviations with renorm. Unlike `momentum`, this affects training
		    and should be neither too small (which would add noise) nor too large
		    (which would give stale estimates). Note that `momentum` is still applied
		    to get the means and variances for inference.
		  fused: if `None` or `True`, use a faster, fused implementation if possible.
		    If `False`, use the system recommended implementation.
		  virtual_batch_size: An `int`. By default, `virtual_batch_size` is `None`,
		    which means batch normalization is performed across the whole batch. When
		    `virtual_batch_size` is not `None`, instead perform "Ghost Batch
		    Normalization", which creates virtual sub-batches which are each
		    normalized separately (with shared gamma, beta, and moving statistics).
		    Must divide the actual batch size during execution.
		  adjustment: A function taking the `Tensor` containing the (dynamic) shape of
		    the input tensor and returning a pair (scale, bias) to apply to the
		    normalized values (before gamma and beta), only during training. For
		    example, if axis==-1,
		      `adjustment = lambda shape: (
		        tf.random_uniform(shape[-1:], 0.93, 1.07),
		        tf.random_uniform(shape[-1:], -0.1, 0.1))`
		    will scale the normalized value by up to 7% up or down, then shift the
		    result by up to 0.1 (with independent scaling and bias for each feature
		    but shared across all examples), and finally apply gamma and/or beta. If
		    `None`, no adjustment is applied. Cannot be specified if
		    virtual_batch_size is specified.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function batch_normalization(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?beta_constraint:Dynamic, ?gamma_constraint:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic, ?fused:Dynamic, ?virtual_batch_size:Dynamic, ?adjustment:Dynamic):Dynamic;
	/**
		Functional interface for 1D convolution layer (e.g. temporal convolution).
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Arguments:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of a single integer, specifying the
		    length of the 1D convolution window.
		  strides: An integer or tuple/list of a single integer,
		    specifying the stride length of the convolution.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  dilation_rate: An integer or tuple/list of a single integer, specifying
		    the dilation rate to use for dilated convolution.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any `strides` value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 2D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Arguments:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 2 integers, specifying the
		    height and width of the 2D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the convolution along the height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 2D convolution layer.
		
		The need for transposed convolutions generally arises
		from the desire to use a transformation going in the opposite direction
		of a normal convolution, i.e., from something that has the shape of the
		output of some convolution to something that has the shape of its input
		while maintaining a connectivity pattern that is compatible with
		said convolution.
		
		Arguments:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  activation: Activation function. Set it to `None` to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If `None`, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv2d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 3D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Arguments:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 3 integers, specifying the
		    depth, height and width of the 3D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the convolution along the depth,
		    height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  dilation_rate: An integer or tuple/list of 3 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Arguments:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 3 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 3 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv3d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the densely-connected layer.
		
		This layer implements the operation:
		`outputs = activation(inputs * kernel + bias)`
		where `activation` is the activation function passed as the `activation`
		argument (if not `None`), `kernel` is a weights matrix created by the layer,
		and `bias` is a bias vector created by the layer
		(only if `use_bias` is `True`).
		
		Arguments:
		  inputs: Tensor input.
		  units: Integer or Long, dimensionality of the output space.
		  activation: Activation function (callable). Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: Initializer function for the weight matrix.
		    If `None` (default), weights are initialized using the default
		    initializer used by `tf.get_variable`.
		  bias_initializer: Initializer function for the bias.
		  kernel_regularizer: Regularizer function for the weight matrix.
		  bias_regularizer: Regularizer function for the bias.
		  activity_regularizer: Regularizer function for the output.
		  kernel_constraint: An optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: An optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: String, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor the same shape as `inputs` except the last dimension is of
		  size `units`.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function dense(inputs:Dynamic, units:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Applies Dropout to the input.
		
		Dropout consists in randomly setting a fraction `rate` of input units to 0
		at each update during training time, which helps prevent overfitting.
		The units that are kept are scaled by `1 / (1 - rate)`, so that their
		sum is unchanged at training time and inference time.
		
		Arguments:
		  inputs: Tensor input.
		  rate: The dropout rate, between 0 and 1. E.g. "rate=0.1" would drop out
		    10% of input units.
		  noise_shape: 1D tensor of type `int32` representing the shape of the
		    binary dropout mask that will be multiplied with the input.
		    For instance, if your inputs have shape
		    `(batch_size, timesteps, features)`, and you want the dropout mask
		    to be the same for all timesteps, you can use
		    `noise_shape=[batch_size, 1, features]`.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed`
		    for behavior.
		  training: Either a Python boolean, or a TensorFlow boolean scalar tensor
		    (e.g. a placeholder). Whether to return the output in training mode
		    (apply dropout) or in inference mode (return the input untouched).
		  name: The name of the layer (string).
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function dropout(inputs:Dynamic, ?rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flattens an input tensor while preserving the batch axis (axis 0).
		
		Arguments:
		  inputs: Tensor input.
		  name: The name of the layer (string).
		
		Returns:
		  Reshaped tensor.
		
		Examples:
		
		```
		  x = tf.placeholder(shape=(None, 4, 4), dtype='float32')
		  y = flatten(x)
		  # now `y` has shape `(None, 16)`
		
		  x = tf.placeholder(shape=(None, 3, None), dtype='float32')
		  y = flatten(x)
		  # now `y` has shape `(None, None)`
		```
	**/
	static public function flatten(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max Pooling layer for 1D inputs.
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 3.
		  pool_size: An integer or tuple/list of a single integer,
		    representing the size of the pooling window.
		  strides: An integer or tuple/list of a single integer, specifying the
		    strides of the pooling operation.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  name: A string, the name of the layer.
		
		Returns:
		  The output tensor, of rank 3.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 3D inputs (e.g. volumes).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 5.
		  pool_size: An integer or tuple/list of 3 integers:
		    (pool_depth, pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Functional interface for the depthwise separable 1D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Arguments:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A single integer specifying the spatial
		    dimensions of the filters.
		  strides: A single integer specifying the strides
		    of the convolution.
		    Specifying any `stride` value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  dilation_rate: A single integer, specifying
		    the dilation rate to use for dilated convolution.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  depthwise_initializer: An initializer for the depthwise convolution kernel.
		  pointwise_initializer: An initializer for the pointwise convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  depthwise_regularizer: Optional regularizer for the depthwise
		    convolution kernel.
		  pointwise_regularizer: Optional regularizer for the pointwise
		    convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  depthwise_constraint: Optional projection function to be applied to the
		      depthwise kernel after being updated by an `Optimizer` (e.g. used for
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  pointwise_constraint: Optional projection function to be applied to the
		      pointwise kernel after being updated by an `Optimizer`.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function separable_conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the depthwise separable 2D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Arguments:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any `stride` value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  depthwise_initializer: An initializer for the depthwise convolution kernel.
		  pointwise_initializer: An initializer for the pointwise convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  depthwise_regularizer: Optional regularizer for the depthwise
		    convolution kernel.
		  pointwise_regularizer: Optional regularizer for the pointwise
		    convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  depthwise_constraint: Optional projection function to be applied to the
		      depthwise kernel after being updated by an `Optimizer` (e.g. used for
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  pointwise_constraint: Optional projection function to be applied to the
		      pointwise kernel after being updated by an `Optimizer`.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function separable_conv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
}