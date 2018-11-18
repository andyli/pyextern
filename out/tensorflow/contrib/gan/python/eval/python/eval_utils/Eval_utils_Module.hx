/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.eval.python.eval_utils;
@:pythonImport("tensorflow.contrib.gan.python.eval.python.eval_utils") extern class Eval_utils_Module {
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
		Arrange a minibatch of images into a grid to form a single image.
		
		Args:
		  input_tensor: Tensor. Minibatch of images to format, either 4D
		      ([batch size, height, width, num_channels]) or flattened
		      ([batch size, height * width * num_channels]).
		  grid_shape: Sequence of int. The shape of the image grid,
		      formatted as [grid_height, grid_width].
		  image_shape: Sequence of int. The shape of a single image,
		      formatted as [image_height, image_width].
		  num_channels: int. The number of channels in an image.
		
		Returns:
		  Tensor representing a single image in which the input images have been
		  arranged into a grid.
		
		Raises:
		  ValueError: The grid shape and minibatch size don't match, or the image
		      shape and number of channels are incompatible with the input tensor.
	**/
	static public function image_grid(input_tensor:Dynamic, grid_shape:Dynamic, ?image_shape:Dynamic, ?num_channels:Dynamic):Dynamic;
	/**
		A reshaped summary image.
		
		Returns an image that will contain all elements in the list and will be
		laid out in a nearly-square tiling pattern (e.g. 11 images will lead to a
		3x4 tiled image).
		
		Args:
		  images: Image data to summarize. Can be an RGB or grayscale image, a list of
		       such images, or a set of RGB images concatenated along the depth
		       dimension. The shape of each image is assumed to be [batch_size,
		       height, width, depth].
		  num_cols: (Optional) If provided, this is the number of columns in the final
		       output image grid. Otherwise, the number of columns is determined by
		       the number of images.
		
		Returns:
		  A summary image matching the input with automatic tiling if needed.
		  Output shape is [1, height, width, channels].
	**/
	static public function image_reshaper(images:Dynamic, ?num_cols:Dynamic):Dynamic;
}