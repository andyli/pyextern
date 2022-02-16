/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_monitors;
@:pythonImport("tensorflow.python.debug.lib.debug_events_monitors", "InfNanMonitor") extern class InfNanMonitor {
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
	public function ___init__(debug_events_reader:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(debug_events_reader:Dynamic, ?limit:Dynamic):Void;
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
		Check for bad numerical values based on debug summary of tensor value.
		
		If tensor_debug_mode is one in which debug_tensor_value does not carry
		information about the presence or count of inf / nan values (e.g., SHAPE),
		this method is a no-op.
		
		When infs and/or nans are found, `InfNanAlert` objects are created and
		appended to `self._alerts`.
		
		Args:
		  tensor_debug_mode: TensorDebugMode proto enum.
		  debug_tensor_value: Debug tensor value as a list of numbers.
		  wall_time: Wall timestamp for the tensor event.
		  op_type: Type of the op that generated the tensor (e.g., "Conv2D").
		  output_slot: Output slot index of the tensor for the op.
		  execution_index: Top-level execution index.
		  graph_execution_trace_index: Intra-graph execution index.
	**/
	public function _check_debug_tensor_value(tensor_debug_mode:Dynamic, debug_tensor_value:Dynamic, wall_time:Dynamic, op_type:Dynamic, output_slot:Dynamic, ?execution_index:Dynamic, ?graph_execution_trace_index:Dynamic):Dynamic;
	/**
		Check a full tensor value.
		
		Appends to the list of alerts if any inf or nan is found in the full tensor
		value.
		
		Args:
		  tensor_value: The full tensor value as a `np.ndarray`.
		  wall_time: Wall timestamp for the execution event that generated the
		    tensor value.
		  op_type: Op type executed.
		  output_slot: The output slot of the op.
		  execution_index: Index to the top-level execution event.
		  graph_execution_trace_index: Index to the intra-graph execution trace
		    (if applicable.)
	**/
	public function _check_full_tensor_value(tensor_value:Dynamic, wall_time:Dynamic, op_type:Dynamic, output_slot:Dynamic, ?execution_index:Dynamic, ?graph_execution_trace_index:Dynamic):Dynamic;
	public function alerts():Dynamic;
	/**
		Monitor method for top-level execution events.
		
		Return values (if any) are ignored by the associated DebugDataReader.
		
		Args:
		  execution_index: The index of the top-level execution event, as an int.
		  execution: An Execution data object, for a top-level op or function
		    execution event.
	**/
	public function on_execution(execution_index:Dynamic, execution:Dynamic):Dynamic;
	/**
		Monitor method for GraphExecutionTrace data object.
	**/
	public function on_graph_execution_trace(graph_execution_trace_index:Dynamic, graph_execution_trace:Dynamic):Dynamic;
}