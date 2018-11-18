/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.eval.python.sliced_wasserstein_impl;
@:pythonImport("tensorflow.contrib.gan.python.eval.python.sliced_wasserstein_impl") extern class Sliced_wasserstein_impl_Module {
	static public var _GAUSSIAN_FILTER : Dynamic;
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
		Extract patches from a batch.
		
		Args:
		    batch: (tensor) The batch of images (batch, height, width, channels).
		    patches_per_image: (int) Number of patches to extract per image.
		    patch_size: (int) Size of the patches (size, size, channels) to extract.
		Returns:
		    Tensor (batch*patches_per_image, patch_size, patch_size, channels) of
		    patches.
	**/
	static public function _batch_to_patches(batch:Dynamic, patches_per_image:Dynamic, patch_size:Dynamic):Dynamic;
	/**
		Compute a Laplacian pyramid.
		
		Args:
		    batch: (tensor) The batch of images (batch, height, width, channels).
		    num_levels: (int) Desired number of hierarchical levels.
		Returns:
		    List of tensors from the highest to lowest resolution.
	**/
	static public function _laplacian_pyramid(batch:Dynamic, num_levels:Dynamic):Dynamic;
	/**
		Normalize patches by their mean and standard deviation.
		
		Args:
		    patches: (tensor) The batch of patches (batch, size, size, channels).
		Returns:
		    Tensor (batch, size, size, channels) of the normalized patches.
	**/
	static public function _normalize_patches(patches:Dynamic):Dynamic;
	/**
		Compute the approximate sliced Wasserstein distance.
		
		Args:
		    a: (matrix) Distribution "a" of samples (row, col).
		    b: (matrix) Distribution "b" of samples (row, col).
		    random_sampling_count: (int) Number of random projections to average.
		    random_projection_dim: (int) Dimension of the random projection space.
		Returns:
		    Float containing the approximate distance between "a" and "b".
	**/
	static public function _sliced_wasserstein(a:Dynamic, b:Dynamic, random_sampling_count:Dynamic, random_projection_dim:Dynamic):Dynamic;
	/**
		Compute the approximate sliced Wasserstein distance using an SVD.
		
		This is not part of the paper, it's a variant with possibly more accurate
		measure.
		
		Args:
		    a: (matrix) Distribution "a" of samples (row, col).
		    b: (matrix) Distribution "b" of samples (row, col).
		Returns:
		    Float containing the approximate distance between "a" and "b".
	**/
	static public function _sliced_wasserstein_svd(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Sort matrix rows by the last column.
		
		Args:
		    matrix: a matrix of values (row,col).
		    num_rows: (int) number of sorted rows to return from the matrix.
		Returns:
		    Tensor (num_rows, col) of the sorted matrix top K rows.
	**/
	static public function _sort_rows(matrix:Dynamic, num_rows:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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