/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.inception_v3;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.inception_v3") extern class Inception_v3_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Define kernel size which is automatically reduced for small input.
		
		If the shape of the input images is unknown at graph construction time this
		function assumes that the input images are is large enough.
		
		Args:
		  input_tensor: input tensor of size [batch_size, height, width, channels].
		  kernel_size: desired kernel size of length 2: [kernel_height, kernel_width]
		
		Returns:
		  a tensor with the kernel size.
		
		TODO(jrru): Make this function work with unknown shapes. Theoretically, this
		can be done with the code below. Problems are two-fold: (1) If the shape was
		known, it will be lost. (2) inception.tf.contrib.slim.ops._two_element_tuple
		cannot
		handle tensors that define the kernel size.
		    shape = tf.shape(input_tensor)
		    return = tf.stack([tf.minimum(shape[1], kernel_size[0]),
		                      tf.minimum(shape[2], kernel_size[1])])
	**/
	static public function _reduced_kernel_size_for_small_input(input_tensor:Dynamic, kernel_size:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Inception model from http://arxiv.org/abs/1512.00567.
		
		"Rethinking the Inception Architecture for Computer Vision"
		
		Christian Szegedy, Vincent Vanhoucke, Sergey Ioffe, Jonathon Shlens,
		Zbigniew Wojna.
		
		With the default arguments this method constructs the exact model defined in
		the paper. However, one can experiment with variations of the inception_v3
		network by changing arguments dropout_keep_prob, min_depth and
		depth_multiplier.
		
		The default image size used to train this network is 299x299.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether is training or not.
		  dropout_keep_prob: the percentage of activation values that are retained.
		  min_depth: Minimum depth value (number of channels) for all convolution ops.
		    Enforced when depth_multiplier < 1, and not an active constraint when
		    depth_multiplier >= 1.
		  depth_multiplier: Float multiplier for the depth (number of channels)
		    for all convolution ops. The value must be greater than zero. Typical
		    usage will be to set this value in (0, 1) to reduce the number of
		    parameters or computation cost of the model.
		  prediction_fn: a function to get predictions out of logits.
		  spatial_squeeze: if True, logits is of shape is [B, C], if false logits is
		    of shape [B, 1, 1, C], where B is batch_size and C is number of classes.
		    To use this parameter, the input images must be smaller
		    than 300x300 pixels, in which case the output logit layer
		    does not contain spatial information and can be removed.
		  reuse: whether or not the network and its variables should be reused. To be
		    able to reuse 'scope' must be given.
		  scope: Optional variable_scope.
		
		Returns:
		  logits: the pre-softmax activations, a tensor of size
		    [batch_size, num_classes]
		  end_points: a dictionary from components of the network to the corresponding
		    activation.
		
		Raises:
		  ValueError: if 'depth_multiplier' is less than or equal to zero.
	**/
	static public function inception_v3(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?min_depth:Dynamic, ?depth_multiplier:Dynamic, ?prediction_fn:Dynamic, ?spatial_squeeze:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Defines the default InceptionV3 arg scope.
		
		Args:
		  weight_decay: The weight decay to use for regularizing the model.
		  batch_norm_var_collection: The name of the collection for the batch norm
		    variables.
		  batch_norm_decay: Decay for batch norm moving average
		  batch_norm_epsilon: Small float added to variance to avoid division by zero
		  updates_collections: Collections for the update ops of the layer
		  use_fused_batchnorm: Enable fused batchnorm.
		
		Returns:
		  An `arg_scope` to use for the inception v3 model.
	**/
	static public function inception_v3_arg_scope(?weight_decay:Dynamic, ?batch_norm_var_collection:Dynamic, ?batch_norm_decay:Dynamic, ?batch_norm_epsilon:Dynamic, ?updates_collections:Dynamic, ?use_fused_batchnorm:Dynamic):Dynamic;
	/**
		Inception model from http://arxiv.org/abs/1512.00567.
		
		Constructs an Inception v3 network from inputs to the given final endpoint.
		This method can construct the network up to the final inception block
		Mixed_7c.
		
		Note that the names of the layers in the paper do not correspond to the names
		of the endpoints registered by this function although they build the same
		network.
		
		Here is a mapping from the old_names to the new names:
		Old name          | New name
		=======================================
		conv0             | Conv2d_1a_3x3
		conv1             | Conv2d_2a_3x3
		conv2             | Conv2d_2b_3x3
		pool1             | MaxPool_3a_3x3
		conv3             | Conv2d_3b_1x1
		conv4             | Conv2d_4a_3x3
		pool2             | MaxPool_5a_3x3
		mixed_35x35x256a  | Mixed_5b
		mixed_35x35x288a  | Mixed_5c
		mixed_35x35x288b  | Mixed_5d
		mixed_17x17x768a  | Mixed_6a
		mixed_17x17x768b  | Mixed_6b
		mixed_17x17x768c  | Mixed_6c
		mixed_17x17x768d  | Mixed_6d
		mixed_17x17x768e  | Mixed_6e
		mixed_8x8x1280a   | Mixed_7a
		mixed_8x8x2048a   | Mixed_7b
		mixed_8x8x2048b   | Mixed_7c
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  final_endpoint: specifies the endpoint to construct the network up to. It
		    can be one of ['Conv2d_1a_3x3', 'Conv2d_2a_3x3', 'Conv2d_2b_3x3',
		    'MaxPool_3a_3x3', 'Conv2d_3b_1x1', 'Conv2d_4a_3x3', 'MaxPool_5a_3x3',
		    'Mixed_5b', 'Mixed_5c', 'Mixed_5d', 'Mixed_6a', 'Mixed_6b', 'Mixed_6c',
		    'Mixed_6d', 'Mixed_6e', 'Mixed_7a', 'Mixed_7b', 'Mixed_7c'].
		  min_depth: Minimum depth value (number of channels) for all convolution ops.
		    Enforced when depth_multiplier < 1, and not an active constraint when
		    depth_multiplier >= 1.
		  depth_multiplier: Float multiplier for the depth (number of channels)
		    for all convolution ops. The value must be greater than zero. Typical
		    usage will be to set this value in (0, 1) to reduce the number of
		    parameters or computation cost of the model.
		  scope: Optional variable_scope.
		
		Returns:
		  tensor_out: output tensor corresponding to the final_endpoint.
		  end_points: a set of activations for external use, for example summaries or
		              losses.
		
		Raises:
		  ValueError: if final_endpoint is not set to one of the predefined values,
		              or depth_multiplier <= 0
	**/
	static public function inception_v3_base(inputs:Dynamic, ?final_endpoint:Dynamic, ?min_depth:Dynamic, ?depth_multiplier:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function trunc_normal(stddev:Dynamic):Dynamic;
}