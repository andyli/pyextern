/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.gan.mnist;
@:pythonImport("tensorflow.contrib.eager.python.examples.gan.mnist") extern class Mnist_Module {
	static public var FLAGS : Dynamic;
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
		Original discriminator loss for GANs, with label smoothing.
		
		See `Generative Adversarial Nets` (https://arxiv.org/abs/1406.2661) for more
		details.
		
		Args:
		  discriminator_real_outputs: Discriminator output on real data.
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		
		Returns:
		  A scalar loss Tensor.
	**/
	static public function discriminator_loss(discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Original generator loss for GANs.
		
		L = -log(sigmoid(D(G(z))))
		
		See `Generative Adversarial Nets` (https://arxiv.org/abs/1406.2661)
		for more details.
		
		Args:
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		
		Returns:
		  A scalar loss Tensor.
	**/
	static public function generator_loss(discriminator_gen_outputs:Dynamic):Dynamic;
	static public function main(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Trains `generator` and `discriminator` models on `dataset`.
		
		Args:
		  generator: Generator model.
		  discriminator: Discriminator model.
		  generator_optimizer: Optimizer to use for generator.
		  discriminator_optimizer: Optimizer to use for discriminator.
		  dataset: Dataset of images to train on.
		  step_counter: An integer variable, used to write summaries regularly.
		  log_interval: How many steps to wait between logging and collecting
		    summaries.
		  noise_dim: Dimension of noise vector to use.
	**/
	static public function train_one_epoch(generator:Dynamic, discriminator:Dynamic, generator_optimizer:Dynamic, discriminator_optimizer:Dynamic, dataset:Dynamic, step_counter:Dynamic, log_interval:Dynamic, noise_dim:Dynamic):Dynamic;
}