/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.resnet_utils;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.resnet_utils") extern class Resnet_utils_Module {
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
	/**
		Stores the default arguments for the given set of list_ops.
		
		For usage, please see examples at top of the file.
		
		Args:
		  list_ops_or_scope: List or tuple of operations to set argument scope for or
		    a dictionary containing the current scope. When list_ops_or_scope is a
		    dict, kwargs must be empty. When list_ops_or_scope is a list or tuple,
		    then every op in it need to be decorated with @add_arg_scope to work.
		  **kwargs: keyword=value that will define the defaults for each op in
		            list_ops. All the ops need to accept the given set of arguments.
		
		Yields:
		  the current_scope, which is a dictionary of {op: {arg: value}}
		Raises:
		  TypeError: if list_ops is not a list or a tuple.
		  ValueError: if any op in list_ops has not be decorated with @add_arg_scope.
	**/
	static public function arg_scope(list_ops_or_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Strided 2-D convolution with 'SAME' padding.
		
		When stride > 1, then we do explicit zero-padding, followed by conv2d with
		'VALID' padding.
		
		Note that
		
		   net = conv2d_same(inputs, num_outputs, 3, stride=stride)
		
		is equivalent to
		
		   net = tf.contrib.layers.conv2d(inputs, num_outputs, 3, stride=1,
		   padding='SAME')
		   net = subsample(net, factor=stride)
		
		whereas
		
		   net = tf.contrib.layers.conv2d(inputs, num_outputs, 3, stride=stride,
		   padding='SAME')
		
		is different when the input's height or width is even, which is why we add the
		current function. For more details, see ResnetUtilsTest.testConv2DSameEven().
		
		Args:
		  inputs: A 4-D tensor of size [batch, height_in, width_in, channels].
		  num_outputs: An integer, the number of output filters.
		  kernel_size: An int with the kernel_size of the filters.
		  stride: An integer, the output stride.
		  rate: An integer, rate for atrous convolution.
		  scope: Scope.
		
		Returns:
		  output: A 4-D tensor of size [batch, height_out, width_out, channels] with
		    the convolution output.
	**/
	static public function conv2d_same(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, stride:Dynamic, ?rate:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Defines the default ResNet arg scope.
		
		TODO(gpapan): The batch-normalization related default values above are
		  appropriate for use in conjunction with the reference ResNet models
		  released at https://github.com/KaimingHe/deep-residual-networks. When
		  training ResNets from scratch, they might need to be tuned.
		
		Args:
		  weight_decay: The weight decay to use for regularizing the model.
		  batch_norm_decay: The moving average decay when estimating layer activation
		    statistics in batch normalization.
		  batch_norm_epsilon: Small constant to prevent division by zero when
		    normalizing activations by their variance in batch normalization.
		  batch_norm_scale: If True, uses an explicit `gamma` multiplier to scale the
		    activations in the batch normalization layer.
		
		Returns:
		  An `arg_scope` to use for the resnet models.
	**/
	static public function resnet_arg_scope(?weight_decay:Dynamic, ?batch_norm_decay:Dynamic, ?batch_norm_epsilon:Dynamic, ?batch_norm_scale:Dynamic):Dynamic;
	/**
		Stacks ResNet `Blocks` and controls output feature density.
		
		First, this function creates scopes for the ResNet in the form of
		'block_name/unit_1', 'block_name/unit_2', etc.
		
		Second, this function allows the user to explicitly control the ResNet
		output_stride, which is the ratio of the input to output spatial resolution.
		This is useful for dense prediction tasks such as semantic segmentation or
		object detection.
		
		Most ResNets consist of 4 ResNet blocks and subsample the activations by a
		factor of 2 when transitioning between consecutive ResNet blocks. This results
		to a nominal ResNet output_stride equal to 8. If we set the output_stride to
		half the nominal network stride (e.g., output_stride=4), then we compute
		responses twice.
		
		Control of the output feature density is implemented by atrous convolution.
		
		Args:
		  net: A `Tensor` of size [batch, height, width, channels].
		  blocks: A list of length equal to the number of ResNet `Blocks`. Each
		    element is a ResNet `Block` object describing the units in the `Block`.
		  output_stride: If `None`, then the output will be computed at the nominal
		    network stride. If output_stride is not `None`, it specifies the requested
		    ratio of input to output spatial resolution, which needs to be equal to
		    the product of unit strides from the start up to some level of the ResNet.
		    For example, if the ResNet employs units with strides 1, 2, 1, 3, 4, 1,
		    then valid values for the output_stride are 1, 2, 6, 24 or None (which
		    is equivalent to output_stride=24).
		  outputs_collections: Collection to add the ResNet block outputs.
		
		Returns:
		  net: Output tensor with stride equal to the specified output_stride.
		
		Raises:
		  ValueError: If the target output_stride is not valid.
	**/
	static public function stack_blocks_dense(net:Dynamic, blocks:Dynamic, ?output_stride:Dynamic, ?outputs_collections:Dynamic):Dynamic;
	/**
		Subsamples the input along the spatial dimensions.
		
		Args:
		  inputs: A `Tensor` of size [batch, height_in, width_in, channels].
		  factor: The subsampling factor.
		  scope: Optional variable_scope.
		
		Returns:
		  output: A `Tensor` of size [batch, height_out, width_out, channels] with the
		    input, either intact (if factor == 1) or subsampled (if factor > 1).
	**/
	static public function subsample(inputs:Dynamic, factor:Dynamic, ?scope:Dynamic):Dynamic;
}