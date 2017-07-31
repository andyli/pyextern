/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.inception;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.inception") extern class Inception_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Defines the Inception V1 architecture.
		
		This architecture is defined in:
		
		  Going deeper with convolutions
		  Christian Szegedy, Wei Liu, Yangqing Jia, Pierre Sermanet, Scott Reed,
		  Dragomir Anguelov, Dumitru Erhan, Vincent Vanhoucke, Andrew Rabinovich.
		  http://arxiv.org/pdf/1409.4842v1.pdf.
		
		The default image size used to train this network is 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether is training or not.
		  dropout_keep_prob: the percentage of activation values that are retained.
		  prediction_fn: a function to get predictions out of logits.
		  spatial_squeeze: if True, logits is of shape is [B, C], if false logits is
		      of shape [B, 1, 1, C], where B is batch_size and C is number of classes.
		  reuse: whether or not the network and its variables should be reused. To be
		    able to reuse 'scope' must be given.
		  scope: Optional variable_scope.
		
		Returns:
		  logits: the pre-softmax activations, a tensor of size
		    [batch_size, num_classes]
		  end_points: a dictionary from components of the network to the corresponding
		    activation.
	**/
	static public function inception_v1(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?prediction_fn:Dynamic, ?spatial_squeeze:Dynamic, ?reuse:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Defines the default InceptionV1 arg scope.
		
		Note: Althougth the original paper didn't use batch_norm we found it useful.
		
		Args:
		  weight_decay: The weight decay to use for regularizing the model.
		  use_batch_norm: "If `True`, batch_norm is applied after each convolution.
		  batch_norm_var_collection: The name of the collection for the batch norm
		    variables.
		
		Returns:
		  An `arg_scope` to use for the inception v3 model.
	**/
	static public function inception_v1_arg_scope(?weight_decay:Dynamic, ?use_batch_norm:Dynamic, ?batch_norm_var_collection:Dynamic):Dynamic;
	/**
		Defines the Inception V1 base architecture.
		
		This architecture is defined in:
		  Going deeper with convolutions
		  Christian Szegedy, Wei Liu, Yangqing Jia, Pierre Sermanet, Scott Reed,
		  Dragomir Anguelov, Dumitru Erhan, Vincent Vanhoucke, Andrew Rabinovich.
		  http://arxiv.org/pdf/1409.4842v1.pdf.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  final_endpoint: specifies the endpoint to construct the network up to. It
		    can be one of ['Conv2d_1a_7x7', 'MaxPool_2a_3x3', 'Conv2d_2b_1x1',
		    'Conv2d_2c_3x3', 'MaxPool_3a_3x3', 'Mixed_3b', 'Mixed_3c',
		    'MaxPool_4a_3x3', 'Mixed_4b', 'Mixed_4c', 'Mixed_4d', 'Mixed_4e',
		    'Mixed_4f', 'MaxPool_5a_2x2', 'Mixed_5b', 'Mixed_5c']
		  scope: Optional variable_scope.
		
		Returns:
		  A dictionary from components of the network to the corresponding activation.
		
		Raises:
		  ValueError: if final_endpoint is not set to one of the predefined values.
	**/
	static public function inception_v1_base(inputs:Dynamic, ?final_endpoint:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Inception v2 model for classification.
		
		Constructs an Inception v2 network for classification as described in
		http://arxiv.org/abs/1502.03167.
		
		The default image size used to train this network is 224x224.
		
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
		  spatial_squeeze: if True, logits is of shape is [B, C], if false logits is
		      of shape [B, 1, 1, C], where B is batch_size and C is number of classes.
		  reuse: whether or not the network and its variables should be reused. To be
		    able to reuse 'scope' must be given.
		  scope: Optional variable_scope.
		
		Returns:
		  logits: the pre-softmax activations, a tensor of size
		    [batch_size, num_classes]
		  end_points: a dictionary from components of the network to the corresponding
		    activation.
		
		Raises:
		  ValueError: if final_endpoint is not set to one of the predefined values,
		              or depth_multiplier <= 0
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
		  stddev: The standard deviation of the trunctated normal weight initializer.
		  batch_norm_var_collection: The name of the collection for the batch norm
		    variables.
		
		Returns:
		  An `arg_scope` to use for the inception v3 model.
	**/
	static public function inception_v3_arg_scope(?weight_decay:Dynamic, ?stddev:Dynamic, ?batch_norm_var_collection:Dynamic):Dynamic;
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
}