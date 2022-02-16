/* This file is generated, do not edit! */
package tensorflow.python.keras.legacy_tf_layers.normalization;
@:pythonImport("tensorflow.python.keras.legacy_tf_layers.normalization") extern class Normalization_Module {
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
	**/
	static public function batch_norm(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?beta_constraint:Dynamic, ?gamma_constraint:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic, ?fused:Dynamic, ?virtual_batch_size:Dynamic, ?adjustment:Dynamic):Dynamic;
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
	**/
	static public function batch_normalization(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?beta_constraint:Dynamic, ?gamma_constraint:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic, ?fused:Dynamic, ?virtual_batch_size:Dynamic, ?adjustment:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}