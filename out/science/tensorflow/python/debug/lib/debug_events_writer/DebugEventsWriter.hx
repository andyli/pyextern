/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_writer;
@:pythonImport("tensorflow.python.debug.lib.debug_events_writer", "DebugEventsWriter") extern class DebugEventsWriter {
	/**
		Close the writer.
	**/
	public function Close():Dynamic;
	/**
		Flush the execution debug event files.
		
		Causes the current content of the cyclic buffers to be written to
		the .execution and .graph_execution_traces debug events files.
		Also clears those cyclic buffers.
	**/
	public function FlushExecutionFiles():Dynamic;
	/**
		Flush the non-execution debug event files.
	**/
	public function FlushNonExecutionFiles():Dynamic;
	public function RegisterDeviceAndGetId(device_name:Dynamic):Dynamic;
	/**
		Write a DebuggedGraph proto with the writer.
		
		Args:
		  debugged_graph: A DebuggedGraph proto, describing the details of a
		    TensorFlow Graph that has completed its construction.
	**/
	public function WriteDebuggedGraph(debugged_graph:Dynamic):Dynamic;
	/**
		Write a Execution proto with the writer.
		
		Args:
		  execution: An Execution proto, describing a TensorFlow op or graph
		    execution event.
	**/
	public function WriteExecution(execution:Dynamic):Dynamic;
	/**
		Write a GraphExecutionTrace proto with the writer.
		
		Args:
		  graph_execution_trace: A GraphExecutionTrace proto, concerning the value
		    of an intermediate tensor or a list of intermediate tensors that are
		    computed during the graph's execution.
	**/
	public function WriteGraphExecutionTrace(graph_execution_trace:Dynamic):Dynamic;
	/**
		Write a GraphOpCreation proto with the writer.
		
		Args:
		  graph_op_creation: A GraphOpCreation proto, describing the details of the
		    creation of an op inside a TensorFlow Graph.
	**/
	public function WriteGraphOpCreation(graph_op_creation:Dynamic):Dynamic;
	/**
		Write a SourceFile proto with the writer.
		
		Args:
		  source_file: A SourceFile proto, describing the content of a source file
		    involved in the execution of the debugged TensorFlow program.
	**/
	public function WriteSourceFile(source_file:Dynamic):Dynamic;
	/**
		Write a StackFrameWithId proto with the writer.
		
		Args:
		  stack_frame_with_id: A StackFrameWithId proto, describing the content a
		    stack frame involved in the execution of the debugged TensorFlow
		    program.
	**/
	public function WriteStackFrameWithId(stack_frame_with_id:Dynamic):Dynamic;
	public function _EnsureTimestampAdded(debug_event:Dynamic):Dynamic;
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Construct a DebugEventsWriter object.
		
		NOTE: Given the same `dump_root`, all objects from this constructor
		  will point to the same underlying set of writers. In other words, they
		  will write to the same set of debug events files in the `dump_root`
		  folder.
		
		Args:
		  dump_root: The root directory for dumping debug data. If `dump_root` does
		    not exist as a directory, it will be created.
		  tfdbg_run_id: Debugger Run ID.
		  circular_buffer_size: Size of the circular buffer for each of the two
		    execution-related debug events files: with the following suffixes: -
		      .execution - .graph_execution_traces If <= 0, the circular-buffer
		      behavior will be abolished in the constructed object.
	**/
	@:native("__init__")
	public function ___init__(dump_root:Dynamic, tfdbg_run_id:Dynamic, ?circular_buffer_size:Dynamic):Dynamic;
	/**
		Construct a DebugEventsWriter object.
		
		NOTE: Given the same `dump_root`, all objects from this constructor
		  will point to the same underlying set of writers. In other words, they
		  will write to the same set of debug events files in the `dump_root`
		  folder.
		
		Args:
		  dump_root: The root directory for dumping debug data. If `dump_root` does
		    not exist as a directory, it will be created.
		  tfdbg_run_id: Debugger Run ID.
		  circular_buffer_size: Size of the circular buffer for each of the two
		    execution-related debug events files: with the following suffixes: -
		      .execution - .graph_execution_traces If <= 0, the circular-buffer
		      behavior will be abolished in the constructed object.
	**/
	public function new(dump_root:Dynamic, tfdbg_run_id:Dynamic, ?circular_buffer_size:Dynamic):Void;
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
	public var dump_root : Dynamic;
}