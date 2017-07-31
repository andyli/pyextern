/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.resnet_v1;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.resnet_v1") extern class Resnet_v1_Module {
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
		Bottleneck residual unit variant with BN after convolutions.
		
		This is the original residual unit proposed in [1]. See Fig. 1(a) of [2] for
		its definition. Note that we use here the bottleneck variant which has an
		extra bottleneck layer.
		
		When putting together two consecutive ResNet blocks that use this unit, one
		should use stride = 2 in the last unit of the first block.
		
		Args:
		  inputs: A tensor of size [batch, height, width, channels].
		  depth: The depth of the ResNet unit output.
		  depth_bottleneck: The depth of the bottleneck layers.
		  stride: The ResNet unit's stride. Determines the amount of downsampling of
		    the units output compared to its input.
		  rate: An integer, rate for atrous convolution.
		  outputs_collections: Collection to add the ResNet unit output.
		  scope: Optional variable_scope.
		
		Returns:
		  The ResNet unit's output.
	**/
	static public function bottleneck(inputs:Dynamic, depth:Dynamic, depth_bottleneck:Dynamic, stride:Dynamic, ?rate:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Defines the default ResNet arg scope. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2017-08-01.
		Instructions for updating:
		Pass is_training directly to the network instead of the arg_scope.
		
		TODO(gpapan): The batch-normalization related default values above are
		  appropriate for use in conjunction with the reference ResNet models
		  released at https://github.com/KaimingHe/deep-residual-networks. When
		  training ResNets from scratch, they might need to be tuned.
		
		Args:
		  is_training: Whether or not we are training the parameters in the batch
		    normalization layers of the model. (deprecated)
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
	static public function resnet_arg_scope(?is_training:Dynamic, ?weight_decay:Dynamic, ?batch_norm_decay:Dynamic, ?batch_norm_epsilon:Dynamic, ?batch_norm_scale:Dynamic):Dynamic;
	/**
		Generator for v1 ResNet models.
		
		This function generates a family of ResNet v1 models. See the resnet_v1_*()
		methods for specific model instantiations, obtained by selecting different
		block instantiations that produce ResNets of various depths.
		
		Training for image classification on Imagenet is usually done with [224, 224]
		inputs, resulting in [7, 7] feature maps at the output of the last ResNet
		block for the ResNets defined in [1] that have nominal stride equal to 32.
		However, for dense prediction tasks we advise that one uses inputs with
		spatial dimensions that are multiples of 32 plus 1, e.g., [321, 321]. In
		this case the feature maps at the ResNet output will have spatial shape
		[(height - 1) / output_stride + 1, (width - 1) / output_stride + 1]
		and corners exactly aligned with the input image corners, which greatly
		facilitates alignment of the features to the image. Using as input [225, 225]
		images results in [8, 8] feature maps at the output of the last ResNet block.
		
		For dense prediction tasks, the ResNet needs to run in fully-convolutional
		(FCN) mode and global_pool needs to be set to False. The ResNets in [1, 2] all
		have nominal stride equal to 32 and a good choice in FCN mode is to use
		output_stride=16 in order to increase the density of the computed features at
		small computational and memory overhead, cf. http://arxiv.org/abs/1606.00915.
		
		Args:
		  inputs: A tensor of size [batch, height_in, width_in, channels].
		  blocks: A list of length equal to the number of ResNet blocks. Each element
		    is a resnet_utils.Block object describing the units in the block.
		  num_classes: Number of predicted classes for classification tasks. If None
		    we return the features before the logit layer.
		  is_training: whether is training or not. If None, the value inherited from
		    the resnet_arg_scope is used. Specifying value None is deprecated.
		  global_pool: If True, we perform global average pooling before computing the
		    logits. Set to True for image classification, False for dense prediction.
		  output_stride: If None, then the output will be computed at the nominal
		    network stride. If output_stride is not None, it specifies the requested
		    ratio of input to output spatial resolution.
		  include_root_block: If True, include the initial convolution followed by
		    max-pooling, if False excludes it.
		  reuse: whether or not the network and its variables should be reused. To be
		    able to reuse 'scope' must be given.
		  scope: Optional variable_scope.
		
		Returns:
		  net: A rank-4 tensor of size [batch, height_out, width_out, channels_out].
		    If global_pool is False, then height_out and width_out are reduced by a
		    factor of output_stride compared to the respective height_in and width_in,
		    else both height_out and width_out equal one. If num_classes is None, then
		    net is the output of the last ResNet block, potentially after global
		    average pooling. If num_classes is not None, net contains the pre-softmax
		    activations.
		  end_points: A dictionary from components of the network to the corresponding
		    activation.
		
		Raises:
		  ValueError: If the target output_stride is not valid.
	**/
	static public function resnet_v1(inputs:Dynamic, blocks:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?global_pool:Dynamic, ?output_stride:Dynamic, ?include_root_block:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		ResNet-101 model of [1]. See resnet_v1() for arg and return description.
	**/
	static public function resnet_v1_101(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?global_pool:Dynamic, ?output_stride:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		ResNet-152 model of [1]. See resnet_v1() for arg and return description.
	**/
	static public function resnet_v1_152(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?global_pool:Dynamic, ?output_stride:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		ResNet-200 model of [2]. See resnet_v1() for arg and return description.
	**/
	static public function resnet_v1_200(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?global_pool:Dynamic, ?output_stride:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		ResNet-50 model of [1]. See resnet_v1() for arg and return description.
	**/
	static public function resnet_v1_50(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?global_pool:Dynamic, ?output_stride:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Helper function for creating a resnet_v1 bottleneck block.
		
		Args:
		  scope: The scope of the block.
		  base_depth: The depth of the bottleneck layer for each unit.
		  num_units: The number of units in the block.
		  stride: The stride of the block, implemented as a stride in the last unit.
		    All other units have stride=1.
		
		Returns:
		  A resnet_v1 bottleneck block.
	**/
	static public function resnet_v1_block(scope:Dynamic, base_depth:Dynamic, num_units:Dynamic, stride:Dynamic):Dynamic;
}