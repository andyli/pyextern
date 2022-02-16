/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_reader;
@:pythonImport("tensorflow.python.debug.lib.debug_events_reader", "DebugDataReader") extern class DebugDataReader {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exception_type:Dynamic, exception_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dump_root:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dump_root:Dynamic):Void;
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
	public function _add_monitor(monitor:Dynamic):Dynamic;
	public function _graph_execution_trace_digest_from_debug_event_proto(debug_event:Dynamic, locator:Dynamic):Dynamic;
	/**
		Convert a DebugEvent proto into a GraphExecutionTrace data object.
	**/
	public function _graph_execution_trace_from_debug_event_proto(debug_event:Dynamic, locator:Dynamic):Dynamic;
	/**
		Incrementally read the .execution file.
	**/
	public function _load_execution():Dynamic;
	/**
		Incrementally load the .graph_execution_traces file.
	**/
	public function _load_graph_execution_traces():Dynamic;
	/**
		Incrementally read the .graphs file.
		
		Compiles the DebuggedGraph and GraphOpCreation data.
	**/
	public function _load_graphs():Dynamic;
	/**
		Incrementally read the .source_files DebugEvent file.
	**/
	public function _load_source_files():Dynamic;
	/**
		Incrementally read the .stack_frames file.
		
		This must be called after _load_source_files().
		It assumes that the following contract is honored by the writer of the tfdbg
		v2 data file set:
		  - Before a stack frame is written to the .stack_frames file, the
		    corresponding source file information must have been written to the
		    .source_files file first.
	**/
	public function _load_stack_frames():Dynamic;
	/**
		Lookup the type of an op by name and the immediately enclosing graph.
		
		Args:
		  graph_id: Debugger-generated ID of the immediately-enclosing graph.
		  op_name: Name of the op.
		
		Returns:
		  Op type as a str.
	**/
	public function _lookup_op_type(graph_id:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Get the name of a device by the debugger-generated ID of the device.
	**/
	public function device_name_by_id(device_id:Dynamic):Dynamic;
	/**
		Get a map mapping device IDs to device names.
	**/
	public function device_name_map():Dynamic;
	/**
		Read the full tensor values from an Execution or ExecutionDigest.
		
		Args:
		  execution: An `ExecutionDigest` or `ExeuctionDigest` object.
		
		Returns:
		  A list of numpy arrays representing the output tensor values of the
		    execution event.
	**/
	public function execution_to_tensor_values(execution:Dynamic):Dynamic;
	/**
		Get `Execution`s or `ExecutionDigest`s this reader has read so far.
		
		Args:
		  digest: Whether the results are returned in a digest form, i.e.,
		    `ExecutionDigest` format, instead of the more detailed `Execution`
		    format.
		  begin: Optional beginning index for the requested execution data objects
		    or their digests. Python-style negative indices are supported.
		  end: Optional ending index for the requested execution data objects or
		    their digests. Python-style negative indices are supported.
		
		Returns:
		  If `digest`: a `list` of `ExecutionDigest` objects.
		  Else: a `list` of `Execution` objects.
	**/
	public function executions(?digest:Dynamic, ?begin:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Get a DebuggedGraph object by its ID.
	**/
	public function graph_by_id(graph_id:Dynamic):Dynamic;
	/**
		Get symbolic tensor ID from a GraphExecutoinTraceDigest object.
	**/
	public function graph_execution_trace_to_tensor_id(trace:Dynamic):Dynamic;
	/**
		Read full tensor values from an Execution or ExecutionDigest.
		
		Args:
		  trace: An `GraphExecutionTraceDigest` or `GraphExecutionTrace` object.
		
		Returns:
		  A numpy array representing the output tensor value of the intra-graph
		    tensor execution event.
	**/
	public function graph_execution_trace_to_tensor_value(trace:Dynamic):Dynamic;
	/**
		Get all the intra-graph execution tensor traces read so far.
		
		Args:
		  digest: Whether the results will be returned in the more light-weight
		    digest form.
		  begin: Optional beginning index for the requested traces or their digests.
		    Python-style negative indices are supported.
		  end: Optional ending index for the requested traces or their digests.
		    Python-style negative indices are supported.
		
		Returns:
		  If `digest`: a `list` of `GraphExecutionTraceDigest` objects.
		  Else: a `list` of `GraphExecutionTrace` objects.
	**/
	public function graph_execution_traces(?digest:Dynamic, ?begin:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Get the list of the digests for graph-op creation so far.
		
		Args:
		  op_type: Optional op type to filter the creation events with.
		
		Returns:
		  A list of `GraphOpCreationDigest` objects.
	**/
	public function graph_op_digests(?op_type:Dynamic):Dynamic;
	/**
		Get the number of execution events read so far.
	**/
	public function num_executions():Dynamic;
	/**
		Get the number of graph execution traces read so far.
	**/
	public function num_graph_execution_traces():Dynamic;
	/**
		Get the number of outer most graphs read so far.
	**/
	public function outermost_graphs():Dynamic;
	/**
		Read a detailed Execution object.
	**/
	public function read_execution(execution_digest:Dynamic):Dynamic;
	/**
		Read the stack trace of a given Execution object.
		
		Args:
		  execution: The Execution object of interest.
		
		Returns:
		  1. The host name.
		  2. The stack trace, as a list of (file_path, lineno, func) tuples.
	**/
	public function read_execution_stack_trace(execution:Dynamic):Dynamic;
	/**
		Read the detailed graph execution trace.
		
		Args:
		  graph_execution_trace_digest: A `GraphExecutionTraceDigest` object.
		
		Returns:
		  The corresponding `GraphExecutionTrace` object.
	**/
	public function read_graph_execution_trace(graph_execution_trace_digest:Dynamic):Dynamic;
	/**
		Read the stack trace of a given graph op creation object.
		
		Args:
		  graph_op_creation_digest: The GraphOpCreationDigest object of interest.
		
		Returns:
		  A tuple consisting of:
		    1. The host name.
		    2. The stack trace, as a list of (file_path, lineno, func) tuples.
	**/
	public function read_graph_op_creation_stack_trace(graph_op_creation_digest:Dynamic):Dynamic;
	/**
		Get a list of source files known to the debugger data reader.
		
		Returns:
		  A tuple of `(host_name, file_path)` tuples.
	**/
	public function source_file_list():Dynamic;
	/**
		Read the line-by-line content of a source file.
		
		Args:
		  host_name: Host name on which the source file is located.
		  file_path: File path at which the source file is located.
		
		Returns:
		  Lines of the source file as a `list` of `str`s.
	**/
	public function source_lines(host_name:Dynamic, file_path:Dynamic):Dynamic;
	/**
		Wall timestamp for when the debugged TensorFlow program started.
		
		Returns:
		  Stating wall time as seconds since the epoch, as a `float`.
	**/
	public function starting_wall_time():Dynamic;
	/**
		Get the ID of a symbolic tensor.
		
		Args:
		  graph_id: The ID of the immediately-enclosing graph.
		  op_name: Name of the op.
		  output_slot: Output slot as an int.
		
		Returns:
		  The ID of the symbolic tensor as an int.
	**/
	public function symbolic_tensor_id(graph_id:Dynamic, op_name:Dynamic, output_slot:Dynamic):Dynamic;
	/**
		TensorFlow version used in the debugged TensorFlow program.
		
		Note: this is not necessarily the same as the version of TensorFlow used to
		load the DebugEvent file set.
		
		Returns:
		  TensorFlow version used by the debugged program, as a `str`.
	**/
	public function tensorflow_version():Dynamic;
	/**
		Get the debugger run ID of the debugged TensorFlow program.
	**/
	public function tfdbg_run_id():Dynamic;
	/**
		Perform incremental read of the file set.
	**/
	public function update():Dynamic;
}