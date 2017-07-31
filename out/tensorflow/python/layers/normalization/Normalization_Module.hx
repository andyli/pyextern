/* This file is generated, do not edit! */
package tensorflow.python.layers.normalization;
@:pythonImport("tensorflow.python.layers.normalization") extern class Normalization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Selects fn_then() or fn_else() based on the value of pred.
		
		The purpose of this function is the same as `utils.smart_cond`. However, at
		the moment there is a bug (b/36297356) that seems to kick in only when
		`smart_cond` delegates to `tf.cond`, which sometimes results in the training
		hanging when using parameter servers. This function will output the result
		of `fn_then` or `fn_else` if `pred` is known at graph construction time.
		Otherwise, it will use `tf.where` which will result in some redundant work
		(both branches will be computed but only one selected). However, the tensors
		involved will usually be small (means and variances in batchnorm), so the
		cost will be small and will not be incurred at all if `pred` is a constant.
		
		Args:
		  pred: A boolean scalar `Tensor`.
		  fn_then: A callable to use when pred==True.
		  fn_else: A callable to use when pred==False.
		
		Returns:
		  A `Tensor` whose value is fn_then() or fn_else() based on the value of pred.
	**/
	static public function _smart_select(pred:Dynamic, fn_then:Dynamic, fn_else:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Functional interface for the batch normalization layer.
		
		Reference: http://arxiv.org/abs/1502.03167
		
		"Batch Normalization: Accelerating Deep Network Training by Reducing
		Internal Covariate Shift"
		
		Sergey Ioffe, Christian Szegedy
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. For example:
		
		```python
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		Arguments:
		  inputs: Tensor input.
		  axis: Integer, the axis that should be normalized (typically the features
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
		
		Returns:
		  Output tensor.
	**/
	static public function batch_norm(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic):Dynamic;
	/**
		Functional interface for the batch normalization layer.
		
		Reference: http://arxiv.org/abs/1502.03167
		
		"Batch Normalization: Accelerating Deep Network Training by Reducing
		Internal Covariate Shift"
		
		Sergey Ioffe, Christian Szegedy
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. For example:
		
		```python
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		Arguments:
		  inputs: Tensor input.
		  axis: Integer, the axis that should be normalized (typically the features
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
		
		Returns:
		  Output tensor.
	**/
	static public function batch_normalization(inputs:Dynamic, ?axis:Dynamic, ?momentum:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?moving_mean_initializer:Dynamic, ?moving_variance_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?training:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_momentum:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}