/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_logging_ops;
@:pythonImport("tensorflow.python.ops.gen_logging_ops") extern class Gen_logging_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function _assert
	**/
	static public function _assert_eager_fallback(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _print(input:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function _print
	**/
	static public function _print_eager_fallback(input:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  A `Tensor` of type `string`.
	**/
	static public function audio_summary(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function audio_summary
	**/
	static public function audio_summary_eager_fallback(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  sample_rate: A `Tensor` of type `float32`.
		    The sample rate of the signal in hertz.
		  max_outputs: An optional `int` that is `>= 1`. Defaults to `3`.
		    Max number of batch elements to generate audio for.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function audio_summary_v2(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function audio_summary_v2
	**/
	static public function audio_summary_v2_eager_fallback(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Outputs a `Summary` protocol buffer with a histogram.
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing a histogram for `values`.
		
		This op reports an `InvalidArgument` error if any value is not finite.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    Scalar.  Tag to use for the `Summary.Value`.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    Any shape. Values to use to build the histogram.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function histogram_summary(tag:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function histogram_summary
	**/
	static public function histogram_summary_eager_fallback(tag:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		non-finite input values.  It is a `uint8` 1-D tensor of length `channels`.
		Each element must be in the range `[0, 255]` (It represents the value of a
		pixel in the output image).  Non-finite values in the input tensor are
		replaced by this tensor in the output image.  The default value is the color
		red.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    Scalar. Used to build the `tag` attribute of the summary values.
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `float32`, `half`, `float64`.
		    4-D of shape `[batch_size, height, width, channels]` where
		    `channels` is 1, 3, or 4.
		  max_images: An optional `int` that is `>= 1`. Defaults to `3`.
		    Max number of batch elements to generate images for.
		  bad_color: An optional `tf.TensorProto`. Defaults to `dtype: DT_UINT8 tensor_shape { dim { size: 4 } } int_val: 255 int_val: 0 int_val: 0 int_val: 255`.
		    Color to use for pixels with non-finite values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function image_summary(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?bad_color:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function image_summary
	**/
	static public function image_summary_eager_fallback(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?bad_color:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Merges summaries.
		
		This op creates a
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		protocol buffer that contains the union of all the values in the input
		summaries.
		
		When the Op is run, it reports an `InvalidArgument` error if multiple values
		in the summaries to merge use the same tag.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `string`.
		    Can be of any shape.  Each must contain serialized `Summary` protocol
		    buffers.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function merge_summary(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function merge_summary
	**/
	static public function merge_summary_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Prints a string scalar.
		
		Prints a string scalar to the desired output_stream.
		
		Args:
		  input: A `Tensor` of type `string`. The string scalar to print.
		  output_stream: An optional `string`. Defaults to `"stderr"`.
		    A string specifying the output stream or logging level to print to.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function print_v2(input:Dynamic, ?output_stream:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function print_v2
	**/
	static public function print_v2_eager_fallback(input:Dynamic, ?output_stream:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with scalar values.
		
		The input `tags` and `values` must have the same shape.  The generated summary
		has a summary value for each tag-value pair in `tags` and `values`.
		
		Args:
		  tags: A `Tensor` of type `string`. Tags for the summary.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    Same shape as `tags.  Values for the summary.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function scalar_summary(tags:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function scalar_summary
	**/
	static public function scalar_summary_eager_fallback(tags:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a tensor.
		
		This op is being phased out in favor of TensorSummaryV2, which lets callers pass
		a tag as well as a serialized SummaryMetadata proto string that contains
		plugin-specific data. We will keep this op to maintain backwards compatibility.
		
		Args:
		  tensor: A `Tensor`. A tensor to serialize.
		  description: An optional `string`. Defaults to `""`.
		    A json-encoded SummaryDescription proto.
		  labels: An optional list of `strings`. Defaults to `[]`.
		    An unused list of strings.
		  display_name: An optional `string`. Defaults to `""`. An unused string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tensor_summary(tensor:Dynamic, ?description:Dynamic, ?labels:Dynamic, ?display_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_summary
	**/
	static public function tensor_summary_eager_fallback(tensor:Dynamic, ?description:Dynamic, ?labels:Dynamic, ?display_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a tensor and per-plugin data.
		
		Args:
		  tag: A `Tensor` of type `string`.
		    A string attached to this summary. Used for organization in TensorBoard.
		  tensor: A `Tensor`. A tensor to serialize.
		  serialized_summary_metadata: A `Tensor` of type `string`.
		    A serialized SummaryMetadata proto. Contains plugin
		    data.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tensor_summary_v2(tag:Dynamic, tensor:Dynamic, serialized_summary_metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_summary_v2
	**/
	static public function tensor_summary_v2_eager_fallback(tag:Dynamic, tensor:Dynamic, serialized_summary_metadata:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provides the time since epoch in seconds.
		
		Returns the timestamp as a `float64` for seconds since the Unix epoch.
		
		Note: the timestamp is computed when the op is executed, not when it is added
		to the graph.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float64`.
	**/
	static public function timestamp(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function timestamp
	**/
	static public function timestamp_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
}