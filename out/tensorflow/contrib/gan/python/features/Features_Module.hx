/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features;
@:pythonImport("tensorflow.contrib.gan.python.features") extern class Features_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Modifies an optimizer so it clips weights to a certain value.
		
		Args:
		  optimizer: An optimizer to perform variable weight clipping.
		  model: A GANModel namedtuple.
		  weight_clip: Positive python float to clip discriminator weights. Used to
		    enforce a K-lipschitz condition, which is useful for some GAN training
		    schemes (ex WGAN: https://arxiv.org/pdf/1701.07875).
		
		Returns:
		  An optimizer to perform weight clipping after updates.
		
		Raises:
		  ValueError: If `weight_clip` is less than 0.
	**/
	static public function clip_discriminator_weights(optimizer:Dynamic, model:Dynamic, weight_clip:Dynamic):Dynamic;
	/**
		Modifies an optimizer so it clips weights to a certain value.
		
		Args:
		  optimizer: An optimizer to perform variable weight clipping.
		  variables: A list of TensorFlow variables.
		  weight_clip: Positive python float to clip discriminator weights. Used to
		    enforce a K-lipschitz condition, which is useful for some GAN training
		    schemes (ex WGAN: https://arxiv.org/pdf/1701.07875).
		
		Returns:
		  An optimizer to perform weight clipping after updates.
		
		Raises:
		  ValueError: If `weight_clip` is less than 0.
	**/
	static public function clip_variables(optimizer:Dynamic, variables:Dynamic, weight_clip:Dynamic):Dynamic;
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
	/**
		Queue storing input values and returning random previously stored ones.
		
		Every time the returned `output_value` is evaluated, `input_value` is
		evaluated and its value either directly returned (with
		`1-pooling_probability`) or stored in the pool and a random one of the samples
		currently in the pool is popped and returned. As long as the pool in not fully
		filled, the input_value is always directly returned, as well as stored in the
		pool. Note during inference / testing, it may be appropriate to set
		`pool_size` = 0 or `pooling_probability` = 0.
		
		Args:
		  input_values: An arbitrarily nested structure of `tf.Tensors`, from which to
		    read values to be pooled.
		  pool_size: An integer specifying the maximum size of the pool. Defaults to
		    50.
		  pooling_probability: A float `Tensor` specifying the probability of getting
		    a value from the pool, as opposed to just the current input.
		  name: A string prefix for the name scope for all tensorflow ops.
		
		Returns:
		  A nested structure of `Tensor` objects with the same structure as
		  `input_values`. With the given probability, the Tensor values are either the
		  same as in `input_values` or a randomly chosen sample that was previously
		  inserted in the pool.
		
		Raises:
		  ValueError: If `pool_size` is negative.
	**/
	static public function tensor_pool(input_values:Dynamic, ?pool_size:Dynamic, ?pooling_probability:Dynamic, ?name:Dynamic):Dynamic;
}