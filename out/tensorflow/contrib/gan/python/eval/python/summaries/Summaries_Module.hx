/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.eval.python.summaries;
@:pythonImport("tensorflow.contrib.gan.python.eval.python.summaries") extern class Summaries_Module {
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
		Adds image summaries for CycleGAN.
		
		There are two summaries, one for each generator. The first image is the
		generator input, the second is the generator output, and the third is G(F(x)).
		
		Args:
		  cyclegan_model: A CycleGANModel tuple.
		
		Raises:
		  ValueError: If `cyclegan_model` isn't a CycleGANModel.
		  ValueError: If generated data, generator inputs, and reconstructions aren't
		    images.
		  ValueError: If the generator input, generated data, and reconstructions
		    aren't all the same size.
	**/
	static public function add_cyclegan_image_summaries(cyclegan_model:Dynamic):Dynamic;
	/**
		Adds image summaries for real and fake images.
		
		Args:
		  gan_model: A GANModel tuple.
		  grid_size: The size of an image grid.
		  model_summaries: Also add summaries of the model.
		
		Raises:
		  ValueError: If real and generated data aren't images.
	**/
	static public function add_gan_model_image_summaries(gan_model:Dynamic, ?grid_size:Dynamic, ?model_summaries:Dynamic):Dynamic;
	/**
		Adds typical GANModel summaries.
		
		Args:
		  gan_model: A GANModel tuple.
	**/
	static public function add_gan_model_summaries(gan_model:Dynamic):Dynamic;
	/**
		Adds image summaries to compare triplets of images.
		
		The first image is the generator input, the second is the generator output,
		and the third is the real data. This style of comparison is useful for
		image translation problems, where the generator input is a corrupted image,
		the generator output is the reconstruction, and the real data is the target.
		
		Args:
		  gan_model: A GANModel tuple.
		  num_comparisons: The number of image triplets to display.
		  display_diffs: Also display the difference between generated and target.
		
		Raises:
		  ValueError: If real data, generated data, and generator inputs aren't
		    images.
		  ValueError: If the generator input, real, and generated data aren't all the
		    same size.
	**/
	static public function add_image_comparison_summaries(gan_model:Dynamic, ?num_comparisons:Dynamic, ?display_diffs:Dynamic):Dynamic;
	/**
		Adds summaries for a regularization losses..
		
		Args:
		  gan_model: A GANModel tuple.
	**/
	static public function add_regularization_loss_summaries(gan_model:Dynamic):Dynamic;
	/**
		Adds image summaries to see StarGAN image results.
		
		If display_diffs is True, each image result has `2` rows and `num_domains + 1`
		columns.
		The first row looks like:
		  [original_image, transformed_to_domain_0, transformed_to_domain_1, ...]
		The second row looks like:
		  [no_modification_baseline, transformed_to_domain_0-original_image, ...]
		If display_diffs is False, only the first row is shown.
		
		IMPORTANT:
		  Since the model originally does not transformed the image to every domains,
		  we will transform them on-the-fly within this function in parallel.
		
		Args:
		  stargan_model: A StarGANModel tuple.
		  num_images: The number of examples/images to be transformed and shown.
		  display_diffs: Also display the difference between generated and target.
		
		Raises:
		  ValueError: If input_data is not images.
		  ValueError: If input_data_domain_label is not rank 2.
		  ValueError: If dimension 2 of input_data_domain_label is not fully defined.
	**/
	static public function add_stargan_image_summaries(stargan_model:Dynamic, ?num_images:Dynamic, ?display_diffs:Dynamic):Dynamic;
}