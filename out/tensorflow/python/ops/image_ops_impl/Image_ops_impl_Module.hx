/* This file is generated, do not edit! */
package tensorflow.python.ops.image_ops_impl;
@:pythonImport("tensorflow.python.ops.image_ops_impl") extern class Image_ops_impl_Module {
	/**
		Assert that we are working with properly shaped image.
		
		Args:
		  image: 3-D Tensor of shape [height, width, channels]
		  require_static: If `True`, requires that all dimensions of `image` are
		    known and non-zero.
		
		Raises:
		  ValueError: if `image.shape` is not a 3-vector.
		
		Returns:
		  An empty list, if `image` has fully defined dimensions. Otherwise, a list
		  containing an assert op is returned.
	**/
	static public function _Check3DImage(image:Dynamic, ?require_static:Dynamic):Dynamic;
	/**
		Assert that we are working with properly shaped image.
		
		Args:
		  image: >= 3-D Tensor of size [*, height, width, depth]
		  require_static: If `True`, requires that all dimensions of `image` are
		    known and non-zero.
		
		Raises:
		  ValueError: if image.shape is not a [>= 3] vector.
		
		Returns:
		  An empty list, if `image` has fully defined dimensions. Otherwise, a list
		  containing an assert op is returned.
	**/
	static public function _CheckAtLeast3DImage(image:Dynamic, ?require_static:Dynamic):Dynamic;
	/**
		Returns the dimensions of an image tensor.
		
		Args:
		  image: A rank-D Tensor. For 3-D  of shape: `[height, width, channels]`.
		  rank: The expected rank of the image
		
		Returns:
		  A list of corresponding to the dimensions of the
		  input image.  Dimensions that are statically known are python integers,
		  otherwise they are integer scalar tensors.
	**/
	static public function _ImageDimensions(image:Dynamic, rank:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A polymorphic assert, works with tensors and boolean expressions.
		
		If `cond` is not a tensor, behave like an ordinary assert statement, except
		that a empty list is returned. If `cond` is a tensor, return a list
		containing a single TensorFlow assert op.
		
		Args:
		  cond: Something evaluates to a boolean value. May be a tensor.
		  ex_type: The exception class to use.
		  msg: The error message.
		
		Returns:
		  A list, containing at most one assert op.
	**/
	static public function _assert(cond:Dynamic, ex_type:Dynamic, msg:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is a symbolic tensor-like object.
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` if `x` is a `tf.Tensor` or `tf.Variable`, otherwise `False`.
	**/
	static public function _is_tensor(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adjust the brightness of RGB or Grayscale images.
		
		This is a convenience method that converts an RGB image to float
		representation, adjusts its brightness, and then converts it back to the
		original data type. If several adjustments are chained it is advisable to
		minimize the number of redundant conversions.
		
		The value `delta` is added to all components of the tensor `image`. Both
		`image` and `delta` are converted to `float` before adding (and `image` is
		scaled appropriately if it is in fixed-point representation). For regular
		images, `delta` should be in the range `[0,1)`, as it is added to the image in
		floating point representation, where pixel values are in the `[0,1)` range.
		
		Args:
		  image: A tensor.
		  delta: A scalar. Amount to add to the pixel values.
		
		Returns:
		  A brightness-adjusted tensor of the same shape and type as `image`.
	**/
	static public function adjust_brightness(image:Dynamic, delta:Dynamic):Dynamic;
	/**
		Adjust contrast of RGB or grayscale images.
		
		This is a convenience method that converts an RGB image to float
		representation, adjusts its contrast, and then converts it back to the
		original data type. If several adjustments are chained it is advisable to
		minimize the number of redundant conversions.
		
		`images` is a tensor of at least 3 dimensions.  The last 3 dimensions are
		interpreted as `[height, width, channels]`.  The other dimensions only
		represent a collection of images, such as `[batch, height, width, channels].`
		
		Contrast is adjusted independently for each channel of each image.
		
		For each channel, this Op computes the mean of the image pixels in the
		channel and then adjusts each component `x` of each pixel to
		`(x - mean) * contrast_factor + mean`.
		
		Args:
		  images: Images to adjust.  At least 3-D.
		  contrast_factor: A float multiplier for adjusting contrast.
		
		Returns:
		  The contrast-adjusted image or images.
	**/
	static public function adjust_contrast(images:Dynamic, contrast_factor:Dynamic):Dynamic;
	/**
		Performs Gamma Correction on the input image.
		
		  Also known as Power Law Transform. This function transforms the
		  input image pixelwise according to the equation Out = In**gamma
		  after scaling each pixel to the range 0 to 1.
		
		Args:
		  image : A Tensor.
		  gamma : A scalar. Non negative real number.
		  gain  : A scalar. The constant multiplier.
		
		Returns:
		  A Tensor. Gamma corrected output image.
		
		Raises:
		  ValueError: If gamma is negative.
		
		Notes:
		  For gamma greater than 1, the histogram will shift towards left and
		  the output image will be darker than the input image.
		  For gamma less than 1, the histogram will shift towards right and
		  the output image will be brighter than the input image.
		
		References:
		  [1] http://en.wikipedia.org/wiki/Gamma_correction
	**/
	static public function adjust_gamma(image:Dynamic, ?gamma:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		Adjust hue of an RGB image.
		
		This is a convenience method that converts an RGB image to float
		representation, converts it to HSV, add an offset to the hue channel, converts
		back to RGB and then back to the original data type. If several adjustments
		are chained it is advisable to minimize the number of redundant conversions.
		
		`image` is an RGB image.  The image hue is adjusted by converting the
		image to HSV and rotating the hue channel (H) by
		`delta`.  The image is then converted back to RGB.
		
		`delta` must be in the interval `[-1, 1]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  delta: float.  How much to add to the hue channel.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
	**/
	static public function adjust_hue(image:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust saturation of an RGB image.
		
		This is a convenience method that converts an RGB image to float
		representation, converts it to HSV, add an offset to the saturation channel,
		converts back to RGB and then back to the original data type. If several
		adjustments are chained it is advisable to minimize the number of redundant
		conversions.
		
		`image` is an RGB image.  The image saturation is adjusted by converting the
		image to HSV and multiplying the saturation (S) channel by
		`saturation_factor` and clipping. The image is then converted back to RGB.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  saturation_factor: float. Factor to multiply the saturation by.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
	**/
	static public function adjust_saturation(image:Dynamic, saturation_factor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Crop the central region of the image.
		
		Remove the outer parts of an image but retain the central region of the image
		along each dimension. If we specify central_fraction = 0.5, this function
		returns the region marked with "X" in the below diagram.
		
		     --------
		    |        |
		    |  XXXX  |
		    |  XXXX  |
		    |        |   where "X" is the central 50% of the image.
		     --------
		
		Args:
		  image: 3-D float Tensor of shape [height, width, depth]
		  central_fraction: float (0, 1], fraction of size to crop
		
		Raises:
		  ValueError: if central_crop_fraction is not within (0, 1].
		
		Returns:
		  3-D float Tensor
	**/
	static public function central_crop(image:Dynamic, central_fraction:Dynamic):Dynamic;
	/**
		Convert `image` to `dtype`, scaling its values if needed.
		
		Images that are represented using floating point values are expected to have
		values in the range [0,1). Image data stored in integer data types are
		expected to have values in the range `[0,MAX]`, where `MAX` is the largest
		positive representable number for the data type.
		
		This op converts between data types, scaling the values appropriately before
		casting.
		
		Note that converting from floating point inputs to integer types may lead to
		over/underflow problems. Set saturate to `True` to avoid such problem in
		problematic conversions. If enabled, saturation will clip the output into the
		allowed range before performing a potentially dangerous cast (and only before
		performing such a cast, i.e., when casting from a floating point to an integer
		type, and when casting from a signed to an unsigned type; `saturate` has no
		effect on casts between floats, or on casts that increase the type's range).
		
		Args:
		  image: An image.
		  dtype: A `DType` to convert `image` to.
		  saturate: If `True`, clip the input before casting (if necessary).
		  name: A name for this operation (optional).
		
		Returns:
		  `image`, converted to `dtype`.
	**/
	static public function convert_image_dtype(image:Dynamic, dtype:Dynamic, ?saturate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Crops an image to a specified bounding box.
		
		This op cuts a rectangular part out of `image`. The top-left corner of the
		returned image is at `offset_height, offset_width` in `image`, and its
		lower-right corner is at
		`offset_height + target_height, offset_width + target_width`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  offset_height: Vertical coordinate of the top-left corner of the result in
		                 the input.
		  offset_width: Horizontal coordinate of the top-left corner of the result in
		                the input.
		  target_height: Height of the result.
		  target_width: Width of the result.
		
		Returns:
		  If `image` was 4-D, a 4-D float Tensor of shape
		  `[batch, target_height, target_width, channels]`
		  If `image` was 3-D, a 3-D float Tensor of shape
		  `[target_height, target_width, channels]`
		
		Raises:
		  ValueError: If the shape of `image` is incompatible with the `offset_*` or
		    `target_*` arguments, or either `offset_height` or `offset_width` is
		    negative, or either `target_height` or `target_width` is not positive.
	**/
	static public function crop_to_bounding_box(image:Dynamic, offset_height:Dynamic, offset_width:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Convenience function for `decode_gif`, `decode_jpeg`, and `decode_png`.
		
		Detects whether an image is a GIF, JPEG, or PNG, and performs the appropriate
		operation to convert the input bytes `string` into a `Tensor` of type `uint8`.
		
		Note: `decode_gif` returns a 4-D array `[num_frames, height, width, 3]`, as
		opposed to `decode_jpeg` and `decode_png`, which return 3-D arrays
		`[height, width, num_channels]`. Make sure to take this into account when
		constructing your graph if you are intermixing GIF files with JPEG and/or PNG
		files.
		
		Args:
		  contents: 0-D `string`. The encoded image bytes.
		  channels: An optional `int`. Defaults to `0`. Number of color channels for
		    the decoded image.
		  name: A name for the operation (optional)
		
		Returns:
		  `Tensor` with type `uint8` with shape `[height, width, num_channels]` for
		    JPEG and PNG images and shape `[num_frames, height, width, 3]` for GIF
		    images.
		
		Raises:
		  ValueError: On incorrect number of channels.
	**/
	static public function decode_image(contents:Dynamic, ?channels:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Set the shape to 3 dimensional if we don't know anything else.
		
		Args:
		  image: original image size
		  result: flipped or transformed image
		
		Returns:
		  An image whose shape is at least None,None,None.
	**/
	static public function fix_image_flip_shape(image:Dynamic, result:Dynamic):Dynamic;
	/**
		Flip an image horizontally (left to right).
		
		Outputs the contents of `image` flipped along the second dimension, which is
		`width`.
		
		See also `reverse()`.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels].`
		
		Returns:
		  A 3-D tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function flip_left_right(image:Dynamic):Dynamic;
	/**
		Flip an image horizontally (upside down).
		
		Outputs the contents of `image` flipped along the first dimension, which is
		`height`.
		
		See also `reverse()`.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels].`
		
		Returns:
		  A 3-D tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function flip_up_down(image:Dynamic):Dynamic;
	/**
		Converts one or more images from Grayscale to RGB.
		
		Outputs a tensor of the same `DType` and rank as `images`.  The size of the
		last dimension of the output is 3, containing the RGB value of the pixels.
		
		Args:
		  images: The Grayscale tensor to convert. Last dimension must be size 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The converted grayscale image(s).
	**/
	static public function grayscale_to_rgb(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pad `image` with zeros to the specified `height` and `width`.
		
		Adds `offset_height` rows of zeros on top, `offset_width` columns of
		zeros on the left, and then pads the image on the bottom and right
		with zeros until it has dimensions `target_height`, `target_width`.
		
		This op does nothing if `offset_*` is zero and the image already has size
		`target_height` by `target_width`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  offset_height: Number of rows of zeros to add on top.
		  offset_width: Number of columns of zeros to add on the left.
		  target_height: Height of output image.
		  target_width: Width of output image.
		
		Returns:
		  If `image` was 4-D, a 4-D float Tensor of shape
		  `[batch, target_height, target_width, channels]`
		  If `image` was 3-D, a 3-D float Tensor of shape
		  `[target_height, target_width, channels]`
		
		Raises:
		  ValueError: If the shape of `image` is incompatible with the `offset_*` or
		    `target_*` arguments, or either `offset_height` or `offset_width` is
		    negative.
	**/
	static public function pad_to_bounding_box(image:Dynamic, offset_height:Dynamic, offset_width:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Linearly scales `image` to have zero mean and unit norm.
		
		This op computes `(x - mean) / adjusted_stddev`, where `mean` is the average
		of all values in image, and
		`adjusted_stddev = max(stddev, 1.0/sqrt(image.NumElements()))`.
		
		`stddev` is the standard deviation of all values in `image`. It is capped
		away from zero to protect against division by 0 when handling uniform images.
		
		Args:
		  image: 3-D tensor of shape `[height, width, channels]`.
		
		Returns:
		  The standardized image with same shape as `image`.
		
		Raises:
		  ValueError: if the shape of 'image' is incompatible with this function.
	**/
	static public function per_image_standardization(image:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adjust the brightness of images by a random factor.
		
		Equivalent to `adjust_brightness()` using a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		Args:
		  image: An image.
		  max_delta: float, must be non-negative.
		  seed: A Python integer. Used to create a random seed. See
		    @{tf.set_random_seed}
		    for behavior.
		
		Returns:
		  The brightness-adjusted image.
		
		Raises:
		  ValueError: if `max_delta` is negative.
	**/
	static public function random_brightness(image:Dynamic, max_delta:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the contrast of an image by a random factor.
		
		Equivalent to `adjust_contrast()` but uses a `contrast_factor` randomly
		picked in the interval `[lower, upper]`.
		
		Args:
		  image: An image tensor with 3 or more dimensions.
		  lower: float.  Lower bound for the random contrast factor.
		  upper: float.  Upper bound for the random contrast factor.
		  seed: A Python integer. Used to create a random seed. See
		    @{tf.set_random_seed}
		    for behavior.
		
		Returns:
		  The contrast-adjusted tensor.
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function random_contrast(image:Dynamic, lower:Dynamic, upper:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly flip an image horizontally (left to right).
		
		With a 1 in 2 chance, outputs the contents of `image` flipped along the
		second dimension, which is `width`.  Otherwise output the image as-is.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels].`
		  seed: A Python integer. Used to create a random seed. See
		    @{tf.set_random_seed}
		    for behavior.
		
		Returns:
		  A 3-D tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function random_flip_left_right(image:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly flips an image vertically (upside down).
		
		With a 1 in 2 chance, outputs the contents of `image` flipped along the first
		dimension, which is `height`.  Otherwise output the image as-is.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels].`
		  seed: A Python integer. Used to create a random seed. See
		    @{tf.set_random_seed}
		    for behavior.
		
		Returns:
		  A 3-D tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function random_flip_up_down(image:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the hue of an RGB image by a random factor.
		
		Equivalent to `adjust_hue()` but uses a `delta` randomly
		picked in the interval `[-max_delta, max_delta]`.
		
		`max_delta` must be in the interval `[0, 0.5]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  max_delta: float.  Maximum value for the random delta.
		  seed: An operation-specific seed. It will be used in conjunction
		    with the graph-level seed to determine the real seeds that will be
		    used in this operation. Please see the documentation of
		    set_random_seed for its interaction with the graph-level random seed.
		
		Returns:
		  3-D float tensor of shape `[height, width, channels]`.
		
		Raises:
		  ValueError: if `max_delta` is invalid.
	**/
	static public function random_hue(image:Dynamic, max_delta:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the saturation of an RGB image by a random factor.
		
		Equivalent to `adjust_saturation()` but uses a `saturation_factor` randomly
		picked in the interval `[lower, upper]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  lower: float.  Lower bound for the random saturation factor.
		  upper: float.  Upper bound for the random saturation factor.
		  seed: An operation-specific seed. It will be used in conjunction
		    with the graph-level seed to determine the real seeds that will be
		    used in this operation. Please see the documentation of
		    set_random_seed for its interaction with the graph-level random seed.
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function random_saturation(image:Dynamic, lower:Dynamic, upper:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Crops and/or pads an image to a target width and height.
		
		Resizes an image to a target width and height by either centrally
		cropping the image or padding it evenly with zeros.
		
		If `width` or `height` is greater than the specified `target_width` or
		`target_height` respectively, this op centrally crops along that dimension.
		If `width` or `height` is smaller than the specified `target_width` or
		`target_height` respectively, this op centrally pads with 0 along that
		dimension.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  target_height: Target height.
		  target_width: Target width.
		
		Raises:
		  ValueError: if `target_height` or `target_width` are zero or negative.
		
		Returns:
		  Cropped and/or padded image.
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_image_with_crop_or_pad(image:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using the specified `method`.
		
		Resized images will be distorted if their original aspect ratio is not
		the same as `size`.  To avoid distortions see
		@{tf.image.resize_image_with_crop_or_pad}.
		
		`method` can be one of:
		
		*   <b>`ResizeMethod.BILINEAR`</b>: [Bilinear interpolation.](
		  https://en.wikipedia.org/wiki/Bilinear_interpolation)
		*   <b>`ResizeMethod.NEAREST_NEIGHBOR`</b>: [Nearest neighbor interpolation.](
		  https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation)
		*   <b>`ResizeMethod.BICUBIC`</b>: [Bicubic interpolation.](
		  https://en.wikipedia.org/wiki/Bicubic_interpolation)
		*   <b>`ResizeMethod.AREA`</b>: Area interpolation.
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or
		          3-D Tensor of shape `[height, width, channels]`.
		  size: A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		        new size for the images.
		  method: ResizeMethod.  Defaults to `ResizeMethod.BILINEAR`.
		  align_corners: bool. If true, exactly align all 4 corners of the input and
		                 output. Defaults to `false`.
		
		Raises:
		  ValueError: if the shape of `images` is incompatible with the
		    shape arguments to this function
		  ValueError: if `size` has invalid shape or type.
		  ValueError: if an unsupported resize method is specified.
		
		Returns:
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_images(images:Dynamic, size:Dynamic, ?method:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Converts one or more images from RGB to Grayscale.
		
		Outputs a tensor of the same `DType` and rank as `images`.  The size of the
		last dimension of the output is 1, containing the Grayscale value of the
		pixels.
		
		Args:
		  images: The RGB tensor to convert. Last dimension must have size 3 and
		    should contain RGB values.
		  name: A name for the operation (optional).
		
		Returns:
		  The converted grayscale image(s).
	**/
	static public function rgb_to_grayscale(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rotate an image counter-clockwise by 90 degrees.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels]`.
		  k: A scalar integer. The number of times the image is rotated by 90 degrees.
		  name: A name for this operation (optional).
		
		Returns:
		  A rotated 3-D tensor of the same type and shape as `image`.
	**/
	static public function rot90(image:Dynamic, ?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate and return the total variation for one or more images.
		
		The total variation is the sum of the absolute differences for neighboring
		pixel-values in the input images. This measures how much noise is in the
		images.
		
		This can be used as a loss-function during optimization so as to suppress
		noise in images. If you have a batch of images, then you should calculate
		the scalar loss-value as the sum:
		`loss = tf.reduce_sum(tf.image.total_variation(images))`
		
		This implements the anisotropic 2-D version of the formula described here:
		
		https://en.wikipedia.org/wiki/Total_variation_denoising
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or
		          3-D Tensor of shape `[height, width, channels]`.
		
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: if images.shape is not a 3-D or 4-D vector.
		
		Returns:
		  The total variation of `images`.
		
		  If `images` was 4-D, return a 1-D float Tensor of shape `[batch]` with the
		  total variation for each image in the batch.
		  If `images` was 3-D, return a scalar float with the total variation for
		  that image.
	**/
	static public function total_variation(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transpose an image by swapping the first and second dimension.
		
		See also `transpose()`.
		
		Args:
		  image: 3-D tensor of shape `[height, width, channels]`
		
		Returns:
		  A 3-D tensor of shape `[width, height, channels]`
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function transpose_image(image:Dynamic):Dynamic;
}