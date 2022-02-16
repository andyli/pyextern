/* This file is generated, do not edit! */
package tensorflow.python.tpu.tensor_tracer;
@:pythonImport("tensorflow.python.tpu.tensor_tracer", "TensorTracer") extern class TensorTracer {
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
		Adds nodes for computing the replica ID to the graph.
	**/
	public function _add_replica_id_to_graph():Dynamic;
	/**
		Checks if any requirements for trace files are satisfied.
	**/
	public function _check_trace_files():Dynamic;
	/**
		Changes current_fetches' format, so that it matches input_fetches.
	**/
	public function _convert_fetches_to_input_format(input_fetches:Dynamic, current_fetches:Dynamic):Dynamic;
	public function _create_host_call():Dynamic;
	/**
		Creates a variable as the cache to store intermediate tensor values.
		
		Args:
		  cache_name: Name to be given to the cache (an instance of tf.variable).
		  graph: Tensorflow graph.
		  shape: A list of dimensions.
		  dtype: Data type of created cache.
		Returns:
		  A ref to newly created or existing cache with the given dimensions.
		Raises:
		  ValueError: If missing graph and shape parameters while creating the
		  cache.
	**/
	public function _create_or_get_tensor_values_cache(cache_name:Dynamic, ?graph:Dynamic, ?shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a temporary cache with the given dimensions.
		
		Fills the self._temp_cache_var with num_traced_tensors tf.constant() ops
		that have shape of [num_signatures].
		Args:
		  num_traced_tensors: Int, denoting total number of traced tensors.
		  num_signatures: Int, denoting the number of statistics collected per
		    tensors.
	**/
	public function _create_temp_cache(num_traced_tensors:Dynamic, num_signatures:Dynamic):Dynamic;
	/**
		Determines the tensors to trace and instruments the trace details.
		
		Args:
		  graph_order: graph_order tuple containing graph (tf.graph), operations
		    (list of operations), op_to_idx (op id mapping), (tensors) list of
		    tensors, tensor_to_idx (tensor id mapping), contains_cycle (whether
		    there is a cycle in the graph), topological_order_or_cycle (list of ops
		    in topological order or list of ops creating a cycle).
		  ops_in_exec_path: Set of ops in the execution path.
		  tensor_trace_points: Collection of programatic tensor trace points.
		  report_handler: An instance of tensor_tracer_report.TTReportHandle.
		Returns:
		  List of tensors to be traced.
	**/
	public function _determine_and_instrument_traced_tensors(graph_order:Dynamic, ops_in_exec_path:Dynamic, tensor_trace_points:Dynamic, report_handler:Dynamic):Dynamic;
	/**
		Work needs to be done prior to TPU or CPU tracing.
		
		Args:
		  graph: tf.graph
		  ops_in_exec_path: Set of operations in the execution path.
		Returns:
		  An instance of tensor_tracer_report.TensorTraceOrder, containing list of
		  tensors to be traced with their topological order information.
	**/
	public function _determine_trace_and_create_report(graph:Dynamic, ops_in_exec_path:Dynamic):Dynamic;
	/**
		Returns the set of ops in the execution path to compute given fetches.
	**/
	public function _filter_execution_path_operations(operations:Dynamic, fetches:Dynamic):Dynamic;
	/**
		Flushes the intermediate tensor values in the graph to the cache.
		
		Args:
		  tensor_fetches: list of tensor results returned by the model_fn.
		  op_fetches: list of ops that are returned by the model_fn, e.g., train_op.
		  on_tpu: if the graph is executed on TPU.
		  tensor_trace_order: TensorTraceOrder object holding tensorname to id map.
		
		Returns:
		  An identical copy of tensor_fetches.
	**/
	public function _flush_tensor_values_cache(tensor_fetches:Dynamic, op_fetches:Dynamic, on_tpu:Dynamic, tensor_trace_order:Dynamic):Dynamic;
	/**
		Generates an Op that will flush the cache to file.
		
		Args:
		  num_replicas: total number of replicas.
		  on_tpu: if the graph is executed on TPU.
		  tensor_trace_order: TensorTraceOrder object holding tensorname to id map.
		
		Returns:
		  The Op to flush the cache to file.
	**/
	public function _generate_flush_cache_op(num_replicas:Dynamic, on_tpu:Dynamic, tensor_trace_order:Dynamic):Dynamic;
	public function _get_all_cache_variables():Dynamic;
	/**
		Returns the control flow of the given op.
		
		Args:
		  op: tf.Operation for which the control flow context is requested.
		Returns:
		  op_control_flow_context: which the is control flow context of the given
		  op. If the operation type is LoopExit, returns the outer control flow
		  context.
	**/
	public function _get_op_control_flow_context(op:Dynamic):Dynamic;
	public function _get_outfile_suffix():Dynamic;
	/**
		Return True if the given index is inside the selected range.
	**/
	public function _inside_op_range(idx:Dynamic):Dynamic;
	/**
		Generates a print operation to print trace inspection.
		
		Args:
		  cache: Tensor storing the trace results for the step.
		  replica_id: Tensor storing the replica id of the running core.
		  step_num: Step number.
		  output_stream: Where to print the outputs, e.g., file path, or sys.stderr.
		  tensor_trace_order: TensorTraceOrder object holding tensorname to id map.
		
		Returns:
		  The Op to flush the cache to file.
	**/
	public function _inspect_summary_cache(cache:Dynamic, replica_id:Dynamic, step_num:Dynamic, output_stream:Dynamic, tensor_trace_order:Dynamic):Dynamic;
	/**
		Returns true if the given op is inside a tf.cond or in tf.while_loop.
		
		Args:
		  op: A tensorflow op that should be checked whether in control flow or not.
		Returns:
		  A boolean value whether the op is in control flow or not.
	**/
	public function _is_in_control_flow(op:Dynamic):Dynamic;
	/**
		Returns true if the op is at the same level with the training loop.
		
		Returns false if the op is in an inner while loop or if it is outside of the
		training loop.
		Args:
		  op: tf.Operation
		
		Returns:
		  A boolean.
	**/
	public function _is_in_outmost_while_loop(op:Dynamic):Dynamic;
	/**
		Returns True if the given op is not an interesting one to be traced.
	**/
	public function _is_interesting_op(op:Dynamic):Dynamic;
	public function _is_user_excluded_op(op:Dynamic):Dynamic;
	/**
		Checks whether the op is included in the tensor tracer flags.
		
		Args:
		  op: tf Operation
		Returns:
		  True, if the op is included.
		  An op is included if:
		  - Its op name is given in included_opnames
		  - Its op type is given in included_optypes
		  - The op is at most _trace_ops_before_included hops before an included op
		  - The op is at most _trace_ops_after_included hops after an included op
	**/
	public function _is_user_included_op(op:Dynamic):Dynamic;
	/**
		Makes the tensor tracing function called by outside compilation.
		
		Args:
		  tensor_name: name of the tensor being traced.
		  tensor_trace_order: TensorTraceOrder object holding tensorname to id map.
		Returns:
		  A function to be passed as the first argument to outside compilation.
		
		Raises:
		  RuntimeError: If the trace mode is invalid.
	**/
	public function _make_tensor_trace_fun(tensor_name:Dynamic, tensor_trace_order:Dynamic):Dynamic;
	/**
		Returns a tensor that merges the given signatures.
		
		Args:
		  signatures: A dictionary of the signature updates from signature name to
		  a tensor of dimension [1].
		Returns:
		  A tensor that concats the signature values in a predefined order.
		Raises:
		  ValueError: Unable to merge signatures.
	**/
	public function _merge_tensor_signatures(signatures:Dynamic):Dynamic;
	public function _num_signature_dimensions():Dynamic;
	/**
		Creates a host call function that will write the cache as tb summary.
		
		Args:
		  processed_t_fetches: List of tensor provided to session.run.
		  op_fetches: List of operations provided to session.run.
		Raises:
		  ValueError if trace_dir is not set.
	**/
	public function _prepare_host_call_fn(processed_t_fetches:Dynamic, op_fetches:Dynamic):Dynamic;
	/**
		Computes NAN/Norm/Max on TPUs before sending to CPU.
		
		Args:
		  tensor: The tensor to be traced.
		Returns:
		  A tensor that should be input to the trace_function.
		Raises:
		  RuntimeError: If the signature is invalid.
	**/
	public function _preprocess_traced_tensor(tensor:Dynamic):Dynamic;
	/**
		Check that op_fetches have valid ops.
	**/
	public function _process_op_fetches(op_fetches:Dynamic):Dynamic;
	/**
		Check that tensor_fetches is not empty and have valid tensors.
	**/
	public function _process_tensor_fetches(tensor_fetches:Dynamic):Dynamic;
	/**
		Returns an op that will save the given updates to an entry in the cache.
		
		Args:
		  cache_idx: The cache index of the tensor within the cache.
		  updates: A dictionary of the signature updates.
		Returns:
		  Cache update operation.
	**/
	public function _save_tensor_value_to_cache_op(cache_idx:Dynamic, updates:Dynamic):Dynamic;
	/**
		Returns an op that will save the given updates to an entry in the cache.
		
		Args:
		  cache_idx: The cache index of the tensor within the cache.
		  updates: A dictionary of the signature updates from signature name to
		  a tensor of dimension [1].
	**/
	public function _save_tensor_value_to_tmp_cache(cache_idx:Dynamic, updates:Dynamic):Dynamic;
	/**
		Returns false incase it is not safe to trace ops in tf.cond or tf.while_loop.
	**/
	public function _should_trace_in_control_flow():Dynamic;
	/**
		Returns a dictionary holding the order of signatures in the cache for the selected trace mode.
	**/
	public function _signature_types():Dynamic;
	/**
		Returns True if we should not trace Op.
		
		Args:
		  op_id: Topological index of the op.
		  op: tf.Operation
		  ops_in_exec_path: Set of operations that are in the execution path.
		  report_handler: An instance of tensor_tracer_report.TTReportHandle.
		Returns:
		  True if the op should not be traced, false otherwise.
	**/
	public function _skip_op(op_id:Dynamic, op:Dynamic, ops_in_exec_path:Dynamic, report_handler:Dynamic):Dynamic;
	/**
		Returns True if we should not trace out_tensor.
		
		Args:
		  op_id: Topological index of the op producing tensor.
		  out_tensor: tf.Tensor
		  report_handler: An instance of tensor_tracer_report.TTReportHandle.
		Returns:
		  True if the tensor should not be traced, false otherwise.
	**/
	public function _skip_tensor(op_id:Dynamic, out_tensor:Dynamic, report_handler:Dynamic):Dynamic;
	/**
		Creates a new tf.Variable and a new tf.Operation that assigns the value of the tensor to this variable.
		
		Args:
		  tensor: tensor whose values will be stored in a new tf.Variable.
		Returns:
		  An assignment operation.
	**/
	public function _snapshot_tensor(tensor:Dynamic):Dynamic;
	/**
		Commong tracing function for both CPU and TPUs.
		
		The caller function should set device_type, num_replicas,
		num_replicas_per_host, num_hosts and replica_id before calling
		_trace_execution.
		
		
		Args:
		  graph: the graph of Ops executed on the TPU.
		  tensor_fetches: a (list,tuple,or a single object) of tensor fetches
		    returned by model_fn given to session.run. Function must be provided
		    with as least one tensor to fetch.
		  op_fetches: A list of op fetches returned by model_fn given to
		    session.run. op_fetches and tensor_fetches are used to determine the
		    nodes that will be executed. Can be None.
		  on_tpu: True if executing on TPU.
		
		Returns:
		  tensor_fetches: an exact copy of tensor_fetches that has additional
		                  dependencies.
		Raises:
		  RuntimeError: If tensor_fetches is None or empty.
	**/
	public function _trace_execution(graph:Dynamic, tensor_fetches:Dynamic, ?op_fetches:Dynamic, ?on_tpu:Dynamic):Dynamic;
	static public var _traced_graphs : Dynamic;
	/**
		Returns true if the intermediate values should be stacked instead of being stored in a tf.Variable.
		
		Returns:
		  A boolean, denoting whether to use a temporary cache or not.
	**/
	public function _use_temp_cache():Dynamic;
	/**
		Returns true if the whole tensor needs to be cached/buffered in memory.
	**/
	public function _use_tensor_buffer():Dynamic;
	/**
		Returns True if immediate tensors should be first saved to a cache.
	**/
	public function _use_tensor_values_cache():Dynamic;
	/**
		Merges the given caches on tpu.
		
		Args:
		  global_tt_summary_cache: The global tensor tracer summary cache tensor
		    with shape (num_cores, num_traced_tensors, num_traced_signatures). First
		    dimension corresponds to core_id, where global_tpu_cache_tensor[i]
		    correspond to the local cache from core-i.
		Returns:
		  An aggregated tf.Tensor.
		Raises:
		  RuntimeError: if there is no aggregate function defined for a signature.
	**/
	public function aggregate_global_cache(global_tt_summary_cache:Dynamic):Dynamic;
	/**
		Checks if the given device type is valid.
	**/
	static public function check_device_type(device_type:Dynamic):Dynamic;
	/**
		Checks if the given trace mode work on the given device type.
		
		Args:
		  device_type: Device type, TPU, GPU, CPU.
		  trace_mode: Tensor tracer trace mode.
		Raises:
		  ValueError: If the given trace mode is not supported for the device.
	**/
	static public function check_trace_mode(device_type:Dynamic, trace_mode:Dynamic):Dynamic;
	/**
		Returns true if op is one of the special ops of in a while loop.
		
		Args:
		   op: A tf.Operation.
		
		Returns:
		   True if the given op is one of [Switch, Merge, Enter, Exit,
		   NextIteration, LoopCond], which are all building blocks for TF while
		   loops.
	**/
	static public function control_flow_op(op:Dynamic):Dynamic;
	static public function device_mismatch(device_type:Dynamic, op:Dynamic):Dynamic;
	/**
		Returns the set of traced op names.
	**/
	public function get_traced_op_names():Dynamic;
	public function host_call_deps_and_fn():Dynamic;
	/**
		Returns True if TensorTracer is enabled.
	**/
	static public function is_enabled():Dynamic;
	static public function loop_cond_op(op:Dynamic):Dynamic;
	/**
		Merges the given caches on tpu.
		
		Args:
		  local_tpu_cache_tensor: A local tensor that needs to be merged
		    by concanting data from other tpu cores.
		Returns:
		  A merged tf.Tensor.
	**/
	public function merge_caches_on_tpu(local_tpu_cache_tensor:Dynamic):Dynamic;
	/**
		Returns reason why the Op at op_idx is traced or not.
	**/
	static public function reason(op_idx:Dynamic, details:Dynamic):Dynamic;
	/**
		Getter for tensor_tracer.proto object for summary and full_tensor_summary modes.
		
		Returns:
		  A tensor_tracer.proto object.
		Raises:
		  ValueError if called before tracing happens, or when trace mode is not
		  summary or full_tensor_summary.
	**/
	public function report_proto():Dynamic;
	/**
		Getter for path where tensor_tracer.proto object should be written.
		
		Returns:
		  A string path.
	**/
	public function report_proto_path():Dynamic;
	/**
		Traces the tensors generated by CPU Ops in a TF graph.
		
		Args:
		  graph: the graph of Ops executed on the CPU.
		  tensor_fetches: a (list,tuple,or a single object) of tensor fetches
		    returned by model_fn given to session.run. Function must be provided
		    with as least one tensor to fetch.
		  op_fetches: A list of op fetches returned by model_fn given to
		    session.run. op_fetches and tensor_fetches are used to determine the
		    nodes that will be executed. Can be None.
		
		Returns:
		  tensor_fetches: an exact copy of tensor_fetches that has additional
		                  dependencies.
	**/
	public function trace_cpu(graph:Dynamic, tensor_fetches:Dynamic, ?op_fetches:Dynamic):Dynamic;
	/**
		Traces the tensors generated by TPU Ops in a TF graph.
		
		Args:
		  graph: the graph of Ops executed on the TPU.
		  tensor_fetches: a (list,tuple,or a single object) of tensor fetches
		    returned by model_fn given to session.run. Function must be provided
		    with as least one tensor to fetch.
		  op_fetches: A list of op fetches returned by model_fn given to
		    session.run. op_fetches and tensor_fetches are used to determine the
		    nodes that will be executed. Can be None.
		  num_replicas: number of replicas used on the TPU.
		  num_replicas_per_host: number of replicas per TPU host.
		  num_hosts: total number of TPU hosts.
		
		Returns:
		  tensor_fetches: an exact copy of tensor_fetches that has additional
		                  dependencies.
	**/
	public function trace_tpu(graph:Dynamic, tensor_fetches:Dynamic, ?op_fetches:Dynamic, ?num_replicas:Dynamic, ?num_replicas_per_host:Dynamic, ?num_hosts:Dynamic):Dynamic;
	/**
		Returns True if this op is not safe to be traced.
	**/
	static public function unsafe_op(op:Dynamic):Dynamic;
	/**
		Return true if scalar output tensor from Op is not safe to be traced.
	**/
	static public function unsafe_scalar_trace(op:Dynamic):Dynamic;
	/**
		Returns true if op is one of the special ops of in a while loop.
		
		Args:
		   op: A tf.Operation.
		
		Returns:
		   True if the given op is one of [Switch, Merge, Enter, Exit,
		   NextIteration, LoopCond], which are all building blocks for TF while
		   loops.
	**/
	static public function while_loop_op(op:Dynamic):Dynamic;
}