/* This file is generated, do not edit! */
package torch.profiler.profiler;
@:pythonImport("torch.profiler.profiler", "profile") extern class Profile {
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
	public function ___init__(?activities:Dynamic, ?schedule:Dynamic, ?on_trace_ready:Dynamic, ?record_shapes:Dynamic, ?profile_memory:Dynamic, ?with_stack:Dynamic, ?with_flops:Dynamic, ?with_modules:Dynamic, ?use_cuda:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?activities:Dynamic, ?schedule:Dynamic, ?on_trace_ready:Dynamic, ?record_shapes:Dynamic, ?profile_memory:Dynamic, ?with_stack:Dynamic, ?with_flops:Dynamic, ?with_modules:Dynamic, ?use_cuda:Dynamic):Void;
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
	public function _enter_actions():Dynamic;
	public function _exit_actions():Dynamic;
	public function _get_distributed_info():Dynamic;
	public function _start_trace():Dynamic;
	public function _start_warmup():Dynamic;
	public function _stop_trace():Dynamic;
	/**
		Adds a user defined metadata with a string key and a string value
		into the trace file
	**/
	public function add_metadata(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Adds a user defined metadata with a string key and a valid json value
		into the trace file
	**/
	public function add_metadata_json(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns the list of unaggregated profiler events,
		to be used in the trace callback or after the profiling is finished
	**/
	public function events():Dynamic;
	/**
		Exports the collected trace in Chrome JSON format.
	**/
	public function export_chrome_trace(path:Dynamic):Dynamic;
	/**
		Save stack traces in a file in a format suitable for visualization.
		
		Args:
		    path (str): save stacks file to this location;
		    metric (str): metric to use: "self_cpu_time_total" or "self_cuda_time_total"
		
		.. note::
		    Example of using FlameGraph tool:
		
		    - git clone https://github.com/brendangregg/FlameGraph
		    - cd FlameGraph
		    - ./flamegraph.pl --title "CPU time" --countname "us." profiler.stacks > perf_viz.svg
	**/
	public function export_stacks(path:Dynamic, ?metric:Dynamic):Dynamic;
	/**
		Averages events, grouping them by operator name and (optionally) input shapes and
		stack.
		
		.. note::
		    To use shape/stack functionality make sure to set record_shapes/with_stack
		    when creating profiler context manager.
	**/
	public function key_averages(?group_by_input_shape:Dynamic, ?group_by_stack_n:Dynamic):Dynamic;
	public function start():Dynamic;
	/**
		Signals the profiler that the next profiling step has started.
	**/
	public function step():Dynamic;
	public function stop():Dynamic;
}