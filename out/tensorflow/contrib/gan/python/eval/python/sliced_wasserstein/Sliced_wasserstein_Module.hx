/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.eval.python.sliced_wasserstein;
@:pythonImport("tensorflow.contrib.gan.python.eval.python.sliced_wasserstein") extern class Sliced_wasserstein_Module {
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
		Compute the Wasserstein distance between two distributions of images.
		
		Note that measure vary with the number of images. Use 8192 images to get
		numbers comparable to the ones in the original paper.
		
		Args:
		    real_images: (tensor) Real images (batch, height, width, channels).
		    fake_images: (tensor) Fake images (batch, height, width, channels).
		    resolution_min: (int) Minimum resolution for the Laplacian pyramid.
		    patches_per_image: (int) Number of patches to extract per image per
		      Laplacian level.
		    patch_size: (int) Width of a square patch.
		    random_sampling_count: (int) Number of random projections to average.
		    random_projection_dim: (int) Dimension of the random projection space.
		    use_svd: experimental method to compute a more accurate distance.
		Returns:
		    List of tuples (distance_real, distance_fake) for each level of the
		    Laplacian pyramid from the highest resolution to the lowest.
		      distance_real is the Wasserstein distance between real images
		      distance_fake is the Wasserstein distance between real and fake images.
		Raises:
		    ValueError: If the inputs shapes are incorrect. Input tensor dimensions
		    (batch, height, width, channels) are expected to be known at graph
		    construction time. In addition height and width must be the same and the
		    number of colors should be exactly 3. Real and fake images must have the
		    same size.
	**/
	static public function sliced_wasserstein_distance(real_images:Dynamic, fake_images:Dynamic, ?resolution_min:Dynamic, ?patches_per_image:Dynamic, ?patch_size:Dynamic, ?random_sampling_count:Dynamic, ?random_projection_dim:Dynamic, ?use_svd:Dynamic):Dynamic;
}