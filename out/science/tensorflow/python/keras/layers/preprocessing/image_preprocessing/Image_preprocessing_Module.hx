/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.image_preprocessing;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.image_preprocessing") extern class Image_preprocessing_Module {
	static public var HORIZONTAL : Dynamic;
	static public var HORIZONTAL_AND_VERTICAL : Dynamic;
	static public var H_AXIS : Dynamic;
	static public var VERTICAL : Dynamic;
	static public var W_AXIS : Dynamic;
	static public var _RESIZE_METHODS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function check_fill_mode_and_interpolation(fill_mode:Dynamic, interpolation:Dynamic):Dynamic;
	static public function get_interpolation(interpolation:Dynamic):Dynamic;
	/**
		Returns projective transform(s) for the given angle(s).
		
		Args:
		  angles: A scalar angle to rotate all images by, or (for batches of images) a
		    vector with an angle to rotate each image in the batch. The rank must be
		    statically known (the shape is not `TensorShape(None)`).
		  image_height: Height of the image(s) to be transformed.
		  image_width: Width of the image(s) to be transformed.
		  name: The name of the op.
		
		Returns:
		  A tensor of shape (num_images, 8). Projective transforms which can be given
		    to operation `image_projective_transform_v2`. If one row of transforms is
		     [a0, a1, a2, b0, b1, b2, c0, c1], then it maps the *output* point
		     `(x, y)` to a transformed *input* point
		     `(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`,
		     where `k = c0 x + c1 y + 1`.
	**/
	static public function get_rotation_matrix(angles:Dynamic, image_height:Dynamic, image_width:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns projective transform(s) for the given translation(s).
		
		Args:
		  translations: A matrix of 2-element lists representing [dx, dy] to translate
		    for each image (for a batch of images).
		  name: The name of the op.
		
		Returns:
		  A tensor of shape (num_images, 8) projective transforms which can be given
		    to `transform`.
	**/
	static public function get_translation_matrix(translations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns projective transform(s) for the given zoom(s).
		
		Args:
		  zooms: A matrix of 2-element lists representing [zx, zy] to zoom for each
		    image (for a batch of images).
		  image_height: Height of the image(s) to be transformed.
		  image_width: Width of the image(s) to be transformed.
		  name: The name of the op.
		
		Returns:
		  A tensor of shape (num_images, 8). Projective transforms which can be given
		    to operation `image_projective_transform_v2`. If one row of transforms is
		     [a0, a1, a2, b0, b1, b2, c0, c1], then it maps the *output* point
		     `(x, y)` to a transformed *input* point
		     `(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`,
		     where `k = c0 x + c1 y + 1`.
	**/
	static public function get_zoom_matrix(zooms:Dynamic, image_height:Dynamic, image_width:Dynamic, ?name:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a random generator.
		
		Args:
		  seed: the seed to initialize the generator. If None, the generator will be
		    initialized non-deterministically.
		
		Returns:
		  A generator object.
	**/
	static public function make_generator(?seed:Dynamic):Dynamic;
	/**
		Applies the given transform(s) to the image(s).
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		    (NHWC), (num_rows, num_columns, num_channels) (HWC), or (num_rows,
		    num_columns) (HW). The rank must be statically known (the shape is not
		    `TensorShape(None)`.
		  transforms: Projective transform matrix/matrices. A vector of length 8 or
		    tensor of size N x 8. If one row of transforms is [a0, a1, a2, b0, b1, b2,
		    c0, c1], then it maps the *output* point `(x, y)` to a transformed *input*
		    point `(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		    `k = c0 x + c1 y + 1`. The transforms are *inverted* compared to the
		    transform mapping input points to output points. Note that gradients are
		    not backpropagated into transformation parameters.
		  fill_mode: Points outside the boundaries of the input are filled according
		    to the given mode (one of `{'constant', 'reflect', 'wrap', 'nearest'}`).
		  fill_value: a float represents the value to be filled outside the boundaries
		    when `fill_mode` is "constant".
		  interpolation: Interpolation mode. Supported values: "nearest", "bilinear".
		  output_shape: Output dimesion after the transform, [height, width]. If None,
		    output is the same size as input image.
		  name: The name of the op.  ## Fill mode.
		Behavior for each valid value is as follows:  reflect (d c b a | a b c d | d c
		  b a) The input is extended by reflecting about the edge of the last pixel.
		  constant (k k k k | a b c d | k k k k) The input is extended by filling all
		  values beyond the edge with the same constant value k = 0.  wrap (a b c d |
		  a b c d | a b c d) The input is extended by wrapping around to the opposite
		  edge.  nearest (a a a a | a b c d | d d d d) The input is extended by the
		  nearest pixel.
		Input shape:
		  4D tensor with shape: `(samples, height, width, channels)`,
		    data_format='channels_last'.
		Output shape:
		  4D tensor with shape: `(samples, height, width, channels)`,
		    data_format='channels_last'.
		
		Returns:
		  Image(s) with the same type and shape as `images`, with the given
		  transform(s) applied. Transformed coordinates outside of the input image
		  will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
		  ValueError: If output shape is not 1-D int32 Tensor.
	**/
	static public function transform(images:Dynamic, transforms:Dynamic, ?fill_mode:Dynamic, ?fill_value:Dynamic, ?interpolation:Dynamic, ?output_shape:Dynamic, ?name:Dynamic):Dynamic;
}