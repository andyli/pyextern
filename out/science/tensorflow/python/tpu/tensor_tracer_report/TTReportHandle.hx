/* This file is generated, do not edit! */
package tensorflow.python.tpu.tensor_tracer_report;
@:pythonImport("tensorflow.python.tpu.tensor_tracer_report", "TTReportHandle") extern class TTReportHandle {
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Writes the mapping from cache index to tensor index to the report.
	**/
	public function _write_cache_index_map_section(tensor_trace_order:Dynamic):Dynamic;
	/**
		Writes the config section of the report.
	**/
	public function _write_config_section(tt_config:Dynamic, tt_parameters:Dynamic):Dynamic;
	/**
		Writes the graph section of the report.
	**/
	public function _write_graph_section(graph_order:Dynamic):Dynamic;
	/**
		Writes the Op-list section of the report.
	**/
	public function _write_op_list_section(graph_order:Dynamic):Dynamic;
	/**
		Writes the reason section of the report.
	**/
	public function _write_reason_section():Dynamic;
	/**
		Writes the given content to the report.
	**/
	public function _write_report(content:Dynamic):Dynamic;
	/**
		Writes the tensor-list section of the report.
	**/
	public function _write_tensor_list_section(graph_order:Dynamic):Dynamic;
	/**
		Writes the list of checkpoints.
	**/
	public function _write_trace_points(tensor_trace_points:Dynamic):Dynamic;
	/**
		Creates a report file and writes the trace information.
	**/
	public function create_report(tt_config:Dynamic, tt_parameters:Dynamic, tensor_trace_order:Dynamic, tensor_trace_points:Dynamic):Dynamic;
	/**
		Creates and returns a proto that stores tensor tracer configuration.
		
		Args:
		  tt_config: TensorTracerConfig object holding information about the run
		    environment (device, # cores, # hosts), and tensor tracer version
		    information.
		  tt_parameters: TTParameters objects storing the user provided parameters
		    for tensor tracer.
		  tensor_trace_order: TensorTraceOrder object storing a topological order of
		    the graph.
		  tensor_trace_points: Progromatically added trace_points/checkpoints.
		  collected_signature_types: The signature types collected, e,g, norm,
		    max, min, mean...
		Returns:
		  TensorTracerReport proto.
	**/
	public function create_report_proto(tt_config:Dynamic, tt_parameters:Dynamic, tensor_trace_order:Dynamic, tensor_trace_points:Dynamic, collected_signature_types:Dynamic):Dynamic;
	public function instrument(name:Dynamic, explanation:Dynamic):Dynamic;
	public function instrument_op(op:Dynamic, explanation:Dynamic):Dynamic;
	public function instrument_tensor(tensor:Dynamic, explanation:Dynamic):Dynamic;
	/**
		Writes the given report proto under trace_dir.
	**/
	public function write_report_proto(report_proto:Dynamic, tt_parameters:Dynamic):Dynamic;
}