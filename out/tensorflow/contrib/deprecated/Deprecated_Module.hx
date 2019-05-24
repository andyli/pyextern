/* This file is generated, do not edit! */
package tensorflow.contrib.deprecated;
@:pythonImport("tensorflow.contrib.deprecated") extern class Deprecated_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Outputs a `Summary` protocol buffer with audio. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.audio. Note that tf.summary.audio uses the node name instead of the tag. This means that TensorFlow will automatically de-duplicate summary names based on the scope they are created in.
		
		This op is deprecated. Please switch to tf.summary.audio.
		For an explanation of why this op was deprecated, and information on how to
		migrate, look ['here'](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/contrib/deprecated/__init__.py)
		
		The summary has up to `max_outputs` summary values containing audio. The
		audio is built from `tensor` which must be 3-D with shape `[batch_size,
		frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
		assumed to be in the range of `[-1.0, 1.0]` with a sample rate of
		`sample_rate`.
		
		The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
		build the `tag` of the summary values:
		
		*  If `max_outputs` is 1, the summary value tag is '*tag* /audio'.
		*  If `max_outputs` is greater than 1, the summary value tags are
		   generated sequentially as '*tag* /audio/0', '*tag* /audio/1', etc.
		
		Args:
		  tag: A scalar `Tensor` of type `string`. Used to build the `tag`
		    of the summary values.
		  tensor: A 3-D `float32` `Tensor` of shape `[batch_size, frames, channels]`
		    or a 2-D `float32` `Tensor` of shape `[batch_size, frames]`.
		  sample_rate: A Scalar `float32` `Tensor` indicating the sample rate of the
		    signal in hertz.
		  max_outputs: Max number of batch elements to generate audio for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [ops.GraphKeys.SUMMARIES]
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function audio_summary(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a histogram. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.histogram. Note that tf.summary.histogram uses the node name instead of the tag. This means that TensorFlow will automatically de-duplicate summary names based on the scope they are created in.
		
		This ops is deprecated. Please switch to tf.summary.histogram.
		
		For an explanation of why this op was deprecated, and information on how to
		migrate, look ['here'](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/contrib/deprecated/__init__.py)
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing a histogram for `values`.
		
		This op reports an `InvalidArgument` error if any value is not finite.
		
		Args:
		  tag: A `string` `Tensor`. 0-D.  Tag to use for the summary value.
		  values: A real numeric `Tensor`. Any shape. Values to use to
		    build the histogram.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function histogram_summary(tag:Dynamic, values:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with images. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.image. Note that tf.summary.image uses the node name instead of the tag. This means that TensorFlow will automatically de-duplicate summary names based on the scope they are created in. Also, the max_images argument was renamed to max_outputs.
		
		For an explanation of why this op was deprecated, and information on how to
		migrate, look ['here'](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/contrib/deprecated/__init__.py)
		
		The summary has up to `max_images` summary values containing images. The
		images are built from `tensor` which must be 4-D with shape `[batch_size,
		height, width, channels]` and where `channels` can be:
		
		*  1: `tensor` is interpreted as Grayscale.
		*  3: `tensor` is interpreted as RGB.
		*  4: `tensor` is interpreted as RGBA.
		
		The images have the same number of channels as the input tensor. For float
		input, the values are normalized one image at a time to fit in the range
		`[0, 255]`.  `uint8` values are unchanged.  The op uses two different
		normalization algorithms:
		
		*  If the input values are all positive, they are rescaled so the largest one
		   is 255.
		
		*  If any input value is negative, the values are shifted so input value 0.0
		   is at 127.  They are then rescaled so that either the smallest value is 0,
		   or the largest one is 255.
		
		The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
		build the `tag` of the summary values:
		
		*  If `max_images` is 1, the summary value tag is '*tag* /image'.
		*  If `max_images` is greater than 1, the summary value tags are
		   generated sequentially as '*tag* /image/0', '*tag* /image/1', etc.
		
		Args:
		  tag: A scalar `Tensor` of type `string`. Used to build the `tag`
		    of the summary values.
		  tensor: A 4-D `uint8` or `float32` `Tensor` of shape `[batch_size, height,
		    width, channels]` where `channels` is 1, 3, or 4.
		  max_images: Max number of batch elements to generate images for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [ops.GraphKeys.SUMMARIES]
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function image_summary(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Merges all summaries collected in the default graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.merge_all.
		
		This op is deprecated. Please switch to tf.summary.merge_all, which has
		identical behavior.
		
		Args:
		  key: `GraphKey` used to collect the summaries.  Defaults to
		    `GraphKeys.SUMMARIES`.
		
		Returns:
		  If no summaries were collected, returns None.  Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function merge_all_summaries(?key:Dynamic):Dynamic;
	/**
		Merges summaries. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.merge.
		
		This op is deprecated. Please switch to tf.summary.merge, which has identical
		behavior.
		
		This op creates a
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		protocol buffer that contains the union of all the values in the input
		summaries.
		
		When the Op is run, it reports an `InvalidArgument` error if multiple values
		in the summaries to merge use the same tag.
		
		Args:
		  inputs: A list of `string` `Tensor` objects containing serialized `Summary`
		    protocol buffers.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function merge_summary(inputs:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with scalar values. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.scalar. Note that tf.summary.scalar uses the node name instead of the tag. This means that TensorFlow will automatically de-duplicate summary names based on the scope they are created in. Also, passing a tensor or list of tags to a scalar summary op is no longer supported.
		
		This ops is deprecated. Please switch to tf.summary.scalar.
		For an explanation of why this op was deprecated, and information on how to
		migrate, look ['here'](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/contrib/deprecated/__init__.py)
		
		The input `tags` and `values` must have the same shape.  The generated
		summary has a summary value for each tag-value pair in `tags` and `values`.
		
		Args:
		  tags: A `string` `Tensor`.  Tags for the summaries.
		  values: A real numeric Tensor.  Values for the summaries.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function scalar_summary(tags:Dynamic, values:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
}