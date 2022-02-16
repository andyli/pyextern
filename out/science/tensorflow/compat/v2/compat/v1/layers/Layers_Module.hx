/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v1.layers;
@:pythonImport("tensorflow.compat.v2.compat.v1.layers") extern class Layers_Module {
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
		Average Pooling layer for 1D inputs.
		
		Args:
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.AveragePooling1D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.average_pooling1d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.AveragePooling1D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function average_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 2D inputs (e.g. images).
		
		Args:
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.AveragePooling2D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.average_pooling2d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.AveragePooling2D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function average_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 3D inputs (e.g. volumes).
		
		Args:
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.AveragePooling3D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.average_pooling3d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.AveragePooling3D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function average_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Functional interface for the batch normalization layer from_config(Ioffe et al., 2015).
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be executed alongside the `train_op`. Also, be sure to add any
		batch_normalization ops before getting the update_ops collection. Otherwise,
		update_ops will be empty, and training/inference will not work properly. For
		example:
		
		```python
		  x_norm = tf.compat.v1.layers.batch_normalization(x, training=training)
		
		  # ...
		
		  update_ops = tf.compat.v1.get_collection(tf.GraphKeys.UPDATE_OPS)
		  train_op = optimizer.minimize(loss)
		  train_op = tf.group([train_op, update_ops])
		```
		
		Args:
		  inputs: Tensor input.
		  axis: An `int`, the axis that should be normalized (typically the features
		    axis). For instance, after a `Convolution2D` layer with
		    `data_format="channels_first"`, set `axis=1` in `BatchNormalization`.
		  momentum: Momentum for the moving average.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is not used. When the
		    next layer is linear (also e.g. `nn.relu`), this can be disabled since the
		    scaling can be done by the next layer.
		  beta_initializer: Initializer for the beta weight.
		  gamma_initializer: Initializer for the gamma weight.
		  moving_mean_initializer: Initializer for the moving mean.
		  moving_variance_initializer: Initializer for the moving variance.
		  beta_regularizer: Optional regularizer for the beta weight.
		  gamma_regularizer: Optional regularizer for the gamma weight.
		  beta_constraint: An optional projection function to be applied to the `beta`
		    weight after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected variable and must return the projected
		    variable (which must have the same shape). Constraints are not safe to use
		    when doing asynchronous distributed training.
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
		  reuse: Boolean, whether to reuse the weights of a previous layer by the same
		    name.
		  renorm: Whether to use Batch Renormalization (Ioffe, 2017). This adds extra
		    variables during training. The inference is the same for either value of
		    this parameter.
		  renorm_clipping: A dictionary that may map keys 'rmax', 'rmin', 'dmax' to
		    scalar `Tensors` used to clip the renorm correction. The correction `(r,
		    d)` is used as `corrected_value = normalized_value * r + d`, with `r`
		    clipped to [rmin, rmax], and `d` to [-dmax, dmax]. Missing rmax, rmin,
		    dmax are set to inf, 0, inf, respectively.
		  renorm_momentum: Momentum used to update the moving means and standard
		    deviations with renorm. Unlike `momentum`, this affects training and
		    should be neither too small (which would add noise) nor too large (which
		    would give stale estimates). Note that `momentum` is still applied to get
		    the means and variances for inference.
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
		        tf.random.uniform(shape[-1:], 0.93, 1.07),
		        tf.random.uniform(shape[-1:], -0.1, 0.1))` will scale the normalized
		          value by up to 7% up or down, then shift the result by up to 0.1
		          (with independent scaling and bias for each feature but shared
		          across all examples), and finally apply gamma and/or beta. If
		          `None`, no adjustment is applied. Cannot be specified if
		          virtual_batch_size is specified.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift:
		    [Ioffe et al., 2015](http://proceedings.mlr.press/v37/ioffe15.html)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
		  Batch Renormalization - Towards Reducing Minibatch Dependence in
		  Batch-Normalized Models:
		    [Ioffe,
		    2017](http://papers.nips.cc/paper/6790-batch-renormalization-towards-reducing-minibatch-dependence-in-batch-normalized-models)
		    ([pdf](http://papers.nips.cc/paper/6790-batch-renormalization-towards-reducing-minibatch-dependence-in-batch-normalized-models.pdf))
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.BatchNormalization`.
		
		The batch updating pattern with
		`tf.control_dependencies(tf.GraphKeys.UPDATE_OPS)` should not be used in
		native TF2. Consult the `tf.keras.layers.BatchNormalization` documentation
		for further information.
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 x_norm = tf.compat.v1.layers.batch_normalization(x)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input(shape=(28, 28, 1),)
		 y = tf.keras.layers.BatchNormalization()(x)
		 model = tf.keras.Model(x, y)
		```
		#### How to Map Arguments
		
		TF1 Arg Name              | TF2 Arg Name              | Note
		:------------------------ | :------------------------ | :---------------
		`name`                    | `name`                    | Layer base class
		`trainable`               | `trainable`               | Layer base class
		`axis`                    | `axis`                    | -
		`momentum`                | `momentum`                | -
		`epsilon`                 | `epsilon`                 | -
		`center`                  | `center`                  | -
		`scale`                   | `scale`                   | -
		`beta_initializer`        | `beta_initializer`        | -
		`gamma_initializer`       | `gamma_initializer`       | -
		`moving_mean_initializer` | `moving_mean_initializer` | -
		`beta_regularizer`        | `beta_regularizer'        | -
		`gamma_regularizer`       | `gamma_regularizer'       | -
		`beta_constraint`         | `beta_constraint'         | -
		`gamma_constraint`        | `gamma_constraint'        | -
		`renorm`                  | Not supported             | -
		`renorm_clipping`         | Not supported             | -
		`renorm_momentum`         | Not supported             | -
		`fused`                   | Not supported             | -
		`virtual_batch_size`      | Not supported             | -
		`adjustment`              | Not supported             | -
		
		@end_compatibility
	**/
	static public function batch_normalization(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?beta_constraint:Dynamic, ?gamma_constraint:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic, ?fused:Dynamic, ?virtual_batch_size:Dynamic, ?adjustment:Dynamic):Dynamic;
	/**
		Functional interface for 1D convolution layer (e.g. temporal convolution).
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Conv1D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.conv1d(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Conv1D(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 2D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Conv2D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.conv2d(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Conv2D(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
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
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Conv2DTranspose`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.conv2d_transpose(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Conv2DTranspose(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function conv2d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 3D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Conv3D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.conv3d(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Conv3D(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function conv3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Conv3DTranspose`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.conv3d_transpose(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Conv3DTranspose(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
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
		
		Args:
		  inputs: Tensor input.
		  units: Integer or Long, dimensionality of the output space.
		  activation: Activation function (callable). Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: Initializer function for the weight matrix.
		    If `None` (default), weights are initialized using the default
		    initializer used by `tf.compat.v1.get_variable`.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Dense`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.dense(x, units=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28,))
		 y = tf.keras.layers.Dense(units=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function dense(inputs:Dynamic, units:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Applies Dropout to the input.
		
		Dropout consists in randomly setting a fraction `rate` of input units to 0
		at each update during training time, which helps prevent overfitting.
		The units that are kept are scaled by `1 / (1 - rate)`, so that their
		sum is unchanged at training time and inference time.
		
		Args:
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
		    `tf.compat.v1.set_random_seed`
		    for behavior.
		  training: Either a Python boolean, or a TensorFlow boolean scalar tensor
		    (e.g. a placeholder). Whether to return the output in training mode
		    (apply dropout) or in inference mode (return the input untouched).
		  name: The name of the layer (string).
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Dropout`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.dropout(x)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Dropout()(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function dropout(inputs:Dynamic, ?rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flattens an input tensor while preserving the batch axis (axis 0).
		
		Args:
		  inputs: Tensor input.
		  name: The name of the layer (string).
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		Returns:
		  Reshaped tensor.
		
		Examples:
		
		```
		  x = tf.compat.v1.placeholder(shape=(None, 4, 4), dtype='float32')
		  y = flatten(x)
		  # now `y` has shape `(None, 16)`
		
		  x = tf.compat.v1.placeholder(shape=(None, 3, None), dtype='float32')
		  y = flatten(x)
		  # now `y` has shape `(None, None)`
		```
		
		@compatibility(TF2)
		This API is not compatible with eager execution or`tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.Flatten`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.flatten(x)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.Flatten()(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function flatten(inputs:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Max Pooling layer for 1D inputs.
		
		Args:
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.MaxPooling1D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.max_pooling1d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.MaxPooling1D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function max_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 2D inputs (e.g. images).
		
		Args:
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.MaxPooling2D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.max_pooling2d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.MaxPooling2D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function max_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 3D inputs (e.g.
		
		volumes).
		
		Args:
		  inputs: The tensor over which to pool. Must have rank 5.
		  pool_size: An integer or tuple/list of 3 integers: (pool_depth, pool_height,
		    pool_width) specifying the size of the pooling window. Can be a single
		    integer to specify the same value for all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers, specifying the strides of
		    the pooling operation. Can be a single integer to specify the same value
		    for all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape `(batch, depth, height,
		    width, channels)` while `channels_first` corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.MaxPooling3D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.max_pooling3d(x, pool_size=2, strides=2)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.MaxPooling3D(pool_size=2, strides=2)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function max_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Functional interface for the depthwise separable 1D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.SeparableConv1D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.separable_conv1d(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.SeparableConv1D(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function separable_conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the depthwise separable 2D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Args:
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
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
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
		
		
		@compatibility(TF2)
		This API is not compatible with eager execution or `tf.function`.
		
		Please refer to [tf.layers section of the migration guide]
		(https://www.tensorflow.org/guide/migrate#models_based_on_tflayers)
		to migrate a TensorFlow v1 model to Keras. The corresponding TensorFlow v2
		layer is `tf.keras.layers.SeparableConv2D`.
		
		
		#### Structural Mapping to Native TF2
		
		None of the supported arguments have changed name.
		
		Before:
		
		```python
		 y = tf.compat.v1.layers.separable_conv2d(x, filters=3, kernel_size=3)
		```
		
		After:
		
		To migrate code using TF1 functional layers use the [Keras Functional API]
		(https://www.tensorflow.org/guide/keras/functional):
		
		```python
		 x = tf.keras.Input((28, 28, 1))
		 y = tf.keras.layers.SeparableConv2D(filters=3, kernels_size=3)(x)
		 model = tf.keras.Model(x, y)
		```
		@end_compatibility
	**/
	static public function separable_conv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
}