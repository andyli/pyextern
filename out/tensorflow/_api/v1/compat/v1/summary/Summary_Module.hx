/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.summary;
@:pythonImport("tensorflow._api.v1.compat.v1.summary") extern class Summary_Module {
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
		Outputs a `Summary` protocol buffer with audio.
		
		The summary has up to `max_outputs` summary values containing audio. The
		audio is built from `tensor` which must be 3-D with shape `[batch_size,
		frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
		assumed to be in the range of `[-1.0, 1.0]` with a sample rate of
		`sample_rate`.
		
		The `tag` in the outputted Summary.Value protobufs is generated based on the
		name, with a suffix depending on the max_outputs setting:
		
		*  If `max_outputs` is 1, the summary value tag is '*name* /audio'.
		*  If `max_outputs` is greater than 1, the summary value tags are
		   generated sequentially as '*name* /audio/0', '*name* /audio/1', etc
		
		Args:
		  name: A name for the generated node. Will also serve as a series name in
		    TensorBoard.
		  tensor: A 3-D `float32` `Tensor` of shape `[batch_size, frames, channels]`
		    or a 2-D `float32` `Tensor` of shape `[batch_size, frames]`.
		  sample_rate: A Scalar `float32` `Tensor` indicating the sample rate of the
		    signal in hertz.
		  max_outputs: Max number of batch elements to generate audio for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [_ops.GraphKeys.SUMMARIES]
		  family: Optional; if provided, used as the prefix of the summary tag name,
		    which controls the tab name used for display on Tensorboard.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function audio(name:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?collections:Dynamic, ?family:Dynamic):Dynamic;
	/**
		Given a TensorSummary node_def, retrieve its SummaryDescription.
		
		When a Summary op is instantiated, a SummaryDescription of associated
		metadata is stored in its NodeDef. This method retrieves the description.
		
		Args:
		  node_def: the node_def_pb2.NodeDef of a TensorSummary op
		
		Returns:
		  a summary_pb2.SummaryDescription
		
		Raises:
		  ValueError: if the node is not a summary op.
		
		@compatibility(eager)
		Not compatible with eager execution. To write TensorBoard
		summaries under eager execution, use `tf.contrib.summary` instead.
		@end_compatibility
	**/
	static public function get_summary_description(node_def:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a histogram.
		
		Adding a histogram summary makes it possible to visualize your data's
		distribution in TensorBoard. You can see a detailed explanation of the
		TensorBoard histogram dashboard
		[here](https://www.tensorflow.org/get_started/tensorboard_histograms).
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing a histogram for `values`.
		
		This op reports an `InvalidArgument` error if any value is not finite.
		
		Args:
		  name: A name for the generated node. Will also serve as a series name in
		    TensorBoard.
		  values: A real numeric `Tensor`. Any shape. Values to use to
		    build the histogram.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  family: Optional; if provided, used as the prefix of the summary tag name,
		    which controls the tab name used for display on Tensorboard.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function histogram(name:Dynamic, values:Dynamic, ?collections:Dynamic, ?family:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with images.
		
		The summary has up to `max_outputs` summary values containing images. The
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
		
		The `tag` in the outputted Summary.Value protobufs is generated based on the
		name, with a suffix depending on the max_outputs setting:
		
		*  If `max_outputs` is 1, the summary value tag is '*name* /image'.
		*  If `max_outputs` is greater than 1, the summary value tags are
		   generated sequentially as '*name* /image/0', '*name* /image/1', etc.
		
		Args:
		  name: A name for the generated node. Will also serve as a series name in
		    TensorBoard.
		  tensor: A 4-D `uint8` or `float32` `Tensor` of shape `[batch_size, height,
		    width, channels]` where `channels` is 1, 3, or 4.
		  max_outputs: Max number of batch elements to generate images for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [_ops.GraphKeys.SUMMARIES]
		  family: Optional; if provided, used as the prefix of the summary tag name,
		    which controls the tab name used for display on Tensorboard.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function image(name:Dynamic, tensor:Dynamic, ?max_outputs:Dynamic, ?collections:Dynamic, ?family:Dynamic):Dynamic;
	/**
		Merges summaries.
		
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
		    added to these collections. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer resulting from the merging.
		
		Raises:
		  RuntimeError: If called with eager mode enabled.
		
		@compatibility(eager)
		Not compatible with eager execution. To write TensorBoard
		summaries under eager execution, use `tf.contrib.summary` instead.
		@end_compatibility
	**/
	static public function merge(inputs:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Merges all summaries collected in the default graph.
		
		Args:
		  key: `GraphKey` used to collect the summaries.  Defaults to
		    `GraphKeys.SUMMARIES`.
		  scope: Optional scope used to filter the summary ops, using `re.match`
		
		Returns:
		  If no summaries were collected, returns None.  Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
		
		Raises:
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Not compatible with eager execution. To write TensorBoard
		summaries under eager execution, use `tf.contrib.summary` instead.
		@end_compatibility
	**/
	static public function merge_all(?key:Dynamic, ?scope:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer containing a single scalar value.
		
		The generated Summary has a Tensor.proto containing the input Tensor.
		
		Args:
		  name: A name for the generated node. Will also serve as the series name in
		    TensorBoard.
		  tensor: A real numeric Tensor containing a single value.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  family: Optional; if provided, used as the prefix of the summary tag name,
		    which controls the tab name used for display on Tensorboard.
		
		Returns:
		  A scalar `Tensor` of type `string`. Which contains a `Summary` protobuf.
		
		Raises:
		  ValueError: If tensor has the wrong shape or type.
	**/
	static public function scalar(name:Dynamic, tensor:Dynamic, ?collections:Dynamic, ?family:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a serialized tensor.proto.
		
		Args:
		  name: A name for the generated node. If display_name is not set, it will
		    also serve as the tag name in TensorBoard. (In that case, the tag
		    name will inherit tf name scopes.)
		  tensor: A tensor of any type and shape to serialize.
		  summary_description: A long description of the summary sequence. Markdown
		    is supported.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  summary_metadata: Optional SummaryMetadata proto (which describes which
		    plugins may use the summary value).
		  family: Optional; if provided, used as the prefix of the summary tag,
		    which controls the name used for display on TensorBoard when
		    display_name is not set.
		  display_name: A string used to name this data in TensorBoard. If this is
		    not set, then the node name will be used instead.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function tensor_summary(name:Dynamic, tensor:Dynamic, ?summary_description:Dynamic, ?collections:Dynamic, ?summary_metadata:Dynamic, ?family:Dynamic, ?display_name:Dynamic):Dynamic;
	/**
		Summarizes textual data.
		
		Text data summarized via this plugin will be visible in the Text Dashboard
		in TensorBoard. The standard TensorBoard Text Dashboard will render markdown
		in the strings, and will automatically organize 1d and 2d tensors into tables.
		If a tensor with more than 2 dimensions is provided, a 2d subarray will be
		displayed along with a warning message. (Note that this behavior is not
		intrinsic to the text summary api, but rather to the default TensorBoard text
		plugin.)
		
		Args:
		  name: A name for the generated node. Will also serve as a series name in
		    TensorBoard.
		  tensor: a string-type Tensor to summarize.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [_ops.GraphKeys.SUMMARIES]
		
		Returns:
		  A TensorSummary op that is configured so that TensorBoard will recognize
		  that it contains textual data. The TensorSummary is a scalar `Tensor` of
		  type `string` which contains `Summary` protobufs.
		
		Raises:
		  ValueError: If tensor has the wrong type.
	**/
	static public function text(name:Dynamic, tensor:Dynamic, ?collections:Dynamic):Dynamic;
}