/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.inception_v2;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.inception_v2") extern class Inception_v2_Module {
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
		known, it will be lost. (2) inception.slim.ops._two_element_tuple cannot
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
		Inception v2 model for classification.
		
		Constructs an Inception v2 network for classification as described in
		http://arxiv.org/abs/1502.03167.
		
		The recommended image size used to train this network is 224x224. For image
		sizes that differ substantially, it is recommended to use inception_v2_base()
		and connect custom final layers to the output.
		
		Args:
		  inputs: a tensor of shape [batch_size, height, width, channels].
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
		  spatial_squeeze: if True, logits is of shape [B, C], if false logits is
		      of shape [B, 1, 1, C], where B is batch_size and C is number of classes.
		      Note that input image sizes other than 224x224 might lead to different
		      spatial dimensions, and hence cannot be squeezed. In this event,
		      it is best to set spatial_squeeze as False, and perform a reduce_mean
		      over the resulting spatial dimensions with sizes exceeding 1.
		  reuse: whether or not the network and its variables should be reused. To be
		    able to reuse 'scope' must be given.
		  scope: Optional variable_scope.
		
		Returns:
		  logits: the pre-softmax activations, a tensor of size
		    [batch_size, num_classes]
		  end_points: a dictionary from components of the network to the corresponding
		    activation.
		
		Raises:
		  ValueError: if depth_multiplier <= 0.
	**/
	static public function inception_v2(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?min_depth:Dynamic, ?depth_multiplier:Dynamic, ?prediction_fn:Dynamic, ?spatial_squeeze:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Defines the default InceptionV2 arg scope.
		
		Args:
		  weight_decay: The weight decay to use for regularizing the model.
		  batch_norm_var_collection: The name of the collection for the batch norm
		    variables.
		
		Returns:
		  An `arg_scope` to use for the inception v3 model.
	**/
	static public function inception_v2_arg_scope(?weight_decay:Dynamic, ?batch_norm_var_collection:Dynamic):Dynamic;
	/**
		Inception v2 (6a2).
		
		Constructs an Inception v2 network from inputs to the given final endpoint.
		This method can construct the network up to the layer inception(5b) as
		described in http://arxiv.org/abs/1502.03167.
		
		Args:
		  inputs: a tensor of shape [batch_size, height, width, channels].
		  final_endpoint: specifies the endpoint to construct the network up to. It
		    can be one of ['Conv2d_1a_7x7', 'MaxPool_2a_3x3', 'Conv2d_2b_1x1',
		    'Conv2d_2c_3x3', 'MaxPool_3a_3x3', 'Mixed_3b', 'Mixed_3c', 'Mixed_4a',
		    'Mixed_4b', 'Mixed_4c', 'Mixed_4d', 'Mixed_4e', 'Mixed_5a', 'Mixed_5b',
		    'Mixed_5c'].
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
	static public function inception_v2_base(inputs:Dynamic, ?final_endpoint:Dynamic, ?min_depth:Dynamic, ?depth_multiplier:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function trunc_normal(stddev:Dynamic):Dynamic;
}