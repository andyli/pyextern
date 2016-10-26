/* This file is generated, do not edit! */
package tensorflow.python.ops.image_ops;
@:pythonImport("tensorflow.python.ops.image_ops") extern class Image_ops_Module {
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
		
		Raises:
		  ValueError: if image.shape is not a [>= 3] vector.
	**/
	static public function _CheckAtLeast3DImage(image:Dynamic):Dynamic;
	/**
		Shape function for colorspace ops.
	**/
	static public function _ColorspaceShape(op:Dynamic):Dynamic;
	/**
		Shape function for image decoding ops.
	**/
	static public function _ImageDecodeShape(op:Dynamic):Dynamic;
	/**
		Returns the dimensions of an image tensor.
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]`
		  static_only: Boolean, whether to return only static shape.
		
		Returns:
		  list of integers `[batch, height, width, channels]`, when static shape is
		  fully defined or `static_only` is `True`.
		  list of integer scalar tensors `[batch, height, width, channels]`, when
		  static shape is not fully defined.
	**/
	static public function _ImageDimensions(images:Dynamic, ?static_only:Dynamic):Dynamic;
	/**
		Shape function for image encoding ops.
	**/
	static public function _ImageEncodeShape(op:Dynamic):Dynamic;
	/**
		Shape function for the resize_bilinear and resize_nearest_neighbor ops.
	**/
	static public function _ResizeShape(op:Dynamic):Dynamic;
	/**
		Shape function for the sample distorted bounding box.
	**/
	static public function _SampleDistortedBoundingBoxShape(unused_op:Dynamic):Dynamic;
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
		Shape function for the CropAndResize op.
	**/
	static public function _crop_and_resize_shape(op:Dynamic):Dynamic;
	/**
		Shape function for ExtractGlimpse op.
	**/
	static public function _extract_glimpse_shape(op:Dynamic):Dynamic;
	/**
		Shape function for the NonMaxSuppression op.
	**/
	static public function _non_max_suppression_shape(_:Dynamic):Dynamic;
	/**
		Shape function for RandomCrop op.
	**/
	static public function _random_crop_shape(op:Dynamic):Dynamic;
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
		Extracts crops from the input image tensor and bilinearly resizes them (possibly
		
		with aspect ratio change) to a common output size specified by `crop_size`. This
		is more general than the `crop_to_bounding_box` op which extracts a fixed size
		slice from the input image and does not allow resizing or aspect ratio change.
		
		Returns a tensor with `crops` from the input `image` at positions defined at the
		bounding box locations in `boxes`. The cropped boxes are all resized (with
		bilinear interpolation) to a fixed `size = [crop_height, crop_width]`. The
		result is a 4-D tensor `[num_boxes, crop_height, crop_width, depth]`.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1] in image height coordinates. We do allow y1 > y2, in
		    which case the sampled crop is an up-down flipped version of the original
		    image. The width dimension is treated similarly. Normalized coordinates
		    outside the `[0, 1]` range are allowed, in which case we use
		    `extrapolation_value` to extrapolate the input image values.
		  box_ind: A `Tensor` of type `int32`.
		    A 1-D tensor of shape `[num_boxes]` with int32 values in `[0, batch)`.
		    The value of `box_ind[i]` specifies the image that the `i`-th box refers to.
		  crop_size: A `Tensor` of type `int32`.
		    A 1-D tensor of 2 elements, `size = [crop_height, crop_width]`. All
		    cropped image patches are resized to this size. The aspect ratio of the image
		    content is not preserved. Both `crop_height` and `crop_width` need to be
		    positive.
		  method: An optional `string` from: `"bilinear"`. Defaults to `"bilinear"`.
		    A string specifying the interpolation method. Only 'bilinear' is
		    supported for now.
		  extrapolation_value: An optional `float`. Defaults to `0`.
		    Value used for extrapolation, when applicable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
	**/
	static public function crop_and_resize(image:Dynamic, boxes:Dynamic, box_ind:Dynamic, crop_size:Dynamic, ?method:Dynamic, ?extrapolation_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of the crop_and_resize op wrt the input boxes tensor.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
		  image: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1] in image height coordinates. We do allow y1 > y2, in
		    which case the sampled crop is an up-down flipped version of the original
		    image. The width dimension is treated similarly. Normalized coordinates
		    outside the `[0, 1]` range are allowed, in which case we use
		    `extrapolation_value` to extrapolate the input image values.
		  box_ind: A `Tensor` of type `int32`.
		    A 1-D tensor of shape `[num_boxes]` with int32 values in `[0, batch)`.
		    The value of `box_ind[i]` specifies the image that the `i`-th box refers to.
		  method: An optional `string` from: `"bilinear"`. Defaults to `"bilinear"`.
		    A string specifying the interpolation method. Only 'bilinear' is
		    supported for now.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`. A 2-D tensor of shape `[num_boxes, 4]`.
	**/
	static public function crop_and_resize_grad_boxes(grads:Dynamic, image:Dynamic, boxes:Dynamic, box_ind:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of the crop_and_resize op wrt the input image tensor.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1] in image height coordinates. We do allow y1 > y2, in
		    which case the sampled crop is an up-down flipped version of the original
		    image. The width dimension is treated similarly. Normalized coordinates
		    outside the `[0, 1]` range are allowed, in which case we use
		    `extrapolation_value` to extrapolate the input image values.
		  box_ind: A `Tensor` of type `int32`.
		    A 1-D tensor of shape `[num_boxes]` with int32 values in `[0, batch)`.
		    The value of `box_ind[i]` specifies the image that the `i`-th box refers to.
		  image_size: A `Tensor` of type `int32`.
		    A 1-D tensor with value `[batch, image_height, image_width, depth]`
		    containing the original image size. Both `image_height` and `image_width` need
		    to be positive.
		  T: A `tf.DType` from: `tf.float32, tf.half, tf.float64`.
		  method: An optional `string` from: `"bilinear"`. Defaults to `"bilinear"`.
		    A string specifying the interpolation method. Only 'bilinear' is
		    supported for now.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
		  A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
	**/
	static public function crop_and_resize_grad_image(grads:Dynamic, boxes:Dynamic, box_ind:Dynamic, image_size:Dynamic, T:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Crops an image to a specified bounding box.
		
		This op cuts a rectangular part out of `image`. The top-left corner of the
		returned image is at `offset_height, offset_width` in `image`, and its
		lower-right corner is at
		`offset_height + target_height, offset_width + target_width`.
		
		Args:
		  image: 3-D tensor with shape `[height, width, channels]`
		  offset_height: Vertical coordinate of the top-left corner of the result in
		                 the input.
		  offset_width: Horizontal coordinate of the top-left corner of the result in
		                the input.
		  target_height: Height of the result.
		  target_width: Width of the result.
		
		Returns:
		  3-D tensor of image with shape `[target_height, target_width, channels]`
		
		Raises:
		  ValueError: If the shape of `image` is incompatible with the `offset_*` or
		    `target_*` arguments, or either `offset_height` or `offset_width` is
		    negative, or either `target_height` or `target_width` is not positive.
	**/
	static public function crop_to_bounding_box(image:Dynamic, offset_height:Dynamic, offset_width:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Decode the first frame of a GIF-encoded image to a uint8 tensor.
		
		GIF with frame or transparency compression are not supported
		convert animated GIF from compressed to uncompressed by:
		
		convert $src.gif -coalesce $dst.gif
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The GIF-encoded image.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
		  4-D with shape `[num_frames, height, width, 3]`. RGB order
	**/
	static public function decode_gif(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode a JPEG-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the JPEG-encoded image.
		*   1: output a grayscale image.
		*   3: output an RGB image.
		
		If needed, the JPEG-encoded image is transformed to match the requested number
		of color channels.
		
		The attr `ratio` allows downscaling the image by an integer factor during
		decoding.  Allowed values are: 1, 2, 4, and 8.  This is much faster than
		downscaling the image later.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The JPEG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  ratio: An optional `int`. Defaults to `1`. Downscaling ratio.
		  fancy_upscaling: An optional `bool`. Defaults to `True`.
		    If true use a slower but nicer upscaling of the
		    chroma planes (yuv420/422 only).
		  try_recover_truncated: An optional `bool`. Defaults to `False`.
		    If true try to recover an image from truncated input.
		  acceptable_fraction: An optional `float`. Defaults to `1`.
		    The minimum required fraction of lines before a truncated
		    input is accepted.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`. 3-D with shape `[height, width, channels]`..
	**/
	static public function decode_jpeg(contents:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode a PNG-encoded image to a uint8 or uint16 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the PNG-encoded image.
		*   1: output a grayscale image.
		*   3: output an RGB image.
		*   4: output an RGBA image.
		
		If needed, the PNG-encoded image is transformed to match the requested number
		of color channels.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The PNG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  dtype: An optional `tf.DType` from: `tf.uint8, tf.uint16`. Defaults to `tf.uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. 3-D with shape `[height, width, channels]`.
	**/
	static public function decode_png(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Draw bounding boxes on a batch of images.
		
		Outputs a copy of `images` but draws on top of the pixels zero or more bounding
		boxes specified by the locations in `boxes`. The coordinates of the each
		bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example, if an image is 100 x 200 pixels and the bounding box is
		`[0.1, 0.5, 0.2, 0.9]`, the bottom-left and upper-right coordinates of the
		bounding box will be `(10, 40)` to `(50, 180)`.
		
		Parts of the bounding box may fall outside the image.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D with shape `[batch, height, width, depth]`. A batch of images.
		  boxes: A `Tensor` of type `float32`.
		    3-D with shape `[batch, num_bounding_boxes, 4]` containing bounding
		    boxes.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  4-D with the same shape as `images`. The batch of input images with
		  bounding boxes drawn on the images.
	**/
	static public function draw_bounding_boxes(images:Dynamic, boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		JPEG-encode an image.
		
		`image` is a 3-D uint8 Tensor of shape `[height, width, channels]`.
		
		The attr `format` can be used to override the color format of the encoded
		output.  Values can be:
		
		*   `''`: Use a default format based on the number of channels in the image.
		*   `grayscale`: Output a grayscale JPEG image.  The `channels` dimension
		    of `image` must be 1.
		*   `rgb`: Output an RGB JPEG image. The `channels` dimension
		    of `image` must be 3.
		
		If `format` is not specified or is the empty string, a default format is picked
		in function of the number of channels in `image`:
		
		*   1: Output a grayscale image.
		*   3: Output an RGB image.
		
		Args:
		  image: A `Tensor` of type `uint8`.
		    3-D with shape `[height, width, channels]`.
		  format: An optional `string` from: `"", "grayscale", "rgb"`. Defaults to `""`.
		    Per pixel image format.
		  quality: An optional `int`. Defaults to `95`.
		    Quality of the compression from 0 to 100 (higher is better and slower).
		  progressive: An optional `bool`. Defaults to `False`.
		    If True, create a JPEG that loads progressively (coarse to fine).
		  optimize_size: An optional `bool`. Defaults to `False`.
		    If True, spend CPU/RAM to reduce size with no quality change.
		  chroma_downsampling: An optional `bool`. Defaults to `True`.
		    See http://en.wikipedia.org/wiki/Chroma_subsampling.
		  density_unit: An optional `string` from: `"in", "cm"`. Defaults to `"in"`.
		    Unit used to specify `x_density` and `y_density`:
		    pixels per inch (`'in'`) or centimeter (`'cm'`).
		  x_density: An optional `int`. Defaults to `300`.
		    Horizontal pixels per density unit.
		  y_density: An optional `int`. Defaults to `300`.
		    Vertical pixels per density unit.
		  xmp_metadata: An optional `string`. Defaults to `""`.
		    If not empty, embed this XMP metadata in the image header.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. 0-D. JPEG-encoded image.
	**/
	static public function encode_jpeg(image:Dynamic, ?format:Dynamic, ?quality:Dynamic, ?progressive:Dynamic, ?optimize_size:Dynamic, ?chroma_downsampling:Dynamic, ?density_unit:Dynamic, ?x_density:Dynamic, ?y_density:Dynamic, ?xmp_metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		PNG-encode an image.
		
		`image` is a 3-D uint8 or uint16 Tensor of shape `[height, width, channels]`
		where `channels` is:
		
		*   1: for grayscale.
		*   2: for grayscale + alpha.
		*   3: for RGB.
		*   4: for RGBA.
		
		The ZLIB compression level, `compression`, can be -1 for the PNG-encoder
		default or a value from 0 to 9.  9 is the highest compression level, generating
		the smallest output, but is slower.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`.
		    3-D with shape `[height, width, channels]`.
		  compression: An optional `int`. Defaults to `-1`. Compression level.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. 0-D. PNG-encoded image.
	**/
	static public function encode_png(image:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts a glimpse from the input tensor.
		
		Returns a set of windows called glimpses extracted at location
		`offsets` from the input tensor. If the windows only partially
		overlaps the inputs, the non overlapping areas will be filled with
		random noise.
		
		The result is a 4-D tensor of shape `[batch_size, glimpse_height,
		glimpse_width, channels]`. The channels and batch dimensions are the
		same as that of the input tensor. The height and width of the output
		windows are specified in the `size` parameter.
		
		The argument `normalized` and `centered` controls how the windows are built:
		
		* If the coordinates are normalized but not centered, 0.0 and 1.0
		  correspond to the minimum and maximum of each height and width
		  dimension.
		* If the coordinates are both normalized and centered, they range from
		  -1.0 to 1.0. The coordinates (-1.0, -1.0) correspond to the upper
		  left corner, the lower right corner is located at (1.0, 1.0) and the
		  center is at (0, 0).
		* If the coordinates are not normalized they are interpreted as
		  numbers of pixels.
		
		Args:
		  input: A `Tensor` of type `float32`.
		    A 4-D float tensor of shape `[batch_size, height, width, channels]`.
		  size: A `Tensor` of type `int32`.
		    A 1-D tensor of 2 elements containing the size of the glimpses
		    to extract.  The glimpse height must be specified first, following
		    by the glimpse width.
		  offsets: A `Tensor` of type `float32`.
		    A 2-D integer tensor of shape `[batch_size, 2]` containing
		    the x, y locations of the center of each window.
		  centered: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are centered relative to
		    the image, in which case the (0, 0) offset is relative to the center
		    of the input images. If false, the (0,0) offset corresponds to the
		    upper left corner of the input images.
		  normalized: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are normalized.
		  uniform_noise: An optional `bool`. Defaults to `True`.
		    indicates if the noise should be generated using a
		    uniform distribution or a gaussian distribution.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A tensor representing the glimpses `[batch_size,
		  glimpse_height, glimpse_width, channels]`.
	**/
	static public function extract_glimpse(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?name:Dynamic):Dynamic;
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
		Convert one or more images from HSV to RGB.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the RGB
		value of the pixels. The output is only well defined if the value in `images`
		are in `[0,1]`.
		
		See `rgb_to_hsv` for a description of the HSV encoding.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    1-D or higher rank. HSV data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`. `images` converted to RGB.
	**/
	static public function hsv_to_rgb(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check for tensor types.
		Check whether an object is a tensor. Equivalent to
		`isinstance(x, [tf.Tensor, tf.SparseTensor, tf.Variable])`.
		
		Args:
		  x: An python object to check.
		
		Returns:
		  `True` if `x` is a tensor, `False` if not.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
	/**
		Generate `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
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
		using the tf.gather operation.  For example:
		
		  selected_indices = tf.image.non_max_suppression(
		      boxes, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor` of type `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor` of type `float32`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: An optional `float`. Defaults to `0.5`.
		    A float representing the threshold for deciding whether boxes
		    overlap too much with respect to IOU.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  A 1-D integer tensor of shape `[M]` representing the selected
		  indices from the boxes tensor, where `M <= max_output_size`.
	**/
	static public function non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pad `image` with zeros to the specified `height` and `width`.
		
		Adds `offset_height` rows of zeros on top, `offset_width` columns of
		zeros on the left, and then pads the image on the bottom and right
		with zeros until it has dimensions `target_height`, `target_width`.
		
		This op does nothing if `offset_*` is zero and the image already has size
		`target_height` by `target_width`.
		
		Args:
		  image: 3-D tensor with shape `[height, width, channels]`
		  offset_height: Number of rows of zeros to add on top.
		  offset_width: Number of columns of zeros to add on the left.
		  target_height: Height of output image.
		  target_width: Width of output image.
		
		Returns:
		  3-D tensor of shape `[target_height, target_width, channels]`
		
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
		
		Note that this implementation is limited:
		*  It only whitens based on the statistics of an individual image.
		*  It does not take into account the covariance structure.
		
		Args:
		  image: 3-D tensor of shape `[height, width, channels]`.
		
		Returns:
		  The whitened image with same shape as `image`.
		
		Raises:
		  ValueError: if the shape of 'image' is incompatible with this function.
	**/
	static public function per_image_whitening(image:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adjust the brightness of images by a random factor.
		
		Equivalent to `adjust_brightness()` using a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		Args:
		  image: An image.
		  max_delta: float, must be non-negative.
		  seed: A Python integer. Used to create a random seed. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
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
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
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
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
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
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
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
		Resize `images` to `size` using area interpolation.
		
		Input images can be of different types but output images are always float.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, rescale input by (new_height - 1) / (height - 1), which
		    exactly aligns the 4 corners of images and resized images. If false, rescale
		    by new_height / height. Treat similarly the width dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`. 4-D with shape
		  `[batch, new_height, new_width, channels]`.
	**/
	static public function resize_area(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using bicubic interpolation.
		
		Input images can be of different types but output images are always float.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, rescale input by (new_height - 1) / (height - 1), which
		    exactly aligns the 4 corners of images and resized images. If false, rescale
		    by new_height / height. Treat similarly the width dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`. 4-D with shape
		  `[batch, new_height, new_width, channels]`.
	**/
	static public function resize_bicubic(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using bilinear interpolation.
		
		Input images can be of different types but output images are always float.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, rescale input by (new_height - 1) / (height - 1), which
		    exactly aligns the 4 corners of images and resized images. If false, rescale
		    by new_height / height. Treat similarly the width dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`. 4-D with shape
		  `[batch, new_height, new_width, channels]`.
	**/
	static public function resize_bilinear(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
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
		  image: 3-D tensor of shape `[height, width, channels]`
		  target_height: Target height.
		  target_width: Target width.
		
		Raises:
		  ValueError: if `target_height` or `target_width` are zero or negative.
		
		Returns:
		  Cropped and/or padded image of shape
		  `[target_height, target_width, channels]`
	**/
	static public function resize_image_with_crop_or_pad(image:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Resize `images` to `new_width`, `new_height` using the specified `method`.
		
		Resized images will be distorted if their original aspect ratio is not
		the same as `new_width`, `new_height`.  To avoid distortions see
		[`resize_image_with_crop_or_pad`](#resize_image_with_crop_or_pad).
		
		`method` can be one of:
		
		*   <b>`ResizeMethod.BILINEAR`</b>: [Bilinear interpolation.]
		    (https://en.wikipedia.org/wiki/Bilinear_interpolation)
		*   <b>`ResizeMethod.NEAREST_NEIGHBOR`</b>: [Nearest neighbor interpolation.]
		    (https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation)
		*   <b>`ResizeMethod.BICUBIC`</b>: [Bicubic interpolation.]
		    (https://en.wikipedia.org/wiki/Bicubic_interpolation)
		*   <b>`ResizeMethod.AREA`</b>: Area interpolation.
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or
		          3-D Tensor of shape `[height, width, channels]`.
		  new_height: integer.
		  new_width: integer.
		  method: ResizeMethod.  Defaults to `ResizeMethod.BILINEAR`.
		  align_corners: bool. If true, exactly align all 4 corners of the input and
		                 output. Defaults to `false`.
		
		Raises:
		  ValueError: if the shape of `images` is incompatible with the
		    shape arguments to this function
		  ValueError: if an unsupported resize method is specified.
		
		Returns:
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_images(images:Dynamic, new_height:Dynamic, new_width:Dynamic, ?method:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using nearest neighbor interpolation.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, rescale input by (new_height - 1) / (height - 1), which
		    exactly aligns the 4 corners of images and resized images. If false, rescale
		    by new_height / height. Treat similarly the width dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`. 4-D with shape
		  `[batch, new_height, new_width, channels]`.
	**/
	static public function resize_nearest_neighbor(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
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
		Converts one or more images from RGB to HSV.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the HSV
		value of the pixels. The output is only well defined if the value in `images`
		are in `[0,1]`.
		
		`output[..., 0]` contains hue, `output[..., 1]` contains saturation, and
		`output[..., 2]` contains value. All HSV values are in `[0,1]`. A hue of 0
		corresponds to pure red, hue 1/3 is pure green, and 2/3 is pure blue.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    1-D or higher rank. RGB data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`. `images` converted to HSV.
	**/
	static public function rgb_to_hsv(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rotate an image counter-clockwise by 90 degrees.
		
		Args:
		  image: A 3-D tensor of shape `[height, width, channels].`
		  k: Number of times the image is rotated by 90 degrees.
		
		Returns:
		  A rotated 3-D tensor of the same type and shape as `image`.
	**/
	static public function rot90(image:Dynamic, ?k:Dynamic):Dynamic;
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
		image. The latter may be supplied to `tf.image.draw_bounding_box` to visualize
		what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example,
		
		    # Generate a single distorted bounding box.
		    begin, size, bbox_for_draw = tf.image.sample_distorted_bounding_box(
		        tf.shape(image),
		        bounding_boxes=bounding_boxes)
		
		    # Draw the bounding box in an image summary.
		    image_with_box = tf.image.draw_bounding_boxes(tf.expand_dims(image, 0),
		                                                  bbox_for_draw)
		    tf.image_summary('images_with_box', image_with_box)
		
		    # Employ the bounding box to distort the image.
		    distorted_image = tf.slice(image, begin, size)
		
		Note that if no bounding box information is available, setting
		`use_image_if_no_bounding_boxes = true` will assume there is a single implicit
		bounding box covering the whole image. If `use_image_if_no_bounding_boxes` is
		false and no bounding boxes are supplied, an error is raised.
		
		Args:
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`.
		    1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`.
		    3-D with shape `[batch, N, 4]` describing the N bounding boxes
		    associated with the image.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to non-zero, the random number
		    generator is seeded by the given `seed`.  Otherwise, it is seeded by a random
		    seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  min_object_covered: An optional `float`. Defaults to `0.1`.
		    The cropped area of the image must contain at least this
		    fraction of any bounding box supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75, 1.33]`.
		    The cropped area of the image must have an aspect ratio =
		    width / height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`.
		    The cropped area of the image must contain a fraction of the
		    supplied image within in this range.
		  max_attempts: An optional `int`. Defaults to `100`.
		    Number of attempts at generating a cropped region of the image
		    of the specified constraints. After `max_attempts` failures, return the entire
		    image.
		  use_image_if_no_bounding_boxes: An optional `bool`. Defaults to `False`.
		    Controls behavior if no bounding boxes supplied.
		    If true, assume an implicit bounding box covering the whole input. If false,
		    raise an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (begin, size, bboxes).
		  begin: A `Tensor`. Has the same type as `image_size`. 1-D, containing `[offset_height, offset_width, 0]`. Provide as input to
		    `tf.slice`.
		  size: A `Tensor`. Has the same type as `image_size`. 1-D, containing `[target_height, target_width, -1]`. Provide as input to
		    `tf.slice`.
		  bboxes: A `Tensor` of type `float32`. 3-D with shape `[1, 1, 4]` containing the distorted bounding box.
		    Provide as input to `tf.image.draw_bounding_boxes`.
	**/
	static public function sample_distorted_bounding_box(image_size:Dynamic, bounding_boxes:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?min_object_covered:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
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