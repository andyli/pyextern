/* This file is generated, do not edit! */
package tensorflow.python.client.timeline;
@:pythonImport("tensorflow.python.client.timeline", "Timeline") extern class Timeline {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs a new Timeline.
		
		A 'Timeline' is used for visualizing the execution of a TensorFlow
		computation.  It shows the timings and concurrency of execution at
		the granularity of TensorFlow Ops.
		This class is not thread safe.
		
		Args:
		  step_stats: The 'StepStats' proto recording execution times.
		  graph: (Optional) The 'Graph' that was executed.
	**/
	@:native("__init__")
	public function ___init__(step_stats:Dynamic, ?graph:Dynamic):Dynamic;
	/**
		Constructs a new Timeline.
		
		A 'Timeline' is used for visualizing the execution of a TensorFlow
		computation.  It shows the timings and concurrency of execution at
		the granularity of TensorFlow Ops.
		This class is not thread safe.
		
		Args:
		  step_stats: The 'StepStats' proto recording execution times.
		  graph: (Optional) The 'Graph' that was executed.
	**/
	public function new(step_stats:Dynamic, ?graph:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Allocate a flow Id.
	**/
	public function _alloc_flow_id():Dynamic;
	/**
		Allocate a process Id.
	**/
	public function _alloc_pid():Dynamic;
	/**
		Allocate fake process ids for each device in the StepStats.
	**/
	public function _allocate_pids():Dynamic;
	/**
		Analyze tensor references to track dataflow.
	**/
	public function _analyze_tensors(show_memory:Dynamic):Dynamic;
	/**
		Assigns non-overlapping lanes for the activities on each device.
	**/
	public function _assign_lanes():Dynamic;
	/**
		Generates a Chrome Trace event to show Op execution.
		
		Args:
		  nodestats: The 'NodeExecStats' proto recording op execution.
		  pid: The pid assigned for the device where this op ran.
		  is_gputrace: If True then this op came from the GPUTracer.
	**/
	public function _emit_op(nodestats:Dynamic, pid:Dynamic, is_gputrace:Dynamic):Dynamic;
	/**
		Generate Chrome Trace snapshot event for a computed Tensor.
		
		Args:
		  tensor: A 'TensorTracker' object.
		  timestamp:  The timestamp of this snapshot as a long integer.
		  pid: The pid assigned for showing the device where this op ran.
		  tid: The tid of the thread computing the tensor snapshot.
		  value: A JSON-compliant snapshot of the object.
	**/
	public function _emit_tensor_snapshot(tensor:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns true if this device is part of the GPUTracer logging.
	**/
	public function _is_gputrace_device(device_name:Dynamic):Dynamic;
	/**
		Parses the fields in a node timeline label.
	**/
	public function _parse_op_label(label:Dynamic):Dynamic;
	public function _produce_tensor(name:Dynamic, timestamp:Dynamic, tensors_pid:Dynamic, allocator:Dynamic, num_bytes:Dynamic):Dynamic;
	/**
		Visualize the computation activity.
	**/
	public function _show_compute(show_dataflow:Dynamic):Dynamic;
	/**
		Produce a counter series for each memory allocator.
	**/
	public function _show_memory_counters():Dynamic;
	public function analyze_step_stats(?show_dataflow:Dynamic, ?show_memory:Dynamic):Dynamic;
	/**
		Produces a trace in Chrome Trace Format.
		
		Args:
		  show_dataflow: (Optional.) If True, add flow events to the trace
		    connecting producers and consumers of tensors.
		  show_memory: (Optional.) If True, add object snapshot events to the trace
		    showing the sizes and lifetimes of tensors.
		
		Returns:
		  A JSON formatted string in Chrome Trace format.
	**/
	public function generate_chrome_trace_format(?show_dataflow:Dynamic, ?show_memory:Dynamic):Dynamic;
}