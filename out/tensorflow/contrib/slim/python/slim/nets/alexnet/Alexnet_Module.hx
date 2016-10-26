/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.nets.alexnet;
@:pythonImport("tensorflow.contrib.slim.python.slim.nets.alexnet") extern class Alexnet_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		AlexNet version 2.
		
		Described in: http://arxiv.org/pdf/1404.5997v2.pdf
		Parameters from:
		github.com/akrizhevsky/cuda-convnet2/blob/master/layers/
		layers-imagenet-1gpu.cfg
		
		Note: All the fully_connected layers have been transformed to conv2d layers.
		      To use in classification mode, resize input to 224x224. To use in fully
		      convolutional mode, set spatial_squeeze to false.
		      The LRN layers have been removed and change the initializers from
		      random_normal_initializer to xavier_initializer.
		
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
	static public function alexnet_v2(inputs:Dynamic, ?num_classes:Dynamic, ?dropout_keep_prob:Dynamic, ?is_training:Dynamic, ?spatial_squeeze:Dynamic, ?scope:Dynamic):Dynamic;
	static public function alexnet_v2_arg_scope(?weight_decay:Dynamic):Dynamic;
	static public function trunc_normal(stddev:Dynamic):Dynamic;
}