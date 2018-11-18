/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features.python.conditioning_utils_impl;
@:pythonImport("tensorflow.contrib.gan.python.features.python.conditioning_utils_impl") extern class Conditioning_utils_impl_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_shape(tensor:Dynamic):Dynamic;
	/**
		Get a dense embedding vector from a one-hot encoding.
	**/
	static public function _one_hot_to_embedding(one_hot:Dynamic, embedding_size:Dynamic):Dynamic;
	static public function _validate_onehot(one_hot_labels:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Condition the value of a tensor.
		
		Conditioning scheme based on https://arxiv.org/abs/1609.03499.
		
		Args:
		  tensor: A minibatch tensor to be conditioned.
		  conditioning: A minibatch Tensor of to condition on. Must be 2D, with first
		    dimension the same as `tensor`.
		
		Returns:
		  `tensor` conditioned on `conditioning`.
		
		Raises:
		  ValueError: If the non-batch dimensions of `tensor` aren't fully defined.
		  ValueError: If `conditioning` isn't at least 2D.
		  ValueError: If the batch dimension for the input Tensors don't match.
	**/
	static public function condition_tensor(tensor:Dynamic, conditioning:Dynamic):Dynamic;
	/**
		Condition a tensor based on a one-hot tensor.
		
		Conditioning scheme based on https://arxiv.org/abs/1609.03499.
		
		Args:
		  tensor: Tensor to be conditioned.
		  one_hot_labels: A Tensor of one-hot labels. Shape is
		    [batch_size, num_classes].
		  embedding_size: The size of the class embedding.
		
		Returns:
		  `tensor` conditioned on `one_hot_labels`.
		
		Raises:
		  ValueError: `one_hot_labels` isn't 2D, if non-batch dimensions aren't
		    fully defined, or if batch sizes don't match.
	**/
	static public function condition_tensor_from_onehot(tensor:Dynamic, one_hot_labels:Dynamic, ?embedding_size:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}