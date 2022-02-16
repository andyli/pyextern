/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2.summary;
@:pythonImport("tensorflow.compat.v1.compat.v2.summary") extern class Summary_Module {
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
		Write an audio summary.
		
		Arguments:
		  name: A name for this summary. The summary tag used for TensorBoard will
		    be this name prefixed by any active name scopes.
		  data: A `Tensor` representing audio data with shape `[k, t, c]`,
		    where `k` is the number of audio clips, `t` is the number of
		    frames, and `c` is the number of channels. Elements should be
		    floating-point values in `[-1.0, 1.0]`. Any of the dimensions may
		    be statically unknown (i.e., `None`).
		  sample_rate: An `int` or rank-0 `int32` `Tensor` that represents the
		    sample rate, in Hz. Must be positive.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  max_outputs: Optional `int` or rank-0 integer `Tensor`. At most this
		    many audio clips will be emitted at each step. When more than
		    `max_outputs` many clips are provided, the first `max_outputs`
		    many clips will be used and the rest silently discarded.
		  encoding: Optional constant `str` for the desired encoding. Only "wav"
		    is currently supported, but this is not guaranteed to remain the
		    default, so if you want "wav" in particular, set this explicitly.
		  description: Optional long-form description for this summary, as a
		    constant `str`. Markdown is supported. Defaults to empty.
		
		Returns:
		  True on success, or false if no summary was emitted because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function audio(name:Dynamic, data:Dynamic, sample_rate:Dynamic, ?step:Dynamic, ?max_outputs:Dynamic, ?encoding:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Creates a summary file writer for the given log directory.
		
		Args:
		  logdir: a string specifying the directory in which to write an event file.
		  max_queue: the largest number of summaries to keep in a queue; will
		   flush once the queue gets bigger than this. Defaults to 10.
		  flush_millis: the largest interval between flushes. Defaults to 120,000.
		  filename_suffix: optional suffix for the event file name. Defaults to `.v2`.
		  name: a name for the op that creates the writer.
		  experimental_trackable: a boolean that controls whether the returned writer
		    will be a `TrackableResource`, which makes it compatible with SavedModel
		    when used as a `tf.Module` property.
		
		Returns:
		  A SummaryWriter object.
	**/
	static public function create_file_writer(logdir:Dynamic, ?max_queue:Dynamic, ?flush_millis:Dynamic, ?filename_suffix:Dynamic, ?name:Dynamic, ?experimental_trackable:Dynamic):Dynamic;
	/**
		Returns a summary writer that does nothing.
		
		This is useful as a placeholder in code that expects a context manager.
	**/
	static public function create_noop_writer():Dynamic;
	/**
		Forces summary writer to send any buffered data to storage.
		
		This operation blocks until that finishes.
		
		Args:
		  writer: The `tf.summary.SummaryWriter` to flush. If None, the current
		    default writer will be used instead; if there is no current writer, this
		    returns `tf.no_op`.
		  name: Ignored legacy argument for a name for the operation.
		
		Returns:
		  The created `tf.Operation`.
	**/
	static public function flush(?writer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a TensorFlow graph summary.
		
		Write an instance of `tf.Graph` or `tf.compat.v1.GraphDef` as summary only
		in an eager mode. Please prefer to use the trace APIs (`tf.summary.trace_on`,
		`tf.summary.trace_off`, and `tf.summary.trace_export`) when using
		`tf.function` which can automatically collect and record graphs from
		executions.
		
		Usage Example:
		```py
		writer = tf.summary.create_file_writer("/tmp/mylogs")
		
		@tf.function
		def f():
		  x = constant_op.constant(2)
		  y = constant_op.constant(3)
		  return x**y
		
		with writer.as_default():
		  tf.summary.graph(f.get_concrete_function().graph)
		
		# Another example: in a very rare use case, when you are dealing with a TF v1
		# graph.
		graph = tf.Graph()
		with graph.as_default():
		  c = tf.constant(30.0)
		with writer.as_default():
		  tf.summary.graph(graph)
		```
		
		Args:
		  graph_data: The TensorFlow graph to write, as a `tf.Graph` or a
		    `tf.compat.v1.GraphDef`.
		
		Returns:
		  True on success, or False if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: `graph` summary API is invoked in a graph mode.
	**/
	static public function graph(graph_data:Dynamic):Dynamic;
	/**
		Write a histogram summary.
		
		See also `tf.summary.scalar`, `tf.summary.SummaryWriter`.
		
		Writes a histogram to the current default summary writer, for later analysis
		in TensorBoard's 'Histograms' and 'Distributions' dashboards (data written
		using this API will appear in both places). Like `tf.summary.scalar` points,
		each histogram is associated with a `step` and a `name`. All the histograms
		with the same `name` constitute a time series of histograms.
		
		The histogram is calculated over all the elements of the given `Tensor`
		without regard to its shape or rank.
		
		This example writes 2 histograms:
		
		```python
		w = tf.summary.create_file_writer('test/logs')
		with w.as_default():
		    tf.summary.histogram("activations", tf.random.uniform([100, 50]), step=0)
		    tf.summary.histogram("initial_weights", tf.random.normal([1000]), step=0)
		```
		
		A common use case is to examine the changing activation patterns (or lack
		thereof) at specific layers in a neural network, over time.
		
		```python
		w = tf.summary.create_file_writer('test/logs')
		with w.as_default():
		for step in range(100):
		    # Generate fake "activations".
		    activations = [
		        tf.random.normal([1000], mean=step, stddev=1),
		        tf.random.normal([1000], mean=step, stddev=10),
		        tf.random.normal([1000], mean=step, stddev=100),
		    ]
		
		    tf.summary.histogram("layer1/activate", activations[0], step=step)
		    tf.summary.histogram("layer2/activate", activations[1], step=step)
		    tf.summary.histogram("layer3/activate", activations[2], step=step)
		```
		
		Arguments:
		  name: A name for this summary. The summary tag used for TensorBoard will
		    be this name prefixed by any active name scopes.
		  data: A `Tensor` of any shape. The histogram is computed over its elements,
		    which must be castable to `float64`.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  buckets: Optional positive `int`. The output will have this
		    many buckets, except in two edge cases. If there is no data, then
		    there are no buckets. If there is data but all points have the
		    same value, then there is one bucket whose left and right
		    endpoints are the same.
		  description: Optional long-form description for this summary, as a
		    constant `str`. Markdown is supported. Defaults to empty.
		
		Returns:
		  True on success, or false if no summary was emitted because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function histogram(name:Dynamic, data:Dynamic, ?step:Dynamic, ?buckets:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Write an image summary.
		
		See also `tf.summary.scalar`, `tf.summary.SummaryWriter`.
		
		Writes a collection of images to the current default summary writer. Data
		appears in TensorBoard's 'Images' dashboard. Like `tf.summary.scalar` points,
		each collection of images is associated with a `step` and a `name`.  All the
		image collections with the same `name` constitute a time series of image
		collections.
		
		This example writes 2 random grayscale images:
		
		```python
		w = tf.summary.create_file_writer('test/logs')
		with w.as_default():
		  image1 = tf.random.uniform(shape=[8, 8, 1])
		  image2 = tf.random.uniform(shape=[8, 8, 1])
		  tf.summary.image("grayscale_noise", [image1, image2], step=0)
		```
		
		To avoid clipping, data should be converted to one of the following:
		
		- floating point values in the range [0,1], or
		- uint8 values in the range [0,255]
		
		```python
		# Convert the original dtype=int32 `Tensor` into `dtype=float64`.
		rgb_image_float = tf.constant([
		  [[1000, 0, 0], [0, 500, 1000]],
		]) / 1000
		tf.summary.image("picture", [rgb_image_float], step=0)
		
		# Convert original dtype=uint8 `Tensor` into proper range.
		rgb_image_uint8 = tf.constant([
		  [[1, 1, 0], [0, 0, 1]],
		], dtype=tf.uint8) * 255
		tf.summary.image("picture", [rgb_image_uint8], step=1)
		```
		
		Arguments:
		  name: A name for this summary. The summary tag used for TensorBoard will
		    be this name prefixed by any active name scopes.
		  data: A `Tensor` representing pixel data with shape `[k, h, w, c]`,
		    where `k` is the number of images, `h` and `w` are the height and
		    width of the images, and `c` is the number of channels, which
		    should be 1, 2, 3, or 4 (grayscale, grayscale with alpha, RGB, RGBA).
		    Any of the dimensions may be statically unknown (i.e., `None`).
		    Floating point data will be clipped to the range [0,1]. Other data types
		    will be clipped into an allowed range for safe casting to uint8, using
		    `tf.image.convert_image_dtype`.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  max_outputs: Optional `int` or rank-0 integer `Tensor`. At most this
		    many images will be emitted at each step. When more than
		    `max_outputs` many images are provided, the first `max_outputs` many
		    images will be used and the rest silently discarded.
		  description: Optional long-form description for this summary, as a
		    constant `str`. Markdown is supported. Defaults to empty.
		
		Returns:
		  True on success, or false if no summary was emitted because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function image(name:Dynamic, data:Dynamic, ?step:Dynamic, ?max_outputs:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Sets summary recording on or off per the provided boolean value.
		
		The provided value can be a python boolean, a scalar boolean Tensor, or
		or a callable providing such a value; if a callable is passed it will be
		invoked on-demand to determine whether summary writing will occur.  Note that
		when calling record_if() in an eager mode context, if you intend to provide a
		varying condition like `step % 100 == 0`, you must wrap this in a
		callable to avoid immediate eager evaluation of the condition.  In particular,
		using a callable is the only way to have your condition evaluated as part of
		the traced body of an @tf.function that is invoked from within the
		`record_if()` context.
		
		Args:
		  condition: can be True, False, a bool Tensor, or a callable providing such.
		
		Yields:
		  Returns a context manager that sets this value on enter and restores the
		  previous value on exit.
	**/
	static public function record_if(condition:Dynamic):Dynamic;
	/**
		Write a scalar summary.
		
		See also `tf.summary.image`, `tf.summary.histogram`, `tf.summary.SummaryWriter`.
		
		Writes simple numeric values for later analysis in TensorBoard.  Writes go to
		the current default summary writer. Each summary point is associated with an
		integral `step` value. This enables the incremental logging of time series
		data.  A common usage of this API is to log loss during training to produce
		a loss curve.
		
		For example:
		
		```python
		test_summary_writer = tf.summary.create_file_writer('test/logdir')
		with test_summary_writer.as_default():
		    tf.summary.scalar('loss', 0.345, step=1)
		    tf.summary.scalar('loss', 0.234, step=2)
		    tf.summary.scalar('loss', 0.123, step=3)
		```
		
		Multiple independent time series may be logged by giving each series a unique
		`name` value.
		
		See [Get started with TensorBoard](https://www.tensorflow.org/tensorboard/get_started)
		for more examples of effective usage of `tf.summary.scalar`.
		
		In general, this API expects that data points are logged iwth a monotonically
		increasing step value. Duplicate points for a single step or points logged out
		of order by step are not guaranteed to display as desired in TensorBoard.
		
		Arguments:
		  name: A name for this summary. The summary tag used for TensorBoard will
		    be this name prefixed by any active name scopes.
		  data: A real numeric scalar value, convertible to a `float32` Tensor.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  description: Optional long-form description for this summary, as a
		    constant `str`. Markdown is supported. Defaults to empty.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function scalar(name:Dynamic, data:Dynamic, ?step:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Returns boolean Tensor which is True if summaries will be recorded.
		
		If no default summary writer is currently registered, this always returns
		False. Otherwise, this reflects the recording condition has been set via
		`tf.summary.record_if()` (except that it may return False for some replicas
		when using `tf.distribute.Strategy`). If no recording condition is active,
		it defaults to True.
	**/
	static public function should_record_summaries():Dynamic;
	/**
		Write a text summary.
		
		See also `tf.summary.scalar`, `tf.summary.SummaryWriter`, `tf.summary.image`.
		
		Writes text Tensor values for later visualization and analysis in TensorBoard.
		Writes go to the current default summary writer.  Like `tf.summary.scalar`
		points, text points are each associated with a `step` and a `name`.
		All the points with the same `name` constitute a time series of text values.
		
		For Example:
		```python
		test_summary_writer = tf.summary.create_file_writer('test/logdir')
		with test_summary_writer.as_default():
		    tf.summary.text('first_text', 'hello world!', step=0)
		    tf.summary.text('first_text', 'nice to meet you!', step=1)
		```
		
		The text summary can also contain Markdown, and TensorBoard will render the text
		as such.
		
		```python
		with test_summary_writer.as_default():
		    text_data = '''
		          | *hello* | *there* |
		          |---------|---------|
		          | this    | is      |
		          | a       | table   |
		    '''
		    text_data = '\n'.join(l.strip() for l in text_data.splitlines())
		    tf.summary.text('markdown_text', text_data, step=0)
		```
		
		Since text is Tensor valued, each text point may be a Tensor of string values.
		rank-1 and rank-2 Tensors are rendered as tables in TensorBoard.  For higher ranked
		Tensors, you'll see just a 2D slice of the data.  To avoid this, reshape the Tensor
		to at most rank-2 prior to passing it to this function.
		
		Demo notebook at
		["Displaying text data in TensorBoard"](https://www.tensorflow.org/tensorboard/text_summaries).
		
		Arguments:
		  name: A name for this summary. The summary tag used for TensorBoard will
		    be this name prefixed by any active name scopes.
		  data: A UTF-8 string Tensor value.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  description: Optional long-form description for this summary, as a
		    constant `str`. Markdown is supported. Defaults to empty.
		
		Returns:
		  True on success, or false if no summary was emitted because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function text(name:Dynamic, data:Dynamic, ?step:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Stops and exports the active trace as a Summary and/or profile file.
		
		Stops the trace and exports all metadata collected during the trace to the
		default SummaryWriter, if one has been set.
		
		Args:
		  name: A name for the summary to be written.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  profiler_outdir: Output directory for profiler. It is required when profiler
		    is enabled when trace was started. Otherwise, it is ignored.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function trace_export(name:Dynamic, ?step:Dynamic, ?profiler_outdir:Dynamic):Dynamic;
	/**
		Stops the current trace and discards any collected information.
	**/
	static public function trace_off():Dynamic;
	/**
		Starts a trace to record computation graphs and profiling information.
		
		Must be invoked in eager mode.
		
		When enabled, TensorFlow runtime will collection information that can later be
		exported and consumed by TensorBoard. The trace is activated across the entire
		TensorFlow runtime and affects all threads of execution.
		
		To stop the trace and export the collected information, use
		`tf.summary.trace_export`. To stop the trace without exporting, use
		`tf.summary.trace_off`.
		
		Args:
		  graph: If True, enables collection of executed graphs. It includes ones from
		      tf.function invocation and ones from the legacy graph mode. The default
		      is True.
		  profiler: If True, enables the advanced profiler. Enabling profiler
		      implicitly enables the graph collection. The profiler may incur a high
		      memory overhead. The default is False.
	**/
	static public function trace_on(?graph:Dynamic, ?profiler:Dynamic):Dynamic;
	/**
		Writes a generic summary to the default SummaryWriter if one exists.
		
		This exists primarily to support the definition of type-specific summary ops
		like scalar() and image(), and is not intended for direct use unless defining
		a new type-specific summary op.
		
		Args:
		  tag: string tag used to identify the summary (e.g. in TensorBoard), usually
		    generated with `tf.summary.summary_scope`
		  tensor: the Tensor holding the summary data to write or a callable that
		    returns this Tensor. If a callable is passed, it will only be called when
		    a default SummaryWriter exists and the recording condition specified by
		    `record_if()` is met.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  metadata: Optional SummaryMetadata, as a proto or serialized bytes
		  name: Optional string name for this op.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function write(tag:Dynamic, tensor:Dynamic, ?step:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
}