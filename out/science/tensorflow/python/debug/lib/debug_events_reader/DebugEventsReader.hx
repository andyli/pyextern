/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_reader;
@:pythonImport("tensorflow.python.debug.lib.debug_events_reader", "DebugEventsReader") extern class DebugEventsReader {
	static public var _EXECUTION_SUFFIX : Dynamic;
	static public var _GRAPHS_SUFFIX : Dynamic;
	static public var _GRAPH_EXECUTION_TRACES_SUFFIX : Dynamic;
	static public var _METADATA_SUFFIX : Dynamic;
	static public var _READER_RELEASE_PER : Dynamic;
	static public var _SOURCE_FILE_SUFFIX : Dynamic;
	static public var _STACK_FRAMES_SUFFIX : Dynamic;
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
	/**
		A helper method that makes an iterator given a debug-events file path.
		
		Repeated calls to this method create iterators that remember the last
		successful reading position (offset) for each given `file_path`. So the
		iterators are meant for incremental reading of the file.
		
		Args:
		  file_path: Path to the file to create the iterator for.
		
		Yields:
		  A tuple of (offset, debug_event_proto) on each `next()` call.
	**/
	public function _generic_iterator(file_path:Dynamic):Dynamic;
	/**
		Get a random-access reader for TFRecords file at file_path.
	**/
	public function _get_reader(file_path:Dynamic):Dynamic;
	/**
		Load and parse metadata files in the dump root.
		
		Check that all metadata files have a common tfdbg_run_id, and raise
		a ValueError if their tfdbg_run_ids differ.
		
		Returns:
		  A list of metadata file paths in ascending order of their starting
		    wall_time timestamp.
	**/
	public function _load_metadata_files():Dynamic;
	public function close():Dynamic;
	public function execution_iterator():Dynamic;
	public function graph_execution_traces_iterators():Dynamic;
	public function graphs_iterator():Dynamic;
	/**
		Read a DebugEvent proto at a given offset from the .execution file.
		
		Args:
		  offset: Offset to read the DebugEvent proto from.
		
		Returns:
		  A DebugEventProto.
		
		Raises:
		  `errors.DataLossError` if offset is at a wrong location.
		  `IndexError` if offset is out of range of the file.
	**/
	public function read_execution_event(offset:Dynamic):Dynamic;
	/**
		Read DebugEvent at given offset from given .graph_execution_traces file.
		
		Args:
		  locator: A (file_index, offset) tuple that locates the DebugEvent
		    containing the graph execution trace.
		
		Returns:
		  A DebugEventProto.
		
		Raises:
		  `errors.DataLossError` if offset is at a wrong location.
		  `IndexError` if offset is out of range of the file.
	**/
	public function read_graph_execution_traces_event(locator:Dynamic):Dynamic;
	/**
		Read a DebugEvent proto at a given offset from the .graphs file.
		
		Args:
		  offset: Offset to read the DebugEvent proto from.
		
		Returns:
		  A DebugEventProto.
		
		Raises:
		  `errors.DataLossError` if offset is at a wrong location.
		  `IndexError` if offset is out of range of the file.
	**/
	public function read_graphs_event(offset:Dynamic):Dynamic;
	/**
		Read a DebugEvent proto at given offset from the .source_files file.
	**/
	public function read_source_files_event(offset:Dynamic):Dynamic;
	public function source_files_iterator():Dynamic;
	public function stack_frames_iterator():Dynamic;
	/**
		Get the starting timestamp of the instrumented TensorFlow program.
		
		When there are multiple hosts (i.e., multiple tfdbg file sets), the earliest
		timestamp among the file sets is returned. It is assumed to be the job that
		starts first (e.g., the coordinator).
		
		Returns:
		  Starting timestamp in seconds since the epoch, as a float.
	**/
	public function starting_wall_time():Dynamic;
	/**
		Get the version string of TensorFlow that the debugged program ran on.
	**/
	public function tensorflow_version():Dynamic;
	/**
		Get the tfdbg file format version.
	**/
	public function tfdbg_file_version():Dynamic;
	/**
		Get the run ID of the instrumented TensorFlow program.
	**/
	public function tfdbg_run_id():Dynamic;
}