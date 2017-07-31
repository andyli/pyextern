/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.inception_v1;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.inception_v1") extern class Inception_v1_Module {
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
	static public var print_function : Dynamic;
	static public function trunc_normal(stddev:Dynamic):Dynamic;
}