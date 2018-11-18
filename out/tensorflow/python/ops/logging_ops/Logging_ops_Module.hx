/* This file is generated, do not edit! */
package tensorflow.python.ops.logging_ops;
@:pythonImport("tensorflow.python.ops.logging_ops") extern class Logging_ops_Module {
	/**
		Prints a list of tensors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-08-20.
		Instructions for updating:
		Use tf.print instead of tf.Print. Note that tf.print returns a no-output operator that directly prints the output. Outside of defuns or eager mode, this operator will not be executed unless it is directly specified in session.run or used as a control dependency for other operators. This is only a concern in graph mode. Below is an example of how to ensure tf.print executes in graph mode:
		```python
		    sess = tf.Session()
		    with sess.as_default():
		        tensor = tf.range(10)
		        print_op = tf.print(tensor)
		        with tf.control_dependencies([print_op]):
		          out = tf.add(tensor, tensor)
		        sess.run(out)
		    ```
		Additionally, to use tf.print in python 2.7, users must make sure to import
		the following:
		
		  `from __future__ import print_function`
		
		
		This is an identity op (behaves like `tf.identity`) with the side effect
		of printing `data` when evaluating.
		
		Note: This op prints to the standard error. It is not currently compatible
		  with jupyter notebook (printing to the notebook *server's* output, not into
		  the notebook).
		
		Args:
		  input_: A tensor passed through this op.
		  data: A list of tensors to print out when op is evaluated.
		  message: A string, prefix of the error message.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Only print this many entries of each tensor. If None, then a
		             maximum of 3 elements are printed per input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and contents as `input_`.
	**/
	static public function Print(input_:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public function _Collect(val:Dynamic, collections:Dynamic, default_collections:Dynamic):Dynamic;
	static public function _PrintGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generate and return a string that does not appear in `x`.
	**/
	static public function _generate_placeholder_string(x:Dynamic, ?default_placeholder:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Outputs a `Summary` protocol buffer with audio. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
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
		Returns a single Summary op that would run all summaries.
		
		Either existing one from `SUMMARY_OP` collection or merges all existing
		summaries.
		
		Returns:
		  If no summaries were collected, returns None. Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function get_summary_op():Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a histogram. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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
		This is the slowpath function for Eager mode.
		This is for function histogram_summary
	**/
	static public function histogram_summary_eager_fallback(tag:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with images. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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
		This is the slowpath function for Eager mode.
		This is for function image_summary
	**/
	static public function image_summary_eager_fallback(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?bad_color:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Merges all summaries collected in the default graph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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
		This is the slowpath function for Eager mode.
		This is for function merge_summary
	**/
	static public function merge_summary_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Print the specified inputs.
		
		Returns an operator that prints the specified inputs to a desired
		output stream or logging level. The inputs may be dense or sparse Tensors,
		primitive python objects, data structures that contain Tensors, and printable
		python objects. Printed tensors will recursively show the first and last
		`summarize` elements of each dimension.
		
		With eager execution enabled and/or inside a `tf.contrib.eager.defun` this
		operator will automatically execute, and users only need to call `tf.print`
		without using the return value. When constructing graphs outside of a
		`tf.contrib.eager.defun`, one must either include the returned op
		in the input to `session.run`, or use the operator as a control dependency for
		executed ops by specifying `with tf.control_dependencies([print_op])`.
		
		@compatibility(python2)
		In python 2.7, make sure to import the following:
		`from __future__ import print_function`
		@end_compatibility
		
		Example:
		  Single-input usage:
		  ```python
		  tf.enable_eager_execution()
		  tensor = tf.range(10)
		  tf.print(tensor, output_stream=sys.stderr)
		  ```
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		  Multi-input usage:
		  ```python
		  tf.enable_eager_execution()
		  tensor = tf.range(10)
		  tf.print("tensors:", tensor, {2: tensor * 2}, output_stream=sys.stdout)
		  ```
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		  Usage in a defun:
		  ```python
		  tf.enable_eager_execution()
		
		  @tf.contrib.eager.defun
		  def f():
		      tensor = tf.range(10)
		      tf.print(tensor, output_stream=sys.stderr)
		      return tensor
		
		  range_tensor = f()
		  ```
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		  Usage when constructing graphs:
		  ```python
		  sess = tf.Session()
		  with sess.as_default():
		      tensor = tf.range(10)
		      print_op = tf.print("tensors:", tensor, {2: tensor * 2},
		                          output_stream=sys.stdout)
		      with tf.control_dependencies([print_op]):
		        tripled_tensor = tensor * 3
		      sess.run(tripled_tensor)
		  ```
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		Note: This op is only partially compatible with Jupyter notebooks and colabs.
		  Because it prints to the C++ standard out / standard error, this will go
		  in the notebook kernel's console output, not in the notebook cell output.
		
		Args:
		  *inputs: Positional arguments that are the inputs to print. Inputs in the
		    printed output will be separated by spaces. Inputs may be python
		    primitives, tensors, data structures such as dicts and lists that
		    may contain tensors (with the data structures possibly nested in
		    arbitrary ways), and printable python objects.
		  output_stream: The output stream or logging level to print to. Defaults to
		    sys.stderr, but sys.stdout, tf.logging.info, tf.logging.warning, and
		    tf.logging.error are also supported.
		  summarize: The first and last `summarize` elements within each dimension are
		    recursively printed per Tensor. If None, then the first 3 and last 3
		    elements of each dimension are printed for each tensor. If set to -1, it
		    will print all elements of every tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A print operator that prints the specified inputs in the specified output
		  stream or logging level.
		
		Raises:
		  ValueError: If an unsupported output stream is specified.
	**/
	static public function print_v2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function print_v2
	**/
	static public function print_v2_eager_fallback(input:Dynamic, ?output_stream:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with scalar values. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
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