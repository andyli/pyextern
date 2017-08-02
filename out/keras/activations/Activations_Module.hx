/* This file is generated, do not edit! */
package keras.activations;
@:pythonImport("keras.activations") extern class Activations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	static public function linear(x:Dynamic):Dynamic;
	static public function relu(x:Dynamic, ?alpha:Dynamic, ?max_value:Dynamic):Dynamic;
	/**
		Scaled Exponential Linear Unit. (Klambauer et al., 2017)
		
		# Arguments
		    x: A tensor or variable to compute the activation function for.
		
		# References
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
	**/
	static public function selu(x:Dynamic):Dynamic;
	static public function serialize(activation:Dynamic):Dynamic;
	static public function sigmoid(x:Dynamic):Dynamic;
	/**
		Softmax activation function.
		
		# Arguments
		    x : Tensor.
		    axis: Integer, axis along which the softmax normalization is applied.
		
		# Returns
		    Tensor, output of softmax transformation.
		
		# Raises
		    ValueError: In case `dim(x) == 1`.
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function softplus(x:Dynamic):Dynamic;
	static public function softsign(x:Dynamic):Dynamic;
	static public function tanh(x:Dynamic):Dynamic;
}