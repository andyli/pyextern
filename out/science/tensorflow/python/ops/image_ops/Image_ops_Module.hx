/* This file is generated, do not edit! */
package tensorflow.python.ops.image_ops;
@:pythonImport("tensorflow.python.ops.image_ops") extern class Image_ops_Module {
	/**
		Deprecated. Disallowed in GraphDef version >= 2.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `float32`, `float64`.
		  contrast_factor: A `Tensor` of type `float32`.
		  min_value: A `Tensor` of type `float32`.
		  max_value: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function AdjustContrast(images:Dynamic, contrast_factor:Dynamic, min_value:Dynamic, max_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust the contrast of one or more images.
		
		`images` is a tensor of at least 3 dimensions.  The last 3 dimensions are
		interpreted as `[height, width, channels]`.  The other dimensions only
		represent a collection of images, such as `[batch, height, width, channels].`
		
		Contrast is adjusted independently for each channel of each image.
		
		For each channel, the Op first computes the mean of the image pixels in the
		channel and then adjusts each component of each pixel to
		`(x - mean) * contrast_factor + mean`.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    Images to adjust.  At least 3-D.
		  contrast_factor: A `Tensor` of type `float32`.
		    A float multiplier for adjusting contrast.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function AdjustContrastv2(images:Dynamic, contrast_factor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust the hue of one or more images.
		
		`images` is a tensor of at least 3 dimensions.  The last dimension is
		interpreted as channels, and must be three.
		
		The input image is considered in the RGB colorspace. Conceptually, the RGB
		colors are first mapped into HSV. A delta is then applied all the hue values,
		and then remapped back to RGB colorspace.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    Images to adjust.  At least 3-D.
		  delta: A `Tensor` of type `float32`. A float delta to add to the hue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function AdjustHue(images:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust the saturation of one or more images.
		
		`images` is a tensor of at least 3 dimensions.  The last dimension is
		interpreted as channels, and must be three.
		
		The input image is considered in the RGB colorspace. Conceptually, the RGB
		colors are first mapped into HSV. A scale is then applied all the saturation
		values, and then remapped back to RGB colorspace.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    Images to adjust.  At least 3-D.
		  scale: A `Tensor` of type `float32`.
		    A float scale to add to the saturation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function AdjustSaturation(images:Dynamic, scale:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		This operation performs non_max_suppression on the inputs per batch, across
		all classes.
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system. Also note that
		this algorithm is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is the final boxes, scores and classes tensor
		returned after performing non_max_suppression.
		
		Args:
		  boxes: A `Tensor` of type `float32`.
		    A 4-D float tensor of shape `[batch_size, num_boxes, q, 4]`. If `q` is 1 then
		    same boxes are used for all classes otherwise, if `q` is equal to number of
		    classes, class-specific boxes are used.
		  scores: A `Tensor` of type `float32`.
		    A 3-D float tensor of shape `[batch_size, num_boxes, num_classes]`
		    representing a single score corresponding to each box (each row of boxes).
		  max_output_size_per_class: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression per class
		  max_total_size: A `Tensor` of type `int32`.
		    An int32 scalar representing the maximum number of boxes retained over all
		    classes. Note that setting this value to a large number may result in OOM error
		    depending on the system workload.
		  iou_threshold: A `Tensor` of type `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor` of type `float32`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  pad_per_class: An optional `bool`. Defaults to `False`.
		    If false, the output nmsed boxes, scores and classes
		    are padded/clipped to `max_total_size`. If true, the
		    output nmsed boxes, scores and classes are padded to be of length
		    `max_size_per_class`*`num_classes`, unless it exceeds `max_total_size` in
		    which case it is clipped to `max_total_size`. Defaults to false.
		  clip_boxes: An optional `bool`. Defaults to `True`.
		    If true, assume the box coordinates are between [0, 1] and clip the output boxes
		    if they fall beyond [0, 1]. If false, do not do clipping and output the box
		    coordinates as it is.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (nmsed_boxes, nmsed_scores, nmsed_classes, valid_detections).
		
		  nmsed_boxes: A `Tensor` of type `float32`.
		  nmsed_scores: A `Tensor` of type `float32`.
		  nmsed_classes: A `Tensor` of type `float32`.
		  valid_detections: A `Tensor` of type `int32`.
	**/
	static public function CombinedNonMaxSuppression(boxes:Dynamic, scores:Dynamic, max_output_size_per_class:Dynamic, max_total_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?pad_per_class:Dynamic, ?clip_boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts crops from the input image tensor and resizes them.
		
		Extracts crops from the input image tensor and resizes them using bilinear
		sampling or nearest neighbor sampling (possibly with aspect ratio change) to a
		common output size specified by `crop_size`. This is more general than the
		`crop_to_bounding_box` op which extracts a fixed size slice from the input image
		and does not allow resizing or aspect ratio change.
		
		Returns a tensor with `crops` from the input `image` at positions defined at the
		bounding box locations in `boxes`. The cropped boxes are all resized (with
		bilinear or nearest neighbor interpolation) to a fixed
		`size = [crop_height, crop_width]`. The result is a 4-D tensor
		`[num_boxes, crop_height, crop_width, depth]`. The resizing is corner aligned.
		In particular, if `boxes = [[0, 0, 1, 1]]`, the method will give identical
		results to using `tf.image.resize_bilinear()` or
		`tf.image.resize_nearest_neighbor()`(depends on the `method` argument) with
		`align_corners=True`.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1]` in image height coordinates. We do allow `y1` > `y2`, in
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
		  method: An optional `string` from: `"bilinear", "nearest"`. Defaults to `"bilinear"`.
		    A string specifying the sampling method for resizing. It can be either
		    `"bilinear"` or `"nearest"` and default to `"bilinear"`. Currently two sampling
		    methods are supported: Bilinear and Nearest Neighbor.
		  extrapolation_value: An optional `float`. Defaults to `0`.
		    Value used for extrapolation, when applicable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function CropAndResize(image:Dynamic, boxes:Dynamic, box_ind:Dynamic, crop_size:Dynamic, ?method:Dynamic, ?extrapolation_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of the crop_and_resize op wrt the input boxes tensor.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
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
		  A `Tensor` of type `float32`.
	**/
	static public function CropAndResizeGradBoxes(grads:Dynamic, image:Dynamic, boxes:Dynamic, box_ind:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
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
		  method: An optional `string` from: `"bilinear", "nearest"`. Defaults to `"bilinear"`.
		    A string specifying the interpolation method. Only 'bilinear' is
		    supported for now.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function CropAndResizeGradImage(grads:Dynamic, boxes:Dynamic, box_ind:Dynamic, image_size:Dynamic, T:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode and Crop a JPEG-encoded image to a uint8 tensor.
		
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
		
		
		It is equivalent to a combination of decode and crop, but much faster by only
		decoding partial jpeg image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The JPEG-encoded image.
		  crop_window: A `Tensor` of type `int32`.
		    1-D.  The crop window: [crop_y, crop_x, crop_height, crop_width].
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
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function DecodeAndCropJpeg(contents:Dynamic, crop_window:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode the first frame of a BMP-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the BMP-encoded image.
		*   3: output an RGB image.
		*   4: output an RGBA image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The BMP-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function DecodeBmp(contents:Dynamic, ?channels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode the frame(s) of a GIF-encoded image to a uint8 tensor.
		
		GIF images with frame or transparency compression are not supported.
		On Linux and MacOS systems, convert animated GIFs from compressed to
		uncompressed by running:
		
		    convert $src.gif -coalesce $dst.gif
		
		This op also supports decoding JPEGs and PNGs, though it is cleaner to use
		`tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The GIF-encoded image.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function DecodeGif(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Function for decode_bmp, decode_gif, decode_jpeg, and decode_png.
		
		Detects whether an image is a BMP, GIF, JPEG, or PNG, and performs the
		appropriate operation to convert the input bytes string into a Tensor of type
		dtype.
		
		*NOTE*: decode_gif returns a 4-D array [num_frames, height, width, 3], as
		opposed to decode_bmp, decode_jpeg and decode_png, which return 3-D arrays
		[height, width, num_channels]. Make sure to take this into account when
		constructing your graph if you are intermixing GIF files with BMP, JPEG, and/or
		PNG files. Alternately, set the expand_animations argument of this function to
		False, in which case the op will return 3-dimensional tensors and will truncate
		animated GIF files to the first frame.
		
		*NOTE*: If the first frame of an animated GIF does not occupy the entire
		canvas (maximum frame width x maximum frame height), then it fills the
		unoccupied areas (in the first frame) with zeros (black). For frames after the
		first frame that does not occupy the entire canvas, it uses the previous
		frame to fill the unoccupied areas.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The encoded image bytes.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  dtype: An optional `tf.DType` from: `tf.uint8, tf.uint16, tf.float32`. Defaults to `tf.uint8`.
		    The desired DType of the returned Tensor.
		  expand_animations: An optional `bool`. Defaults to `True`.
		    Controls the output shape of the returned op. If True, the returned op will
		    produce a 3-D tensor for PNG, JPEG, and BMP files; and a 4-D tensor for all
		    GIFs, whether animated or not. If, False, the returned op will produce a 3-D
		    tensor for all file types and will truncate animated GIFs to the first frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function DecodeImage(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?expand_animations:Dynamic, ?name:Dynamic):Dynamic;
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
		
		
		This op also supports decoding PNGs and non-animated GIFs since the interface is
		the same, though it is cleaner to use `tf.io.decode_image`.
		
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
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function DecodeJpeg(contents:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
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
		
		This op also supports decoding JPEGs and non-animated GIFs since the interface
		is the same, though it is cleaner to use `tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The PNG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  dtype: An optional `tf.DType` from: `tf.uint8, tf.uint16`. Defaults to `tf.uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function DecodePng(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draw bounding boxes on a batch of images.
		
		Outputs a copy of `images` but draws on top of the pixels zero or more bounding
		boxes specified by the locations in `boxes`. The coordinates of the each
		bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example, if an image is 100 x 200 pixels (height x width) and the bounding
		box is `[0.1, 0.2, 0.5, 0.9]`, the upper-left and bottom-right coordinates of
		the bounding box will be `(40, 10)` to `(180, 50)` (in (x,y) coordinates).
		
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
	**/
	static public function DrawBoundingBoxes(images:Dynamic, boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draw bounding boxes on a batch of images.
		
		Outputs a copy of `images` but draws on top of the pixels zero or more bounding
		boxes specified by the locations in `boxes`. The coordinates of the each
		bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example, if an image is 100 x 200 pixels (height x width) and the bounding
		box is `[0.1, 0.2, 0.5, 0.9]`, the upper-left and bottom-right coordinates of
		the bounding box will be `(40, 10)` to `(100, 50)` (in (x,y) coordinates).
		
		Parts of the bounding box may fall outside the image.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D with shape `[batch, height, width, depth]`. A batch of images.
		  boxes: A `Tensor` of type `float32`.
		    3-D with shape `[batch, num_bounding_boxes, 4]` containing bounding
		    boxes.
		  colors: A `Tensor` of type `float32`.
		    2-D. A list of RGBA colors to cycle through for the boxes.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function DrawBoundingBoxesV2(images:Dynamic, boxes:Dynamic, colors:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor` of type `string`.
	**/
	static public function EncodeJpeg(image:Dynamic, ?format:Dynamic, ?quality:Dynamic, ?progressive:Dynamic, ?optimize_size:Dynamic, ?chroma_downsampling:Dynamic, ?density_unit:Dynamic, ?x_density:Dynamic, ?y_density:Dynamic, ?xmp_metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		JPEG encode input image with provided compression quality.
		
		`image` is a 3-D uint8 Tensor of shape `[height, width, channels]`.
		`quality` is an int32 jpeg compression quality value between 0 and 100.
		
		Args:
		  images: A `Tensor` of type `uint8`. Images to adjust.  At least 3-D.
		  quality: A `Tensor` of type `int32`. An int quality to encode to.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function EncodeJpegVariableQuality(images:Dynamic, quality:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor` of type `string`.
	**/
	static public function EncodePng(image:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
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
		    the y, x locations of the center of each window.
		  centered: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are centered relative to
		    the image, in which case the (0, 0) offset is relative to the center
		    of the input images. If false, the (0,0) offset corresponds to the
		    upper left corner of the input images.
		  normalized: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are normalized.
		  uniform_noise: An optional `bool`. Defaults to `True`.
		    indicates if the noise should be generated using a
		    uniform distribution or a Gaussian distribution.
		  noise: An optional `string`. Defaults to `"uniform"`.
		    indicates if the noise should `uniform`, `gaussian`, or
		    `zero`. The default is `uniform` which means the noise type
		    will be decided by `uniform_noise`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ExtractGlimpse(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?noise:Dynamic, ?name:Dynamic):Dynamic;
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
		    the y, x locations of the center of each window.
		  centered: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are centered relative to
		    the image, in which case the (0, 0) offset is relative to the center
		    of the input images. If false, the (0,0) offset corresponds to the
		    upper left corner of the input images.
		  normalized: An optional `bool`. Defaults to `True`.
		    indicates if the offset coordinates are normalized.
		  uniform_noise: An optional `bool`. Defaults to `True`.
		    indicates if the noise should be generated using a
		    uniform distribution or a Gaussian distribution.
		  noise: An optional `string`. Defaults to `"uniform"`.
		    indicates if the noise should `uniform`, `gaussian`, or
		    `zero`. The default is `uniform` which means the noise type
		    will be decided by `uniform_noise`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ExtractGlimpseV2(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?noise:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract the shape information of a JPEG-encoded image.
		
		This op only parses the image header, so it is much faster than DecodeJpeg.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The JPEG-encoded image.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		    (Optional) The output type of the operation (int32 or int64).
		    Defaults to int32.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function ExtractJpegShape(contents:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This op produces Region of Interests from given bounding boxes(bbox_deltas) encoded wrt anchors according to eq.2 in arXiv:1506.01497
		
		      The op selects top `pre_nms_topn` scoring boxes, decodes them with respect to anchors,
		      applies non-maximal suppression on overlapping boxes with higher than
		      `nms_threshold` intersection-over-union (iou) value, discarding boxes where shorter
		      side is less than `min_size`.
		      Inputs:
		      `scores`: A 4D tensor of shape [Batch, Height, Width, Num Anchors] containing the scores per anchor at given position
		      `bbox_deltas`: is a tensor of shape [Batch, Height, Width, 4 x Num Anchors] boxes encoded to each anchor
		      `anchors`: A 1D tensor of shape [4 x Num Anchors], representing the anchors.
		      Outputs:
		      `rois`: output RoIs, a 3D tensor of shape [Batch, post_nms_topn, 4], padded by 0 if less than post_nms_topn candidates found.
		      `roi_probabilities`: probability scores of each roi in 'rois', a 2D tensor of shape [Batch,post_nms_topn], padded with 0 if needed, sorted by scores.
		
		Args:
		  scores: A `Tensor` of type `float32`.
		    A 4-D float tensor of shape `[num_images, height, width, num_achors]` containing scores of the boxes for given anchors, can be unsorted.
		  bbox_deltas: A `Tensor` of type `float32`.
		    A 4-D float tensor of shape `[num_images, height, width, 4 x num_anchors]`. encoding boxes with respec to each anchor.
		    Coordinates are given in the form [dy, dx, dh, dw].
		  image_info: A `Tensor` of type `float32`.
		    A 2-D float tensor of shape `[num_images, 5]` containing image information Height, Width, Scale.
		  anchors: A `Tensor` of type `float32`.
		    A 2-D float tensor of shape `[num_anchors, 4]` describing the anchor boxes. Boxes are formatted in the form [y1, x1, y2, x2].
		  nms_threshold: A `Tensor` of type `float32`.
		    A scalar float tensor for non-maximal-suppression threshold.
		  pre_nms_topn: A `Tensor` of type `int32`.
		    A scalar int tensor for the number of top scoring boxes to be used as input.
		  min_size: A `Tensor` of type `float32`.
		    A scalar float tensor. Any box that has a smaller size than min_size will be discarded.
		  post_nms_topn: An optional `int`. Defaults to `300`.
		    An integer. Maximum number of rois in the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (rois, roi_probabilities).
		
		  rois: A `Tensor` of type `float32`.
		  roi_probabilities: A `Tensor` of type `float32`.
	**/
	static public function GenerateBoundingBoxProposals(scores:Dynamic, bbox_deltas:Dynamic, image_info:Dynamic, anchors:Dynamic, nms_threshold:Dynamic, pre_nms_topn:Dynamic, min_size:Dynamic, ?post_nms_topn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert one or more images from HSV to RGB.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the RGB
		value of the pixels. The output is only well defined if the value in `images`
		are in `[0,1]`.
		
		See `rgb_to_hsv` for a description of the HSV encoding.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    1-D or higher rank. HSV data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function HSVToRGB(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to 0.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  transforms: A `Tensor` of type `float32`.
		    2-D Tensor, `[batch, 8]` or `[1, 8]` matrix, where each row corresponds to a 3 x 3
		    projective transformation matrix, with the last entry assumed to be 1. If there
		    is one row, the same transformation will be applied to all images.
		  output_shape: A `Tensor` of type `int32`.
		    1-D Tensor [new_height, new_width].
		  interpolation: A `string`. Interpolation method, "NEAREST" or "BILINEAR".
		  fill_mode: An optional `string`. Defaults to `"CONSTANT"`.
		    Fill mode, "REFLECT", "WRAP", or "CONSTANT".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function ImageProjectiveTransformV2(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, interpolation:Dynamic, ?fill_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to fill_value.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  transforms: A `Tensor` of type `float32`.
		    2-D Tensor, `[batch, 8]` or `[1, 8]` matrix, where each row corresponds to a 3 x 3
		    projective transformation matrix, with the last entry assumed to be 1. If there
		    is one row, the same transformation will be applied to all images.
		  output_shape: A `Tensor` of type `int32`.
		    1-D Tensor [new_height, new_width].
		  fill_value: A `Tensor` of type `float32`.
		    float, the value to be filled when fill_mode is constant".
		  interpolation: A `string`. Interpolation method, "NEAREST" or "BILINEAR".
		  fill_mode: An optional `string`. Defaults to `"CONSTANT"`.
		    Fill mode, "REFLECT", "WRAP", "CONSTANT", or "NEAREST".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function ImageProjectiveTransformV3(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, fill_value:Dynamic, interpolation:Dynamic, ?fill_mode:Dynamic, ?name:Dynamic):Dynamic;
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
		using the `tf.gather operation`.  For example:
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
	**/
	static public function NonMaxSuppression(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?name:Dynamic):Dynamic;
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
		using the `tf.gather operation`.  For example:
		
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function NonMaxSuppressionV2(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `iou_threshold`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function NonMaxSuppressionV3(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `iou_threshold`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  pad_to_max_output_size: An optional `bool`. Defaults to `False`.
		    If true, the output `selected_indices` is padded to be of length
		    `max_output_size`. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (selected_indices, valid_outputs).
		
		  selected_indices: A `Tensor` of type `int32`.
		  valid_outputs: A `Tensor` of type `int32`.
	**/
	static public function NonMaxSuppressionV4(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		This op also supports a Soft-NMS (with Gaussian weighting) mode (c.f.
		Bodla et al, https://arxiv.org/abs/1704.04503) where boxes reduce the score
		of other overlapping boxes instead of directly causing them to be pruned.
		To enable this Soft-NMS mode, set the `soft_nms_sigma` parameter to be
		larger than 0.
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  soft_nms_sigma: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the sigma parameter for Soft NMS; see Bodla et
		    al (c.f. https://arxiv.org/abs/1704.04503).  When `soft_nms_sigma=0.0` (which
		    is default), we fall back to standard (hard) NMS.
		  pad_to_max_output_size: An optional `bool`. Defaults to `False`.
		    If true, the output `selected_indices` is padded to be of length
		    `max_output_size`. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (selected_indices, selected_scores, valid_outputs).
		
		  selected_indices: A `Tensor` of type `int32`.
		  selected_scores: A `Tensor`. Has the same type as `boxes`.
		  valid_outputs: A `Tensor` of type `int32`.
	**/
	static public function NonMaxSuppressionV5(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, soft_nms_sigma:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high overlaps
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed. N-by-n overlap values are supplied as square matrix,
		which allows for defining a custom overlap criterium (eg. intersection over union,
		intersection over area, etc.).
		
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		
		  selected_indices = tf.image.non_max_suppression_with_overlaps(
		      overlaps, scores, max_output_size, overlap_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  overlaps: A `Tensor` of type `float32`.
		    A 2-D float tensor of shape `[num_boxes, num_boxes]` representing
		    the n-by-n box overlap values.
		  scores: A `Tensor` of type `float32`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  overlap_threshold: A `Tensor` of type `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too.
		  score_threshold: A `Tensor` of type `float32`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function NonMaxSuppressionWithOverlaps(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, overlap_threshold:Dynamic, score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize quantized `images` to `size` using quantized bilinear interpolation.
		
		Input images and output images must be quantized types.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `quint8`, `qint32`, `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (resized_images, out_min, out_max).
		
		  resized_images: A `Tensor`. Has the same type as `images`.
		  out_min: A `Tensor` of type `float32`.
		  out_max: A `Tensor` of type `float32`.
	**/
	static public function QuantizedResizeBilinear(images:Dynamic, size:Dynamic, min:Dynamic, max:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts one or more images from RGB to HSV.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the HSV
		value of the pixels. The output is only well defined if the value in `images`
		are in `[0,1]`.
		
		`output[..., 0]` contains hue, `output[..., 1]` contains saturation, and
		`output[..., 2]` contains value. All HSV values are in `[0,1]`. A hue of 0
		corresponds to pure red, hue 1/3 is pure green, and 2/3 is pure blue.
		
		Usage Example:
		
		>>> blue_image = tf.stack([
		...    tf.zeros([5,5]),
		...    tf.zeros([5,5]),
		...    tf.ones([5,5])],
		...    axis=-1)
		>>> blue_hsv_image = tf.image.rgb_to_hsv(blue_image)
		>>> blue_hsv_image[0,0].numpy()
		array([0.6666667, 1. , 1. ], dtype=float32)
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    1-D or higher rank. RGB data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function RGBToHSV(images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Randomly crop `image`.
		
		`size` is a 1-D int64 tensor with 2 elements representing the crop height and
		width.  The values must be non negative.
		
		This Op picks a random location in `image` and crops a `height` by `width`
		rectangle from that location.  The random location is picked so the cropped
		area will fit inside the original image.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `float32`, `float64`.
		    3-D of shape `[height, width, channels]`.
		  size: A `Tensor` of type `int64`.
		    1-D of length 2 containing: `crop_height`, `crop_width`..
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `image`.
	**/
	static public function RandomCrop(image:Dynamic, size:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using area interpolation.
		
		Input images can be of different types but output images are always float.
		
		The range of pixel values for the output image might be slightly different
		from the range for the input image because of limited numerical precision.
		To guarantee an output range, for example `[0.0, 1.0]`, apply
		`tf.clip_by_value` to the output.
		
		Each output pixel is computed by first transforming the pixel's footprint into
		the input tensor and then averaging the pixels that intersect the footprint. An
		input pixel's contribution to the average is weighted by the fraction of its
		area that intersects the footprint.  This is the same as OpenCV's INTER_AREA.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ResizeArea(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using bicubic interpolation.
		
		Input images can be of different types but output images are always float.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ResizeBicubic(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of bicubic interpolation.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  original_image: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    4-D with shape `[batch, orig_height, orig_width, channels]`,
		    The image tensor that was resized.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `original_image`.
	**/
	static public function ResizeBicubicGrad(grads:Dynamic, original_image:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using bilinear interpolation.
		
		Input images can be of different types but output images are always float.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ResizeBilinear(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of bilinear interpolation.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  original_image: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`, `half`, `float64`.
		    4-D with shape `[batch, orig_height, orig_width, channels]`,
		    The image tensor that was resized.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `original_image`.
	**/
	static public function ResizeBilinearGrad(grads:Dynamic, original_image:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using nearest neighbor interpolation.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function ResizeNearestNeighbor(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of nearest neighbor interpolation.
		
		Args:
		  grads: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int32`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `orig_height, orig_width`. The
		    original input size.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grads`.
	**/
	static public function ResizeNearestNeighborGrad(grads:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
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
		image. The latter may be supplied to `tf.image.draw_bounding_boxes` to visualize
		what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example,
		
		```python
		    # Generate a single distorted bounding box.
		    begin, size, bbox_for_draw = tf.image.sample_distorted_bounding_box(
		        tf.shape(image),
		        bounding_boxes=bounding_boxes)
		
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
		    fraction of any bounding box supplied. The value of this parameter should be
		    non-negative. In the case of 0, the cropped area does not need to overlap
		    any of the bounding boxes supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75, 1.33]`.
		    The cropped area of the image must have an aspect ratio =
		    width / height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`.
		    The cropped area of the image must contain a fraction of the
		    supplied image within this range.
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
		
		  begin: A `Tensor`. Has the same type as `image_size`.
		  size: A `Tensor`. Has the same type as `image_size`.
		  bboxes: A `Tensor` of type `float32`.
	**/
	static public function SampleDistortedBoundingBox(image_size:Dynamic, bounding_boxes:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?min_object_covered:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
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
		image. The latter may be supplied to `tf.image.draw_bounding_boxes` to visualize
		what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		height of the underlying image.
		
		For example,
		
		```python
		    # Generate a single distorted bounding box.
		    begin, size, bbox_for_draw = tf.image.sample_distorted_bounding_box(
		        tf.shape(image),
		        bounding_boxes=bounding_boxes)
		
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
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`.
		    1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`.
		    3-D with shape `[batch, N, 4]` describing the N bounding boxes
		    associated with the image.
		  min_object_covered: A `Tensor` of type `float32`.
		    The cropped area of the image must contain at least this
		    fraction of any bounding box supplied. The value of this parameter should be
		    non-negative. In the case of 0, the cropped area does not need to overlap
		    any of the bounding boxes supplied.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to non-zero, the random number
		    generator is seeded by the given `seed`.  Otherwise, it is seeded by a random
		    seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75, 1.33]`.
		    The cropped area of the image must have an aspect ratio =
		    width / height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`.
		    The cropped area of the image must contain a fraction of the
		    supplied image within this range.
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
		
		  begin: A `Tensor`. Has the same type as `image_size`.
		  size: A `Tensor`. Has the same type as `image_size`.
		  bboxes: A `Tensor` of type `float32`.
	**/
	static public function SampleDistortedBoundingBoxV2(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  size: A `Tensor` of type `int32`.
		  scale: A `Tensor` of type `float32`.
		  translation: A `Tensor` of type `float32`.
		  kernel_type: An optional `string`. Defaults to `"lanczos3"`.
		  antialias: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function ScaleAndTranslate(images:Dynamic, size:Dynamic, scale:Dynamic, translation:Dynamic, ?kernel_type:Dynamic, ?antialias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  grads: A `Tensor`. Must be one of the following types: `float32`.
		  original_image: A `Tensor`. Must have the same type as `grads`.
		  scale: A `Tensor` of type `float32`.
		  translation: A `Tensor` of type `float32`.
		  kernel_type: An optional `string`. Defaults to `"lanczos3"`.
		  antialias: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grads`.
	**/
	static public function ScaleAndTranslateGrad(grads:Dynamic, original_image:Dynamic, scale:Dynamic, translation:Dynamic, ?kernel_type:Dynamic, ?antialias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate a randomly distorted bounding box for an image deterministically.
		
		Bounding box annotations are often supplied in addition to ground-truth labels
		in image recognition or object localization tasks. A common technique for
		training such a system is to randomly distort an image while preserving its
		content, i.e. *data augmentation*. This Op, given the same `seed`,
		deterministically outputs a randomly distorted localization of an object, i.e.
		bounding box, given an `image_size`, `bounding_boxes` and a series of
		constraints.
		
		The output of this Op is a single bounding box that may be used to crop the
		original image. The output is returned as 3 tensors: `begin`, `size` and
		`bboxes`. The first 2 tensors can be fed directly into `tf.slice` to crop the
		image. The latter may be supplied to `tf.image.draw_bounding_boxes` to visualize
		what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`. The
		bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
		the height of the underlying image.
		
		The output of this Op is guaranteed to be the same given the same `seed` and is
		independent of how many times the function is called, and independent of global
		seed settings (e.g. `tf.random.set_seed`).
		
		Example usage:
		
		>>> image = np.array([[[1], [2], [3]], [[4], [5], [6]], [[7], [8], [9]]])
		>>> bbox = tf.constant(
		...   [0.0, 0.0, 1.0, 1.0], dtype=tf.float32, shape=[1, 1, 4])
		>>> seed = (1, 2)
		>>> # Generate a single distorted bounding box.
		>>> bbox_begin, bbox_size, bbox_draw = (
		...   tf.image.stateless_sample_distorted_bounding_box(
		...     tf.shape(image), bounding_boxes=bbox, seed=seed))
		>>> # Employ the bounding box to distort the image.
		>>> tf.slice(image, bbox_begin, bbox_size)
		<tf.Tensor: shape=(2, 2, 1), dtype=int64, numpy=
		array([[[1],
		        [2]],
		       [[4],
		        [5]]])>
		>>> # Draw the bounding box in an image summary.
		>>> colors = np.array([[1.0, 0.0, 0.0], [0.0, 0.0, 1.0]])
		>>> tf.image.draw_bounding_boxes(
		...   tf.expand_dims(tf.cast(image, tf.float32),0), bbox_draw, colors)
		<tf.Tensor: shape=(1, 3, 3, 1), dtype=float32, numpy=
		array([[[[1.],
		         [1.],
		         [3.]],
		        [[1.],
		         [1.],
		         [6.]],
		        [[7.],
		         [8.],
		         [9.]]]], dtype=float32)>
		
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
		  min_object_covered: A `Tensor` of type `float32`.
		    The cropped area of the image must contain at least this
		    fraction of any bounding box supplied. The value of this parameter should be
		    non-negative. In the case of 0, the cropped area does not need to overlap
		    any of the bounding boxes supplied.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[2]`. The seed to the random number generator. Must have dtype
		    `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75, 1.33]`.
		    The cropped area of the image must have an aspect ratio =
		    width / height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`.
		    The cropped area of the image must contain a fraction of the
		    supplied image within this range.
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
		
		  begin: A `Tensor`. Has the same type as `image_size`.
		  size: A `Tensor`. Has the same type as `image_size`.
		  bboxes: A `Tensor` of type `float32`.
	**/
	static public function StatelessSampleDistortedBoundingBox(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, seed:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that we are working with a properly shaped image.
		
		Args:
		  image: 3-D Tensor of shape [height, width, channels]
		  require_static: If `True`, requires that all dimensions of `image` are known
		    and non-zero.
		
		Raises:
		  ValueError: if `image.shape` is not a 3-vector.
		
		Returns:
		  An empty list, if `image` has fully defined dimensions. Otherwise, a list
		  containing an assert op is returned.
	**/
	static public function _Check3DImage(image:Dynamic, ?require_static:Dynamic):Dynamic;
	static public var _IMAGE_DTYPES : Dynamic;
	/**
		Returns the dimensions of an image tensor.
		
		Args:
		  image: A rank-D Tensor. For 3-D  of shape: `[height, width, channels]`.
		  rank: The expected rank of the image
		
		Returns:
		  A list of corresponding to the dimensions of the
		  input image.  Dimensions that are statically known are python integers,
		  otherwise, they are integer scalar tensors.
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
		Computes the gradient for ImageProjectiveTransform.
	**/
	static public function _image_projective_transform_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Computes the gradient for ImageProjectiveTransform.
	**/
	static public function _image_projective_transform_v3_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adjust the brightness of RGB or Grayscale images.
		
		This is a convenience method that converts RGB images to float
		representation, adjusts their brightness, and then converts them back to the
		original data type. If several adjustments are chained, it is advisable to
		minimize the number of redundant conversions.
		
		The value `delta` is added to all components of the tensor `image`. `image` is
		converted to `float` and scaled appropriately if it is in fixed-point
		representation, and `delta` is converted to the same data type. For regular
		images, `delta` should be in the range `(-1,1)`, as it is added to the image
		in floating point representation, where pixel values are in the `[0,1)` range.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_brightness(x, delta=0.1)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 1.1,  2.1,  3.1],
		        [ 4.1,  5.1,  6.1]],
		       [[ 7.1,  8.1,  9.1],
		        [10.1, 11.1, 12.1]]], dtype=float32)>
		
		Args:
		  image: RGB image or images to adjust.
		  delta: A scalar. Amount to add to the pixel values.
		
		Returns:
		  A brightness-adjusted tensor of the same shape and type as `image`.
	**/
	static public function adjust_brightness(image:Dynamic, delta:Dynamic):Dynamic;
	/**
		Adjust contrast of RGB or grayscale images.
		
		This is a convenience method that converts RGB images to float
		representation, adjusts their contrast, and then converts them back to the
		original data type. If several adjustments are chained, it is advisable to
		minimize the number of redundant conversions.
		
		`images` is a tensor of at least 3 dimensions.  The last 3 dimensions are
		interpreted as `[height, width, channels]`.  The other dimensions only
		represent a collection of images, such as `[batch, height, width, channels].`
		
		Contrast is adjusted independently for each channel of each image.
		
		For each channel, this Op computes the mean of the image pixels in the
		channel and then adjusts each component `x` of each pixel to
		`(x - mean) * contrast_factor + mean`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_contrast(x, 2.)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[-3.5, -2.5, -1.5],
		        [ 2.5,  3.5,  4.5]],
		       [[ 8.5,  9.5, 10.5],
		        [14.5, 15.5, 16.5]]], dtype=float32)>
		
		Args:
		  images: Images to adjust.  At least 3-D.
		  contrast_factor: A float multiplier for adjusting contrast.
		
		Returns:
		  The contrast-adjusted image or images.
	**/
	static public function adjust_contrast(images:Dynamic, contrast_factor:Dynamic):Dynamic;
	static public function adjust_contrast_eager_fallback(images:Dynamic, contrast_factor:Dynamic, min_value:Dynamic, max_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adjust the contrast of one or more images.
		
		`images` is a tensor of at least 3 dimensions.  The last 3 dimensions are
		interpreted as `[height, width, channels]`.  The other dimensions only
		represent a collection of images, such as `[batch, height, width, channels].`
		
		Contrast is adjusted independently for each channel of each image.
		
		For each channel, the Op first computes the mean of the image pixels in the
		channel and then adjusts each component of each pixel to
		`(x - mean) * contrast_factor + mean`.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    Images to adjust.  At least 3-D.
		  contrast_factor: A `Tensor` of type `float32`.
		    A float multiplier for adjusting contrast.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function adjust_contrastv2(images:Dynamic, contrast_factor:Dynamic, ?name:Dynamic):Dynamic;
	static public function adjust_contrastv2_eager_fallback(images:Dynamic, contrast_factor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs [Gamma Correction](http://en.wikipedia.org/wiki/Gamma_correction).
		
		on the input image.
		
		Also known as Power Law Transform. This function converts the
		input images at first to float representation, then transforms them
		pixelwise according to the equation `Out = gain * In**gamma`,
		and then converts the back to the original data type.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_gamma(x, 0.2)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[1.       , 1.1486983, 1.2457309],
		        [1.319508 , 1.3797297, 1.4309691]],
		       [[1.4757731, 1.5157166, 1.5518456],
		        [1.5848932, 1.6153942, 1.6437519]]], dtype=float32)>
		
		Args:
		  image : RGB image or images to adjust.
		  gamma : A scalar or tensor. Non-negative real number.
		  gain  : A scalar or tensor. The constant multiplier.
		
		Returns:
		  A Tensor. A Gamma-adjusted tensor of the same shape and type as `image`.
		
		Raises:
		  ValueError: If gamma is negative.
		Notes:
		  For gamma greater than 1, the histogram will shift towards left and
		  the output image will be darker than the input image.
		  For gamma less than 1, the histogram will shift towards right and
		  the output image will be brighter than the input image.
		References:
		  [Wikipedia](http://en.wikipedia.org/wiki/Gamma_correction)
	**/
	static public function adjust_gamma(image:Dynamic, ?gamma:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		Adjust hue of RGB images.
		
		This is a convenience method that converts an RGB image to float
		representation, converts it to HSV, adds an offset to the
		hue channel, converts back to RGB and then back to the original
		data type. If several adjustments are chained it is advisable to minimize
		the number of redundant conversions.
		
		`image` is an RGB image.  The image hue is adjusted by converting the
		image(s) to HSV and rotating the hue channel (H) by
		`delta`.  The image is then converted back to RGB.
		
		`delta` must be in the interval `[-1, 1]`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_hue(x, 0.2)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 2.3999996,  1.       ,  3.       ],
		        [ 5.3999996,  4.       ,  6.       ]],
		      [[ 8.4      ,  7.       ,  9.       ],
		        [11.4      , 10.       , 12.       ]]], dtype=float32)>
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  delta: float.  How much to add to the hue channel.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Usage Example:
		
		>>> image = [[[1, 2, 3], [4, 5, 6]],
		...          [[7, 8, 9], [10, 11, 12]],
		...          [[13, 14, 15], [16, 17, 18]]]
		>>> image = tf.constant(image)
		>>> tf.image.adjust_hue(image, 0.2)
		<tf.Tensor: shape=(3, 2, 3), dtype=int32, numpy=
		array([[[ 2,  1,  3],
		      [ 5,  4,  6]],
		     [[ 8,  7,  9],
		      [11, 10, 12]],
		     [[14, 13, 15],
		      [17, 16, 18]]], dtype=int32)>
	**/
	static public function adjust_hue(image:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	static public function adjust_hue_eager_fallback(images:Dynamic, delta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adjust jpeg encoding quality of an image.
		
		This is a convenience method that converts an image to uint8 representation,
		encodes it to jpeg with `jpeg_quality`, decodes it, and then converts back
		to the original data type.
		
		`jpeg_quality` must be in the interval `[0, 100]`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_jpeg_quality(x, 75)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[1., 1., 1.],
		        [1., 1., 1.]],
		       [[1., 1., 1.],
		        [1., 1., 1.]]], dtype=float32)>
		
		Args:
		  image: 3D image. The size of the last dimension must be None, 1 or 3.
		  jpeg_quality: Python int or Tensor of type int32. jpeg encoding quality.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image, same shape and DType as `image`.
		
		Raises:
		  InvalidArgumentError: quality must be in [0,100]
		  InvalidArgumentError: image must have 1 or 3 channels
	**/
	static public function adjust_jpeg_quality(image:Dynamic, jpeg_quality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adjust saturation of RGB images.
		
		This is a convenience method that converts RGB images to float
		representation, converts them to HSV, adds an offset to the
		saturation channel, converts back to RGB and then back to the original
		data type. If several adjustments are chained it is advisable to minimize
		the number of redundant conversions.
		
		`image` is an RGB image or images.  The image saturation is adjusted by
		converting the images to HSV and multiplying the saturation (S) channel by
		`saturation_factor` and clipping. The images are then converted back to RGB.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.adjust_saturation(x, 0.5)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 2. ,  2.5,  3. ],
		        [ 5. ,  5.5,  6. ]],
		       [[ 8. ,  8.5,  9. ],
		        [11. , 11.5, 12. ]]], dtype=float32)>
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  saturation_factor: float. Factor to multiply the saturation by.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  InvalidArgumentError: input must have 3 channels
	**/
	static public function adjust_saturation(image:Dynamic, saturation_factor:Dynamic, ?name:Dynamic):Dynamic;
	static public function adjust_saturation_eager_fallback(images:Dynamic, scale:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0],
		...       [7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]],
		...     [[13.0, 14.0, 15.0],
		...       [16.0, 17.0, 18.0],
		...       [19.0, 20.0, 21.0],
		...       [22.0, 23.0, 24.0]],
		...     [[25.0, 26.0, 27.0],
		...       [28.0, 29.0, 30.0],
		...       [31.0, 32.0, 33.0],
		...       [34.0, 35.0, 36.0]],
		...     [[37.0, 38.0, 39.0],
		...       [40.0, 41.0, 42.0],
		...       [43.0, 44.0, 45.0],
		...       [46.0, 47.0, 48.0]]]
		>>> tf.image.central_crop(x, 0.5)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[16., 17., 18.],
		        [19., 20., 21.]],
		       [[28., 29., 30.],
		        [31., 32., 33.]]], dtype=float32)>
		
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
		Greedily selects a subset of bounding boxes in descending order of score.
		
		This operation performs non_max_suppression on the inputs per batch, across
		all classes.
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system. Also note that
		this algorithm is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is the final boxes, scores and classes tensor
		returned after performing non_max_suppression.
		
		Args:
		  boxes: A 4-D float `Tensor` of shape `[batch_size, num_boxes, q, 4]`. If `q`
		    is 1 then same boxes are used for all classes otherwise, if `q` is equal
		    to number of classes, class-specific boxes are used.
		  scores: A 3-D float `Tensor` of shape `[batch_size, num_boxes, num_classes]`
		    representing a single score corresponding to each box (each row of boxes).
		  max_output_size_per_class: A scalar integer `Tensor` representing the
		    maximum number of boxes to be selected by non-max suppression per class
		  max_total_size: A int32 scalar representing maximum number of boxes retained
		    over all classes. Note that setting this value to a large number may
		    result in OOM error depending on the system workload.
		  iou_threshold: A float representing the threshold for deciding whether boxes
		    overlap too much with respect to IOU.
		  score_threshold: A float representing the threshold for deciding when to
		    remove boxes based on score.
		  pad_per_class: If false, the output nmsed boxes, scores and classes are
		    padded/clipped to `max_total_size`. If true, the output nmsed boxes,
		    scores and classes are padded to be of length
		    `max_size_per_class`*`num_classes`, unless it exceeds `max_total_size` in
		    which case it is clipped to `max_total_size`. Defaults to false.
		  clip_boxes: If true, the coordinates of output nmsed boxes will be clipped
		    to [0, 1]. If false, output the box coordinates as it is. Defaults to
		    true.
		  name: A name for the operation (optional).
		
		Returns:
		  'nmsed_boxes': A [batch_size, max_detections, 4] float32 tensor
		    containing the non-max suppressed boxes.
		  'nmsed_scores': A [batch_size, max_detections] float32 tensor containing
		    the scores for the boxes.
		  'nmsed_classes': A [batch_size, max_detections] float32 tensor
		    containing the class for boxes.
		  'valid_detections': A [batch_size] int32 tensor indicating the number of
		    valid detections per batch item. Only the top valid_detections[i] entries
		    in nms_boxes[i], nms_scores[i] and nms_class[i] are valid. The rest of the
		    entries are zero paddings.
	**/
	static public function combined_non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size_per_class:Dynamic, max_total_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?pad_per_class:Dynamic, ?clip_boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function combined_non_max_suppression_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size_per_class:Dynamic, max_total_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, pad_per_class:Dynamic, clip_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert `image` to `dtype`, scaling its values if needed.
		
		The operation supports data types (for `image` and `dtype`) of
		`uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`,
		`float16`, `float32`, `float64`, `bfloat16`.
		
		Images that are represented using floating point values are expected to have
		values in the range [0,1). Image data stored in integer data types are
		expected to have values in the range `[0,MAX]`, where `MAX` is the largest
		positive representable number for the data type.
		
		This op converts between data types, scaling the values appropriately before
		casting.
		
		Usage Example:
		
		>>> x = [[[1, 2, 3], [4, 5, 6]],
		...      [[7, 8, 9], [10, 11, 12]]]
		>>> x_int8 = tf.convert_to_tensor(x, dtype=tf.int8)
		>>> tf.image.convert_image_dtype(x_int8, dtype=tf.float16, saturate=False)
		<tf.Tensor: shape=(2, 2, 3), dtype=float16, numpy=
		array([[[0.00787, 0.01575, 0.02362],
		        [0.0315 , 0.03937, 0.04724]],
		       [[0.0551 , 0.063  , 0.07086],
		        [0.07874, 0.0866 , 0.0945 ]]], dtype=float16)>
		
		Converting integer types to floating point types returns normalized floating
		point values in the range [0, 1); the values are normalized by the `MAX` value
		of the input dtype. Consider the following two examples:
		
		>>> a = [[[1], [2]], [[3], [4]]]
		>>> a_int8 = tf.convert_to_tensor(a, dtype=tf.int8)
		>>> tf.image.convert_image_dtype(a_int8, dtype=tf.float32)
		<tf.Tensor: shape=(2, 2, 1), dtype=float32, numpy=
		array([[[0.00787402],
		        [0.01574803]],
		       [[0.02362205],
		        [0.03149606]]], dtype=float32)>
		
		>>> a_int32 = tf.convert_to_tensor(a, dtype=tf.int32)
		>>> tf.image.convert_image_dtype(a_int32, dtype=tf.float32)
		<tf.Tensor: shape=(2, 2, 1), dtype=float32, numpy=
		array([[[4.6566129e-10],
		        [9.3132257e-10]],
		       [[1.3969839e-09],
		        [1.8626451e-09]]], dtype=float32)>
		
		Despite having identical values of `a` and output dtype of `float32`, the
		outputs differ due to the different input dtypes (`int8` vs. `int32`). This
		is, again, because the values are normalized by the `MAX` value of the input
		dtype.
		
		Note that converting floating point values to integer type may lose precision.
		In the example below, an image tensor `b` of dtype `float32` is converted to
		`int8` and back to `float32`. The final output, however, is different from
		the original input `b` due to precision loss.
		
		>>> b = [[[0.12], [0.34]], [[0.56], [0.78]]]
		>>> b_float32 = tf.convert_to_tensor(b, dtype=tf.float32)
		>>> b_int8 = tf.image.convert_image_dtype(b_float32, dtype=tf.int8)
		>>> tf.image.convert_image_dtype(b_int8, dtype=tf.float32)
		<tf.Tensor: shape=(2, 2, 1), dtype=float32, numpy=
		array([[[0.11811024],
		        [0.33858266]],
		       [[0.5590551 ],
		        [0.77952754]]], dtype=float32)>
		
		Scaling up from an integer type (input dtype) to another integer type (output
		dtype) will not map input dtype's `MAX` to output dtype's `MAX` but converting
		back and forth should result in no change. For example, as shown below, the
		`MAX` value of int8 (=127) is not mapped to the `MAX` value of int16 (=32,767)
		but, when scaled back, we get the same, original values of `c`.
		
		>>> c = [[[1], [2]], [[127], [127]]]
		>>> c_int8 = tf.convert_to_tensor(c, dtype=tf.int8)
		>>> c_int16 = tf.image.convert_image_dtype(c_int8, dtype=tf.int16)
		>>> print(c_int16)
		tf.Tensor(
		[[[  256]
		  [  512]]
		 [[32512]
		  [32512]]], shape=(2, 2, 1), dtype=int16)
		>>> c_int8_back = tf.image.convert_image_dtype(c_int16, dtype=tf.int8)
		>>> print(c_int8_back)
		tf.Tensor(
		[[[  1]
		  [  2]]
		 [[127]
		  [127]]], shape=(2, 2, 1), dtype=int8)
		
		Scaling down from an integer type to another integer type can be a lossy
		conversion. Notice in the example below that converting `int16` to `uint8` and
		back to `int16` has lost precision.
		
		>>> d = [[[1000], [2000]], [[3000], [4000]]]
		>>> d_int16 = tf.convert_to_tensor(d, dtype=tf.int16)
		>>> d_uint8 = tf.image.convert_image_dtype(d_int16, dtype=tf.uint8)
		>>> d_int16_back = tf.image.convert_image_dtype(d_uint8, dtype=tf.int16)
		>>> print(d_int16_back)
		tf.Tensor(
		[[[ 896]
		  [1920]]
		 [[2944]
		  [3968]]], shape=(2, 2, 1), dtype=int16)
		
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
		
		Raises:
		  AttributeError: Raises an attribute error when dtype is neither
		  float nor integer
	**/
	static public function convert_image_dtype(image:Dynamic, dtype:Dynamic, ?saturate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts crops from the input image tensor and resizes them.
		
		Extracts crops from the input image tensor and resizes them using bilinear
		sampling or nearest neighbor sampling (possibly with aspect ratio change) to a
		common output size specified by `crop_size`. This is more general than the
		`crop_to_bounding_box` op which extracts a fixed size slice from the input image
		and does not allow resizing or aspect ratio change.
		
		Returns a tensor with `crops` from the input `image` at positions defined at the
		bounding box locations in `boxes`. The cropped boxes are all resized (with
		bilinear or nearest neighbor interpolation) to a fixed
		`size = [crop_height, crop_width]`. The result is a 4-D tensor
		`[num_boxes, crop_height, crop_width, depth]`. The resizing is corner aligned.
		In particular, if `boxes = [[0, 0, 1, 1]]`, the method will give identical
		results to using `tf.image.resize_bilinear()` or
		`tf.image.resize_nearest_neighbor()`(depends on the `method` argument) with
		`align_corners=True`.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1]` in image height coordinates. We do allow `y1` > `y2`, in
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
		  method: An optional `string` from: `"bilinear", "nearest"`. Defaults to `"bilinear"`.
		    A string specifying the sampling method for resizing. It can be either
		    `"bilinear"` or `"nearest"` and default to `"bilinear"`. Currently two sampling
		    methods are supported: Bilinear and Nearest Neighbor.
		  extrapolation_value: An optional `float`. Defaults to `0`.
		    Value used for extrapolation, when applicable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function crop_and_resize(image:Dynamic, boxes:Dynamic, box_ind:Dynamic, crop_size:Dynamic, ?method:Dynamic, ?extrapolation_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function crop_and_resize_eager_fallback(image:Dynamic, boxes:Dynamic, box_ind:Dynamic, crop_size:Dynamic, method:Dynamic, extrapolation_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of the crop_and_resize op wrt the input boxes tensor.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
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
		  A `Tensor` of type `float32`.
	**/
	static public function crop_and_resize_grad_boxes(grads:Dynamic, image:Dynamic, boxes:Dynamic, box_ind:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	static public function crop_and_resize_grad_boxes_eager_fallback(grads:Dynamic, image:Dynamic, boxes:Dynamic, box_ind:Dynamic, method:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  method: An optional `string` from: `"bilinear", "nearest"`. Defaults to `"bilinear"`.
		    A string specifying the interpolation method. Only 'bilinear' is
		    supported for now.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function crop_and_resize_grad_image(grads:Dynamic, boxes:Dynamic, box_ind:Dynamic, image_size:Dynamic, T:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	static public function crop_and_resize_grad_image_eager_fallback(grads:Dynamic, boxes:Dynamic, box_ind:Dynamic, image_size:Dynamic, T:Dynamic, method:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Extracts crops from the input image tensor and resizes them.
		
		Extracts crops from the input image tensor and resizes them using bilinear
		sampling or nearest neighbor sampling (possibly with aspect ratio change) to a
		common output size specified by `crop_size`. This is more general than the
		`crop_to_bounding_box` op which extracts a fixed size slice from the input image
		and does not allow resizing or aspect ratio change.
		
		Returns a tensor with `crops` from the input `image` at positions defined at the
		bounding box locations in `boxes`. The cropped boxes are all resized (with
		bilinear or nearest neighbor interpolation) to a fixed
		`size = [crop_height, crop_width]`. The result is a 4-D tensor
		`[num_boxes, crop_height, crop_width, depth]`. The resizing is corner aligned.
		In particular, if `boxes = [[0, 0, 1, 1]]`, the method will give identical
		results to using `tf.image.resize_bilinear()` or
		`tf.image.resize_nearest_neighbor()`(depends on the `method` argument) with
		`align_corners=True`.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A `Tensor` of type `float32`.
		    A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is specified
		    in normalized coordinates `[y1, x1, y2, x2]`. A normalized coordinate value of
		    `y` is mapped to the image coordinate at `y * (image_height - 1)`, so as the
		    `[0, 1]` interval of normalized image height is mapped to
		    `[0, image_height - 1]` in image height coordinates. We do allow `y1` > `y2`, in
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
		  method: An optional `string` from: `"bilinear", "nearest"`. Defaults to `"bilinear"`.
		    A string specifying the sampling method for resizing. It can be either
		    `"bilinear"` or `"nearest"` and default to `"bilinear"`. Currently two sampling
		    methods are supported: Bilinear and Nearest Neighbor.
		  extrapolation_value: An optional `float`. Defaults to `0`.
		    Value used for extrapolation, when applicable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function crop_and_resize_v1(image:Dynamic, boxes:Dynamic, ?box_ind:Dynamic, ?crop_size:Dynamic, ?method:Dynamic, ?extrapolation_value:Dynamic, ?name:Dynamic, ?box_indices:Dynamic):Dynamic;
	/**
		Extracts crops from the input image tensor and resizes them.
		
		Extracts crops from the input image tensor and resizes them using bilinear
		sampling or nearest neighbor sampling (possibly with aspect ratio change) to a
		common output size specified by `crop_size`. This is more general than the
		`crop_to_bounding_box` op which extracts a fixed size slice from the input
		image and does not allow resizing or aspect ratio change.
		
		Returns a tensor with `crops` from the input `image` at positions defined at
		the bounding box locations in `boxes`. The cropped boxes are all resized (with
		bilinear or nearest neighbor interpolation) to a fixed
		`size = [crop_height, crop_width]`. The result is a 4-D tensor
		`[num_boxes, crop_height, crop_width, depth]`. The resizing is corner aligned.
		In particular, if `boxes = [[0, 0, 1, 1]]`, the method will give identical
		results to using `tf.compat.v1.image.resize_bilinear()` or
		`tf.compat.v1.image.resize_nearest_neighbor()`(depends on the `method`
		argument) with
		`align_corners=True`.
		
		Args:
		  image: A 4-D tensor of shape `[batch, image_height, image_width, depth]`.
		    Both `image_height` and `image_width` need to be positive.
		  boxes: A 2-D tensor of shape `[num_boxes, 4]`. The `i`-th row of the tensor
		    specifies the coordinates of a box in the `box_ind[i]` image and is
		    specified in normalized coordinates `[y1, x1, y2, x2]`. A normalized
		    coordinate value of `y` is mapped to the image coordinate at `y *
		    (image_height - 1)`, so as the `[0, 1]` interval of normalized image
		    height is mapped to `[0, image_height - 1]` in image height coordinates.
		    We do allow `y1` > `y2`, in which case the sampled crop is an up-down
		    flipped version of the original image. The width dimension is treated
		    similarly. Normalized coordinates outside the `[0, 1]` range are allowed,
		    in which case we use `extrapolation_value` to extrapolate the input image
		    values.
		  box_indices: A 1-D tensor of shape `[num_boxes]` with int32 values in `[0,
		    batch)`. The value of `box_ind[i]` specifies the image that the `i`-th box
		    refers to.
		  crop_size: A 1-D tensor of 2 elements, `size = [crop_height, crop_width]`.
		    All cropped image patches are resized to this size. The aspect ratio of
		    the image content is not preserved. Both `crop_height` and `crop_width`
		    need to be positive.
		  method: An optional string specifying the sampling method for resizing. It
		    can be either `"bilinear"` or `"nearest"` and default to `"bilinear"`.
		    Currently two sampling methods are supported: Bilinear and Nearest
		      Neighbor.
		  extrapolation_value: An optional `float`. Defaults to `0.0`. Value used for
		    extrapolation, when applicable.
		  name: A name for the operation (optional).
		
		Returns:
		  A 4-D tensor of shape `[num_boxes, crop_height, crop_width, depth]`.
		
		Example:
		
		```python
		import tensorflow as tf
		BATCH_SIZE = 1
		NUM_BOXES = 5
		IMAGE_HEIGHT = 256
		IMAGE_WIDTH = 256
		CHANNELS = 3
		CROP_SIZE = (24, 24)
		
		image = tf.random.normal(shape=(BATCH_SIZE, IMAGE_HEIGHT, IMAGE_WIDTH,
		CHANNELS) )
		boxes = tf.random.uniform(shape=(NUM_BOXES, 4))
		box_indices = tf.random.uniform(shape=(NUM_BOXES,), minval=0,
		maxval=BATCH_SIZE, dtype=tf.int32)
		output = tf.image.crop_and_resize(image, boxes, box_indices, CROP_SIZE)
		output.shape  #=> (5, 24, 24, 3)
		```
	**/
	static public function crop_and_resize_v2(image:Dynamic, boxes:Dynamic, box_indices:Dynamic, crop_size:Dynamic, ?method:Dynamic, ?extrapolation_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Crops an `image` to a specified bounding box.
		
		This op cuts a rectangular bounding box out of `image`. The top-left corner
		of the bounding box is at `offset_height, offset_width` in `image`, and the
		lower-right corner is at
		`offset_height + target_height, offset_width + target_width`.
		
		Example Usage:
		
		>>> image = tf.constant(np.arange(1, 28, dtype=np.float32), shape=[3, 3, 3])
		>>> image[:,:,0] # print the first channel of the 3-D tensor
		<tf.Tensor: shape=(3, 3), dtype=float32, numpy=
		array([[ 1.,  4.,  7.],
		       [10., 13., 16.],
		       [19., 22., 25.]], dtype=float32)>
		>>> cropped_image = tf.image.crop_to_bounding_box(image, 0, 0, 2, 2)
		>>> cropped_image[:,:,0] # print the first channel of the cropped 3-D tensor
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[ 1.,  4.],
		       [10., 13.]], dtype=float32)>
		
		Args:
		  image: 4-D `Tensor` of shape `[batch, height, width, channels]` or 3-D
		    `Tensor` of shape `[height, width, channels]`.
		  offset_height: Vertical coordinate of the top-left corner of the bounding
		    box in `image`.
		  offset_width: Horizontal coordinate of the top-left corner of the bounding
		    box in `image`.
		  target_height: Height of the bounding box.
		  target_width: Width of the bounding box.
		
		Returns:
		  If `image` was 4-D, a 4-D `Tensor` of shape
		  `[batch, target_height, target_width, channels]`.
		  If `image` was 3-D, a 3-D `Tensor` of shape
		  `[target_height, target_width, channels]`.
		  It has the same dtype with `image`.
		
		Raises:
		  ValueError: `image` is not a 3-D or 4-D `Tensor`.
		  ValueError: `offset_width < 0` or `offset_height < 0`.
		  ValueError: `target_width <= 0` or `target_width <= 0`.
		  ValueError: `width < offset_width + target_width` or
		    `height < offset_height + target_height`.
	**/
	static public function crop_to_bounding_box(image:Dynamic, offset_height:Dynamic, offset_width:Dynamic, target_height:Dynamic, target_width:Dynamic):Dynamic;
	/**
		Decode and Crop a JPEG-encoded image to a uint8 tensor.
		
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
		
		
		It is equivalent to a combination of decode and crop, but much faster by only
		decoding partial jpeg image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The JPEG-encoded image.
		  crop_window: A `Tensor` of type `int32`.
		    1-D.  The crop window: [crop_y, crop_x, crop_height, crop_width].
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
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_and_crop_jpeg(contents:Dynamic, crop_window:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_and_crop_jpeg_eager_fallback(contents:Dynamic, crop_window:Dynamic, channels:Dynamic, ratio:Dynamic, fancy_upscaling:Dynamic, try_recover_truncated:Dynamic, acceptable_fraction:Dynamic, dct_method:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decode the first frame of a BMP-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the BMP-encoded image.
		*   3: output an RGB image.
		*   4: output an RGBA image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The BMP-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_bmp(contents:Dynamic, ?channels:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_bmp_eager_fallback(contents:Dynamic, channels:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decode the frame(s) of a GIF-encoded image to a uint8 tensor.
		
		GIF images with frame or transparency compression are not supported.
		On Linux and MacOS systems, convert animated GIFs from compressed to
		uncompressed by running:
		
		    convert $src.gif -coalesce $dst.gif
		
		This op also supports decoding JPEGs and PNGs, though it is cleaner to use
		`tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The GIF-encoded image.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_gif(contents:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_gif_eager_fallback(contents:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Function for `decode_bmp`, `decode_gif`, `decode_jpeg`, and `decode_png`.
		
		Detects whether an image is a BMP, GIF, JPEG, or PNG, and performs the
		appropriate operation to convert the input bytes `string` into a `Tensor`
		of type `dtype`.
		
		Note: `decode_gif` returns a 4-D array `[num_frames, height, width, 3]`, as
		opposed to `decode_bmp`, `decode_jpeg` and `decode_png`, which return 3-D
		arrays `[height, width, num_channels]`. Make sure to take this into account
		when constructing your graph if you are intermixing GIF files with BMP, JPEG,
		and/or PNG files. Alternately, set the `expand_animations` argument of this
		function to `False`, in which case the op will return 3-dimensional tensors
		and will truncate animated GIF files to the first frame.
		
		NOTE: If the first frame of an animated GIF does not occupy the entire
		canvas (maximum frame width x maximum frame height), then it fills the
		unoccupied areas (in the first frame) with zeros (black). For frames after the
		first frame that does not occupy the entire canvas, it uses the previous
		frame to fill the unoccupied areas.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The encoded image bytes.
		  channels: An optional `int`. Defaults to `0`. Number of color channels for
		    the decoded image.
		  dtype: The desired DType of the returned `Tensor`.
		  name: A name for the operation (optional)
		  expand_animations: An optional `bool`. Defaults to `True`. Controls the
		    shape of the returned op's output. If `True`, the returned op will produce
		    a 3-D tensor for PNG, JPEG, and BMP files; and a 4-D tensor for all GIFs,
		    whether animated or not. If, `False`, the returned op will produce a 3-D
		    tensor for all file types and will truncate animated GIFs to the first
		    frame.
		
		Returns:
		  `Tensor` with type `dtype` and a 3- or 4-dimensional shape, depending on
		  the file type and the value of the `expand_animations` parameter.
		
		Raises:
		  ValueError: On incorrect number of channels.
	**/
	static public function decode_image(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?expand_animations:Dynamic):Dynamic;
	static public function decode_image_eager_fallback(contents:Dynamic, channels:Dynamic, dtype:Dynamic, expand_animations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		
		This op also supports decoding PNGs and non-animated GIFs since the interface is
		the same, though it is cleaner to use `tf.io.decode_image`.
		
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
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_jpeg(contents:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_jpeg_eager_fallback(contents:Dynamic, channels:Dynamic, ratio:Dynamic, fancy_upscaling:Dynamic, try_recover_truncated:Dynamic, acceptable_fraction:Dynamic, dct_method:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		This op also supports decoding JPEGs and non-animated GIFs since the interface
		is the same, though it is cleaner to use `tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The PNG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  dtype: An optional `tf.DType` from: `tf.uint8, tf.uint16`. Defaults to `tf.uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function decode_png(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_png_eager_fallback(contents:Dynamic, channels:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Draw bounding boxes on a batch of images.
		
		Outputs a copy of `images` but draws on top of the pixels zero or more
		bounding boxes specified by the locations in `boxes`. The coordinates of the
		each bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`.
		The bounding box coordinates are floats in `[0.0, 1.0]` relative to the width
		and the height of the underlying image.
		
		For example, if an image is 100 x 200 pixels (height x width) and the bounding
		box is `[0.1, 0.2, 0.5, 0.9]`, the upper-left and bottom-right coordinates of
		the bounding box will be `(40, 10)` to `(180, 50)` (in (x,y) coordinates).
		
		Parts of the bounding box may fall outside the image.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D with shape `[batch, height, width, depth]`. A batch of images.
		  boxes: A `Tensor` of type `float32`. 3-D with shape `[batch,
		    num_bounding_boxes, 4]` containing bounding boxes.
		  name: A name for the operation (optional).
		  colors: A `Tensor` of type `float32`. 2-D. A list of RGBA colors to cycle
		    through for the boxes.
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		
		Usage Example:
		
		>>> # create an empty image
		>>> img = tf.zeros([1, 3, 3, 3])
		>>> # draw a box around the image
		>>> box = np.array([0, 0, 1, 1])
		>>> boxes = box.reshape([1, 1, 4])
		>>> # alternate between red and blue
		>>> colors = np.array([[1.0, 0.0, 0.0], [0.0, 0.0, 1.0]])
		>>> tf.image.draw_bounding_boxes(img, boxes, colors)
		<tf.Tensor: shape=(1, 3, 3, 3), dtype=float32, numpy=
		array([[[[1., 0., 0.],
		        [1., 0., 0.],
		        [1., 0., 0.]],
		        [[1., 0., 0.],
		        [0., 0., 0.],
		        [1., 0., 0.]],
		        [[1., 0., 0.],
		        [1., 0., 0.],
		        [1., 0., 0.]]]], dtype=float32)>
	**/
	static public function draw_bounding_boxes(images:Dynamic, boxes:Dynamic, ?name:Dynamic, ?colors:Dynamic):Dynamic;
	static public function draw_bounding_boxes_eager_fallback(images:Dynamic, boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Draw bounding boxes on a batch of images.
		
		Outputs a copy of `images` but draws on top of the pixels zero or more
		bounding boxes specified by the locations in `boxes`. The coordinates of the
		each bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`.
		The bounding box coordinates are floats in `[0.0, 1.0]` relative to the width
		and the height of the underlying image.
		
		For example, if an image is 100 x 200 pixels (height x width) and the bounding
		box is `[0.1, 0.2, 0.5, 0.9]`, the upper-left and bottom-right coordinates of
		the bounding box will be `(40, 10)` to `(180, 50)` (in (x,y) coordinates).
		
		Parts of the bounding box may fall outside the image.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D with shape `[batch, height, width, depth]`. A batch of images.
		  boxes: A `Tensor` of type `float32`. 3-D with shape `[batch,
		    num_bounding_boxes, 4]` containing bounding boxes.
		  colors: A `Tensor` of type `float32`. 2-D. A list of RGBA colors to cycle
		    through for the boxes.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		
		Usage Example:
		
		>>> # create an empty image
		>>> img = tf.zeros([1, 3, 3, 3])
		>>> # draw a box around the image
		>>> box = np.array([0, 0, 1, 1])
		>>> boxes = box.reshape([1, 1, 4])
		>>> # alternate between red and blue
		>>> colors = np.array([[1.0, 0.0, 0.0], [0.0, 0.0, 1.0]])
		>>> tf.image.draw_bounding_boxes(img, boxes, colors)
		<tf.Tensor: shape=(1, 3, 3, 3), dtype=float32, numpy=
		array([[[[1., 0., 0.],
		        [1., 0., 0.],
		        [1., 0., 0.]],
		        [[1., 0., 0.],
		        [0., 0., 0.],
		        [1., 0., 0.]],
		        [[1., 0., 0.],
		        [1., 0., 0.],
		        [1., 0., 0.]]]], dtype=float32)>
	**/
	static public function draw_bounding_boxes_v2(images:Dynamic, boxes:Dynamic, colors:Dynamic, ?name:Dynamic):Dynamic;
	static public function draw_bounding_boxes_v2_eager_fallback(images:Dynamic, boxes:Dynamic, colors:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  A `Tensor` of type `string`.
	**/
	static public function encode_jpeg(image:Dynamic, ?format:Dynamic, ?quality:Dynamic, ?progressive:Dynamic, ?optimize_size:Dynamic, ?chroma_downsampling:Dynamic, ?density_unit:Dynamic, ?x_density:Dynamic, ?y_density:Dynamic, ?xmp_metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function encode_jpeg_eager_fallback(image:Dynamic, format:Dynamic, quality:Dynamic, progressive:Dynamic, optimize_size:Dynamic, chroma_downsampling:Dynamic, density_unit:Dynamic, x_density:Dynamic, y_density:Dynamic, xmp_metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		JPEG encode input image with provided compression quality.
		
		`image` is a 3-D uint8 Tensor of shape `[height, width, channels]`.
		`quality` is an int32 jpeg compression quality value between 0 and 100.
		
		Args:
		  images: A `Tensor` of type `uint8`. Images to adjust.  At least 3-D.
		  quality: A `Tensor` of type `int32`. An int quality to encode to.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_jpeg_variable_quality(images:Dynamic, quality:Dynamic, ?name:Dynamic):Dynamic;
	static public function encode_jpeg_variable_quality_eager_fallback(images:Dynamic, quality:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		PNG-encode an image.
		
		`image` is a 3-D uint8 or uint16 Tensor of shape `[height, width, channels]`
		where `channels` is:
		
		*   1: for grayscale.
		*   2: for grayscale + alpha.
		*   3: for RGB.
		*   4: for RGBA.
		
		The ZLIB compression level, `compression`, can be -1 for the PNG-encoder
		default or a value from 0 to 9.  9 is the highest compression level,
		generating the smallest output, but is slower.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`.
		    3-D with shape `[height, width, channels]`.
		  compression: An optional `int`. Defaults to `-1`. Compression level.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_png(image:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	static public function encode_png_eager_fallback(image:Dynamic, compression:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Extracts a glimpse from the input tensor.
		
		Returns a set of windows called glimpses extracted at location
		`offsets` from the input tensor. If the windows only partially
		overlaps the inputs, the non-overlapping areas will be filled with
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
		
		Usage Example:
		
		>>> x = [[[[0.0],
		...           [1.0],
		...           [2.0]],
		...          [[3.0],
		...           [4.0],
		...           [5.0]],
		...          [[6.0],
		...           [7.0],
		...           [8.0]]]]
		>>> tf.compat.v1.image.extract_glimpse(x, size=(2, 2), offsets=[[1, 1]],
		...                                    centered=False, normalized=False)
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=float32, numpy=
		array([[[[0.],
		         [1.]],
		        [[3.],
		         [4.]]]], dtype=float32)>
		
		Args:
		  input: A `Tensor` of type `float32`. A 4-D float tensor of shape
		    `[batch_size, height, width, channels]`.
		  size: A `Tensor` of type `int32`. A 1-D tensor of 2 elements containing the
		    size of the glimpses to extract.  The glimpse height must be specified
		    first, following by the glimpse width.
		  offsets: A `Tensor` of type `float32`. A 2-D integer tensor of shape
		    `[batch_size, 2]` containing the y, x locations of the center of each
		    window.
		  centered: An optional `bool`. Defaults to `True`. indicates if the offset
		    coordinates are centered relative to the image, in which case the (0, 0)
		    offset is relative to the center of the input images. If false, the (0,0)
		    offset corresponds to the upper left corner of the input images.
		  normalized: An optional `bool`. Defaults to `True`. indicates if the offset
		    coordinates are normalized.
		  uniform_noise: An optional `bool`. Defaults to `True`. indicates if the
		    noise should be generated using a uniform distribution or a Gaussian
		    distribution.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function extract_glimpse(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?name:Dynamic):Dynamic;
	static public function extract_glimpse_eager_fallback(input:Dynamic, size:Dynamic, offsets:Dynamic, centered:Dynamic, normalized:Dynamic, uniform_noise:Dynamic, noise:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Extracts a glimpse from the input tensor.
		
		Returns a set of windows called glimpses extracted at location
		`offsets` from the input tensor. If the windows only partially
		overlaps the inputs, the non-overlapping areas will be filled with
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
		
		Usage Example:
		
		>>> x = [[[[0.0],
		...           [1.0],
		...           [2.0]],
		...          [[3.0],
		...           [4.0],
		...           [5.0]],
		...          [[6.0],
		...           [7.0],
		...           [8.0]]]]
		>>> tf.image.extract_glimpse(x, size=(2, 2), offsets=[[1, 1]],
		...                         centered=False, normalized=False)
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=float32, numpy=
		array([[[[4.],
		         [5.]],
		        [[7.],
		         [8.]]]], dtype=float32)>
		
		Args:
		  input: A `Tensor` of type `float32`. A 4-D float tensor of shape
		    `[batch_size, height, width, channels]`.
		  size: A `Tensor` of type `int32`. A 1-D tensor of 2 elements containing the
		    size of the glimpses to extract.  The glimpse height must be specified
		    first, following by the glimpse width.
		  offsets: A `Tensor` of type `float32`. A 2-D integer tensor of shape
		    `[batch_size, 2]` containing the y, x locations of the center of each
		    window.
		  centered: An optional `bool`. Defaults to `True`. indicates if the offset
		    coordinates are centered relative to the image, in which case the (0, 0)
		    offset is relative to the center of the input images. If false, the (0,0)
		    offset corresponds to the upper left corner of the input images.
		  normalized: An optional `bool`. Defaults to `True`. indicates if the offset
		    coordinates are normalized.
		  noise: An optional `string`. Defaults to `uniform`. indicates if the noise
		    should be `uniform` (uniform distribution), `gaussian` (gaussian
		    distribution), or `zero` (zero padding).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function extract_glimpse_v2(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?noise:Dynamic, ?name:Dynamic):Dynamic;
	static public function extract_glimpse_v2_eager_fallback(input:Dynamic, size:Dynamic, offsets:Dynamic, centered:Dynamic, normalized:Dynamic, uniform_noise:Dynamic, noise:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Extract the shape information of a JPEG-encoded image.
		
		This op only parses the image header, so it is much faster than DecodeJpeg.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The JPEG-encoded image.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		    (Optional) The output type of the operation (int32 or int64).
		    Defaults to int32.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function extract_jpeg_shape(contents:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function extract_jpeg_shape_eager_fallback(contents:Dynamic, output_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Set the shape to 3 dimensional if we don't know anything else.
		
		Args:
		  image: original image size
		  result: flipped or transformed image
		
		Returns:
		  An image whose shape is at least (None, None, None).
	**/
	static public function fix_image_flip_shape(image:Dynamic, result:Dynamic):Dynamic;
	/**
		Converts `tf.contrib.image` projective transforms to affine matrices.
		
		Note that the output matrices map output coordinates to input coordinates. For
		the forward transformation matrix, call `tf.linalg.inv` on the result.
		
		Args:
		  transforms: Vector of length 8, or batches of transforms with shape `(N,
		    8)`.
		
		Returns:
		  3D tensor of matrices with shape `(N, 3, 3)`. The output matrices map the
		    *output coordinates* (in homogeneous coordinates) of each transform to the
		    corresponding *input coordinates*.
		
		Raises:
		  ValueError: If `transforms` have an invalid shape.
	**/
	static public function flat_transforms_to_matrices(transforms:Dynamic):Dynamic;
	/**
		Flip an image horizontally (left to right).
		
		Outputs the contents of `image` flipped along the width dimension.
		
		See also `tf.reverse`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.flip_left_right(x)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 4.,  5.,  6.],
		        [ 1.,  2.,  3.]],
		       [[10., 11., 12.],
		        [ 7.,  8.,  9.]]], dtype=float32)>
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		
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
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.flip_up_down(x)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 7.,  8.,  9.],
		        [10., 11., 12.]],
		       [[ 1.,  2.,  3.],
		        [ 4.,  5.,  6.]]], dtype=float32)>
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		
		Returns:
		  A `Tensor` of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function flip_up_down(image:Dynamic):Dynamic;
	/**
		Generate bounding box proposals from encoded bounding boxes.
		
		Args:
		  scores: A 4-D float `Tensor` of shape
		   `[num_images, height, width, num_achors]` containing scores of
		    the boxes for given anchors, can be unsorted.
		  bbox_deltas: A 4-D float `Tensor` of shape
		   `[num_images, height, width, 4 x num_anchors]` encoding boxes
		    with respect to each anchor. Coordinates are given
		    in the form `[dy, dx, dh, dw]`.
		  image_info: A 2-D float `Tensor` of shape `[num_images, 5]`
		    containing image information Height, Width, Scale.
		  anchors: A 2-D float `Tensor` of shape `[num_anchors, 4]`
		    describing the anchor boxes.
		    Boxes are formatted in the form `[y1, x1, y2, x2]`.
		  nms_threshold: A scalar float `Tensor` for non-maximal-suppression
		    threshold. Defaults to 0.7.
		  pre_nms_topn: A scalar int `Tensor` for the number of
		    top scoring boxes to be used as input. Defaults to 6000.
		  min_size: A scalar float `Tensor`. Any box that has a smaller size
		    than min_size will be discarded. Defaults to 16.
		  post_nms_topn: An integer. Maximum number of rois in the output.
		  name: A name for this operation (optional).
		
		Returns:
		  rois: Region of interest boxes sorted by their scores.
		  roi_probabilities: scores of the ROI boxes in the ROIs' `Tensor`.
	**/
	static public function generate_bounding_box_proposals(scores:Dynamic, bbox_deltas:Dynamic, image_info:Dynamic, anchors:Dynamic, ?nms_threshold:Dynamic, ?pre_nms_topn:Dynamic, ?min_size:Dynamic, ?post_nms_topn:Dynamic, ?name:Dynamic):Dynamic;
	static public function generate_bounding_box_proposals_eager_fallback(scores:Dynamic, bbox_deltas:Dynamic, image_info:Dynamic, anchors:Dynamic, nms_threshold:Dynamic, pre_nms_topn:Dynamic, min_size:Dynamic, post_nms_topn:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts one or more images from Grayscale to RGB.
		
		Outputs a tensor of the same `DType` and rank as `images`.  The size of the
		last dimension of the output is 3, containing the RGB value of the pixels.
		The input images' last dimension must be size 1.
		
		>>> original = tf.constant([[[1.0], [2.0], [3.0]]])
		>>> converted = tf.image.grayscale_to_rgb(original)
		>>> print(converted.numpy())
		[[[1. 1. 1.]
		  [2. 2. 2.]
		  [3. 3. 3.]]]
		
		Args:
		  images: The Grayscale tensor to convert. The last dimension must be size 1.
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
		  images: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    1-D or higher rank. HSV data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function hsv_to_rgb(images:Dynamic, ?name:Dynamic):Dynamic;
	static public function hsv_to_rgb_eager_fallback(images:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns image gradients (dy, dx) for each color channel.
		
		Both output tensors have the same shape as the input: [batch_size, h, w,
		d]. The gradient values are organized so that [I(x+1, y) - I(x, y)] is in
		location (x, y). That means that dy will always have zeros in the last row,
		and dx will always have zeros in the last column.
		
		Usage Example:
		  ```python
		  BATCH_SIZE = 1
		  IMAGE_HEIGHT = 5
		  IMAGE_WIDTH = 5
		  CHANNELS = 1
		  image = tf.reshape(tf.range(IMAGE_HEIGHT * IMAGE_WIDTH * CHANNELS,
		    delta=1, dtype=tf.float32),
		    shape=(BATCH_SIZE, IMAGE_HEIGHT, IMAGE_WIDTH, CHANNELS))
		  dy, dx = tf.image.image_gradients(image)
		  print(image[0, :,:,0])
		  tf.Tensor(
		    [[ 0.  1.  2.  3.  4.]
		    [ 5.  6.  7.  8.  9.]
		    [10. 11. 12. 13. 14.]
		    [15. 16. 17. 18. 19.]
		    [20. 21. 22. 23. 24.]], shape=(5, 5), dtype=float32)
		  print(dy[0, :,:,0])
		  tf.Tensor(
		    [[5. 5. 5. 5. 5.]
		    [5. 5. 5. 5. 5.]
		    [5. 5. 5. 5. 5.]
		    [5. 5. 5. 5. 5.]
		    [0. 0. 0. 0. 0.]], shape=(5, 5), dtype=float32)
		  print(dx[0, :,:,0])
		  tf.Tensor(
		    [[1. 1. 1. 1. 0.]
		    [1. 1. 1. 1. 0.]
		    [1. 1. 1. 1. 0.]
		    [1. 1. 1. 1. 0.]
		    [1. 1. 1. 1. 0.]], shape=(5, 5), dtype=float32)
		  ```
		
		Args:
		  image: Tensor with shape [batch_size, h, w, d].
		
		Returns:
		  Pair of tensors (dy, dx) holding the vertical and horizontal image
		  gradients (1-step finite difference).
		
		Raises:
		  ValueError: If `image` is not a 4D tensor.
	**/
	static public function image_gradients(image:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to 0.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  transforms: A `Tensor` of type `float32`.
		    2-D Tensor, `[batch, 8]` or `[1, 8]` matrix, where each row corresponds to a 3 x 3
		    projective transformation matrix, with the last entry assumed to be 1. If there
		    is one row, the same transformation will be applied to all images.
		  output_shape: A `Tensor` of type `int32`.
		    1-D Tensor [new_height, new_width].
		  interpolation: A `string`. Interpolation method, "NEAREST" or "BILINEAR".
		  fill_mode: An optional `string`. Defaults to `"CONSTANT"`.
		    Fill mode, "REFLECT", "WRAP", or "CONSTANT".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function image_projective_transform_v2(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, interpolation:Dynamic, ?fill_mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function image_projective_transform_v2_eager_fallback(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, interpolation:Dynamic, fill_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to fill_value.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  transforms: A `Tensor` of type `float32`.
		    2-D Tensor, `[batch, 8]` or `[1, 8]` matrix, where each row corresponds to a 3 x 3
		    projective transformation matrix, with the last entry assumed to be 1. If there
		    is one row, the same transformation will be applied to all images.
		  output_shape: A `Tensor` of type `int32`.
		    1-D Tensor [new_height, new_width].
		  fill_value: A `Tensor` of type `float32`.
		    float, the value to be filled when fill_mode is constant".
		  interpolation: A `string`. Interpolation method, "NEAREST" or "BILINEAR".
		  fill_mode: An optional `string`. Defaults to `"CONSTANT"`.
		    Fill mode, "REFLECT", "WRAP", "CONSTANT", or "NEAREST".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function image_projective_transform_v3(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, fill_value:Dynamic, interpolation:Dynamic, ?fill_mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function image_projective_transform_v3_eager_fallback(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, fill_value:Dynamic, interpolation:Dynamic, fill_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Converts affine matrices to `tf.contrib.image` projective transforms.
		
		Note that we expect matrices that map output coordinates to input coordinates.
		To convert forward transformation matrices, call `tf.linalg.inv` on the
		matrices and use the result here.
		
		Args:
		  transform_matrices: One or more affine transformation matrices, for the
		    reverse transformation in homogeneous coordinates. Shape `(3, 3)` or `(N,
		    3, 3)`.
		
		Returns:
		  2D tensor of flat transforms with shape `(N, 8)`, which may be passed into
		    `tf.contrib.image.transform`.
		
		Raises:
		  ValueError: If `transform_matrices` have an invalid shape.
	**/
	static public function matrices_to_flat_transforms(transform_matrices:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes are supplied as
		`[y1, x1, y2, x2]`, where `(y1, x1)` and `(y2, x2)` are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval `[0, 1]`) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system.  Note that this
		algorithm is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather` operation.  For example:
		  ```python
		  selected_indices = tf.image.non_max_suppression(
		      boxes, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		  ```
		
		Args:
		  boxes: A 2-D float `Tensor` of shape `[num_boxes, 4]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non-max suppression.
		  iou_threshold: A 0-D float tensor representing the threshold for deciding
		    whether boxes overlap too much with respect to IOU.
		  score_threshold: A 0-D float tensor representing the threshold for deciding
		    when to remove boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the boxes tensor, where `M <= max_output_size`.
	**/
	static public function non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  ```python
		  selected_indices_padded, num_valid = tf.image.non_max_suppression_padded(
		      boxes, scores, max_output_size, iou_threshold,
		      score_threshold, pad_to_max_output_size=True)
		  selected_indices = tf.slice(
		      selected_indices_padded, tf.constant([0]), num_valid)
		  selected_boxes = tf.gather(boxes, selected_indices)
		  ```
		
		Args:
		  boxes: a tensor of rank 2 or higher with a shape of [..., num_boxes, 4].
		    Dimensions except the last two are batch dimensions.
		  scores: a tensor of rank 1 or higher with a shape of [..., num_boxes].
		  max_output_size: a scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non max suppression. Note that setting this
		    value to a large number may result in OOM error depending on the system
		    workload.
		  iou_threshold: a float representing the threshold for deciding whether boxes
		    overlap too much with respect to IoU (intersection over union).
		  score_threshold: a float representing the threshold for box scores. Boxes
		    with a score that is not larger than this threshold will be suppressed.
		  pad_to_max_output_size: whether to pad the output idx to max_output_size.
		    Must be set to True when the input is a batch of images.
		  name: name of operation.
		  sorted_input: a boolean indicating whether the input boxes and scores
		    are sorted in descending order by the score.
		  canonicalized_coordinates: if box coordinates are given as
		  `[y_min, x_min, y_max, x_max]`, setting to True eliminate redundant
		   computation to canonicalize box coordinates.
		  tile_size: an integer representing the number of boxes in a tile, i.e.,
		    the maximum number of boxes per image that can be used to suppress other
		    boxes in parallel; larger tile_size means larger parallelism and
		    potentially more redundant work.
		Returns:
		  idx: a tensor with a shape of [..., num_boxes] representing the
		    indices selected by non-max suppression. The leading dimensions
		    are the batch dimensions of the input boxes. All numbers are within
		    [0, num_boxes). For each image (i.e., idx[i]), only the first num_valid[i]
		    indices (i.e., idx[i][:num_valid[i]]) are valid.
		  num_valid: a tensor of rank 0 or higher with a shape of [...]
		    representing the number of valid indices in idx. Its dimensions are the
		    batch dimensions of the input boxes.
		 Raises:
		  ValueError: When set pad_to_max_output_size to False for batched input.
	**/
	static public function non_max_suppression_padded(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic, ?sorted_input:Dynamic, ?canonicalized_coordinates:Dynamic, ?tile_size:Dynamic):Dynamic;
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
		  ```python
		  selected_indices_padded, num_valid = tf.image.non_max_suppression_padded(
		      boxes, scores, max_output_size, iou_threshold,
		      score_threshold, pad_to_max_output_size=True)
		  selected_indices = tf.slice(
		      selected_indices_padded, tf.constant([0]), num_valid)
		  selected_boxes = tf.gather(boxes, selected_indices)
		  ```
		
		Args:
		  boxes: A 2-D float `Tensor` of shape `[num_boxes, 4]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non-max suppression.
		  iou_threshold: A float representing the threshold for deciding whether boxes
		    overlap too much with respect to IOU.
		  score_threshold: A float representing the threshold for deciding when to
		    remove boxes based on score.
		  pad_to_max_output_size: bool.  If True, size of `selected_indices` output is
		    padded to `max_output_size`.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the boxes tensor, where `M <= max_output_size`.
		  valid_outputs: A scalar integer `Tensor` denoting how many elements in
		  `selected_indices` are valid.  Valid elements occur first, then padding.
	**/
	static public function non_max_suppression_padded_v1(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Non-maximum suppression.
		
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes. Bounding boxes are supplied as
		`[y1, x1, y2, x2]`, where `(y1, x1)` and `(y2, x2)` are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval `[0, 1]`) or absolute. The bounding box
		coordinates are cannonicalized to `[y_min, x_min, y_max, x_max]`,
		where `(y_min, x_min)` and `(y_max, x_mas)` are the coordinates of the lower
		left and upper right corner. User may indiciate the input box coordinates are
		already canonicalized to eliminate redundant work by setting
		canonicalized_coordinates to `True`. Note that this algorithm is agnostic to
		where the origin is in the coordinate system. Note that this algorithm is
		invariant to orthogonal transformations and translations of the coordinate
		system; thus translating or reflections of the coordinate system result in the
		same boxes being selected by the algorithm.
		
		Similar to tf.image.non_max_suppression, non_max_suppression_padded
		implements hard NMS but can operate on a batch of images and improves
		performance by titling the bounding boxes. Non_max_suppression_padded should
		be preferred over tf.image_non_max_suppression when running on devices with
		abundant parallelsim for higher computation speed. For soft NMS, refer to
		tf.image.non_max_suppression_with_scores.
		
		While a serial NMS algorithm iteratively uses the highest-scored unprocessed
		box to suppress boxes, this algorithm uses many boxes to suppress other boxes
		in parallel. The key idea is to partition boxes into tiles based on their
		score and suppresses boxes tile by tile, thus achieving parallelism within a
		tile. The tile size determines the degree of parallelism.
		
		In cross suppression (using boxes of tile A to suppress boxes of tile B),
		all boxes in A can independently suppress boxes in B.
		
		Self suppression (suppressing boxes of the same tile) needs to be iteratively
		applied until there's no more suppression. In each iteration, boxes that
		cannot be suppressed are used to suppress boxes in the same tile.
		
		boxes = boxes.pad_to_multiply_of(tile_size)
		num_tiles = len(boxes) // tile_size
		output_boxes = []
		for i in range(num_tiles):
		  box_tile = boxes[i*tile_size : (i+1)*tile_size]
		  for j in range(i - 1):
		    # in parallel suppress boxes in box_tile using boxes from suppressing_tile
		    suppressing_tile = boxes[j*tile_size : (j+1)*tile_size]
		    iou = _bbox_overlap(box_tile, suppressing_tile)
		    # if the box is suppressed in iou, clear it to a dot
		    box_tile *= _update_boxes(iou)
		  # Iteratively handle the diagnal tile.
		  iou = _box_overlap(box_tile, box_tile)
		  iou_changed = True
		  while iou_changed:
		    # boxes that are not suppressed by anything else
		    suppressing_boxes = _get_suppressing_boxes(iou)
		    # boxes that are suppressed by suppressing_boxes
		    suppressed_boxes = _get_suppressed_boxes(iou, suppressing_boxes)
		    # clear iou to 0 for boxes that are suppressed, as they cannot be used
		    # to suppress other boxes any more
		    new_iou = _clear_iou(iou, suppressed_boxes)
		    iou_changed = (new_iou != iou)
		    iou = new_iou
		  # remaining boxes that can still suppress others, are selected boxes.
		  output_boxes.append(_get_suppressing_boxes(iou))
		  if len(output_boxes) >= max_output_size:
		    break
		
		Args:
		  boxes: a tensor of rank 2 or higher with a shape of [..., num_boxes, 4].
		    Dimensions except the last two are batch dimensions. The last dimension
		    represents box coordinates, given as [y_1, x_1, y_2, x_2]. The coordinates
		    on each dimension can be given in any order
		    (see also `canonicalized_coordinates`) but must describe a box with
		    a positive area.
		  scores: a tensor of rank 1 or higher with a shape of [..., num_boxes].
		  max_output_size: a scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non max suppression.
		  iou_threshold: a float representing the threshold for deciding whether boxes
		    overlap too much with respect to IoU (intersection over union).
		  score_threshold: a float representing the threshold for box scores. Boxes
		    with a score that is not larger than this threshold will be suppressed.
		  sorted_input: a boolean indicating whether the input boxes and scores
		    are sorted in descending order by the score.
		  canonicalized_coordinates: if box coordinates are given as
		  `[y_min, x_min, y_max, x_max]`, setting to True eliminate redundant
		   computation to canonicalize box coordinates.
		  tile_size: an integer representing the number of boxes in a tile, i.e.,
		    the maximum number of boxes per image that can be used to suppress other
		    boxes in parallel; larger tile_size means larger parallelism and
		    potentially more redundant work.
		Returns:
		  idx: a tensor with a shape of [..., num_boxes] representing the
		    indices selected by non-max suppression. The leading dimensions
		    are the batch dimensions of the input boxes. All numbers are within
		    [0, num_boxes). For each image (i.e., idx[i]), only the first num_valid[i]
		    indices (i.e., idx[i][:num_valid[i]]) are valid.
		  num_valid: a tensor of rank 0 or higher with a shape of [...]
		    representing the number of valid indices in idx. Its dimensions are the
		    batch dimensions of the input boxes.
		 Raises:
		  ValueError: When set pad_to_max_output_size to False for batched input.
	**/
	static public function non_max_suppression_padded_v2(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?sorted_input:Dynamic, ?canonicalized_coordinates:Dynamic, ?tile_size:Dynamic):Dynamic;
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
		using the `tf.gather operation`.  For example:
		
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function non_max_suppression_v2(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_v2_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `iou_threshold`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function non_max_suppression_v3(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_v3_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `iou_threshold`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  pad_to_max_output_size: An optional `bool`. Defaults to `False`.
		    If true, the output `selected_indices` is padded to be of length
		    `max_output_size`. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (selected_indices, valid_outputs).
		
		  selected_indices: A `Tensor` of type `int32`.
		  valid_outputs: A `Tensor` of type `int32`.
	**/
	static public function non_max_suppression_v4(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_v4_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, pad_to_max_output_size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score,
		
		pruning away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes with score less than
		`score_threshold` are removed.  Bounding boxes are supplied as
		[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system and more
		generally is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather operation`.  For example:
		  selected_indices = tf.image.non_max_suppression_v2(
		      boxes, scores, max_output_size, iou_threshold, score_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		This op also supports a Soft-NMS (with Gaussian weighting) mode (c.f.
		Bodla et al, https://arxiv.org/abs/1704.04503) where boxes reduce the score
		of other overlapping boxes instead of directly causing them to be pruned.
		To enable this Soft-NMS mode, set the `soft_nms_sigma` parameter to be
		larger than 0.
		
		Args:
		  boxes: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 2-D float tensor of shape `[num_boxes, 4]`.
		  scores: A `Tensor`. Must have the same type as `boxes`.
		    A 1-D float tensor of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A `Tensor` of type `int32`.
		    A scalar integer tensor representing the maximum number of
		    boxes to be selected by non max suppression.
		  iou_threshold: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the threshold for deciding whether
		    boxes overlap too much with respect to IOU.
		  score_threshold: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the threshold for deciding when to remove
		    boxes based on score.
		  soft_nms_sigma: A `Tensor`. Must have the same type as `boxes`.
		    A 0-D float tensor representing the sigma parameter for Soft NMS; see Bodla et
		    al (c.f. https://arxiv.org/abs/1704.04503).  When `soft_nms_sigma=0.0` (which
		    is default), we fall back to standard (hard) NMS.
		  pad_to_max_output_size: An optional `bool`. Defaults to `False`.
		    If true, the output `selected_indices` is padded to be of length
		    `max_output_size`. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (selected_indices, selected_scores, valid_outputs).
		
		  selected_indices: A `Tensor` of type `int32`.
		  selected_scores: A `Tensor`. Has the same type as `boxes`.
		  valid_outputs: A `Tensor` of type `int32`.
	**/
	static public function non_max_suppression_v5(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, soft_nms_sigma:Dynamic, ?pad_to_max_output_size:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_v5_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, soft_nms_sigma:Dynamic, pad_to_max_output_size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Prunes away boxes that have high overlap with previously selected boxes.
		N-by-n overlap values are supplied as square matrix.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather` operation.  For example:
		  ```python
		  selected_indices = tf.image.non_max_suppression_overlaps(
		      overlaps, scores, max_output_size, iou_threshold)
		  selected_boxes = tf.gather(boxes, selected_indices)
		  ```
		
		Args:
		  overlaps: A 2-D float `Tensor` of shape `[num_boxes, num_boxes]`
		    representing the n-by-n box overlap values.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non-max suppression.
		  overlap_threshold: A 0-D float tensor representing the threshold for
		    deciding whether boxes overlap too much with respect to the provided
		    overlap values.
		  score_threshold: A 0-D float tensor representing the threshold for deciding
		    when to remove boxes based on score.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the overlaps tensor, where `M <= max_output_size`.
	**/
	static public function non_max_suppression_with_overlaps(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?overlap_threshold:Dynamic, ?score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_with_overlaps_eager_fallback(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, overlap_threshold:Dynamic, score_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Greedily selects a subset of bounding boxes in descending order of score.
		
		Prunes away boxes that have high intersection-over-union (IOU) overlap
		with previously selected boxes.  Bounding boxes are supplied as
		`[y1, x1, y2, x2]`, where `(y1, x1)` and `(y2, x2)` are the coordinates of any
		diagonal pair of box corners and the coordinates can be provided as normalized
		(i.e., lying in the interval `[0, 1]`) or absolute.  Note that this algorithm
		is agnostic to where the origin is in the coordinate system.  Note that this
		algorithm is invariant to orthogonal transformations and translations
		of the coordinate system; thus translating or reflections of the coordinate
		system result in the same boxes being selected by the algorithm.
		The output of this operation is a set of integers indexing into the input
		collection of bounding boxes representing the selected boxes.  The bounding
		box coordinates corresponding to the selected indices can then be obtained
		using the `tf.gather` operation.  For example:
		  ```python
		  selected_indices, selected_scores = tf.image.non_max_suppression_padded(
		      boxes, scores, max_output_size, iou_threshold=1.0, score_threshold=0.1,
		      soft_nms_sigma=0.5)
		  selected_boxes = tf.gather(boxes, selected_indices)
		  ```
		
		This function generalizes the `tf.image.non_max_suppression` op by also
		supporting a Soft-NMS (with Gaussian weighting) mode (c.f.
		Bodla et al, https://arxiv.org/abs/1704.04503) where boxes reduce the score
		of other overlapping boxes instead of directly causing them to be pruned.
		Consequently, in contrast to `tf.image.non_max_suppression`,
		`tf.image.non_max_suppression_padded` returns the new scores of each input box
		in the second output, `selected_scores`.
		
		To enable this Soft-NMS mode, set the `soft_nms_sigma` parameter to be
		larger than 0.  When `soft_nms_sigma` equals 0, the behavior of
		`tf.image.non_max_suppression_padded` is identical to that of
		`tf.image.non_max_suppression` (except for the extra output) both in function
		and in running time.
		
		Args:
		  boxes: A 2-D float `Tensor` of shape `[num_boxes, 4]`.
		  scores: A 1-D float `Tensor` of shape `[num_boxes]` representing a single
		    score corresponding to each box (each row of boxes).
		  max_output_size: A scalar integer `Tensor` representing the maximum number
		    of boxes to be selected by non-max suppression.
		  iou_threshold: A 0-D float tensor representing the threshold for deciding
		    whether boxes overlap too much with respect to IOU.
		  score_threshold: A 0-D float tensor representing the threshold for deciding
		    when to remove boxes based on score.
		  soft_nms_sigma: A 0-D float tensor representing the sigma parameter for Soft
		    NMS; see Bodla et al (c.f. https://arxiv.org/abs/1704.04503).  When
		    `soft_nms_sigma=0.0` (which is default), we fall back to standard (hard)
		    NMS.
		  name: A name for the operation (optional).
		
		Returns:
		  selected_indices: A 1-D integer `Tensor` of shape `[M]` representing the
		    selected indices from the boxes tensor, where `M <= max_output_size`.
		  selected_scores: A 1-D float tensor of shape `[M]` representing the
		    corresponding scores for each selected box, where `M <= max_output_size`.
		    Scores only differ from corresponding input scores when using Soft NMS
		    (i.e. when `soft_nms_sigma>0`)
	**/
	static public function non_max_suppression_with_scores(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?score_threshold:Dynamic, ?soft_nms_sigma:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pad `image` with zeros to the specified `height` and `width`.
		
		Adds `offset_height` rows of zeros on top, `offset_width` columns of
		zeros on the left, and then pads the image on the bottom and right
		with zeros until it has dimensions `target_height`, `target_width`.
		
		This op does nothing if `offset_*` is zero and the image already has size
		`target_height` by `target_width`.
		
		Usage Example:
		
		>>> x = [[[1., 2., 3.],
		...       [4., 5., 6.]],
		...       [[7., 8., 9.],
		...       [10., 11., 12.]]]
		>>> padded_image = tf.image.pad_to_bounding_box(x, 1, 1, 4, 4)
		>>> padded_image
		<tf.Tensor: shape=(4, 4, 3), dtype=float32, numpy=
		array([[[ 0.,  0.,  0.],
		[ 0.,  0.,  0.],
		[ 0.,  0.,  0.],
		[ 0.,  0.,  0.]],
		[[ 0.,  0.,  0.],
		[ 1.,  2.,  3.],
		[ 4.,  5.,  6.],
		[ 0.,  0.,  0.]],
		[[ 0.,  0.,  0.],
		[ 7.,  8.,  9.],
		[10., 11., 12.],
		[ 0.,  0.,  0.]],
		[[ 0.,  0.,  0.],
		[ 0.,  0.,  0.],
		[ 0.,  0.,  0.],
		[ 0.,  0.,  0.]]], dtype=float32)>
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
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
		Linearly scales each image in `image` to have mean 0 and variance 1.
		
		For each 3-D image `x` in `image`, computes `(x - mean) / adjusted_stddev`,
		where
		
		- `mean` is the average of all values in `x`
		- `adjusted_stddev = max(stddev, 1.0/sqrt(N))` is capped away from 0 to
		  protect against division by 0 when handling uniform images
		  - `N` is the number of elements in `x`
		  - `stddev` is the standard deviation of all values in `x`
		
		Example Usage:
		
		>>> image = tf.constant(np.arange(1, 13, dtype=np.int32), shape=[2, 2, 3])
		>>> image # 3-D tensor
		<tf.Tensor: shape=(2, 2, 3), dtype=int32, numpy=
		array([[[ 1,  2,  3],
		        [ 4,  5,  6]],
		       [[ 7,  8,  9],
		        [10, 11, 12]]], dtype=int32)>
		>>> new_image = tf.image.per_image_standardization(image)
		>>> new_image # 3-D tensor with mean ~= 0 and variance ~= 1
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[-1.593255  , -1.3035723 , -1.0138896 ],
		        [-0.7242068 , -0.4345241 , -0.14484136]],
		       [[ 0.14484136,  0.4345241 ,  0.7242068 ],
		        [ 1.0138896 ,  1.3035723 ,  1.593255  ]]], dtype=float32)>
		
		Args:
		  image: An n-D `Tensor` with at least 3 dimensions, the last 3 of which are
		    the dimensions of each image.
		
		Returns:
		  A `Tensor` with the same shape as `image` and its dtype is `float32`.
		
		Raises:
		  ValueError: The shape of `image` has fewer than 3 dimensions.
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
		
		Args:
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
		Resize quantized `images` to `size` using quantized bilinear interpolation.
		
		Input images and output images must be quantized types.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `quint8`, `qint32`, `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (resized_images, out_min, out_max).
		
		  resized_images: A `Tensor`. Has the same type as `images`.
		  out_min: A `Tensor` of type `float32`.
		  out_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_resize_bilinear(images:Dynamic, size:Dynamic, min:Dynamic, max:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_resize_bilinear_eager_fallback(images:Dynamic, size:Dynamic, min:Dynamic, max:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adjust the brightness of images by a random factor.
		
		Equivalent to `adjust_brightness()` using a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_brightness`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: An image or images to adjust.
		  max_delta: float, must be non-negative.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.compat.v1.set_random_seed` for behavior.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...      [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.random_brightness(x, 0.2)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=...>
		
		Returns:
		  The brightness-adjusted image(s).
		
		Raises:
		  ValueError: if `max_delta` is negative.
	**/
	static public function random_brightness(image:Dynamic, max_delta:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the contrast of an image or images by a random factor.
		
		Equivalent to `adjust_contrast()` but uses a `contrast_factor` randomly
		picked in the interval `[lower, upper)`.
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_contrast`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: An image tensor with 3 or more dimensions.
		  lower: float.  Lower bound for the random contrast factor.
		  upper: float.  Upper bound for the random contrast factor.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.compat.v1.set_random_seed` for behavior.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.random_contrast(x, 0.2, 0.5)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=...>
		
		Returns:
		  The contrast-adjusted image(s).
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function random_contrast(image:Dynamic, lower:Dynamic, upper:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly crop `image`.
		
		`size` is a 1-D int64 tensor with 2 elements representing the crop height and
		width.  The values must be non negative.
		
		This Op picks a random location in `image` and crops a `height` by `width`
		rectangle from that location.  The random location is picked so the cropped
		area will fit inside the original image.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `float32`, `float64`.
		    3-D of shape `[height, width, channels]`.
		  size: A `Tensor` of type `int64`.
		    1-D of length 2 containing: `crop_height`, `crop_width`..
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `image`.
	**/
	static public function random_crop(image:Dynamic, size:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_crop_eager_fallback(image:Dynamic, size:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Randomly flip an image horizontally (left to right).
		
		With a 1 in 2 chance, outputs the contents of `image` flipped along the
		second dimension, which is `width`.  Otherwise output the image as-is.
		When passing a batch of images, each image will be randomly flipped
		independent of other images.
		
		Example usage:
		
		>>> image = np.array([[[1], [2]], [[3], [4]]])
		>>> tf.image.random_flip_left_right(image, 5).numpy().tolist()
		[[[2], [1]], [[4], [3]]]
		
		Randomly flip multiple images.
		
		>>> images = np.array(
		... [
		...     [[[1], [2]], [[3], [4]]],
		...     [[[5], [6]], [[7], [8]]]
		... ])
		>>> tf.image.random_flip_left_right(images, 6).numpy().tolist()
		[[[[2], [1]], [[4], [3]]], [[[5], [6]], [[7], [8]]]]
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_flip_left_right`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.compat.v1.set_random_seed` for behavior.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function random_flip_left_right(image:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Randomly flips an image vertically (upside down).
		
		With a 1 in 2 chance, outputs the contents of `image` flipped along the first
		dimension, which is `height`.  Otherwise, output the image as-is.
		When passing a batch of images, each image will be randomly flipped
		independent of other images.
		
		Example usage:
		
		>>> image = np.array([[[1], [2]], [[3], [4]]])
		>>> tf.image.random_flip_up_down(image, 3).numpy().tolist()
		[[[3], [4]], [[1], [2]]]
		
		Randomly flip multiple images.
		
		>>> images = np.array(
		... [
		...     [[[1], [2]], [[3], [4]]],
		...     [[[5], [6]], [[7], [8]]]
		... ])
		>>> tf.image.random_flip_up_down(images, 4).numpy().tolist()
		[[[[3], [4]], [[1], [2]]], [[[5], [6]], [[7], [8]]]]
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_flip_up_down`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  seed: A Python integer. Used to create a random seed. See
		    `tf.compat.v1.set_random_seed` for behavior.
		
		Returns:
		  A tensor of the same type and shape as `image`.
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function random_flip_up_down(image:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the hue of RGB images by a random factor.
		
		Equivalent to `adjust_hue()` but uses a `delta` randomly
		picked in the interval `[-max_delta, max_delta)`.
		
		`max_delta` must be in the interval `[0, 0.5]`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.random_hue(x, 0.2)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=...>
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_hue`. Unlike using the `seed` param with
		`tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the same
		results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  max_delta: float. The maximum value for the random delta.
		  seed: An operation-specific seed. It will be used in conjunction with the
		    graph-level seed to determine the real seeds that will be used in this
		    operation. Please see the documentation of set_random_seed for its
		    interaction with the graph-level random seed.
		
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
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.random_jpeg_quality(x, 75, 95)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=...>
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_jpeg_quality`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: 3D image. Size of the last dimension must be 1 or 3.
		  min_jpeg_quality: Minimum jpeg encoding quality to use.
		  max_jpeg_quality: Maximum jpeg encoding quality to use.
		  seed: An operation-specific seed. It will be used in conjunction with the
		    graph-level seed to determine the real seeds that will be used in this
		    operation. Please see the documentation of set_random_seed for its
		    interaction with the graph-level random seed.
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `min_jpeg_quality` or `max_jpeg_quality` is invalid.
	**/
	static public function random_jpeg_quality(image:Dynamic, min_jpeg_quality:Dynamic, max_jpeg_quality:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adjust the saturation of RGB images by a random factor.
		
		Equivalent to `adjust_saturation()` but uses a `saturation_factor` randomly
		picked in the interval `[lower, upper)`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.random_saturation(x, 5, 10)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 0. ,  1.5,  3. ],
		        [ 0. ,  3. ,  6. ]],
		       [[ 0. ,  4.5,  9. ],
		        [ 0. ,  6. , 12. ]]], dtype=float32)>
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_saturation`. Unlike using the `seed` param
		with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the
		same results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  lower: float.  Lower bound for the random saturation factor.
		  upper: float.  Upper bound for the random saturation factor.
		  seed: An operation-specific seed. It will be used in conjunction with the
		    graph-level seed to determine the real seeds that will be used in this
		    operation. Please see the documentation of set_random_seed for its
		    interaction with the graph-level random seed.
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function random_saturation(image:Dynamic, lower:Dynamic, upper:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using area interpolation.
		
		Input images can be of different types but output images are always float.
		
		The range of pixel values for the output image might be slightly different
		from the range for the input image because of limited numerical precision.
		To guarantee an output range, for example `[0.0, 1.0]`, apply
		`tf.clip_by_value` to the output.
		
		Each output pixel is computed by first transforming the pixel's footprint into
		the input tensor and then averaging the pixels that intersect the footprint. An
		input pixel's contribution to the average is weighted by the fraction of its
		area that intersects the footprint.  This is the same as OpenCV's INTER_AREA.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function resize_area(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecation wrapper.
	**/
	static public function resize_area_deprecation(func_or_class:Dynamic):Dynamic;
	static public function resize_area_eager_fallback(images:Dynamic, size:Dynamic, align_corners:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function resize_bicubic(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic, ?half_pixel_centers:Dynamic):Dynamic;
	/**
		Deprecation wrapper.
	**/
	static public function resize_bicubic_deprecation(func_or_class:Dynamic):Dynamic;
	static public function resize_bicubic_eager_fallback(images:Dynamic, size:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of bicubic interpolation.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  original_image: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    4-D with shape `[batch, orig_height, orig_width, channels]`,
		    The image tensor that was resized.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `original_image`.
	**/
	static public function resize_bicubic_grad(grads:Dynamic, original_image:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	static public function resize_bicubic_grad_eager_fallback(grads:Dynamic, original_image:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function resize_bilinear(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic, ?half_pixel_centers:Dynamic):Dynamic;
	/**
		Deprecation wrapper.
	**/
	static public function resize_bilinear_deprecation(func_or_class:Dynamic):Dynamic;
	static public function resize_bilinear_eager_fallback(images:Dynamic, size:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of bilinear interpolation.
		
		Args:
		  grads: A `Tensor` of type `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  original_image: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`, `half`, `float64`.
		    4-D with shape `[batch, orig_height, orig_width, channels]`,
		    The image tensor that was resized.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `original_image`.
	**/
	static public function resize_bilinear_grad(grads:Dynamic, original_image:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	static public function resize_bilinear_grad_eager_fallback(grads:Dynamic, original_image:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Crops and/or pads an image to a target width and height.
		
		Resizes an image to a target width and height by either centrally
		cropping the image or padding it evenly with zeros.
		
		If `width` or `height` is greater than the specified `target_width` or
		`target_height` respectively, this op centrally crops along that dimension.
		
		For example:
		
		>>> image = np.arange(75).reshape(5, 5, 3)  # create 3-D image input
		>>> image[:,:,0]  # print first channel just for demo purposes
		array([[ 0,  3,  6,  9, 12],
		       [15, 18, 21, 24, 27],
		       [30, 33, 36, 39, 42],
		       [45, 48, 51, 54, 57],
		       [60, 63, 66, 69, 72]])
		>>> image = tf.image.resize_with_crop_or_pad(image, 3, 3)  # crop
		>>> # print first channel for demo purposes; centrally cropped output
		>>> image[:,:,0]
		<tf.Tensor: shape=(3, 3), dtype=int64, numpy=
		array([[18, 21, 24],
		       [33, 36, 39],
		       [48, 51, 54]])>
		
		If `width` or `height` is smaller than the specified `target_width` or
		`target_height` respectively, this op centrally pads with 0 along that
		dimension.
		
		For example:
		
		>>> image = np.arange(1, 28).reshape(3, 3, 3)  # create 3-D image input
		>>> image[:,:,0]  # print first channel just for demo purposes
		array([[ 1,  4,  7],
		       [10, 13, 16],
		       [19, 22, 25]])
		>>> image = tf.image.resize_with_crop_or_pad(image, 5, 5)  # pad
		>>> # print first channel for demo purposes; we should see 0 paddings
		>>> image[:,:,0]
		<tf.Tensor: shape=(5, 5), dtype=int64, numpy=
		array([[ 0,  0,  0,  0,  0],
		       [ 0,  1,  4,  7,  0],
		       [ 0, 10, 13, 16,  0],
		       [ 0, 19, 22, 25,  0],
		       [ 0,  0,  0,  0,  0]])>
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
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
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  target_height: Target height.
		  target_width: Target width.
		  method: Method to use for resizing image. See `resize_images()`
		  align_corners: bool.  If True, the centers of the 4 corner pixels of the
		    input and output tensors are aligned, preserving the values at the corner
		    pixels. Defaults to `False`.
		
		Raises:
		  ValueError: if `target_height` or `target_width` are zero or negative.
		
		Returns:
		  Resized and padded image.
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_image_with_pad_v1(image:Dynamic, target_height:Dynamic, target_width:Dynamic, ?method:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Resizes and pads an image to a target width and height.
		
		Resizes an image to a target width and height by keeping
		the aspect ratio the same without distortion. If the target
		dimensions don't match the image dimensions, the image
		is resized and then padded with zeroes to match requested
		dimensions.
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  target_height: Target height.
		  target_width: Target width.
		  method: Method to use for resizing image. See `image.resize()`
		  antialias: Whether to use anti-aliasing when resizing. See 'image.resize()'.
		
		Raises:
		  ValueError: if `target_height` or `target_width` are zero or negative.
		
		Returns:
		  Resized and padded image.
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_image_with_pad_v2(image:Dynamic, target_height:Dynamic, target_width:Dynamic, ?method:Dynamic, ?antialias:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using the specified `method`.
		
		Resized images will be distorted if their original aspect ratio is not
		the same as `size`.  To avoid distortions see
		`tf.image.resize_with_pad` or `tf.image.resize_with_crop_or_pad`.
		
		The `method` can be one of:
		
		*   <b>`tf.image.ResizeMethod.BILINEAR`</b>: [Bilinear interpolation.](
		  https://en.wikipedia.org/wiki/Bilinear_interpolation)
		*   <b>`tf.image.ResizeMethod.NEAREST_NEIGHBOR`</b>: [
		  Nearest neighbor interpolation.](
		  https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation)
		*   <b>`tf.image.ResizeMethod.BICUBIC`</b>: [Bicubic interpolation.](
		  https://en.wikipedia.org/wiki/Bicubic_interpolation)
		*   <b>`tf.image.ResizeMethod.AREA`</b>: Area interpolation.
		
		The return value has the same type as `images` if `method` is
		`tf.image.ResizeMethod.NEAREST_NEIGHBOR`. It will also have the same type
		as `images` if the size of `images` can be statically determined to be the
		same as `size`, because `images` is returned in this case. Otherwise, the
		return value has type `float32`.
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  size: A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The new
		    size for the images.
		  method: ResizeMethod.  Defaults to `tf.image.ResizeMethod.BILINEAR`.
		  align_corners: bool.  If True, the centers of the 4 corner pixels of the
		    input and output tensors are aligned, preserving the values at the corner
		    pixels. Defaults to `False`.
		  preserve_aspect_ratio: Whether to preserve the aspect ratio. If this is set,
		    then `images` will be resized to a size that fits in `size` while
		    preserving the aspect ratio of the original image. Scales up the image if
		    `size` is bigger than the current size of the `image`. Defaults to False.
		  name: A name for this operation (optional).
		
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
	static public function resize_images(images:Dynamic, size:Dynamic, ?method:Dynamic, ?align_corners:Dynamic, ?preserve_aspect_ratio:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resize `images` to `size` using the specified `method`.
		
		Resized images will be distorted if their original aspect ratio is not
		the same as `size`.  To avoid distortions see
		`tf.image.resize_with_pad`.
		
		>>> image = tf.constant([
		...  [1,0,0,0,0],
		...  [0,1,0,0,0],
		...  [0,0,1,0,0],
		...  [0,0,0,1,0],
		...  [0,0,0,0,1],
		... ])
		>>> # Add "batch" and "channels" dimensions
		>>> image = image[tf.newaxis, ..., tf.newaxis]
		>>> image.shape.as_list()  # [batch, height, width, channels]
		[1, 5, 5, 1]
		>>> tf.image.resize(image, [3,5])[0,...,0].numpy()
		array([[0.6666667, 0.3333333, 0.       , 0.       , 0.       ],
		       [0.       , 0.       , 1.       , 0.       , 0.       ],
		       [0.       , 0.       , 0.       , 0.3333335, 0.6666665]],
		      dtype=float32)
		
		It works equally well with a single image instead of a batch of images:
		
		>>> tf.image.resize(image[0], [3,5]).shape.as_list()
		[3, 5, 1]
		
		When `antialias` is true, the sampling filter will anti-alias the input image
		as well as interpolate.  When downsampling an image with [anti-aliasing](
		https://en.wikipedia.org/wiki/Spatial_anti-aliasing) the sampling filter
		kernel is scaled in order to properly anti-alias the input image signal.
		`antialias` has no effect when upsampling an image:
		
		>>> a = tf.image.resize(image, [5,10])
		>>> b = tf.image.resize(image, [5,10], antialias=True)
		>>> tf.reduce_max(abs(a - b)).numpy()
		0.0
		
		The `method` argument expects an item from the `image.ResizeMethod` enum, or
		the string equivalent. The options are:
		
		*   <b>`bilinear`</b>: [Bilinear interpolation.](
		  https://en.wikipedia.org/wiki/Bilinear_interpolation) If `antialias` is
		  true, becomes a hat/tent filter function with radius 1 when downsampling.
		*   <b>`lanczos3`</b>:  [Lanczos kernel](
		  https://en.wikipedia.org/wiki/Lanczos_resampling) with radius 3.
		  High-quality practical filter but may have some ringing, especially on
		  synthetic images.
		*   <b>`lanczos5`</b>: [Lanczos kernel] (
		  https://en.wikipedia.org/wiki/Lanczos_resampling) with radius 5.
		  Very-high-quality filter but may have stronger ringing.
		*   <b>`bicubic`</b>: [Cubic interpolant](
		  https://en.wikipedia.org/wiki/Bicubic_interpolation) of Keys. Equivalent to
		  Catmull-Rom kernel. Reasonably good quality and faster than Lanczos3Kernel,
		  particularly when upsampling.
		*   <b>`gaussian`</b>: [Gaussian kernel](
		  https://en.wikipedia.org/wiki/Gaussian_filter) with radius 3,
		  sigma = 1.5 / 3.0.
		*   <b>`nearest`</b>: [Nearest neighbor interpolation.](
		  https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation)
		  `antialias` has no effect when used with nearest neighbor interpolation.
		*   <b>`area`</b>: Anti-aliased resampling with area interpolation.
		  `antialias` has no effect when used with area interpolation; it
		  always anti-aliases.
		*   <b>`mitchellcubic`</b>: Mitchell-Netravali Cubic non-interpolating filter.
		  For synthetic images (especially those lacking proper prefiltering), less
		  ringing than Keys cubic kernel but less sharp.
		
		Note: Near image edges the filtering kernel may be partially outside the
		image boundaries. For these pixels, only input pixels inside the image will be
		included in the filter sum, and the output value will be appropriately
		normalized.
		
		The return value has type `float32`, unless the `method` is
		`ResizeMethod.NEAREST_NEIGHBOR`, then the return dtype is the dtype
		of `images`:
		
		>>> nn = tf.image.resize(image, [5,7], method='nearest')
		>>> nn[0,...,0].numpy()
		array([[1, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 0, 1, 1, 0],
		       [0, 0, 0, 0, 0, 0, 1]], dtype=int32)
		
		With `preserve_aspect_ratio=True`, the aspect ratio is preserved, so `size`
		is the maximum for each dimension:
		
		>>> max_10_20 = tf.image.resize(image, [10,20], preserve_aspect_ratio=True)
		>>> max_10_20.shape.as_list()
		[1, 10, 10, 1]
		
		Args:
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  size: A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The new
		    size for the images.
		  method: An `image.ResizeMethod`, or string equivalent.  Defaults to
		    `bilinear`.
		  preserve_aspect_ratio: Whether to preserve the aspect ratio. If this is set,
		    then `images` will be resized to a size that fits in `size` while
		    preserving the aspect ratio of the original image. Scales up the image if
		    `size` is bigger than the current size of the `image`. Defaults to False.
		  antialias: Whether to use an anti-aliasing filter when downsampling an
		    image.
		  name: A name for this operation (optional).
		
		Raises:
		  ValueError: if the shape of `images` is incompatible with the
		    shape arguments to this function
		  ValueError: if `size` has an invalid shape or type.
		  ValueError: if an unsupported resize method is specified.
		
		Returns:
		  If `images` was 4-D, a 4-D float Tensor of shape
		  `[batch, new_height, new_width, channels]`.
		  If `images` was 3-D, a 3-D float Tensor of shape
		  `[new_height, new_width, channels]`.
	**/
	static public function resize_images_v2(images:Dynamic, size:Dynamic, ?method:Dynamic, ?preserve_aspect_ratio:Dynamic, ?antialias:Dynamic, ?name:Dynamic):Dynamic;
	static public function resize_nearest_neighbor(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?name:Dynamic, ?half_pixel_centers:Dynamic):Dynamic;
	/**
		Deprecation wrapper.
	**/
	static public function resize_nearest_neighbor_deprecation(func_or_class:Dynamic):Dynamic;
	static public function resize_nearest_neighbor_eager_fallback(images:Dynamic, size:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of nearest neighbor interpolation.
		
		Args:
		  grads: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int32`, `half`, `float32`, `float64`, `bfloat16`.
		    4-D with shape `[batch, height, width, channels]`.
		  size:  A 1-D int32 Tensor of 2 elements: `orig_height, orig_width`. The
		    original input size.
		  align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and grad tensors are
		    aligned. Defaults to false.
		  half_pixel_centers: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grads`.
	**/
	static public function resize_nearest_neighbor_grad(grads:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
	static public function resize_nearest_neighbor_grad_eager_fallback(grads:Dynamic, size:Dynamic, align_corners:Dynamic, half_pixel_centers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts one or more images from RGB to Grayscale.
		
		Outputs a tensor of the same `DType` and rank as `images`.  The size of the
		last dimension of the output is 1, containing the Grayscale value of the
		pixels.
		
		>>> original = tf.constant([[[1.0, 2.0, 3.0]]])
		>>> converted = tf.image.rgb_to_grayscale(original)
		>>> print(converted.numpy())
		[[[1.81...]]]
		
		Args:
		  images: The RGB tensor to convert. The last dimension must have size 3 and
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
		
		Usage Example:
		
		>>> blue_image = tf.stack([
		...    tf.zeros([5,5]),
		...    tf.zeros([5,5]),
		...    tf.ones([5,5])],
		...    axis=-1)
		>>> blue_hsv_image = tf.image.rgb_to_hsv(blue_image)
		>>> blue_hsv_image[0,0].numpy()
		array([0.6666667, 1. , 1. ], dtype=float32)
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    1-D or higher rank. RGB data to convert. Last dimension must be size 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function rgb_to_hsv(images:Dynamic, ?name:Dynamic):Dynamic;
	static public function rgb_to_hsv_eager_fallback(images:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts one or more images from RGB to YIQ.
		
		Outputs a tensor of the same shape as the `images` tensor, containing the YIQ
		value of the pixels.
		The output is only well defined if the value in images are in [0,1].
		
		Usage Example:
		
		>>> x = tf.constant([[[1.0, 2.0, 3.0]]])
		>>> tf.image.rgb_to_yiq(x)
		<tf.Tensor: shape=(1, 1, 3), dtype=float32,
		numpy=array([[[ 1.815     , -0.91724455,  0.09962624]]], dtype=float32)>
		
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
		The output is only well defined if the value in images are in [0, 1].
		There are two ways of representing an image: [0, 255] pixel values range or
		[0, 1] (as float) pixel values range. Users need to convert the input image
		into a float [0, 1] range.
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		    size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function rgb_to_yuv(images:Dynamic):Dynamic;
	/**
		Rotate image(s) counter-clockwise by 90 degrees.
		
		
		For example:
		
		>>> a=tf.constant([[[1],[2]],
		...                [[3],[4]]])
		>>> # rotating `a` counter clockwise by 90 degrees
		>>> a_rot=tf.image.rot90(a)
		>>> print(a_rot[...,0].numpy())
		[[2 4]
		 [1 3]]
		>>> # rotating `a` counter clockwise by 270 degrees
		>>> a_rot=tf.image.rot90(a, k=3)
		>>> print(a_rot[...,0].numpy())
		[[3 1]
		 [4 2]]
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  k: A scalar integer. The number of times the image is rotated by 90 degrees.
		  name: A name for this operation (optional).
		
		Returns:
		  A rotated tensor of the same type and shape as `image`.
		
		Raises:
		  ValueError: if the shape of `image` not supported.
	**/
	static public function rot90(image:Dynamic, ?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate a single randomly distorted bounding box for an image. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`seed2` arg is deprecated.Use sample_distorted_bounding_box_v2 instead.
		
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
		visualize what the bounding box looks like.
		
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
		    tf.compat.v1.summary.image('images_with_box', image_with_box)
		
		    # Employ the bounding box to distort the image.
		    distorted_image = tf.slice(image, begin, size)
		```
		
		Note that if no bounding box information is available, setting
		`use_image_if_no_bounding_boxes = True` will assume there is a single implicit
		bounding box covering the whole image. If `use_image_if_no_bounding_boxes` is
		false and no bounding boxes are supplied, an error is raised.
		
		Args:
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`,
		    `int16`, `int32`, `int64`. 1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`. 3-D with shape `[batch, N, 4]`
		    describing the N bounding boxes associated with the image.
		  seed: An optional `int`. Defaults to `0`. If either `seed` or `seed2` are
		    set to non-zero, the random number generator is seeded by the given
		    `seed`.  Otherwise, it is seeded by a random seed.
		  seed2: An optional `int`. Defaults to `0`. A second seed to avoid seed
		    collision.
		  min_object_covered: A Tensor of type `float32`. Defaults to `0.1`. The
		    cropped area of the image must contain at least this fraction of any
		    bounding box supplied. The value of this parameter should be non-negative.
		    In the case of 0, the cropped area does not need to overlap any of the
		    bounding boxes supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75,
		    1.33]`. The cropped area of the image must have an aspect ratio = width /
		    height within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`. The
		    cropped area of the image must contain a fraction of the supplied image
		    within this range.
		  max_attempts: An optional `int`. Defaults to `100`. Number of attempts at
		    generating a cropped region of the image of the specified constraints.
		    After `max_attempts` failures, return the entire image.
		  use_image_if_no_bounding_boxes: An optional `bool`. Defaults to `False`.
		    Controls behavior if no bounding boxes supplied. If true, assume an
		    implicit bounding box covering the whole input. If false, raise an error.
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
	static public function sample_distorted_bounding_box_eager_fallback(image_size:Dynamic, bounding_boxes:Dynamic, seed:Dynamic, seed2:Dynamic, min_object_covered:Dynamic, aspect_ratio_range:Dynamic, area_range:Dynamic, max_attempts:Dynamic, use_image_if_no_bounding_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		visualize what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`.
		The bounding box coordinates are floats in `[0.0, 1.0]` relative to the width
		and the height of the underlying image.
		
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
		    tf.compat.v1.summary.image('images_with_box', image_with_box)
		
		    # Employ the bounding box to distort the image.
		    distorted_image = tf.slice(image, begin, size)
		```
		
		Note that if no bounding box information is available, setting
		`use_image_if_no_bounding_boxes = true` will assume there is a single implicit
		bounding box covering the whole image. If `use_image_if_no_bounding_boxes` is
		false and no bounding boxes are supplied, an error is raised.
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_sample_distorted_bounding_box`. Unlike using the `seed`
		param with `tf.image.random_*` ops, `tf.image.stateless_random_*` ops
		guarantee the same results given the same seed independent of how many times
		the function is called, and independent of global seed settings
		(e.g. tf.random.set_seed).
		
		Args:
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`,
		    `int16`, `int32`, `int64`. 1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`. 3-D with shape `[batch, N, 4]`
		    describing the N bounding boxes associated with the image.
		  seed: An optional `int`. Defaults to `0`. If `seed` is set to non-zero, the
		    random number generator is seeded by the given `seed`.  Otherwise, it is
		    seeded by a random seed.
		  min_object_covered: A Tensor of type `float32`. Defaults to `0.1`. The
		    cropped area of the image must contain at least this fraction of any
		    bounding box supplied. The value of this parameter should be non-negative.
		    In the case of 0, the cropped area does not need to overlap any of the
		    bounding boxes supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75,
		    1.33]`. The cropped area of the image must have an aspect `ratio = width /
		    height` within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`. The
		    cropped area of the image must contain a fraction of the supplied image
		    within this range.
		  max_attempts: An optional `int`. Defaults to `100`. Number of attempts at
		    generating a cropped region of the image of the specified constraints.
		    After `max_attempts` failures, return the entire image.
		  use_image_if_no_bounding_boxes: An optional `bool`. Defaults to `False`.
		    Controls behavior if no bounding boxes supplied. If true, assume an
		    implicit bounding box covering the whole input. If false, raise an error.
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
	static public function sample_distorted_bounding_box_v2(image_size:Dynamic, bounding_boxes:Dynamic, ?seed:Dynamic, ?min_object_covered:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function sample_distorted_bounding_box_v2_eager_fallback(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, seed:Dynamic, seed2:Dynamic, aspect_ratio_range:Dynamic, area_range:Dynamic, max_attempts:Dynamic, use_image_if_no_bounding_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  size: A `Tensor` of type `int32`.
		  scale: A `Tensor` of type `float32`.
		  translation: A `Tensor` of type `float32`.
		  kernel_type: An optional `string`. Defaults to `"lanczos3"`.
		  antialias: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function scale_and_translate(images:Dynamic, size:Dynamic, scale:Dynamic, translation:Dynamic, ?kernel_type:Dynamic, ?antialias:Dynamic, ?name:Dynamic):Dynamic;
	static public function scale_and_translate_eager_fallback(images:Dynamic, size:Dynamic, scale:Dynamic, translation:Dynamic, kernel_type:Dynamic, antialias:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  grads: A `Tensor`. Must be one of the following types: `float32`.
		  original_image: A `Tensor`. Must have the same type as `grads`.
		  scale: A `Tensor` of type `float32`.
		  translation: A `Tensor` of type `float32`.
		  kernel_type: An optional `string`. Defaults to `"lanczos3"`.
		  antialias: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grads`.
	**/
	static public function scale_and_translate_grad(grads:Dynamic, original_image:Dynamic, scale:Dynamic, translation:Dynamic, ?kernel_type:Dynamic, ?antialias:Dynamic, ?name:Dynamic):Dynamic;
	static public function scale_and_translate_grad_eager_fallback(grads:Dynamic, original_image:Dynamic, scale:Dynamic, translation:Dynamic, kernel_type:Dynamic, antialias:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a tensor holding Sobel edge maps.
		
		Example usage:
		
		For general usage, `image` would be loaded from a file as below:
		
		```python
		image_bytes = tf.io.read_file(path_to_image_file)
		image = tf.image.decode_image(image_bytes)
		image = tf.cast(image, tf.float32)
		image = tf.expand_dims(image, 0)
		```
		But for demo purposes, we are using randomly generated values for `image`:
		
		>>> image = tf.random.uniform(
		...   maxval=255, shape=[1, 28, 28, 3], dtype=tf.float32)
		>>> sobel = tf.image.sobel_edges(image)
		>>> sobel_y = np.asarray(sobel[0, :, :, :, 0]) # sobel in y-direction
		>>> sobel_x = np.asarray(sobel[0, :, :, :, 1]) # sobel in x-direction
		
		For displaying the sobel results, PIL's [Image Module](
		https://pillow.readthedocs.io/en/stable/reference/Image.html) can be used:
		
		```python
		# Display edge maps for the first channel (at index 0)
		Image.fromarray(sobel_y[..., 0] / 4 + 0.5).show()
		Image.fromarray(sobel_x[..., 0] / 4 + 0.5).show()
		```
		
		Args:
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
		perform any colorspace transform.  (If the input is already YUV, then it will
		compute YUV SSIM average.)
		
		Details:
		  - 11x11 Gaussian filter of width 1.5 is used.
		  - k1 = 0.01, k2 = 0.03 as in the original paper.
		
		The image sizes must be at least 11x11 because of the filter size.
		
		Example:
		
		```python
		    # Read images (of size 255 x 255) from file.
		    im1 = tf.image.decode_image(tf.io.read_file('path/to/im1.png'))
		    im2 = tf.image.decode_image(tf.io.read_file('path/to/im2.png'))
		    tf.shape(im1)  # `img1.png` has 3 channels; shape is `(255, 255, 3)`
		    tf.shape(im2)  # `img2.png` has 3 channels; shape is `(255, 255, 3)`
		    # Add an outer batch for each image.
		    im1 = tf.expand_dims(im1, axis=0)
		    im2 = tf.expand_dims(im2, axis=0)
		    # Compute SSIM over tf.uint8 Tensors.
		    ssim1 = tf.image.ssim(im1, im2, max_val=255, filter_size=11,
		                          filter_sigma=1.5, k1=0.01, k2=0.03)
		
		    # Compute SSIM over tf.float32 Tensors.
		    im1 = tf.image.convert_image_dtype(im1, tf.float32)
		    im2 = tf.image.convert_image_dtype(im2, tf.float32)
		    ssim2 = tf.image.ssim(im1, im2, max_val=1.0, filter_size=11,
		                          filter_sigma=1.5, k1=0.01, k2=0.03)
		    # ssim1 and ssim2 both have type tf.float32 and are almost equal.
		```
		
		Args:
		  img1: First image batch. 4-D Tensor of shape `[batch, height, width,
		    channels]` with only Positive Pixel Values.
		  img2: Second image batch. 4-D Tensor of shape `[batch, height, width,
		    channels]` with only Positive Pixel Values.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		  filter_size: Default value 11 (size of gaussian filter).
		  filter_sigma: Default value 1.5 (width of gaussian filter).
		  k1: Default value 0.01
		  k2: Default value 0.03 (SSIM is less sensitivity to K2 for lower values, so
		    it would be better if we took the values in the range of 0 < K2 < 0.4).
		
		Returns:
		  A tensor containing an SSIM value for each image in batch.  Returned SSIM
		  values are in range (-1, 1], when pixel values are non-negative. Returns
		  a tensor with shape: broadcast(img1.shape[:-3], img2.shape[:-3]).
	**/
	static public function ssim(img1:Dynamic, img2:Dynamic, max_val:Dynamic, ?filter_size:Dynamic, ?filter_sigma:Dynamic, ?k1:Dynamic, ?k2:Dynamic):Dynamic;
	/**
		Computes the MS-SSIM between img1 and img2.
		
		This function assumes that `img1` and `img2` are image batches, i.e. the last
		three dimensions are [height, width, channels].
		
		Note: The true SSIM is only defined on grayscale.  This function does not
		perform any colorspace transform.  (If the input is already YUV, then it will
		compute YUV SSIM average.)
		
		Original paper: Wang, Zhou, Eero P. Simoncelli, and Alan C. Bovik. "Multiscale
		structural similarity for image quality assessment." Signals, Systems and
		Computers, 2004.
		
		Args:
		  img1: First image batch with only Positive Pixel Values.
		  img2: Second image batch with only Positive Pixel Values. Must have the
		  same rank as img1.
		  max_val: The dynamic range of the images (i.e., the difference between the
		    maximum the and minimum allowed values).
		  power_factors: Iterable of weights for each of the scales. The number of
		    scales used is the length of the list. Index 0 is the unscaled
		    resolution's weight and each increasing scale corresponds to the image
		    being downsampled by 2.  Defaults to (0.0448, 0.2856, 0.3001, 0.2363,
		    0.1333), which are the values obtained in the original paper.
		  filter_size: Default value 11 (size of gaussian filter).
		  filter_sigma: Default value 1.5 (width of gaussian filter).
		  k1: Default value 0.01
		  k2: Default value 0.03 (SSIM is less sensitivity to K2 for lower values, so
		    it would be better if we took the values in the range of 0 < K2 < 0.4).
		
		Returns:
		  A tensor containing an MS-SSIM value for each image in batch.  The values
		  are in range [0, 1].  Returns a tensor with shape:
		  broadcast(img1.shape[:-3], img2.shape[:-3]).
	**/
	static public function ssim_multiscale(img1:Dynamic, img2:Dynamic, max_val:Dynamic, ?power_factors:Dynamic, ?filter_size:Dynamic, ?filter_sigma:Dynamic, ?k1:Dynamic, ?k2:Dynamic):Dynamic;
	/**
		Adjust the brightness of images by a random factor deterministically.
		
		Equivalent to `adjust_brightness()` using a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...      [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_brightness(x, 0.2, seed)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 1.1376241,  2.1376243,  3.1376243],
		        [ 4.1376243,  5.1376243,  6.1376243]],
		       [[ 7.1376243,  8.137624 ,  9.137624 ],
		        [10.137624 , 11.137624 , 12.137624 ]]], dtype=float32)>
		
		Args:
		  image: An image or images to adjust.
		  max_delta: float, must be non-negative.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  The brightness-adjusted image(s).
		
		Raises:
		  ValueError: if `max_delta` is negative.
	**/
	static public function stateless_random_brightness(image:Dynamic, max_delta:Dynamic, seed:Dynamic):Dynamic;
	/**
		Adjust the contrast of images by a random factor deterministically.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Args:
		  image: An image tensor with 3 or more dimensions.
		  lower: float.  Lower bound for the random contrast factor.
		  upper: float.  Upper bound for the random contrast factor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...      [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_contrast(x, 0.2, 0.5, seed)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[3.4605184, 4.4605184, 5.4605184],
		        [4.820173 , 5.820173 , 6.820173 ]],
		       [[6.179827 , 7.179827 , 8.179828 ],
		        [7.5394816, 8.539482 , 9.539482 ]]], dtype=float32)>
		
		Returns:
		  The contrast-adjusted image(s).
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function stateless_random_contrast(image:Dynamic, lower:Dynamic, upper:Dynamic, seed:Dynamic):Dynamic;
	/**
		Randomly flip an image horizontally (left to right) deterministically.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Example usage:
		
		>>> image = np.array([[[1], [2]], [[3], [4]]])
		>>> seed = (2, 3)
		>>> tf.image.stateless_random_flip_left_right(image, seed).numpy().tolist()
		[[[2], [1]], [[4], [3]]]
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  A tensor of the same type and shape as `image`.
	**/
	static public function stateless_random_flip_left_right(image:Dynamic, seed:Dynamic):Dynamic;
	/**
		Randomly flip an image vertically (upside down) deterministically.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Example usage:
		
		>>> image = np.array([[[1], [2]], [[3], [4]]])
		>>> seed = (2, 3)
		>>> tf.image.stateless_random_flip_up_down(image, seed).numpy().tolist()
		[[[3], [4]], [[1], [2]]]
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  A tensor of the same type and shape as `image`.
	**/
	static public function stateless_random_flip_up_down(image:Dynamic, seed:Dynamic):Dynamic;
	/**
		Adjust the hue of RGB images by a random factor deterministically.
		
		Equivalent to `adjust_hue()` but uses a `delta` randomly picked in the
		interval `[-max_delta, max_delta)`.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		`max_delta` must be in the interval `[0, 0.5]`.
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...      [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_hue(x, 0.2, seed)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 1.6514902,  1.       ,  3.       ],
		        [ 4.65149  ,  4.       ,  6.       ]],
		       [[ 7.65149  ,  7.       ,  9.       ],
		        [10.65149  , 10.       , 12.       ]]], dtype=float32)>
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  max_delta: float. The maximum value for the random delta.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `max_delta` is invalid.
	**/
	static public function stateless_random_hue(image:Dynamic, max_delta:Dynamic, seed:Dynamic):Dynamic;
	/**
		Deterministically radomize jpeg encoding quality for inducing jpeg noise.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		`min_jpeg_quality` must be in the interval `[0, 100]` and less than
		`max_jpeg_quality`.
		`max_jpeg_quality` must be in the interval `[0, 100]`.
		
		Usage Example:
		
		>>> x = [[[1, 2, 3],
		...       [4, 5, 6]],
		...      [[7, 8, 9],
		...       [10, 11, 12]]]
		>>> x_uint8 = tf.cast(x, tf.uint8)
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_jpeg_quality(x_uint8, 75, 95, seed)
		<tf.Tensor: shape=(2, 2, 3), dtype=uint8, numpy=
		array([[[ 0,  4,  5],
		        [ 1,  5,  6]],
		       [[ 5,  9, 10],
		        [ 5,  9, 10]]], dtype=uint8)>
		
		Args:
		  image: 3D image. Size of the last dimension must be 1 or 3.
		  min_jpeg_quality: Minimum jpeg encoding quality to use.
		  max_jpeg_quality: Maximum jpeg encoding quality to use.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `min_jpeg_quality` or `max_jpeg_quality` is invalid.
	**/
	static public function stateless_random_jpeg_quality(image:Dynamic, min_jpeg_quality:Dynamic, max_jpeg_quality:Dynamic, seed:Dynamic):Dynamic;
	/**
		Adjust the saturation of RGB images by a random factor deterministically.
		
		Equivalent to `adjust_saturation()` but uses a `saturation_factor` randomly
		picked in the interval `[lower, upper)`.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...      [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_saturation(x, 0.5, 1.0, seed)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 1.1559395,  2.0779698,  3.       ],
		        [ 4.1559396,  5.07797  ,  6.       ]],
		       [[ 7.1559396,  8.07797  ,  9.       ],
		        [10.155939 , 11.07797  , 12.       ]]], dtype=float32)>
		
		Args:
		  image: RGB image or images. The size of the last dimension must be 3.
		  lower: float.  Lower bound for the random saturation factor.
		  upper: float.  Upper bound for the random saturation factor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
		
		Raises:
		  ValueError: if `upper <= lower` or if `lower < 0`.
	**/
	static public function stateless_random_saturation(image:Dynamic, lower:Dynamic, upper:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Generate a randomly distorted bounding box for an image deterministically.
		
		Bounding box annotations are often supplied in addition to ground-truth labels
		in image recognition or object localization tasks. A common technique for
		training such a system is to randomly distort an image while preserving
		its content, i.e. *data augmentation*. This Op, given the same `seed`,
		deterministically outputs a randomly distorted localization of an object, i.e.
		bounding box, given an `image_size`, `bounding_boxes` and a series of
		constraints.
		
		The output of this Op is a single bounding box that may be used to crop the
		original image. The output is returned as 3 tensors: `begin`, `size` and
		`bboxes`. The first 2 tensors can be fed directly into `tf.slice` to crop the
		image. The latter may be supplied to `tf.image.draw_bounding_boxes` to
		visualize what the bounding box looks like.
		
		Bounding boxes are supplied and returned as `[y_min, x_min, y_max, x_max]`.
		The bounding box coordinates are floats in `[0.0, 1.0]` relative to the width
		and the height of the underlying image.
		
		The output of this Op is guaranteed to be the same given the same `seed` and
		is independent of how many times the function is called, and independent of
		global seed settings (e.g. `tf.random.set_seed`).
		
		Example usage:
		
		>>> image = np.array([[[1], [2], [3]], [[4], [5], [6]], [[7], [8], [9]]])
		>>> bbox = tf.constant(
		...   [0.0, 0.0, 1.0, 1.0], dtype=tf.float32, shape=[1, 1, 4])
		>>> seed = (1, 2)
		>>> # Generate a single distorted bounding box.
		>>> bbox_begin, bbox_size, bbox_draw = (
		...   tf.image.stateless_sample_distorted_bounding_box(
		...     tf.shape(image), bounding_boxes=bbox, seed=seed))
		>>> # Employ the bounding box to distort the image.
		>>> tf.slice(image, bbox_begin, bbox_size)
		<tf.Tensor: shape=(2, 2, 1), dtype=int64, numpy=
		array([[[1],
		        [2]],
		       [[4],
		        [5]]])>
		>>> # Draw the bounding box in an image summary.
		>>> colors = np.array([[1.0, 0.0, 0.0], [0.0, 0.0, 1.0]])
		>>> tf.image.draw_bounding_boxes(
		...   tf.expand_dims(tf.cast(image, tf.float32),0), bbox_draw, colors)
		<tf.Tensor: shape=(1, 3, 3, 1), dtype=float32, numpy=
		array([[[[1.],
		         [1.],
		         [3.]],
		        [[1.],
		         [1.],
		         [6.]],
		        [[7.],
		         [8.],
		         [9.]]]], dtype=float32)>
		
		Note that if no bounding box information is available, setting
		`use_image_if_no_bounding_boxes = true` will assume there is a single implicit
		bounding box covering the whole image. If `use_image_if_no_bounding_boxes` is
		false and no bounding boxes are supplied, an error is raised.
		
		Args:
		  image_size: A `Tensor`. Must be one of the following types: `uint8`, `int8`,
		    `int16`, `int32`, `int64`. 1-D, containing `[height, width, channels]`.
		  bounding_boxes: A `Tensor` of type `float32`. 3-D with shape `[batch, N, 4]`
		    describing the N bounding boxes associated with the image.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  min_object_covered: A Tensor of type `float32`. Defaults to `0.1`. The
		    cropped area of the image must contain at least this fraction of any
		    bounding box supplied. The value of this parameter should be non-negative.
		    In the case of 0, the cropped area does not need to overlap any of the
		    bounding boxes supplied.
		  aspect_ratio_range: An optional list of `floats`. Defaults to `[0.75,
		    1.33]`. The cropped area of the image must have an aspect `ratio = width /
		    height` within this range.
		  area_range: An optional list of `floats`. Defaults to `[0.05, 1]`. The
		    cropped area of the image must contain a fraction of the supplied image
		    within this range.
		  max_attempts: An optional `int`. Defaults to `100`. Number of attempts at
		    generating a cropped region of the image of the specified constraints.
		    After `max_attempts` failures, return the entire image.
		  use_image_if_no_bounding_boxes: An optional `bool`. Defaults to `False`.
		    Controls behavior if no bounding boxes supplied. If true, assume an
		    implicit bounding box covering the whole input. If false, raise an error.
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
	static public function stateless_sample_distorted_bounding_box(image_size:Dynamic, bounding_boxes:Dynamic, seed:Dynamic, ?min_object_covered:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_sample_distorted_bounding_box_eager_fallback(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, seed:Dynamic, aspect_ratio_range:Dynamic, area_range:Dynamic, max_attempts:Dynamic, use_image_if_no_bounding_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  images: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
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
		
		Usage Example:
		
		>>> x = [[[1.0, 2.0, 3.0],
		...       [4.0, 5.0, 6.0]],
		...     [[7.0, 8.0, 9.0],
		...       [10.0, 11.0, 12.0]]]
		>>> tf.image.transpose(x)
		<tf.Tensor: shape=(2, 2, 3), dtype=float32, numpy=
		array([[[ 1.,  2.,  3.],
		        [ 7.,  8.,  9.]],
		       [[ 4.,  5.,  6.],
		        [10., 11., 12.]]], dtype=float32)>
		
		Args:
		  image: 4-D Tensor of shape `[batch, height, width, channels]` or 3-D Tensor
		    of shape `[height, width, channels]`.
		  name: A name for this operation (optional).
		
		Returns:
		  If `image` was 4-D, a 4-D float Tensor of shape
		 `[batch, width, height, channels]`
		  If `image` was 3-D, a 3-D float Tensor of shape
		 `[width, height, channels]`
		
		Raises:
		  ValueError: if the shape of `image` not supported.
		
		Usage Example:
		
		>>> image = [[[1, 2], [3, 4]],
		...         [[5, 6], [7, 8]],
		...         [[9, 10], [11, 12]]]
		>>> image = tf.constant(image)
		>>> tf.image.transpose(image)
		<tf.Tensor: shape=(2, 3, 2), dtype=int32, numpy=
		array([[[ 1,  2],
		       [ 5,  6],
		       [ 9, 10]],
		      [[ 3,  4],
		       [ 7,  8],
		       [11, 12]]], dtype=int32)>
	**/
	static public function transpose(image:Dynamic, ?name:Dynamic):Dynamic;
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
		
		As per the above description, you need to scale your YUV images if their
		pixel values are not in the required range. Below given example illustrates
		preprocessing of each channel of images before feeding them to `yuv_to_rgb`.
		
		```python
		yuv_images = tf.random.uniform(shape=[100, 64, 64, 3], maxval=255)
		last_dimension_axis = len(yuv_images.shape) - 1
		yuv_tensor_images = tf.truediv(
		    tf.subtract(
		        yuv_images,
		        tf.reduce_min(yuv_images)
		    ),
		    tf.subtract(
		        tf.reduce_max(yuv_images),
		        tf.reduce_min(yuv_images)
		     )
		)
		y, u, v = tf.split(yuv_tensor_images, 3, axis=last_dimension_axis)
		target_uv_min, target_uv_max = -0.5, 0.5
		u = u * (target_uv_max - target_uv_min) + target_uv_min
		v = v * (target_uv_max - target_uv_min) + target_uv_min
		preprocessed_yuv_images = tf.concat([y, u, v], axis=last_dimension_axis)
		rgb_tensor_images = tf.image.yuv_to_rgb(preprocessed_yuv_images)
		```
		
		Args:
		  images: 2-D or higher rank. Image data to convert. Last dimension must be
		    size 3.
		
		Returns:
		  images: tensor with the same shape as `images`.
	**/
	static public function yuv_to_rgb(images:Dynamic):Dynamic;
}