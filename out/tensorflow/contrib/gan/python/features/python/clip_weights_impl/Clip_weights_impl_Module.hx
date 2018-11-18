/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features.python.clip_weights_impl;
@:pythonImport("tensorflow.contrib.gan.python.features.python.clip_weights_impl") extern class Clip_weights_impl_Module {
	static public var __all__ : Dynamic;
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}