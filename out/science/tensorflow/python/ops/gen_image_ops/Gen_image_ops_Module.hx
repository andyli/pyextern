/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_image_ops;
@:pythonImport("tensorflow.python.ops.gen_image_ops") extern class Gen_image_ops_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_hsv_to_rgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rgb_to_hsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function adjust_contrast(images:Dynamic, contrast_factor:Dynamic, min_value:Dynamic, max_value:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function adjust_hue(images:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	static public function adjust_hue_eager_fallback(images:Dynamic, delta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function adjust_saturation(images:Dynamic, scale:Dynamic, ?name:Dynamic):Dynamic;
	static public function adjust_saturation_eager_fallback(images:Dynamic, scale:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function combined_non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size_per_class:Dynamic, max_total_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, ?pad_per_class:Dynamic, ?clip_boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function combined_non_max_suppression_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size_per_class:Dynamic, max_total_size:Dynamic, iou_threshold:Dynamic, score_threshold:Dynamic, pad_per_class:Dynamic, clip_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function decode_image(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?expand_animations:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function draw_bounding_boxes(images:Dynamic, boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function draw_bounding_boxes_eager_fallback(images:Dynamic, boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function encode_png(image:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	static public function encode_png_eager_fallback(image:Dynamic, compression:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function extract_glimpse(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?noise:Dynamic, ?name:Dynamic):Dynamic;
	static public function extract_glimpse_eager_fallback(input:Dynamic, size:Dynamic, offsets:Dynamic, centered:Dynamic, normalized:Dynamic, uniform_noise:Dynamic, noise:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function extract_glimpse_v2(input:Dynamic, size:Dynamic, offsets:Dynamic, ?centered:Dynamic, ?normalized:Dynamic, ?uniform_noise:Dynamic, ?noise:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function generate_bounding_box_proposals(scores:Dynamic, bbox_deltas:Dynamic, image_info:Dynamic, anchors:Dynamic, nms_threshold:Dynamic, pre_nms_topn:Dynamic, min_size:Dynamic, ?post_nms_topn:Dynamic, ?name:Dynamic):Dynamic;
	static public function generate_bounding_box_proposals_eager_fallback(scores:Dynamic, bbox_deltas:Dynamic, image_info:Dynamic, anchors:Dynamic, nms_threshold:Dynamic, pre_nms_topn:Dynamic, min_size:Dynamic, post_nms_topn:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function non_max_suppression(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, ?iou_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_eager_fallback(boxes:Dynamic, scores:Dynamic, max_output_size:Dynamic, iou_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function non_max_suppression_with_overlaps(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, overlap_threshold:Dynamic, score_threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_max_suppression_with_overlaps_eager_fallback(overlaps:Dynamic, scores:Dynamic, max_output_size:Dynamic, overlap_threshold:Dynamic, score_threshold:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function resize_area_eager_fallback(images:Dynamic, size:Dynamic, align_corners:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function resize_bicubic(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function resize_bilinear(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function resize_nearest_neighbor(images:Dynamic, size:Dynamic, ?align_corners:Dynamic, ?half_pixel_centers:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sample_distorted_bounding_box_v2(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function stateless_sample_distorted_bounding_box(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, seed:Dynamic, ?aspect_ratio_range:Dynamic, ?area_range:Dynamic, ?max_attempts:Dynamic, ?use_image_if_no_bounding_boxes:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_sample_distorted_bounding_box_eager_fallback(image_size:Dynamic, bounding_boxes:Dynamic, min_object_covered:Dynamic, seed:Dynamic, aspect_ratio_range:Dynamic, area_range:Dynamic, max_attempts:Dynamic, use_image_if_no_bounding_boxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}