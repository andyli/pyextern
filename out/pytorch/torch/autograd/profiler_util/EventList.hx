/* This file is generated, do not edit! */
package torch.autograd.profiler_util;
@:pythonImport("torch.autograd.profiler_util", "EventList") extern class EventList {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		x.__getitem__(y) <==> x[y]
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Implement self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
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
		Return a reverse iterator over the list.
	**/
	public function __reversed__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Return the size of the list in memory, in bytes.
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
	public function _build_tree():Dynamic;
	/**
		Populates child events into each underlying FunctionEvent object.
		One event is a child of another if [s1, e1) is inside [s2, e2). Where
		s1 and e1 would be start and end of the child event's interval. And
		s2 and e2 start and end of the parent event's interval
		
		Example: In event list [[0, 10], [1, 3], [3, 4]] would have make [0, 10]
		be a parent of two other intervals.
		
		If for any reason two intervals intersect only partially, this function
		will not record a parent child relationship between then.
	**/
	public function _populate_cpu_children():Dynamic;
	public function _remove_dup_nodes():Dynamic;
	public function _set_backward_stacktraces():Dynamic;
	/**
		Append object to the end of the list.
	**/
	public function append(object:Dynamic):Dynamic;
	/**
		Remove all items from list.
	**/
	public function clear():Dynamic;
	/**
		Return a shallow copy of the list.
	**/
	public function copy():Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Exports an EventList as a Chrome tracing tools file.
		
		The checkpoint can be later loaded and inspected under ``chrome://tracing`` URL.
		
		Args:
		    path (str): Path where the trace will be written.
	**/
	public function export_chrome_trace(path:Dynamic):Dynamic;
	public function export_stacks(path:Dynamic, metric:Dynamic):Dynamic;
	/**
		Extend list by appending elements from the iterable.
	**/
	public function extend(iterable:Dynamic):Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Insert object before index.
	**/
	public function insert(index:Dynamic, object:Dynamic):Dynamic;
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
	public function key_averages(?group_by_input_shapes:Dynamic, ?group_by_stack_n:Dynamic):Dynamic;
	/**
		Remove and return item at index (default last).
		
		Raises IndexError if list is empty or index is out of range.
	**/
	public function pop(?index:Dynamic):Dynamic;
	/**
		Remove first occurrence of value.
		
		Raises ValueError if the value is not present.
	**/
	public function remove(value:Dynamic):Dynamic;
	/**
		Reverse *IN PLACE*.
	**/
	public function reverse():Dynamic;
	public var self_cpu_time_total : Dynamic;
	/**
		Sort the list in ascending order and return None.
		
		The sort is in-place (i.e. the list itself is modified) and stable (i.e. the
		order of two equal elements is maintained).
		
		If a key function is given, apply it once to each list item and sort them,
		ascending or descending, according to their function values.
		
		The reverse flag can be set to sort in descending order.
	**/
	public function sort(?key:Dynamic, ?reverse:Dynamic):Dynamic;
	public function supported_export_stacks_metrics():Dynamic;
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