/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tensor_tracer;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tensor_tracer", "TensorTracer") extern class TensorTracer {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initializes a TensorTracer.
		
		Sets the various member fields from the flags (if given) or the defaults.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initializes a TensorTracer.
		
		Sets the various member fields from the flags (if given) or the defaults.
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Adds nodes for computing the replica ID to the graph.
	**/
	public function _add_replica_id_to_graph(num_replicas:Dynamic, result_tensor:Dynamic):Dynamic;
	public function _close_report_file():Dynamic;
	/**
		Returns the list of Ops that produce the tensors traced with API.
		
		Args:
		  graph: the graph of Ops.
		
		Returns:
		  A set of operation names which should be traced.
	**/
	public function _get_checkpoints(graph:Dynamic):Dynamic;
	/**
		Return True if the given index is inside the selected range.
	**/
	public function _inside_op_range(idx:Dynamic):Dynamic;
	public function _is_user_excluded_op(op:Dynamic):Dynamic;
	public function _is_user_included_op(op:Dynamic):Dynamic;
	/**
		Creates various maps and lists from op_list.
		
		Args:
		   op_list: a list of Ops
		
		Returns:
		   opname_idx_map: a map from Op's name to its index in op_list.
		   tensor_list: a list of output tensors of the Ops in op_list.
		   tensorname_idx_map: a map from output tensor name to its index
		                       in tensor_list.
	**/
	static public function _make_op_and_tensor_maps(op_list:Dynamic):Dynamic;
	/**
		Makes the tensor tracing function called by outside compilation.
		
		Args:
		  op_name: the name of the Op that outputs the tensor to be traced.
		  output_idx: which output of the Op it is (0 means the first output).
		
		Returns:
		  A function to be passed as the first argument to outside compilation.
		
		Raises:
		  RuntimeError: If the trace mode is invalid.
	**/
	public function _make_tensor_trace_fun(op_name:Dynamic, output_idx:Dynamic):Dynamic;
	/**
		Returns the match for the next TensorTracer flag.
	**/
	static public function _match_next_flag(flags:Dynamic, pos:Dynamic):Dynamic;
	/**
		Work needs to be done after TPU or CPU tracing.
	**/
	public function _post_tracing(succeed:Dynamic, sorted_or_cycle:Dynamic):Dynamic;
	/**
		Work needs to be done prior to TPU or CPU tracing.
	**/
	public function _pre_tracing(graph:Dynamic):Dynamic;
	public function _set_excluded_opnames():Dynamic;
	public function _set_excluded_optypes():Dynamic;
	public function _set_included_opnames():Dynamic;
	public function _set_included_optypes():Dynamic;
	/**
		Sets the index range of the Ops that we will consider tracing.
	**/
	public function _set_op_range():Dynamic;
	/**
		Sets the path of the output report file.
	**/
	public function _set_report_file():Dynamic;
	/**
		Sets the path of the output trace file.
	**/
	public function _set_trace_file_path():Dynamic;
	/**
		Returns True if we should not trace Op.
	**/
	public function _skip_op(op_id:Dynamic, op:Dynamic, user_included:Dynamic, user_excluded:Dynamic):Dynamic;
	/**
		Returns True if we should not trace out_tensor.
	**/
	public function _skip_tensor(op_id:Dynamic, out_tensor:Dynamic, user_included:Dynamic, user_excluded:Dynamic):Dynamic;
	/**
		Writes the config section of the report.
	**/
	public function _write_config_section():Dynamic;
	/**
		Writes the graph section of the report.
	**/
	public function _write_graph_section(succeed:Dynamic, sorted_or_cycle:Dynamic):Dynamic;
	/**
		Writes the Op-list section of the report.
	**/
	public function _write_op_list_section(op_list:Dynamic, tensorname_idx_map:Dynamic):Dynamic;
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
	public function _write_tensor_list_section(tensor_list:Dynamic, opname_idx_map:Dynamic):Dynamic;
	/**
		Checks if the given device type is valid.
	**/
	static public function check_device_type(device_type:Dynamic):Dynamic;
	/**
		Checks if the given trace mode is valid.
	**/
	static public function check_trace_mode(trace_mode:Dynamic):Dynamic;
	static public function device_mismatch(device_type:Dynamic, op:Dynamic):Dynamic;
	/**
		Converts list of strings to compiled RE.
	**/
	static public function flag_value_to_re_list(flag_name:Dynamic):Dynamic;
	/**
		Returns the value of a TensorTracer flags.
	**/
	static public function get_flag_value(wanted_flag_name:Dynamic):Dynamic;
	/**
		Returns True if TensorTracer is enabled.
	**/
	static public function is_enabled():Dynamic;
	/**
		Returns True if the given Op is not an interesting one to be traced.
	**/
	static public function less_interesting_op(op:Dynamic):Dynamic;
	/**
		Prints all TensorTracer flags passed via environment variables.
	**/
	static public function print_flag_values():Dynamic;
	/**
		Returns reason why the Op at op_idx is traced or not.
	**/
	static public function reason(op_idx:Dynamic, details:Dynamic):Dynamic;
	/**
		Performs topological sort on the given graph.
		
		Args:
		   g: the graph.
		
		Returns:
		   A pair where the first element indicates if the topological
		   sort succeeded (True if there is no cycle found; False if a
		   cycle is found) and the second element is either the sorted
		   list of nodes or the cycle of nodes found.
	**/
	static public function topological_sort(g:Dynamic):Dynamic;
	/**
		Traces the tensors generated by CPU Ops in a TF graph.
		
		Args:
		  graph: the graph of Ops executed on the CPU.
		
		Returns:
		  tracing_calls: a map from keys to trace calls.
		                 A key is constructed from an Op's name.
		                 A trace call consists of a function and a tensor (
		                 the function will be invoked with the tensor).
	**/
	public function trace_cpu(graph:Dynamic):Dynamic;
	/**
		Traces the tensors generated by TPU Ops in a TF graph.
		
		Args:
		  graph: the graph of Ops executed on the TPU.
		  result_tensor: a result tensor of evaluating the graph.
		  num_replicas: number of replicas used on the TPU.
		
		Returns:
		  A tuple (result_tensor_copy, tracing_ops), where:
		    result_tensor_copy: an exact copy of result_tensor
		    tracing_ops: a list of tracing ops. If this list
		                 is non empty, the caller of this function
		                 should pose control dependencies upon these
		                 Ops so that they will be executed when the
		                 graph is evaluated.
	**/
	public function trace_tpu(graph:Dynamic, result_tensor:Dynamic, ?num_replicas:Dynamic):Dynamic;
	/**
		Returns True if this op is not safe to be traced.
	**/
	static public function unsafe_op(op:Dynamic):Dynamic;
	/**
		Return true if scalar output tensor from Op is not safe to be traced.
	**/
	static public function unsafe_scalar_trace(op:Dynamic):Dynamic;
	/**
		Decides the output directory of the trace file.
		
		Args:
		   None.
		
		Returns:
		   True if the output trace file should be written to the
		   test-undeclared-outputs-directory defined via an
		   env variable.
	**/
	static public function use_test_undeclared_outputs_dir():Dynamic;
	/**
		Validates if the TensorTrace flags passed are valid.
	**/
	static public function validate_flag_names():Dynamic;
}