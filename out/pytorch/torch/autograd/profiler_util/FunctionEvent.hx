/* This file is generated, do not edit! */
package torch.autograd.profiler_util;
@:pythonImport("torch.autograd.profiler_util", "FunctionEvent") extern class FunctionEvent {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(id:Dynamic, name:Dynamic, thread:Dynamic, start_us:Dynamic, end_us:Dynamic, ?fwd_thread:Dynamic, ?input_shapes:Dynamic, ?stack:Dynamic, ?scope:Dynamic, ?cpu_memory_usage:Dynamic, ?cuda_memory_usage:Dynamic, ?is_async:Dynamic, ?is_remote:Dynamic, ?sequence_nr:Dynamic, ?node_id:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic, ?is_legacy:Dynamic, ?flops:Dynamic, ?trace_name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(id:Dynamic, name:Dynamic, thread:Dynamic, start_us:Dynamic, end_us:Dynamic, ?fwd_thread:Dynamic, ?input_shapes:Dynamic, ?stack:Dynamic, ?scope:Dynamic, ?cpu_memory_usage:Dynamic, ?cuda_memory_usage:Dynamic, ?is_async:Dynamic, ?is_remote:Dynamic, ?sequence_nr:Dynamic, ?node_id:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic, ?is_legacy:Dynamic, ?flops:Dynamic, ?trace_name:Dynamic):Void;
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
		Append a CPU child of type FunctionEvent.
		
		One is supposed to append only direct children to the event to have
		correct self cpu time being reported.
	**/
	public function append_cpu_child(child:Dynamic):Dynamic;
	public function append_kernel(name:Dynamic, device:Dynamic, duration:Dynamic):Dynamic;
	public var cpu_time : Dynamic;
	public var cpu_time_str : Dynamic;
	public var cpu_time_total : Dynamic;
	public var cpu_time_total_str : Dynamic;
	public var cuda_time : Dynamic;
	public var cuda_time_str : Dynamic;
	public var cuda_time_total : Dynamic;
	public var cuda_time_total_str : Dynamic;
	public var key : Dynamic;
	public var self_cpu_memory_usage : Dynamic;
	public var self_cpu_time_total : Dynamic;
	public var self_cpu_time_total_str : Dynamic;
	public var self_cuda_memory_usage : Dynamic;
	public var self_cuda_time_total : Dynamic;
	public var self_cuda_time_total_str : Dynamic;
	/**
		Set the immediate CPU parent of type FunctionEvent
		
		One profiling FunctionEvent should have only one CPU parent such that
		the child's range interval is completely inside the parent's. We use
		this connection to determine the event is from top-level op or not.
	**/
	public function set_cpu_parent(parent:Dynamic):Dynamic;
}