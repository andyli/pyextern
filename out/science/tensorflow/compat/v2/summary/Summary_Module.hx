/* This file is generated, do not edit! */
package tensorflow.compat.v2.summary;
@:pythonImport("tensorflow.compat.v2.summary") extern class Summary_Module {
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
		Returns boolean Tensor which is True if summaries will be recorded.
		
		If no default summary writer is currently registered, this always returns
		False. Otherwise, this reflects the recording condition has been set via
		`tf.summary.record_if()` (except that it may return False for some replicas
		when using `tf.distribute.Strategy`). If no recording condition is active,
		it defaults to True.
	**/
	static public function should_record_summaries():Dynamic;
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