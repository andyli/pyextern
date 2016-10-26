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
	/**
		Oxford Net VGG 16-Layers version D Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  is_training: whether or not the model is being trained.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_16(inputs:Dynamic, ?num_classes:Dynamic, ?dropout_keep_prob:Dynamic, ?is_training:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Oxford Net VGG 11-Layers version A Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  is_training: whether or not the model is being trained.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_a(inputs:Dynamic, ?num_classes:Dynamic, ?dropout_keep_prob:Dynamic, ?is_training:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	static public function vgg_arg_scope(?weight_decay:Dynamic):Dynamic;
	/**
		Oxford Net VGG 16-Layers version D Example.
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_classes: number of predicted classes.
		  dropout_keep_prob: the probability that activations are kept in the dropout
		    layers during training.
		  is_training: whether or not the model is being trained.
		  spatial_squeeze: whether or not should squeeze the spatial dimensions of the
		    outputs. Useful to remove unnecessary dimensions for classification.
		  scope: Optional scope for the variables.
		
		Returns:
		  the last op containing the log predictions and end_points dict.
	**/
	static public function vgg_d(inputs:Dynamic, ?num_classes:Dynamic, ?dropout_keep_prob:Dynamic, ?is_training:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
}