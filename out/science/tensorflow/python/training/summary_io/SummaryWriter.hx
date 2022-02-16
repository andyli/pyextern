/* This file is generated, do not edit! */
package tensorflow.python.training.summary_io;
@:pythonImport("tensorflow.python.training.summary_io", "SummaryWriter") extern class SummaryWriter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Make usable with "with" statement.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Make usable with "with" statement.
	**/
	public function __exit__(unused_type:Dynamic, unused_value:Dynamic, unused_traceback:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a `SummaryWriter` and an event file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.FileWriter. The interface and behavior is the same; this is just a rename.
		
		This class is deprecated, and should be replaced with tf.summary.FileWriter.
		
		On construction the summary writer creates a new event file in `logdir`.
		This event file will contain `Event` protocol buffers constructed when you
		call one of the following functions: `add_summary()`, `add_session_log()`,
		`add_event()`, or `add_graph()`.
		
		If you pass a `Graph` to the constructor it is added to
		the event file. (This is equivalent to calling `add_graph()` later).
		
		TensorBoard will pick the graph from the file and display it graphically so
		you can interactively explore the graph you built. You will usually pass
		the graph from the session in which you launched it:
		
		```python
		...create a graph...
		# Launch the graph in a session.
		sess = tf.compat.v1.Session()
		# Create a summary writer, add the 'graph' to the event file.
		writer = tf.compat.v1.summary.FileWriter(<some-directory>, sess.graph)
		```
		
		The other arguments to the constructor control the asynchronous writes to
		the event file:
		
		*  `flush_secs`: How often, in seconds, to flush the added summaries
		   and events to disk.
		*  `max_queue`: Maximum number of summaries or events pending to be
		   written to disk before one of the 'add' calls block.
		
		Args:
		  logdir: A string. Directory where event file will be written.
		  graph: A `Graph` object, such as `sess.graph`.
		  max_queue: Integer. Size of the queue for pending events and summaries.
		  flush_secs: Number. How often, in seconds, to flush the
		    pending events and summaries to disk.
		  graph_def: DEPRECATED: Use the `graph` argument instead.
	**/
	@:native("__init__")
	public function ___init__(logdir:Dynamic, ?graph:Dynamic, ?max_queue:Dynamic, ?flush_secs:Dynamic, ?graph_def:Dynamic):Dynamic;
	/**
		Creates a `SummaryWriter` and an event file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		Please switch to tf.summary.FileWriter. The interface and behavior is the same; this is just a rename.
		
		This class is deprecated, and should be replaced with tf.summary.FileWriter.
		
		On construction the summary writer creates a new event file in `logdir`.
		This event file will contain `Event` protocol buffers constructed when you
		call one of the following functions: `add_summary()`, `add_session_log()`,
		`add_event()`, or `add_graph()`.
		
		If you pass a `Graph` to the constructor it is added to
		the event file. (This is equivalent to calling `add_graph()` later).
		
		TensorBoard will pick the graph from the file and display it graphically so
		you can interactively explore the graph you built. You will usually pass
		the graph from the session in which you launched it:
		
		```python
		...create a graph...
		# Launch the graph in a session.
		sess = tf.compat.v1.Session()
		# Create a summary writer, add the 'graph' to the event file.
		writer = tf.compat.v1.summary.FileWriter(<some-directory>, sess.graph)
		```
		
		The other arguments to the constructor control the asynchronous writes to
		the event file:
		
		*  `flush_secs`: How often, in seconds, to flush the added summaries
		   and events to disk.
		*  `max_queue`: Maximum number of summaries or events pending to be
		   written to disk before one of the 'add' calls block.
		
		Args:
		  logdir: A string. Directory where event file will be written.
		  graph: A `Graph` object, such as `sess.graph`.
		  max_queue: Integer. Size of the queue for pending events and summaries.
		  flush_secs: Number. How often, in seconds, to flush the
		    pending events and summaries to disk.
		  graph_def: DEPRECATED: Use the `graph` argument instead.
	**/
	public function new(logdir:Dynamic, ?graph:Dynamic, ?max_queue:Dynamic, ?flush_secs:Dynamic, ?graph_def:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_event(event:Dynamic, step:Dynamic):Dynamic;
	public function _add_graph_def(graph_def:Dynamic, ?global_step:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _warn_if_event_writer_is_closed():Dynamic;
	public function _write_plugin_assets(graph:Dynamic):Dynamic;
	/**
		Adds an event to the event file.
		
		Args:
		  event: An `Event` protocol buffer.
	**/
	public function add_event(event:Dynamic):Dynamic;
	/**
		Adds a `Graph` to the event file.
		
		The graph described by the protocol buffer will be displayed by
		TensorBoard. Most users pass a graph in the constructor instead.
		
		Args:
		  graph: A `Graph` object, such as `sess.graph`.
		  global_step: Number. Optional global step counter to record with the
		    graph.
		  graph_def: DEPRECATED. Use the `graph` parameter instead.
		
		Raises:
		  ValueError: If both graph and graph_def are passed to the method.
	**/
	public function add_graph(graph:Dynamic, ?global_step:Dynamic, ?graph_def:Dynamic):Dynamic;
	/**
		Adds a `MetaGraphDef` to the event file.
		
		The `MetaGraphDef` allows running the given graph via
		`saver.import_meta_graph()`.
		
		Args:
		  meta_graph_def: A `MetaGraphDef` object, often as returned by
		    `saver.export_meta_graph()`.
		  global_step: Number. Optional global step counter to record with the
		    graph.
		
		Raises:
		  TypeError: If both `meta_graph_def` is not an instance of `MetaGraphDef`.
	**/
	public function add_meta_graph(meta_graph_def:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Adds a metadata information for a single session.run() call.
		
		Args:
		  run_metadata: A `RunMetadata` protobuf object.
		  tag: The tag name for this metadata.
		  global_step: Number. Optional global step counter to record with the
		    StepStats.
		
		Raises:
		  ValueError: If the provided tag was already used for this type of event.
	**/
	public function add_run_metadata(run_metadata:Dynamic, tag:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Adds a `SessionLog` protocol buffer to the event file.
		
		This method wraps the provided session in an `Event` protocol buffer
		and adds it to the event file.
		
		Args:
		  session_log: A `SessionLog` protocol buffer.
		  global_step: Number. Optional global step value to record with the
		    summary.
	**/
	public function add_session_log(session_log:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Adds a `Summary` protocol buffer to the event file.
		
		This method wraps the provided summary in an `Event` protocol buffer
		and adds it to the event file.
		
		You can pass the result of evaluating any summary op, using
		`tf.Session.run` or
		`tf.Tensor.eval`, to this
		function. Alternatively, you can pass a `tf.compat.v1.Summary` protocol
		buffer that you populate with your own data. The latter is
		commonly done to report evaluation results in event files.
		
		Args:
		  summary: A `Summary` protocol buffer, optionally serialized as a string.
		  global_step: Number. Optional global step value to record with the
		    summary.
	**/
	public function add_summary(summary:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Flushes the event file to disk and close the file.
		
		Call this method when you do not need the summary writer anymore.
	**/
	public function close():Dynamic;
	/**
		Flushes the event file to disk.
		
		Call this method to make sure that all pending events have been written to
		disk.
	**/
	public function flush():Dynamic;
	/**
		Returns the directory where event file will be written.
	**/
	public function get_logdir():Dynamic;
	/**
		Reopens the EventFileWriter.
		
		Can be called after `close()` to add more events in the same directory.
		The events will go into a new events file.
		
		Does nothing if the EventFileWriter was not closed.
	**/
	public function reopen():Dynamic;
}