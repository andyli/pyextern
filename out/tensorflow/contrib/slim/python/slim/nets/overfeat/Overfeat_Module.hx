/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.overfeat;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.overfeat") extern class Overfeat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Contains the model definition for the OverFeat network.
		
		The definition for the network was obtained from:
		  OverFeat: Integrated Recognition, Localization and Detection using
		  Convolutional Networks
		  Pierre Sermanet, David Eigen, Xiang Zhang, Michael Mathieu, Rob Fergus and
		  Yann LeCun, 2014
		  http://arxiv.org/abs/1312.6229
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 231x231. To use in fully
		      convolutional mode, set spatial_squeeze to false.
		
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
	static public function overfeat(inputs:Dynamic, ?num_classes:Dynamic, ?dropout_keep_prob:Dynamic, ?is_training:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	static public function overfeat_arg_scope(?weight_decay:Dynamic):Dynamic;
	static public function trunc_normal(stddev:Dynamic):Dynamic;
}