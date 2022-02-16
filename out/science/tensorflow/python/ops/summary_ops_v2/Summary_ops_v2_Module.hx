/* This file is generated, do not edit! */
package tensorflow.python.ops.summary_ops_v2;
@:pythonImport("tensorflow.python.ops.summary_ops_v2") extern class Summary_ops_v2_Module {
	static public var _INVALID_SCOPE_CHARACTERS : Dynamic;
	static public var _SUMMARY_WRITER_INIT_COLLECTION_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper to check the validity of arguments to a create_file_writer() call.
		
		Args:
		  inside_function: whether the create_file_writer() call is in a tf.function
		  **kwargs: the arguments to check, as kwargs to give them names.
		
		Raises:
		  ValueError: if the arguments are graph tensors.
	**/
	static public function _check_create_file_writer_args(inside_function:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _choose_step(step:Dynamic):Dynamic;
	static public function _cleanse_string(name:Dynamic, pattern:Dynamic, value:Dynamic):Dynamic;
	static public var _current_trace_context : Dynamic;
	static public var _current_trace_context_lock : Dynamic;
	/**
		Returns boolean Tensor which is true if summaries should be recorded.
	**/
	static public function _legacy_contrib_should_record_summaries():Dynamic;
	/**
		Convenient else branch for when summaries do not record.
	**/
	static public function _nothing():Dynamic;
	static public function _serialize_graph(arbitrary_graph:Dynamic):Dynamic;
	/**
		Returns boolean Tensor if summaries should/shouldn't be recorded.
		
		Now the summary condition is decided by logical "and" of below conditions:
		First, summary writer must be set. Given this constraint is met,
		ctx.summary_recording and ctx.summary_recording_distribution_strategy.
		The former one is usually set by user, and the latter one is controlled
		by DistributionStrategy (tf.distribute.ReplicaContext).
		
		Args:
		  default_state: can be True or False. The default summary behavior when
		  summary writer is set and the user does not specify
		  ctx.summary_recording and ctx.summary_recording_distribution_strategy
		  is True.
	**/
	static public function _should_record_summaries_internal(default_state:Dynamic):Dynamic;
	static public var _summary_state : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns all V2-style summary ops defined in the current default graph.
		
		This includes ops from TF 2.0 tf.summary and TF 1.x tf.contrib.summary (except
		for `tf.contrib.summary.graph` and `tf.contrib.summary.import_event`), but
		does *not* include TF 1.x tf.summary ops.
		
		Returns:
		  List of summary ops, or None if called under eager execution.
	**/
	static public function all_v2_summary_ops():Dynamic;
	/**
		Sets the should_record_summaries Tensor to always true.
	**/
	static public function always_record_summaries():Dynamic;
	/**
		Writes an audio summary if possible.
	**/
	static public function audio(name:Dynamic, tensor:Dynamic, sample_rate:Dynamic, max_outputs:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Creates a summary file writer in the current context under the given name.
		
		Args:
		  logdir: a string, or None. If a string, creates a summary file writer
		   which writes to the directory named by the string. If None, returns
		   a mock object which acts like a summary writer but does nothing,
		   useful to use as a context manager.
		  max_queue: the largest number of summaries to keep in a queue; will
		   flush once the queue gets bigger than this. Defaults to 10.
		  flush_millis: the largest interval between flushes. Defaults to 120,000.
		  filename_suffix: optional suffix for the event file name. Defaults to `.v2`.
		  name: Shared name for this SummaryWriter resource stored to default
		    Graph. Defaults to the provided logdir prefixed with `logdir:`. Note: if a
		    summary writer resource with this shared name already exists, the returned
		    SummaryWriter wraps that resource and the other arguments have no effect.
		
		Returns:
		  Either a summary writer or an empty object which can be used as a
		  summary writer.
	**/
	static public function create_file_writer(logdir:Dynamic, ?max_queue:Dynamic, ?flush_millis:Dynamic, ?filename_suffix:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function create_file_writer_v2(logdir:Dynamic, ?max_queue:Dynamic, ?flush_millis:Dynamic, ?filename_suffix:Dynamic, ?name:Dynamic, ?experimental_trackable:Dynamic):Dynamic;
	/**
		Returns a summary writer that does nothing.
		
		This is useful as a placeholder in code that expects a context manager.
	**/
	static public function create_noop_writer():Dynamic;
	/**
		Please use `tf.contrib.summary.create_file_writer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Renamed to create_file_writer().
	**/
	static public function create_summary_file_writer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Construct a logdir for an eval summary writer.
	**/
	static public function eval_dir(model_dir:Dynamic, ?name:Dynamic):Dynamic;
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
		Writes a tensor summary if possible.
	**/
	static public function generic(name:Dynamic, tensor:Dynamic, ?metadata:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Returns the default summary step for the current thread.
		
		Returns:
		  The step set by `tf.summary.experimental.set_step()` if one has been set,
		  otherwise None.
	**/
	static public function get_step():Dynamic;
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
		Writes a TensorFlow graph to the summary interface.
		
		The graph summary is, strictly speaking, not a summary. Conditions
		like `tf.summary.should_record_summaries` do not apply. Only
		a single graph can be associated with a particular run. If multiple
		graphs are written, then only the last one will be considered by
		TensorBoard.
		
		When not using eager execution mode, the user should consider passing
		the `graph` parameter to `tf.compat.v1.summary.initialize` instead of
		calling this function. Otherwise special care needs to be taken when
		using the graph to record the graph.
		
		Args:
		  param: A `tf.Tensor` containing a serialized graph proto. When
		    eager execution is enabled, this function will automatically
		    coerce `tf.Graph`, `tf.compat.v1.GraphDef`, and string types.
		  step: The global step variable. This doesn't have useful semantics
		    for graph summaries, but is used anyway, due to the structure of
		    event log files. This defaults to the global step.
		  name: A name for the operation (optional).
		
		Returns:
		  The created `tf.Operation` or a `tf.no_op` if summary writing has
		  not been enabled for this context.
		
		Raises:
		  TypeError: If `param` isn't already a `tf.Tensor` in graph mode.
	**/
	static public function graph_v1(param:Dynamic, ?step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a histogram summary if possible.
	**/
	static public function histogram(name:Dynamic, tensor:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes an image summary if possible.
	**/
	static public function image(name:Dynamic, tensor:Dynamic, ?bad_color:Dynamic, ?max_images:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes a `tf.compat.v1.Event` binary proto.
		
		This can be used to import existing event logs into a new summary writer sink.
		Please note that this is lower level than the other summary functions and
		will ignore the `tf.summary.should_record_summaries` setting.
		
		Args:
		  tensor: A `tf.Tensor` of type `string` containing a serialized
		    `tf.compat.v1.Event` proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created `tf.Operation`.
	**/
	static public function import_event(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes summary writing for graph execution mode.
		
		This operation is a no-op when executing eagerly.
		
		This helper method provides a higher-level alternative to using
		`tf.contrib.summary.summary_writer_initializer_op` and
		`tf.contrib.summary.graph`.
		
		Most users will also want to call `tf.compat.v1.train.create_global_step`
		which can happen before or after this function is called.
		
		Args:
		  graph: A `tf.Graph` or `tf.compat.v1.GraphDef` to output to the writer.
		    This function will not write the default graph by default. When
		    writing to an event log file, the associated step will be zero.
		  session: So this method can call `tf.Session.run`. This defaults
		    to `tf.compat.v1.get_default_session`.
		
		Raises:
		  RuntimeError: If  the current thread has no default
		    `tf.contrib.summary.SummaryWriter`.
		  ValueError: If session wasn't passed and no default session.
	**/
	static public function initialize(?graph:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Sets the should_record_summaries Tensor to always false.
	**/
	static public function never_record_summaries():Dynamic;
	static public var print_function : Dynamic;
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
		Sets the should_record_summaries Tensor to true if global_step % n == 0.
	**/
	static public function record_summaries_every_n_global_steps(n:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Writes entire RunMetadata summary.
		
		A RunMetadata can contain DeviceStats, partition graphs, and function graphs.
		Please refer to the proto for definition of each field.
		
		Args:
		  name: A name for this summary. The summary tag used for TensorBoard will be
		    this name prefixed by any active name scopes.
		  data: A RunMetadata proto to write.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function run_metadata(name:Dynamic, data:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes graphs from a RunMetadata summary.
		
		Args:
		  name: A name for this summary. The summary tag used for TensorBoard will be
		    this name prefixed by any active name scopes.
		  data: A RunMetadata proto to write.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function run_metadata_graphs(name:Dynamic, data:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes a scalar summary if possible.
		
		Unlike `tf.contrib.summary.generic` this op may change the dtype
		depending on the writer, for both practical and efficiency concerns.
		
		Args:
		  name: An arbitrary name for this summary.
		  tensor: A `tf.Tensor` Must be one of the following types:
		    `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`,
		    `int8`, `uint16`, `half`, `uint32`, `uint64`.
		  family: Optional, the summary's family.
		  step: The `int64` monotonic step variable, which defaults
		    to `tf.compat.v1.train.get_global_step`.
		
		Returns:
		  The created `tf.Operation` or a `tf.no_op` if summary writing has
		  not been enabled for this context.
	**/
	static public function scalar(name:Dynamic, tensor:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Sets the default summary step for the current thread.
		
		For convenience, this function sets a default value for the `step` parameter
		used in summary-writing functions elsewhere in the API so that it need not
		be explicitly passed in every such invocation. The value can be a constant
		or a variable, and can be retrieved via `tf.summary.experimental.get_step()`.
		
		Note: when using this with @tf.functions, the step value will be captured at
		the time the function is traced, so changes to the step outside the function
		will not be reflected inside the function unless using a `tf.Variable` step.
		
		Args:
		  step: An `int64`-castable default step value, or None to unset.
	**/
	static public function set_step(step:Dynamic):Dynamic;
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
		Experimental context manager for use when defining a custom summary op.
		
		This behaves similarly to `tf.name_scope`, except that it returns a generated
		summary tag in addition to the scope name. The tag is structurally similar to
		the scope name - derived from the user-provided name, prefixed with enclosing
		name scopes if any - but we relax the constraint that it be uniquified, as
		well as the character set limitation (so the user-provided name can contain
		characters not legal for scope names; in the scope name these are removed).
		
		This makes the summary tag more predictable and consistent for the user.
		
		For example, to define a new summary op called `my_op`:
		
		```python
		def my_op(name, my_value, step):
		  with tf.summary.summary_scope(name, "MyOp", [my_value]) as (tag, scope):
		    my_value = tf.convert_to_tensor(my_value)
		    return tf.summary.write(tag, my_value, step=step)
		```
		
		Args:
		  name: string name for the summary.
		  default_name: Optional; if provided, used as default name of the summary.
		  values: Optional; passed as `values` parameter to name_scope.
		
		Yields:
		  A tuple `(tag, scope)` as described above.
	**/
	static public function summary_scope(name:Dynamic, ?default_name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Helper function to write summaries.
		
		Args:
		  name: name of the summary
		  tensor: main tensor to form the summary
		  function: function taking a tag and a scope which writes the summary
		  family: optional, the summary's family
		
		Returns:
		  The result of writing the summary.
	**/
	static public function summary_writer_function(name:Dynamic, tensor:Dynamic, _function:Dynamic, ?family:Dynamic):Dynamic;
	/**
		Graph-mode only. Returns the list of ops to create all summary writers.
		
		Returns:
		  The initializer ops.
		
		Raises:
		  RuntimeError: If in Eager mode.
	**/
	static public function summary_writer_initializer_op():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Writes a summary using raw `tf.compat.v1.Summary` protocol buffers.
		
		Experimental: this exists to support the usage of V1-style manual summary
		writing (via the construction of a `tf.compat.v1.Summary` protocol buffer)
		with the V2 summary writing API.
		
		Args:
		  tensor: the string Tensor holding one or more serialized `Summary` protobufs
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  name: Optional string name for this op.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function write_raw_pb(tensor:Dynamic, ?step:Dynamic, ?name:Dynamic):Dynamic;
}