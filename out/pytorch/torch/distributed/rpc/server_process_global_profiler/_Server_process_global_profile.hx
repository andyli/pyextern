/* This file is generated, do not edit! */
package torch.distributed.rpc.server_process_global_profiler;
@:pythonImport("torch.distributed.rpc.server_process_global_profiler", "_server_process_global_profile") extern class _Server_process_global_profile {
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
		Turn on server-side process-global profiling.
		This enables thread-local profiler on all RPC threads running server-side request callbacks.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Turn off server-side process-global profiling.
		Aggregate all profiling events recorded by RPC threads.
		
		These attributes are assigned on exiting context.
		
		Attributes:
		    function_events (torch.autograd.profiler.EventList).  It's a list that has helper
		    methods, like 1) show record items in a pretty-print table.
		    2) do averaging by grouping on keys. 3) and more.
		
		    process_global_function_events (List[torch.autograd.profiler.FunctionEvent]).
		    It's a list of ``FunctionEvent`` elements. Every element is a profiling result
		    of an RPC request handling within the profiling range.
	**/
	public function __exit__(exc_type:Dynamic, exc_val:Dynamic, exc_tb:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _check_finish():Dynamic;
	public function _start_trace():Dynamic;
	public function config():Dynamic;
	/**
		Exports an EventList as a Chrome tracing tools file.
		
		The checkpoint can be later loaded and inspected under ``chrome://tracing`` URL.
		
		Args:
		    path (str): Path where the trace will be written.
	**/
	public function export_chrome_trace(path:Dynamic):Dynamic;
	public function export_stacks(path:Dynamic, ?metric:Dynamic):Dynamic;
	/**
		Averages all function events over their keys.
		
		Args:
		    group_by_input_shapes: group entries by
		        (event name, input shapes) rather than just event name.
		        This is useful to see which input shapes contribute to the runtime
		        the most and may help with size-specific optimizations or
		        choosing the best candidates for quantization (aka fitting a roof line)
		
		    group_by_stack_n: group by top n stack trace entries
		
		Returns:
		    An EventList containing FunctionEventAvg objects.
	**/
	public function key_averages(?group_by_input_shape:Dynamic, ?group_by_stack_n:Dynamic):Dynamic;
	/**
		Returns total time spent on CPU obtained as a sum of
		all self times across all the events.
	**/
	public var self_cpu_time_total : Dynamic;
	/**
		Prints an EventList as a nicely formatted table.
		
		Args:
		    sort_by (str, optional): Attribute used to sort entries. By default
		        they are printed in the same order as they were registered.
		        Valid keys include: ``cpu_time``, ``cuda_time``, ``cpu_time_total``,
		        ``cuda_time_total``, ``cpu_memory_usage``, ``cuda_memory_usage``,
		        ``self_cpu_memory_usage``, ``self_cuda_memory_usage``, ``count``.
		    top_level_events_only(bool, optional): Boolean flag to determine the
		        selection of events to display. If true, the profiler will only
		        display events at top level like top-level invocation of python
		        `lstm`, python `add` or other functions, nested events like low-level
		        cpu/cuda ops events are omitted for profiler result readability.
		
		Returns:
		    A string containing the table.
	**/
	public function table(?sort_by:Dynamic, ?row_limit:Dynamic, ?max_src_column_width:Dynamic, ?header:Dynamic, ?top_level_events_only:Dynamic):Dynamic;
	/**
		Averages all events.
		
		Returns:
		    A FunctionEventAvg object.
	**/
	public function total_average():Dynamic;
}