/* This file is generated, do not edit! */
package tensorflow.contrib.image;
@:pythonImport("tensorflow.contrib.image") extern class Image_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns projective transform(s) for the given angle(s).
		
		Args:
		  angles: A scalar angle to rotate all images by, or (for batches of images)
		    a vector with an angle to rotate each image in the batch.
		  image_height: Height of the image(s) to be transformed.
		  image_width: Width of the image(s) to be transformed.
		
		Returns:
		  A tensor of shape (num_images, 8). Projective transforms which can be given
		    to `tf.contrib.image.transform`.
	**/
	static public function angles_to_projective_transforms(angles:Dynamic, image_height:Dynamic, image_width:Dynamic):Dynamic;
	/**
		Composes the transforms tensors.
		
		Args:
		  *transforms: List of image projective transforms to be composed. Each
		      transform is length 8 (single transform) or shape (N, 8) (batched
		      transforms). The shapes of all inputs must be equal, and at least one
		      input must be given.
		
		Returns:
		  A composed transform tensor. When passed to `tf.contrib.image.transform`,
		      equivalent to applying each of the given transforms to the image in
		      order.
	**/
	static public function compose_transforms(?transforms:python.VarArgs<Dynamic>):Dynamic;
	/**
		Rotate image(s) by the passed angle(s) in radians.
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		     (NHWC), (num_rows, num_columns, num_channels) (HWC), or
		     (num_rows, num_columns) (HW).
		  angles: A scalar angle to rotate all images by, or (if images has rank 4)
		     a vector of length num_images, with an angle for each image in the batch.
		  interpolation: Interpolation mode. Supported values: "NEAREST", "BILINEAR".
		
		Returns:
		  Image(s) with the same type and shape as `images`, rotated by the given
		  angle(s). Empty space due to the rotation will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
	**/
	static public function rotate(images:Dynamic, angles:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Output a RandomDotStereogram Tensor for export via encode_PNG/JPG OP.
		
		Given the 2-D tensor 'depth_values' with encoded Z values, this operation
		will encode 3-D data into a 2-D image.  The output of this Op is suitable
		for the encode_PNG/JPG ops.  Be careful with image compression as this may
		corrupt the encode 3-D data witin the image.
		
		Based upon [this paper](http://www.learningace.com/doc/4331582/b6ab058d1e206d68ab60e4e1ead2fe6e/sirds-paper).
		
		This outputs a SIRDS image as picture_out.png:
		
		```python
		img=[[1,2,3,3,2,1],
		     [1,2,3,4,5,2],
		     [1,2,3,4,5,3],
		     [1,2,3,4,5,4],
		     [6,5,4,4,5,5]]
		session = tf.InteractiveSession()
		sirds = single_image_random_dot_stereograms(
		    img,
		    convergence_dots_size=8,
		    number_colors=256,normalize=True)
		
		out = sirds.eval()
		png = tf.image.encode_png(out).eval()
		with open('picture_out.png', 'wb') as f:
		  f.write(png)
		```
		
		Args:
		  depth_values: A `Tensor`. Must be one of the following types: 
		    `float64`, `float32`, `int64`, `int32`.  Z values of data to encode
		    into 'output_data_window' window, lower further away {0.0 floor(far),
		    1.0 ceiling(near) after norm}, must be 2-D tensor
		  hidden_surface_removal: An optional `bool`. Defaults to `True`.
		    Activate hidden surface removal
		  convergence_dots_size: An optional `int`. Defaults to `8`.
		    Black dot size in pixels to help view converge image, drawn on bottom
		    of the image
		  dots_per_inch: An optional `int`. Defaults to `72`.
		    Output device in dots/inch
		  eye_separation: An optional `float`. Defaults to `2.5`.
		    Separation between eyes in inches
		  mu: An optional `float`. Defaults to `0.3333`.
		    Depth of field, Fraction of viewing distance (eg. 1/3 = 0.3333)
		  normalize: An optional `bool`. Defaults to `True`.
		    Normalize input data to [0.0, 1.0] 
		  normalize_max: An optional `float`. Defaults to `-100`.
		    Fix MAX value for Normalization (0.0) - if < MIN, autoscale
		  normalize_min: An optional `float`. Defaults to `100`.
		    Fix MIN value for Normalization (0.0) - if > MAX, autoscale
		  border_level: An optional `float`. Defaults to `0`.
		    Value of bord in depth 0.0 {far} to 1.0 {near} 
		  number_colors: An optional `int`. Defaults to `256`. 2 (Black &
		    White), 256 (grayscale), and Numbers > 256 (Full Color) are
		    supported
		  output_image_shape: An optional `tf.TensorShape` or list of `ints`. 
		    Defaults to shape `[1024, 768, 1]`. Defines output shape of returned
		    image in '[X,Y, Channels]' 1-grayscale, 3 color; channels will be
		    updated to 3 if number_colors > 256
		  output_data_window: An optional `tf.TensorShape` or list of `ints`.
		    Defaults to `[1022, 757]`. Size of "DATA" window, must be equal to or
		    smaller than `output_image_shape`, will be centered and use
		    `convergence_dots_size` for best fit to avoid overlap if possible
		
		Returns:
		  A `Tensor` of type `uint8` of shape 'output_image_shape' with encoded
		  'depth_values'
	**/
	static public function single_image_random_dot_stereograms(depth_values:Dynamic, ?hidden_surface_removal:Dynamic, ?convergence_dots_size:Dynamic, ?dots_per_inch:Dynamic, ?eye_separation:Dynamic, ?mu:Dynamic, ?normalize:Dynamic, ?normalize_max:Dynamic, ?normalize_min:Dynamic, ?border_level:Dynamic, ?number_colors:Dynamic, ?output_image_shape:Dynamic, ?output_data_window:Dynamic):Dynamic;
	/**
		Applies the given transform(s) to the image(s).
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		     (NHWC), (num_rows, num_columns, num_channels) (HWC), or
		     (num_rows, num_columns) (HW).
		  transforms: Projective transform matrix/matrices. A vector of length 8 or
		     tensor of size N x 8. If one row of transforms is
		     [a0, a1, a2, b0, b1, b2, c0, c1], then it maps the *output* point
		     `(x, y)` to a transformed *input* point
		     `(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`,
		     where `k = c0 x + c1 y + 1`. The transforms are *inverted* compared to
		     the transform mapping input points to output points.
		   interpolation: Interpolation mode. Supported values: "NEAREST", "BILINEAR".
		
		Returns:
		  Image(s) with the same type and shape as `images`, with the given
		  transform(s) applied. Transformed coordinates outside of the input image
		  will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
	**/
	static public function transform(images:Dynamic, transforms:Dynamic, ?interpolation:Dynamic):Dynamic;
}