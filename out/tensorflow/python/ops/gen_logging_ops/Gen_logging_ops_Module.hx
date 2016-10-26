/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_logging_ops;
@:pythonImport("tensorflow.python.ops.gen_logging_ops") extern class Gen_logging_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __assert_outputs : Dynamic;
	static public var __audio_summary_outputs : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __histogram_summary_outputs : Dynamic;
	static public var __image_summary_outputs : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __merge_summary_outputs : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __print_outputs : Dynamic;
	static public var __scalar_summary_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __tensor_summary_outputs : Dynamic;
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		Args:
		  condition: A `Tensor` of type `bool`. The condition to evaluate.
		  data: A list of `Tensor` objects.
		    The tensors to print out when condition is false.
		  summarize: An optional `int`. Defaults to `3`.
		    Print this many entries of each tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _assert(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with audio.
		
		The summary has up to `max_outputs` summary values containing audio. The
		audio is built from `tensor` which must be 3-D with shape `[batch_size,
		frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
		assumed to be in the range of `[-1.0, 1.0]` with a sample rate of `sample_rate`.
		
		The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
		build the `tag` of the summary values:
		
		*  If `max_outputs` is 1, the summary value tag is '*tag* /audio'.
		*  If `max_outputs` is greater than 1, the summary value tags are
		   generated sequentially as '*tag* /audio/0', '*tag* /audio/1', etc.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    Scalar. Used to build the `tag` attribute of the summary values.
		  tensor: A `Tensor` of type `float32`. 2-D of shape `[batch_size, frames]`.
		  sample_rate: A `float`. The sample rate of the signal in hertz.
		  max_outputs: An optional `int` that is `>= 1`. Defaults to `3`.
		    Max number of batch elements to generate audio for.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Scalar. Serialized `Summary` protocol buffer.
	**/
	static public function _audio_summary(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a histogram.
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing a histogram for `values`.
		
		This op reports an `InvalidArgument` error if any value is not finite.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    Scalar.  Tag to use for the `Summary.Value`.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    Any shape. Values to use to build the histogram.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Scalar. Serialized `Summary` protocol buffer.
	**/
	static public function _histogram_summary(tag:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with images.
		
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
		
		The `bad_color` argument is the color to use in the generated images for
		non-finite input values.  It is a `unit8` 1-D tensor of length `channels`.
		Each element must be in the range `[0, 255]` (It represents the value of a
		pixel in the output image).  Non-finite values in the input tensor are
		replaced by this tensor in the output image.  The default value is the color
		red.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    Scalar. Used to build the `tag` attribute of the summary values.
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `float32`, `half`.
		    4-D of shape `[batch_size, height, width, channels]` where
		    `channels` is 1, 3, or 4.
		  max_images: An optional `int` that is `>= 1`. Defaults to `3`.
		    Max number of batch elements to generate images for.
		  bad_color: . Defaults to `[]`.
		    Color to use for pixels with non-finite values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Scalar. Serialized `Summary` protocol buffer.
	**/
	static public function _image_summary(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?bad_color:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Merges summaries.
		
		This op creates a
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		protocol buffer that contains the union of all the values in the input
		summaries.
		
		When the Op is run, it reports an `InvalidArgument` error if multiple values
		in the summaries to merge use the same tag.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects of type `string`.
		    Can be of any shape.  Each must contain serialized `Summary` protocol
		    buffers.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Scalar. Serialized `Summary` protocol buffer.
	**/
	static public function _merge_summary(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Prints a list of tensors.
		
		Passes `input` through to `output` and prints `data` when evaluating.
		
		Args:
		  input: A `Tensor`. The tensor passed to `output`
		  data: A list of `Tensor` objects.
		    A list of tensors to print out when op is evaluated.
		  message: An optional `string`. Defaults to `""`.
		    A string, prefix of the error message.
		  first_n: An optional `int`. Defaults to `-1`.
		    Only log `first_n` number of times. -1 disables logging.
		  summarize: An optional `int`. Defaults to `3`.
		    Only print this many entries of each tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The unmodified `input` tensor
	**/
	static public function _print(input:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with scalar values.
		
		The input `tags` and `values` must have the same shape.  The generated summary
		has a summary value for each tag-value pair in `tags` and `values`.
		
		Args:
		  tags: A `Tensor` of type `string`. Tags for the summary.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    Same shape as `tags.  Values for the summary.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  Scalar.  Serialized `Summary` protocol buffer.
	**/
	static public function _scalar_summary(tags:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a tensor.
		
		Args:
		  tensor: A `Tensor`. A tensor to serialize.
		  display_name: A `string`. A name to associate with the data series.
		  description: An optional `string`. Defaults to `""`.
		    An optional long description of the data being output.
		  labels: An optional list of `strings`. Defaults to `[]`.
		    a list of strings used to specify how the data can be interpreted, e.g.
		    a string tensor containing jpg images should have 'encoding:image/jpg'; a
		    string tensor with foo protos should have 'encoding:proto/X/Y/foo.proto';
		    a numeric tensor containing bounding boxes may have
		    'bounding_box:x1,y1,x2,y2,'. If the tensor is a part of a group of related
		    outputs, that can be encoded through a 'group:$groupName/$roleInGroup' label.
		    Labels may be formatted as 'prefix:value'. The prefix may be re-used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function _tensor_summary(tensor:Dynamic, display_name:Dynamic, ?description:Dynamic, ?labels:Dynamic, ?name:Dynamic):Dynamic;
}