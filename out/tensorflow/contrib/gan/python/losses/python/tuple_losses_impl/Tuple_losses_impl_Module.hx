/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.losses.python.tuple_losses_impl;
@:pythonImport("tensorflow.contrib.gan.python.losses.python.tuple_losses_impl") extern class Tuple_losses_impl_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts a loss taking individual args to one taking a GANModel namedtuple.
		
		The new function has the same name as the original one.
		
		Args:
		  loss_fn: A python function taking a `GANModel` object and returning a loss
		    Tensor calculated from that object. The shape of the loss depends on
		    `reduction`.
		
		Returns:
		  A new function that takes a GANModel namedtuples and returns the same loss.
	**/
	static public function _args_to_gan_model(loss_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function acgan_discriminator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function acgan_generator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Combine adversarial loss and main loss.
		
		Uses `combine_adversarial_loss` to combine the losses, and returns
		a modified GANLoss namedtuple.
		
		Args:
		  gan_loss: A GANLoss namedtuple. Assume the GANLoss.generator_loss is the
		    adversarial loss.
		  gan_model: A GANModel namedtuple. Used to access the generator's variables.
		  non_adversarial_loss: Same as `main_loss` from
		    `combine_adversarial_loss`.
		  weight_factor: Same as `weight_factor` from
		    `combine_adversarial_loss`.
		  gradient_ratio: Same as `gradient_ratio` from
		    `combine_adversarial_loss`.
		  gradient_ratio_epsilon: Same as `gradient_ratio_epsilon` from
		    `combine_adversarial_loss`.
		  scalar_summaries: Same as `scalar_summaries` from
		    `combine_adversarial_loss`.
		  gradient_summaries: Same as `gradient_summaries` from
		    `combine_adversarial_loss`.
		
		Returns:
		  A modified GANLoss namedtuple, with `non_adversarial_loss` included
		  appropriately.
	**/
	static public function combine_adversarial_loss(gan_loss:Dynamic, gan_model:Dynamic, non_adversarial_loss:Dynamic, ?weight_factor:Dynamic, ?gradient_ratio:Dynamic, ?gradient_ratio_epsilon:Dynamic, ?scalar_summaries:Dynamic, ?gradient_summaries:Dynamic):Dynamic;
	/**
		Defines the cycle consistency loss.
		
		Uses `cycle_consistency_loss` to compute the cycle consistency loss for a
		`cyclegan_model`.
		
		Args:
		  cyclegan_model: A `CycleGANModel` namedtuple.
		  scope: The scope for the operations performed in computing the loss.
		    Defaults to None.
		  add_summaries: Whether or not to add detailed summaries for the loss.
		    Defaults to False.
		
		Returns:
		  A scalar `Tensor` of cycle consistency loss.
		
		Raises:
		  ValueError: If `cyclegan_model` is not a `CycleGANModel` namedtuple.
	**/
	static public function cycle_consistency_loss(cyclegan_model:Dynamic, ?scope:Dynamic, ?add_summaries:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function least_squares_discriminator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function least_squares_generator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimax_discriminator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimax_generator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function modified_discriminator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function modified_generator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mutual_information_penalty(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert a discriminator loss function to take a StarGANModel.
		
		The new function has the same name as the original one.
		
		Args:
		  loss_fn: A python function taking Discriminator's real/fake prediction for
		    real data and generated data.
		
		Returns:
		  A new function that takes a StarGANModel namedtuple and returns the same
		  loss.
	**/
	static public function stargan_discriminator_loss_wrapper(loss_fn:Dynamic):Dynamic;
	/**
		Convert a generator loss function to take a StarGANModel.
		
		The new function has the same name as the original one.
		
		Args:
		  loss_fn: A python function taking Discriminator's real/fake prediction for
		    generated data.
		
		Returns:
		  A new function that takes a StarGANModel namedtuple and returns the same
		  loss.
	**/
	static public function stargan_generator_loss_wrapper(loss_fn:Dynamic):Dynamic;
	/**
		Convert a gradient penalty function to take a StarGANModel.
		
		The new function has the same name as the original one.
		
		Args:
		  loss_fn: A python function taking real_data, generated_data,
		    generator_inputs for Discriminator's condition (i.e. number of domains),
		    discriminator_fn, and discriminator_scope.
		
		Returns:
		  A new function that takes a StarGANModel namedtuple and returns the same
		  loss.
	**/
	static public function stargan_gradient_penalty_wrapper(loss_fn:Dynamic):Dynamic;
	static public function wasserstein_discriminator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function wasserstein_generator_loss(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function wasserstein_gradient_penalty(gan_model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}