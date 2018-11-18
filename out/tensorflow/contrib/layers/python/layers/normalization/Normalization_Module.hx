/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.normalization;
@:pythonImport("tensorflow.contrib.layers.python.layers.normalization") extern class Normalization_Module {
	static public var DATA_FORMAT_NCHW : Dynamic;
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
	static public var absolute_import : Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function add_arg_scope(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Functional interface for the group normalization layer.
		
		Reference: https://arxiv.org/abs/1803.08494.
		
		  "Group Normalization", Yuxin Wu, Kaiming He
		
		Args:
		  inputs: A Tensor with at least 2 dimensions one which is channels. All
		   shape dimensions must be fully defined.
		  groups: Integer. Divide the channels into this number of groups over which
		    normalization statistics are computed. This number must be commensurate
		    with the number of channels in `inputs`.
		  channels_axis: An integer. Specifies index of channels axis which will be
		    broken into `groups`, each of which whose statistics will be computed
		    across. Must be mutually exclusive with `reduction_axes`. Preferred usage
		    is to specify negative integers to be agnostic as to whether a batch
		    dimension is included.
		  reduction_axes: Tuple of integers. Specifies dimensions over which
		     statistics will be accumulated. Must be mutually exclusive with
		     `channels_axis`. Statistics will not be accumulated across axes not
		     specified in `reduction_axes` nor `channel_axis`. Preferred usage is to
		     specify negative integers to be agnostic to whether a batch dimension is
		     included.
		
		    Some sample usage cases:
		      NHWC format: channels_axis=-1, reduction_axes=[-3, -2]
		      NCHW format: channels_axis=-3, reduction_axes=[-2, -1]
		
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
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  scope: Optional scope for `variable_scope`.
		  mean_close_to_zero: The mean of `input` before ReLU will be close to zero
		    when batch size >= 4k for Resnet-50 on TPU. If `True`, use
		    `nn.sufficient_statistics` and `nn.normalize_moments` to calculate the
		    variance. This is the same behavior as `fused` equals `True` in batch
		    normalization. If `False`, use `nn.moments` to calculate the variance.
		    When `mean` is close to zero, like 1e-4, use `mean` to calculate the
		    variance may have poor result due to repeated roundoff error and
		    denormalization in `mean`.  When `mean` is large, like 1e2,
		    sum(`input`^2) is so large that only the high-order digits of the elements
		    are being accumulated. Thus, use sum(`input` - `mean`)^2/n to calculate
		    the variance has better accuracy compared to (sum(`input`^2)/n - `mean`^2)
		    when `mean` is large.
		
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
		  ValueError: If number of groups is not commensurate with number of channels.
		  ValueError: If reduction_axes or channels_axis are out of bounds.
		  ValueError: If reduction_axes are not mutually exclusive with channels_axis.
	**/
	static public function group_norm(inputs:Dynamic, ?groups:Dynamic, ?channels_axis:Dynamic, ?reduction_axes:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?mean_close_to_zero:Dynamic):Dynamic;
	/**
		Functional interface for the instance normalization layer.
		
		Reference: https://arxiv.org/abs/1607.08022.
		
		  "Instance Normalization: The Missing Ingredient for Fast Stylization"
		  Dmitry Ulyanov, Andrea Vedaldi, Victor Lempitsky
		
		Args:
		  inputs: A tensor with 2 or more dimensions, where the first dimension has
		    `batch_size`. The normalization is over all but the last dimension if
		    `data_format` is `NHWC` and the second dimension if `data_format` is
		    `NCHW`.
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
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
	**/
	static public function instance_norm(inputs:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}