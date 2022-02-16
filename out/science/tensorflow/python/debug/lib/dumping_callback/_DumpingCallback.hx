/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.dumping_callback;
@:pythonImport("tensorflow.python.debug.lib.dumping_callback", "_DumpingCallback") extern class _DumpingCallback {
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
	public function ___init__(dump_root:Dynamic, tensor_debug_mode:Dynamic, circular_buffer_size:Dynamic, op_regex:Dynamic, tensor_dtypes:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dump_root:Dynamic, tensor_debug_mode:Dynamic, circular_buffer_size:Dynamic, op_regex:Dynamic, tensor_dtypes:Dynamic):Void;
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
		Dump the value of eager tensors.
		
		The destination of the dumping is determined by the dump_root of the
		currently enabled dumping callback. The tensors may be transformed prior to
		dumping (e.g., reduced as summary statistics such as minimum, maximum and
		arithmetic  mean). The details of this transformation (if any) depends on
		the tensor_debug_mode of the currently enabled dumping callback.
		
		Args:
		  tensors: The EagerTensors whose values are to be dumped, with or without
		    value transform.
		  op_type: Type of the op that generates the tensors, as a string.
		  input_tensor_ids: IDs of the input EagerTensors to the op.
		  output_tensor_device_ids: Debugged-generated IDs for the devices on which
		    the output tensors are allocated, as a `list` of `int`s. Must match
		    `tensors` in length.
		  graph_id: ID of the executed graph, applicable only to eager execution of
		    a FuncGraph.
		
		Returns:
		  A tfdbg Execution protocol buffer.
	**/
	public function _dump_eager_tensors(tensors:Dynamic, op_type:Dynamic, input_tensor_ids:Dynamic, output_tensor_device_ids:Dynamic, ?graph_id:Dynamic):Dynamic;
	/**
		Attempt to get the ID of a FuncGraph based on an op type name.
		
		Also caches the ID for faster access later.
		
		Args:
		  op_type: Op type string, which may be the name of a function.
		
		Returns:
		  If the op_type name does not fit the pattern of a function name (e.g.,
		  one that starts with "__inference_"), `None` is returned immediately.
		  Else, if the FuncGraph is found, ID of the underlying FuncGraph is
		  returned as a string.
		  Else, `None` is returned.
	**/
	public function _func_graph_id_from_func_name(op_type:Dynamic):Dynamic;
	/**
		Get a unique ID for an op-construction context (e.g., a graph).
		
		If the graph has been encountered before, reuse the same unique ID.
		When encountering a new context (graph), this methods writes a DebugEvent
		proto with the debugged_graph field to the proper DebugEvent file.
		
		Args:
		  context: A context to get the unique ID for. Must be hashable. E.g., a
		    Graph object.
		
		Returns:
		  A unique ID for the context.
	**/
	public function _get_context_id(context:Dynamic):Dynamic;
	/**
		Get the ID of the immediate outer context of the input graph.
		
		Args:
		  graph: The graph (context) in question.
		
		Returns:
		  If an outer context exists, the immediate outer context name as a string.
		  If such as outer context does not exist (i.e., `graph` is itself
		  outermost), `None`.
	**/
	public function _get_outer_context_id(graph:Dynamic):Dynamic;
	public function _get_symbolic_tensor_ids(num_tensors:Dynamic):Dynamic;
	/**
		Add debugging instrumentation for symbolic (i.e., non-eager) tensors.
		
		The detailed fashion in which the tensors are instrumented is determined
		by the tensor_debug_mode configured for the currently enabled dumping
		callback.
		
		Args:
		  tensors: A tuple of Tensors to instrument. It is assumed that their
		    ordering corresponds to the ordering of output tensors of an original
		    op. Output slot indices (0-based) will be generated based on the
		    ordering.
		  op_type: Type name of the op that emits the Tensors (e.g., "MatMul").
		  op_name: Name of the op that emits the Tensors (e.g., "dense_1/MatMul").
		  tfdbg_context_id: A unique ID for the context that the op belongs to
		    (e.g., a graph).
		  tensor_ids: A list of unique ID numbers for the tensors, for tfdbg's
		    internal use.
		
		Returns:
		  Non-eager Tensors that override the `tensors` as the output of the op
		  that originally generated `tensors`. In some cases (e.g., non-V1 graph
		  mode), this may be `None`, as the instrumentation can simply rely on
		  automatic control dependencies (see `auto_control_deps.py`) instead of
		  tensor overriding.
	**/
	public function _instrument_symbolic_tensors(tensors:Dynamic, op_type:Dynamic, op_name:Dynamic, tfdbg_context_id:Dynamic, tensor_ids:Dynamic):Dynamic;
	/**
		Look up the name of a graph tensor.
		
		This method maps the name of a debugger-generated Identity or
		DebugIdentityV2 tensor to the name of the original instrumented tensor,
		if `tensor` is such a debugger-created tensor.
		Otherwise, it returns the name of `tensor` as is.
		
		Args:
		  tensor: The graph tensor to look up the name for.
		
		Returns:
		  Name of the orignal instrumented tensor as known to the debugger.
	**/
	public function _lookup_tensor_name(tensor:Dynamic):Dynamic;
	/**
		Process stack frames.
		
		Send the content of source-files, on a best-effort basis.
		
		Returns:
		  A list of stack frame IDs.
	**/
	public function _process_stack_frames():Dynamic;
	/**
		For V1 graph mode, determine what tensor to output from callback.
		
		Args:
		  op_type: Type of the op that outputs the original symbolic tensor.
		  tensor: The original output symbolic tensor.
		  debug_tensor: The debugger-instrumented tensor.
		  tensor_debug_mode: Debug mode used, a tfdbg TensorDebugMode enum.
		
		Returns:
		  A symbolic tensor to be returned by the dumping op_callback.
	**/
	public function _process_v1_graph_mode_tensor(op_type:Dynamic, tensor:Dynamic, debug_tensor:Dynamic, tensor_debug_mode:Dynamic):Dynamic;
	/**
		Determine if the given tensor's value will be dumped.
		
		The determination is made given the configurations such as `op_regex`,
		`tensor_dtypes`.
		
		Args:
		  op_type: Name of the op's type, as a string (e.g., "MatMul").
		  dtype: The dtype of the tensor, as a `dtypes.DType` object.
		
		Returns:
		  A bool indicating whether the tensor's value will be dumped.
	**/
	public function _should_dump_tensor(op_type:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Send the content of a source file via debug-events writer.
		
		Args:
		  file_path: Path to the source file.
		
		Returns:
		  An int index for the file.
	**/
	public function _write_source_file_content(file_path:Dynamic):Dynamic;
	/**
		Op callback for tracing (dumping) a TF program's execution.
	**/
	public function callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, ?op_name:Dynamic, ?graph:Dynamic):Dynamic;
	public var circular_buffer_size : Dynamic;
	public var dump_root : Dynamic;
	/**
		A callback to be called on creation of Functions.
		
		Used to establish a join between function name and graph (context) ID.
		
		Args:
		  function: The just-created Function.
		  name: Name of the function.
		  graph: FuncGraph, the graph containing the operations in the function.
		  inputs: the tensors in the graph to be used as inputs to the function
		  outputs: the tensors in the graph which will be outputs from the function
	**/
	public function function_callback(_function:Dynamic, name:Dynamic, graph:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Get the debug events writer for the currently configured dump root.
	**/
	public function get_writer():Dynamic;
	public var tensor_debug_mode : Dynamic;
	public var tfdbg_run_id : Dynamic;
}