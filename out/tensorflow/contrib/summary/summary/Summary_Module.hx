/* This file is generated, do not edit! */
package tensorflow.contrib.summary.summary;
@:pythonImport("tensorflow.contrib.summary.summary") extern class Summary_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Graph-mode only. Returns all summary ops.
		
		Please note this excludes `tf.contrib.summary.graph` ops.
		
		Returns:
		  The summary ops.
	**/
	static public function all_summary_ops():Dynamic;
	/**
		Sets the should_record_summaries Tensor to always true.
	**/
	static public function always_record_summaries():Dynamic;
	/**
		Writes an audio summary if possible.
	**/
	static public function audio(name:Dynamic, tensor:Dynamic, sample_rate:Dynamic, max_outputs:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Creates a summary database writer in the current context.
		
		This can be used to write tensors from the execution graph directly
		to a database. Only SQLite is supported right now. This function
		will create the schema if it doesn't exist. Entries in the Users,
		Experiments, and Runs tables will be created automatically if they
		don't already exist.
		
		Args:
		  db_uri: For example "file:/tmp/foo.sqlite".
		  experiment_name: Defaults to YYYY-MM-DD in local time if None.
		    Empty string means the Run will not be associated with an
		    Experiment. Can't contain ASCII control characters or <>. Case
		    sensitive.
		  run_name: Defaults to HH:MM:SS in local time if None. Empty string
		    means a Tag will not be associated with any Run. Can't contain
		    ASCII control characters or <>. Case sensitive.
		  user_name: Defaults to system username if None. Empty means the
		    Experiment will not be associated with a User. Must be valid as
		    both a DNS label and Linux username.
		  name: Shared name for this SummaryWriter resource stored to default
		    `tf.Graph`.
		
		Returns:
		  A `tf.contrib.summary.SummaryWriter` instance.
	**/
	static public function create_db_writer(db_uri:Dynamic, ?experiment_name:Dynamic, ?run_name:Dynamic, ?user_name:Dynamic, ?name:Dynamic):Dynamic;
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
		Please use `tf.contrib.summary.create_file_writer`.
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
		  writer: The `tf.contrib.summary.SummaryWriter` resource to flush.
		    The thread default will be used if this parameter is None.
		    Otherwise a `tf.no_op` is returned.
		  name: A name for the operation (optional).
		
		Returns:
		  The created `tf.Operation`.
	**/
	static public function flush(?writer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a tensor summary if possible.
	**/
	static public function generic(name:Dynamic, tensor:Dynamic, ?metadata:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes a TensorFlow graph to the summary interface.
		
		The graph summary is, strictly speaking, not a summary. Conditions
		like `tf.contrib.summary.never_record_summaries` do not apply. Only
		a single graph can be associated with a particular run. If multiple
		graphs are written, then only the last one will be considered by
		TensorBoard.
		
		When not using eager execution mode, the user should consider passing
		the `graph` parameter to `tf.contrib.summary.initialize` instead of
		calling this function. Otherwise special care needs to be taken when
		using the graph to record the graph.
		
		Args:
		  param: A `tf.Tensor` containing a serialized graph proto. When
		    eager execution is enabled, this function will automatically
		    coerce `tf.Graph`, `tf.GraphDef`, and string types.
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
	static public function graph(param:Dynamic, ?step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a histogram summary if possible.
	**/
	static public function histogram(name:Dynamic, tensor:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes an image summary if possible.
	**/
	static public function image(name:Dynamic, tensor:Dynamic, ?bad_color:Dynamic, ?max_images:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Writes a `tf.Event` binary proto.
		
		When using create_db_writer(), this can be used alongside
		`tf.TFRecordReader` to load event logs into the database. Please
		note that this is lower level than the other summary functions and
		will ignore any conditions set by methods like
		`tf.contrib.summary.should_record_summaries`.
		
		Args:
		  tensor: A `tf.Tensor` of type `string` containing a serialized
		    `tf.Event` proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created `tf.Operation`.
	**/
	static public function import_event(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes summary writing for graph execution mode.
		
		This helper method provides a higher-level alternative to using
		`tf.contrib.summary.summary_writer_initializer_op` and
		`tf.contrib.summary.graph`.
		
		Most users will also want to call `tf.train.create_global_step`
		which can happen before or after this function is called.
		
		Args:
		  graph: A `tf.Graph` or `tf.GraphDef` to output to the writer.
		    This function will not write the default graph by default. When
		    writing to an event log file, the associated step will be zero.
		  session: So this method can call `tf.Session.run`. This defaults
		    to `tf.get_default_session`.
		
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
		Sets the should_record_summaries Tensor to true if global_step % n == 0.
	**/
	static public function record_summaries_every_n_global_steps(n:Dynamic, ?global_step:Dynamic):Dynamic;
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
		    to `tf.train.get_global_step`.
		
		Returns:
		  The created `tf.Operation` or a `tf.no_op` if summary writing has
		  not been enabled for this context.
	**/
	static public function scalar(name:Dynamic, tensor:Dynamic, ?family:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Returns boolean Tensor which is true if summaries should be recorded.
	**/
	static public function should_record_summaries():Dynamic;
	/**
		Graph-mode only. Returns the list of ops to create all summary writers.
		
		Returns:
		  The initializer ops.
		
		Raises:
		  RuntimeError: If in Eager mode.
	**/
	static public function summary_writer_initializer_op():Dynamic;
}