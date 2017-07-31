/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.vgg;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.vgg") extern class Vgg_Module {
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
	static public var print_function : Dynamic;
	/**
		Oxford Net VGG 16-Layers version D Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether or not the model is being trained.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_16(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Oxford Net VGG 19-Layers version E Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether or not the model is being trained.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_19(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Oxford Net VGG 11-Layers version A Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether or not the model is being trained.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_a(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Defines the VGG arg scope.
		
		Args:
		  weight_decay: The l2 regularization coefficient.
		
		Returns:
		  An arg_scope.
	**/
	static public function vgg_arg_scope(?weight_decay:Dynamic):Dynamic;
	/**
		Oxford Net VGG 16-Layers version D Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether or not the model is being trained.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_d(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Oxford Net VGG 19-Layers version E Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  is_training: whether or not the model is being trained.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_e(inputs:Dynamic, ?num_classes:Dynamic, ?is_training:Dynamic, ?dropout_keep_prob:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
}