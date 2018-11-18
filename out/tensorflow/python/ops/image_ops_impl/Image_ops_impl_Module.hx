/* This file is generated, do not edit! */
package tensorflow.python.ops.image_ops_impl;
@:pythonImport("tensorflow.python.ops.image_ops_impl") extern class Image_ops_impl_Module {
	/**
		Assert that we are working with a properly shaped image.
		
		Performs the check statically if possible (i.e. if the shape
		is statically known). Otherwise adds a control dependency
		to an assert op that checks the dynamic shape.
		
		Args:
		  image: 3-D Tensor of shape [height, width, channels]
		
		Raises:
		  ValueError: if `image.shape` is not a 3-vector.
		
		Returns:
		  If the shape of `image` could be verified statically, `image` is
		  returned unchanged, otherwise there will be a control dependency
		  added that asserts the correct dynamic shape.
	**/
	static public function _Assert3DImage(image:Dynamic):Dynamic;
	/**
		Assert that we are working with a properly shaped image.
		
		Performs the check statically if possible (i.e. if the shape
		is statically known). Otherwise adds a control dependency
		to an assert op that checks the dynamic shape.
		
		Args:
		  image: >= 3-D Tensor of size [*, height, width, depth]
		
		Raises:
		  ValueError: if image.shape is not a [>= 3] vector.
		
		Returns:
		  If the shape of `image` could be verified statically, `image` is
		  returned unchanged, otherwise there will be a control dependency
		  added that asserts the correct dynamic shape.
	**/
	static public function _AssertAtLeast3DImage(image:Dynamic):Dynamic;
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
	static public var _MSSSIM_WEIGHTS : Dynamic;
	static public var _SSIM_K1 : Dynamic;
	static public var _SSIM_K2 : Dynamic;
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
		Flip an image either horizontally or vertically.
		
		Outputs the contents of `image` flipped along the dimension `flip_index`.
		
		See also `reverse()`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  flip_index: 0 For vertical, 1 for horizontal.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function _flip(image:Dynamic, flip_index:Dynamic, scope_name:Dynamic):Dynamic;
	/**
		Function to mimic the 'fspecial' gaussian MATLAB function.
	**/
	static public function _fspecial_gauss(size:Dynamic, sigma:Dynamic):Dynamic;
	/**
		Convenience function to check if the 'contents' encodes a PNG image.
		
		Args:
		  contents: 0-D `string`. The encoded image bytes.
		  name: A name for the operation (optional)
		
		Returns:
		   A scalar boolean tensor indicating if 'contents' may be a PNG image.
		   is_png is susceptible to false positives.
	**/
	static public function _is_png(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is a symbolic tensor-like object.
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` if `x` is a `tf.Tensor` or `tf.Variable`, otherwise `False`.
	**/
	static public function _is_tensor(x:Dynamic):Dynamic;
	/**
		Randomly (50% chance) flip an image along axis `flip_index`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  flip_index: Dimension along which to flip image. Vertical: 0, Horizontal: 1
		  seed: A Python integer. Used to create a random seed. See
		    `tf.set_random_seed`
		    for behavior.
		  scope_name: Name of the scope in which the ops are added.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function _random_flip(image:Dynamic, flip_index:Dynamic, seed:Dynamic, scope_name:Dynamic):Dynamic;
	static public var _rgb_to_yiq_kernel : Dynamic;
	static public var _rgb_to_yuv_kernel : Dynamic;
	/**
		Rotate image counter-clockwise by 90 degrees `k` times.
		
		Args:
		  image: 3-D Tensor of shape `[height, width, channels]`.
		  k: A scalar integer. The number of times the image is rotated by 90 degrees.
		  name_scope: A valid TensorFlow name scope.
		
		Returns:
		  A 3-D tensor of the same type and shape as `image`.
	**/
	static public function _rot90_3D(image:Dynamic, k:Dynamic, name_scope:Dynamic):Dynamic;
	/**
		Rotate batch of images counter-clockwise by 90 degrees `k` times.
		
		Args:
		  images: 4-D Tensor of shape `[height, width, channels]`.
		  k: A scalar integer. The number of times the images are rotated by 90
		    degrees.
		  name_scope: A valid TensorFlow name scope.
		
		Returns:
		  A 4-D tensor of the same type and shape as `images`.
	**/
	static public function _rot90_4D(images:Dynamic, k:Dynamic, name_scope:Dynamic):Dynamic;
	/**
		Helper function for computing SSIM.
		
		SSIM estimates covariances with weighted sums.  The default parameters
		use a biased estimate of the covariance:
		Suppose `reducer` is a weighted sum, then the mean estimators are
		  \mu_x = \sum_i w_i x_i,
		  \mu_y = \sum_i w_i y_i,
		where w_i's are the weighted-sum weights, and covariance estimator is
		  cov_{xy} = \sum_i w_i (x_i - \mu_x) (y_i - \mu_y)
		with assumption \sum_i w_i = 1. This covariance estimator is biased, since
		  E[cov_{xy}] = (1 - \sum_i w_i ^ 2) Cov(X, Y).
		For SSIM measure with unbiased covariance estimators, pass as `compensation`
		argument (1 - \sum_i w_i ^ 2).
		
		Arguments:
		  x: First set of images.
		  y: Second set of images.
		  reducer: Function that computes 'local' averages from set of images.
		    For non-covolutional version, this is usually tf.reduce_mean(x, [1, 2]),
		    and for convolutional version, this is usually tf.nn.avg_pool or
		    tf.nn.conv2d with weighted-sum kernel.
		  max_val: The dynamic range (i.e., the difference between the maximum
		    possible allowed value and the minimum allowed value).
		  compensation: Compensation factor. See above.
		
		Returns:
		  A pair containing the luminance measure, and the contrast-structure measure.
	**/
	static public function _ssim_helper(x:Dynamic, y:Dynamic, reducer:Dynamic, max_val:Dynamic, ?compensation:Dynamic):Dynamic;
	/**
		Computes SSIM index between img1 and img2 per color channel.
		
		This function matches the standard SSIM implementation from:
		Wang, Z., Bovik, A. C., Sheikh, H. R., & Simoncelli, E. P. (2004). Image
		quality assessment: from error visibility to structural similarity. IEEE
		transactions on image processing.
		
		Details:
		  - 11x11 Gaussian filter of width 1.5 is used.
		  - k1 = 0.01, k2 = 0.03 as in the original paper.
		
		Args:
		  img1: First image batch.
		  img2: Second image batch.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		
		Returns:
		  A pair of tensors containing and channel-wise SSIM and contrast-structure
		  values. The shape is [..., channels].
	**/
	static public function _ssim_per_channel(img1:Dynamic, img2:Dynamic, ?max_val:Dynamic):Dynamic;
	/**
		Checks if two image tensors are compatible for applying SSIM or PSNR.
		
		This function checks if two sets of images have ranks at least 3, and if the
		last three dimensions match.
		
		Args:
		  img1: Tensor containing the first image batch.
		  img2: Tensor containing the second image batch.
		
		Returns:
		  A tuple containing: the first tensor shape, the second tensor shape, and a
		  list of control_flow_ops.Assert() ops implementing the checks.
		
		Raises:
		  ValueError: When static shape check fails.
	**/
	static public function _verify_compatible_image_shapes(img1:Dynamic, img2:Dynamic):Dynamic;
	static public var _yiq_to_rgb_kernel : Dynamic;
	static public var _yuv_to_rgb_kernel : Dynamic;
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
		input image pixelwise according to the equation `Out = In**gamma`
		after scaling each pixel to the range 0 to 1.
		
		Args:
		  image : A Tensor.
		  gamma : A scalar or tensor. Non negative real number.
		  gain  : A scalar or tensor. The constant multiplier.
		
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
		Adjust jpeg encoding quality of an RGB image.
		
		This is a convenience method that adjusts jpeg encoding quality of an
		RGB image.
		
		`image` is an RGB image.  The image's encoding quality is adjusted
		to `jpeg_quality`.
		`jpeg_quality` must be in the interval `[0, 100]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  jpeg_quality: int.  jpeg encoding quality.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
	**/
	static public function adjust_jpeg_quality(image:Dynamic, jpeg_quality:Dynamic, ?name:Dynamic):Dynamic;
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
		Crop the central region of the image(s).
		
		Remove the outer parts of an image but retain the central region of the image
		along each dimension. If we specify central_fraction = 0.5, this function
		returns the region marked with "X" in the below diagram.
		
		     --------
		    |        |
		    |  XXXX  |
		    |  XXXX  |
		    |        |   where "X" is the central 50% of the image.
		     --------
		
		This function works on either a single image (`image` is a 3-D Tensor), or a
		batch of images (`image` is a 4-D Tensor).
		
		Args:
		  image: Either a 3-D float Tensor of shape [height, width, depth], or a 4-D
		    Tensor of shape [batch_size, height, width, depth].
		  central_fraction: float (0, 1], fraction of size to crop
		
		Raises:
		  ValueError: if central_crop_fraction is not within (0, 1].
		
		Returns:
		  3-D / 4-D float Tensor, as per the input.
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
		Convenience function for `decode_bmp`, `decode_gif`, `decode_jpeg`,
		and `decode_png`.
		
		Detects whether an image is a BMP, GIF, JPEG, or PNG, and performs the
		appropriate operation to convert the input bytes `string` into a `Tensor`
		of type `dtype`.
		
		Note: `decode_gif` returns a 4-D array `[num_frames, height, width, 3]`, as
		opposed to `decode_bmp`, `decode_jpeg` and `decode_png`, which return 3-D
		arrays `[height, width, num_channels]`. Make sure to take this into account
		when constructing your graph if you are intermixing GIF files with BMP, JPEG,
		and/or PNG files.
		
		Args:
		  contents: 0-D `string`. The encoded image bytes.
		  channels: An optional `int`. Defaults to `0`. Number of color channels for
		    the decoded image.
		  dtype: The desired DType of the returned `Tensor`.
		  name: A name for the operation (optional)
		
		Returns:
		  `Tensor` with type `dtype` and shape `[height, width, num_channels]` for
		    BMP, JPEG, and PNG images and shape `[num_frames, height, width, 3]` for
		    GIF images.
		
		Raises:
		  ValueError: On incorrect number of channels.
	**/
	static public function decode_image(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Outputs the contents of `image` flipped along the width dimension.
		
		See also `reverse()`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function flip_left_right(image:Dynamic):Dynamic;
	/**
		Flip an image vertically (upside down).
		
		Outputs the contents of `image` flipped along the height dimension.
		
		See also `reverse()`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
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
		Returns image gradients (dy, dx) for each color channel.
		
		Both output tensors have the same shape as the input: [batch_size, h, w,
		d]. The gradient values are organized so that [I(x+1, y) - I(x, y)] is in
		location (x, y). That means that dy will always have zeros in the last row,
		and dx will always have zeros in the last column.
		
		Arguments:
		  image: Tensor with shape [batch_size, h, w, d].
		
		Returns:
		  Pair of tensors (dy, dx) holding the vertical and horizontal image
		  gradients (1-step finite difference).
		
		Raises:
		  ValueError: If `image` is not a 4D tensor.
	**/
	static public function image_gradients(image:Dynamic):Dynamic;
	/**
		Convenience function to check if the 'contents' encodes a JPEG image.
		
		Args:
		  contents: 0-D `string`. The encoded image bytes.
		  name: A name for the operation (optional)
		
		Returns:
		   A scalar boolean tensor indicating if 'contents' may be a JPEG image.
		   is_jpeg is susceptible to false positives.
	**/
	static public function is_jpeg(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system.  Note that this
		algorithm is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression(
		      boxes, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A 2-D float `Tensor` of shape `[num_boxes, 4]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non max suppression.
		  iou_threshold: A float representing the threshold for deciding whether boxes
		    overlap too much with respect to IOU.
		  score_threshold: A float representing the threshold for deciding when to
		    remove boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the boxes tensor, where `M <= max_output_size`.
	**/
	static public function non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Performs algorithmically equivalent operation to tf.image.non_max_suppression,
		with the addition of an optional parameter which zero-pads the output to
		be of size `max_output_size`.
		The output of this operation is a tuple containing the set of integers
		indexing into the input collection of bounding boxes representing the selected
		boxes and the number of valid indices in the index set.  The bounding box
		coordinates corresponding to the selected indices can then be obtained using
		the `tf.slice` and `tf.gather` operations.  For example:
		  selected_indices_padded, num_valid = tf.image.non_max_suppression_padded(
		      boxes, scores, max_output_size, iou_threshold,
		      score_threshold, pad_to_max_output_size=True)
		  selected_indices = tf.slice(
		      selected_indices_padded, tf.constant([0]), num_valid)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A 2-D float `Tensor` of shape `[num_boxes, 4]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non max suppression.
		  iou_threshold: A float representing the threshold for deciding whether boxes
		    overlap too much with respect to IOU.
		  score_threshold: A float representing the threshold for deciding when to
		    remove boxes based on score.
		  pad_to_max_output_size: bool.  If True, size of `selected_indices` output
		    is padded to `max_output_size`.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the boxes tensor, where `M <= max_output_size`.
		  valid_outputs: A scalar integer `Tensor` denoting how many elements in
		  `selected_indices` are valid.  Valid elements occur first, then padding.
	**/
	static public function non_max_suppression_padded(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Prunes away boxes that have high overlap with previously selected boxes.
		N-by-n overlap values are supplied as square matrix.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_overlaps(
		      overlaps, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  overlaps: A 2-D float `Tensor` of shape `[num_boxes, num_boxes]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non max suppression.
		  overlap_threshold: A float representing the threshold for deciding whether
		    boxes overlap too much with respect to the provided overlap values.
		  score_threshold: A float representing the threshold for deciding when to
		    remove boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the overlaps tensor, where `M <= max_output_size`.
	**/
	static public function non_max_suppression_with_overlaps(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?overlap_threshold:Dynamic, ?score_threshold:Dynamic, ?name:Dynamic):Dynamic;
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
		Linearly scales `image` to have zero mean and unit variance.
		
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
		Returns the Peak Signal-to-Noise Ratio between a and b.
		
		This is intended to be used on signals (or images). Produces a PSNR value for
		each image in batch.
		
		The last three dimensions of input are expected to be [height, width, depth].
		
		Example:
		
		```python
		    # Read images from file.
		    im1 = tf.decode_png('path/to/im1.png')
		    im2 = tf.decode_png('path/to/im2.png')
		    # Compute PSNR over tf.uint8 Tensors.
		    psnr1 = tf.image.psnr(im1, im2, max_val=255)
		
		    # Compute PSNR over tf.float32 Tensors.
		    im1 = tf.image.convert_image_dtype(im1, tf.float32)
		    im2 = tf.image.convert_image_dtype(im2, tf.float32)
		    psnr2 = tf.image.psnr(im1, im2, max_val=1.0)
		    # psnr1 and psnr2 both have type tf.float32 and are almost equal.
		```
		
		Arguments:
		  a: First set of images.
		  b: Second set of images.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		  name: Namespace to embed the computation in.
		
		Returns:
		  The scalar PSNR between a and b. The returned tensor has type `tf.float32`
		  and shape [batch_size, 1].
	**/
	static public function psnr(a:Dynamic, b:Dynamic, max_val:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust the brightness of images by a random factor.
		
		Equivalent to `adjust_brightness()` using a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		Args:
		  image: An image.
		  max_delta: float, must be non-negative.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.set_random_seed`
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
		    `tf.set_random_seed`
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
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.set_random_seed`
		    for behavior.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function random_flip_left_right(image:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly flips an image vertically (upside down).
		
		With a 1 in 2 chance, outputs the contents of `image` flipped along the first
		dimension, which is `height`.  Otherwise output the image as-is.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.set_random_seed`
		    for behavior.
		
		Returns:
		  A tensor of the same type and shape as `image`.
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
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `max_delta` is invalid.
	**/
	static public function random_hue(image:Dynamic, max_delta:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly changes jpeg encoding quality for inducing jpeg noise.
		
		`min_jpeg_quality` must be in the interval `[0, 100]` and less than
		`max_jpeg_quality`.
		`max_jpeg_quality` must be in the interval `[0, 100]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  min_jpeg_quality: Minimum jpeg encoding quality to use.
		  max_jpeg_quality: Maximum jpeg encoding quality to use.
		  seed: An operation-specific seed. It will be used in conjunction
		    with the graph-level seed to determine the real seeds that will be
		    used in this operation. Please see the documentation of
		    set_random_seed for its interaction with the graph-level random seed.
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `min_jpeg_quality` or `max_jpeg_quality` is invalid.
	**/
	static public function random_jpeg_quality(image:Dynamic, min_jpeg_quality:Dynamic, max_jpeg_quality:Dynamic, ?seed:Dynamic):Dynamic;
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
		Resizes and pads an image to a target width and height.
		
		Resizes an image to a target width and height by keeping
		the aspect ratio the same without distortion. If the target
		dimensions don't match the image dimensions, the image
		is resized and then padded with zeroes to match requested
		dimensions.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  target_height: Target height.
		  target_width: Target width.
		  method: Method to use for resizing image. See `resize_images()`
		
		Raises:
		  ValueError: if `target_height` or `target_width` are zero or negative.
		
		Returns:
		  Resized and padded image.
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_image_with_pad(image:Dynamic, target_height:Dynamic, target_width:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using the specified `method`.
		
		Resized images will be distorted if their original aspect ratio is not
		the same as `size`.  To avoid distortions see
		`tf.image.resize_image_with_pad`.
		
		`method` can be one of:
		
		*   <b>`ResizeMethod.BILINEAR`</b>: [Bilinear interpolation.](
		  https://en.wikipedia.org/wiki/Bilinear_interpolation)
		*   <b>`ResizeMethod.NEAREST_NEIGHBOR`</b>: [Nearest neighbor interpolation.](
		  https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation)
		*   <b>`ResizeMethod.BICUBIC`</b>: [Bicubic interpolation.](
		  https://en.wikipedia.org/wiki/Bicubic_interpolation)
		*   <b>`ResizeMethod.AREA`</b>: Area interpolation.
		
		The return value has the same type as `images` if `method` is
		`ResizeMethod.NEAREST_NEIGHBOR`. It will also have the same type as `images`
		if the size of `images` can be statically determined to be the same as `size`,
		because `images` is returned in this case. Otherwise, the return value has
		type `float32`.
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or
		          3-D Tensor of shape `[height, width, channels]`.
		  size: A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		        new size for the images.
		  method: ResizeMethod.  Defaults to `ResizeMethod.BILINEAR`.
		  align_corners: bool.  If True, the centers of the 4 corner pixels of the
		      input and output tensors are aligned, preserving the values at the
		      corner pixels. Defaults to `False`.
		  preserve_aspect_ratio: Whether to preserve the aspect ratio. If this is set,
		    then `images` will be resized to a size that fits in `size` while
		    preserving the aspect ratio of the original image. Scales up the image if
		    `size` is bigger than the current size of the `image`. Defaults to False.
		
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
	static public function resize_images(images:Dynamic, size:Dynamic, ?method:Dynamic, ?align_corners:Dynamic, ?preserve_aspect_ratio:Dynamic):Dynamic;
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
		Converts one or more images from RGB to YIQ.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the YIQ
		value of the pixels.
		The output is only well defined if the value in images are in [0,1].
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		  size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function rgb_to_yiq(images:Dynamic):Dynamic;
	/**
		Converts one or more images from RGB to YUV.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the YUV
		value of the pixels.
		The output is only well defined if the value in images are in [0,1].
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		  size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function rgb_to_yuv(images:Dynamic):Dynamic;
	/**
		Rotate image(s) counter-clockwise by 90 degrees.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		  k: A scalar integer. The number of times the image is rotated by 90 degrees.
		  name: A name for this operation (optional).
		
		Returns:
		  A rotated tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function rot90(image:Dynamic, ?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate a single randomly distorted bounding box for an image.
		
		Bounding box annotations are often supplied in addition to ground-truth labels
		in image recognition or object localization tasks. A common technique for
		training such a system is to randomly distort an image while preserving
		its content, i.e. *data augmentation*. This Op outputs a randomly distorted
		localization of an object, i.e. bounding box, given an `image_size`,
		`bounding_boxes` and a series of constraints.
		
		The output of this Op is a single bounding box that may be used to crop the
		original image. The output is returned as 3 tensors: `begin`, `size` and
		`bboxes`. The first 2 tensors can be fed directly into `tf.slice` to crop the
		image. The latter may be supplied to `tf.image.draw_bounding_boxes` to
		visualize
		what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`.
		The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example,
		
		```python
		    # Generate a single distorted bounding box.
		    begin, size, bbox_for_draw = tf.image.sample_distorted_bounding_box(
		        tf.shape(image),
		        bounding_boxes=bounding_boxes,
		        min_object_covered=0.1)
		
		    # Draw the bounding box in an image summary.
		    image_with_box = tf.image.draw_bounding_boxes(tf.expand_dims(image, 0),
		                                                  bbox_for_draw)
		    tf.summary.image('images_with_box', image_with_box)
		
		    # Employ the bounding box to distort the image.
		    distorted_image = tf.slice(image, begin, size)
		```
		
		Note that if no bounding box information is available, setting
		`use_image_if_no_bounding_boxes = true` will assume there is a single implicit
		bounding box covering the whole image. If `use_image_if_no_bounding_boxes` is
		false and no bounding boxes are supplied, an error is raised.
		
		Args:
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`,
		    `int16`, `int32`, `int64`.
		    1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`.
		    3-D with shape `[batch, N, 4]` describing the N bounding boxes
		    associated with the image.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to non-zero, the random number
		    generator is seeded by the given `seed`.  Otherwise, it is seeded by a
		      random
		    seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  min_object_covered: A Tensor of type `float32`. Defaults to `0.1`.
		    The cropped area of the image must contain at least this
		    fraction of any bounding box supplied. The value of this parameter should
		      be
		    non-negative. In the case of 0, the cropped area does not need to overlap
		    any of the bounding boxes supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75,
		    1.33]`.
		    The cropped area of the image must have an aspect ratio =
		    width / height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`.
		    The cropped area of the image must contain a fraction of the
		    supplied image within this range.
		  max_attempts: An optional `int`. Defaults to `100`.
		    Number of attempts at generating a cropped region of the image
		    of the specified constraints. After `max_attempts` failures, return the
		      entire
		    image.
		  use_image_if_no_bounding_boxes: An optional `bool`. Defaults to `False`.
		    Controls behavior if no bounding boxes supplied.
		    If true, assume an implicit bounding box covering the whole input. If
		      false,
		    raise an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (begin, size, bboxes).
		
		  begin: A `Tensor`. Has the same type as `image_size`. 1-D, containing
		  `[offset_height, offset_width, 0]`. Provide as input to
		    `tf.slice`.
		  size: A `Tensor`. Has the same type as `image_size`. 1-D, containing
		  `[target_height, target_width, -1]`. Provide as input to
		    `tf.slice`.
		  bboxes: A `Tensor` of type `float32`. 3-D with shape `[1, 1, 4]` containing
		  the distorted bounding box.
		    Provide as input to `tf.image.draw_bounding_boxes`.
	**/
	static public function sample_distorted_bounding_box(image_size:Dynamic, bounding_boxes:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?min_object_covered:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor holding Sobel edge maps.
		
		Arguments:
		  image: Image tensor with shape [batch_size, h, w, d] and type float32 or
		  float64.  The image(s) must be 2x2 or larger.
		
		Returns:
		  Tensor holding edge maps for each channel. Returns a tensor with shape
		  [batch_size, h, w, d, 2] where the last two dimensions hold [[dy[0], dx[0]],
		  [dy[1], dx[1]], ..., [dy[d-1], dx[d-1]]] calculated using the Sobel filter.
	**/
	static public function sobel_edges(image:Dynamic):Dynamic;
	/**
		Computes SSIM index between img1 and img2.
		
		This function is based on the standard SSIM implementation from:
		Wang, Z., Bovik, A. C., Sheikh, H. R., & Simoncelli, E. P. (2004). Image
		quality assessment: from error visibility to structural similarity. IEEE
		transactions on image processing.
		
		Note: The true SSIM is only defined on grayscale.  This function does not
		perform any colorspace transform.  (If input is already YUV, then it will
		compute YUV SSIM average.)
		
		Details:
		  - 11x11 Gaussian filter of width 1.5 is used.
		  - k1 = 0.01, k2 = 0.03 as in the original paper.
		
		The image sizes must be at least 11x11 because of the filter size.
		
		Example:
		
		```python
		    # Read images from file.
		    im1 = tf.decode_png('path/to/im1.png')
		    im2 = tf.decode_png('path/to/im2.png')
		    # Compute SSIM over tf.uint8 Tensors.
		    ssim1 = tf.image.ssim(im1, im2, max_val=255)
		
		    # Compute SSIM over tf.float32 Tensors.
		    im1 = tf.image.convert_image_dtype(im1, tf.float32)
		    im2 = tf.image.convert_image_dtype(im2, tf.float32)
		    ssim2 = tf.image.ssim(im1, im2, max_val=1.0)
		    # ssim1 and ssim2 both have type tf.float32 and are almost equal.
		```
		
		Args:
		  img1: First image batch.
		  img2: Second image batch.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		
		Returns:
		  A tensor containing an SSIM value for each image in batch.  Returned SSIM
		  values are in range (-1, 1], when pixel values are non-negative. Returns
		  a tensor with shape: broadcast(img1.shape[:-3], img2.shape[:-3]).
	**/
	static public function ssim(img1:Dynamic, img2:Dynamic, max_val:Dynamic):Dynamic;
	/**
		Computes the MS-SSIM between img1 and img2.
		
		This function assumes that `img1` and `img2` are image batches, i.e. the last
		three dimensions are [height, width, channels].
		
		Note: The true SSIM is only defined on grayscale.  This function does not
		perform any colorspace transform.  (If input is already YUV, then it will
		compute YUV SSIM average.)
		
		Original paper: Wang, Zhou, Eero P. Simoncelli, and Alan C. Bovik. "Multiscale
		structural similarity for image quality assessment." Signals, Systems and
		Computers, 2004.
		
		Arguments:
		  img1: First image batch.
		  img2: Second image batch. Must have the same rank as img1.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		  power_factors: Iterable of weights for each of the scales. The number of
		    scales used is the length of the list. Index 0 is the unscaled
		    resolution's weight and each increasing scale corresponds to the image
		    being downsampled by 2.  Defaults to (0.0448, 0.2856, 0.3001, 0.2363,
		    0.1333), which are the values obtained in the original paper.
		
		Returns:
		  A tensor containing an MS-SSIM value for each image in batch.  The values
		  are in range [0, 1].  Returns a tensor with shape:
		  broadcast(img1.shape[:-3], img2.shape[:-3]).
	**/
	static public function ssim_multiscale(img1:Dynamic, img2:Dynamic, max_val:Dynamic, ?power_factors:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Transpose image(s) by swapping the height and width dimension.
		
		See also `transpose()`.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or
		         3-D Tensor of shape `[height, width, channels]`.
		
		Returns:
		  If `image` was 4-D, a 4-D float Tensor of shape
		 `[batch, width, height, channels]`
		  If `image` was 3-D, a 3-D float Tensor of shape
		 `[width, height, channels]`
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function transpose_image(image:Dynamic):Dynamic;
	/**
		Converts one or more images from YIQ to RGB.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the RGB
		value of the pixels.
		The output is only well defined if the Y value in images are in [0,1],
		I value are in [-0.5957,0.5957] and Q value are in [-0.5226,0.5226].
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		  size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function yiq_to_rgb(images:Dynamic):Dynamic;
	/**
		Converts one or more images from YUV to RGB.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the RGB
		value of the pixels.
		The output is only well defined if the Y value in images are in [0,1],
		U and V value are in [-0.5,0.5].
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		  size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function yuv_to_rgb(images:Dynamic):Dynamic;
}