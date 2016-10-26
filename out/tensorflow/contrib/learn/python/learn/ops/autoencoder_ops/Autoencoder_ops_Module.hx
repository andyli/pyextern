/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.autoencoder_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.autoencoder_ops") extern class Autoencoder_ops_Module {
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
		Creates fully connected autoencoder subgraph.
		
		Args:
		  tensor_in: tensor or placeholder for input features.
		  hidden_units: list of counts of hidden units in each layer.
		  activation: activation function used to map inner latent layer onto
		              reconstruction layer.
		  add_noise: a function that adds noise to tensor_in,
		         e.g. def add_noise(x):
		                  return(x + np.random.normal(0, 0.1, (len(x), len(x[0]))))
		  dropout: if not None, will add a dropout layer with given
		           probability.
		  scope: the variable scope for this op.
		
		Returns:
		  Tensors for encoder and decoder.
	**/
	static public function dnn_autoencoder(tensor_in:Dynamic, hidden_units:Dynamic, ?activation:Dynamic, ?add_noise:Dynamic, ?dropout:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}