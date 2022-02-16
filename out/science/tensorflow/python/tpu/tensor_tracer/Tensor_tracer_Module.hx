/* This file is generated, do not edit! */
package tensorflow.python.tpu.tensor_tracer;
@:pythonImport("tensorflow.python.tpu.tensor_tracer") extern class Tensor_tracer_Module {
	static public var TENSOR_TRACER_SUMMARY_COLLECTION : Dynamic;
	static public var _COMPACT_TRACE_ENTRY_INIT_VALUE : Dynamic;
	static public var _COMPACT_TRACE_FILE_PREFIX : Dynamic;
	static public var _DEVICE_TYPE_CPU : Dynamic;
	static public var _DEVICE_TYPE_TPU : Dynamic;
	static public var _OUTPUT_STREAM_ESCAPE : Dynamic;
	static public var _REASON_CONTROLFLOW_OP : Dynamic;
	static public var _REASON_DEVICE_MISMATCH : Dynamic;
	static public var _REASON_DYNAMIC_SHAPE : Dynamic;
	static public var _REASON_FEEDS_WHILELOOP_OP : Dynamic;
	static public var _REASON_IN_CONTROL_FLOW : Dynamic;
	static public var _REASON_LESS_INTERESTING_OP : Dynamic;
	static public var _REASON_NON_NUMERIC_TENSOR : Dynamic;
	static public var _REASON_NOT_EXECUTED : Dynamic;
	static public var _REASON_OUTSIDE_OP_RANGE : Dynamic;
	static public var _REASON_SCALAR_GET_TRACED : Dynamic;
	static public var _REASON_SKIP_SCALAR : Dynamic;
	static public var _REASON_TENSOR_GET_TRACED : Dynamic;
	static public var _REASON_UNSAFE_OP : Dynamic;
	static public var _REASON_UNSAFE_SCALAR : Dynamic;
	static public var _REASON_USER_EXCLUDED : Dynamic;
	static public var _REASON_USER_INCLUDED : Dynamic;
	static public var _REASON_WHILELOOP_OP : Dynamic;
	static public var _REPLICA_ID_TAG : Dynamic;
	static public var _SKIP_REPORT_FILE : Dynamic;
	static public var _TENSOR_TRACER_COLLECTION : Dynamic;
	static public var _TENSOR_TRACER_STORAGE : Dynamic;
	static public var _TRACE_FILE_NAME : Dynamic;
	static public var _TRACE_MODE_PART_TENSOR_SIZE : Dynamic;
	static public var _TT_EVENT_FILE_SUFFIX : Dynamic;
	static public var _TT_HOSTCALL_KEY : Dynamic;
	static public var _TT_SNAPSHOT : Dynamic;
	static public var _TT_SUMMARY_MAX : Dynamic;
	static public var _TT_SUMMARY_MAX_ABS : Dynamic;
	static public var _TT_SUMMARY_MAX_QUEUE : Dynamic;
	static public var _TT_SUMMARY_MEAN : Dynamic;
	static public var _TT_SUMMARY_MIN : Dynamic;
	static public var _TT_SUMMARY_NORM : Dynamic;
	static public var _TT_SUMMARY_SIZE : Dynamic;
	static public var _TT_SUMMARY_TAG : Dynamic;
	static public var _TT_SUMMARY_VAR : Dynamic;
	static public var _TT_TENSORBOARD_PLUGIN_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		An interface for adding the tensor outputs of a keras layer.
		
		Encapsulates trace_tensor.
		
		Args:
		   layer: A keras layer.
		   checkpoint_name: a string name for the checkpoint. This name has to be a
		   unique name if used within model comparison. The tensors that have the same
		   checkpoint identifier is compared in model comparison.
		
		Returns:
		  The provided layer.
	**/
	static public function keras_layer_tracepoint(layer:Dynamic, checkpoint_name:Dynamic):Dynamic;
	/**
		Returns the priority of the op.
		
		If the priority of the op is k, it will be traced if trace_level>=k.
		Args:
		  op_type: String name of the operation type.
		Returns:
		  Integer value corresponding the priority of the op.
	**/
	static public function op_priority(op_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads the event file written by tensor tracer.
		
		This can be used to read the full tensors written into binary event files by
		by TensorTracer with trace_mode=full_tensor_summary.
		
		Example usage:
		  result_dict = tensor_tracer.read_tensor_tracer_event_file(event_file_path)
		  for step, tensor_dict in result_dict.items():
		    for tensor_name, full_tensor_content in tensor_dict.items():
		      logging.info(tensor_name, full_tensor_content)
		
		Args:
		  event_file: Path to the event file that contains only tensor tracer events.
		Returns:
		  An event dictionary in the form of
		  {step_number: {tensor_name: tensor_content}}
		Raises:
		  ValueError: If an unexpected trace is found.
	**/
	static public function read_tensor_tracer_event_file(event_file:Dynamic):Dynamic;
	/**
		Enables tensor tracer and sets its parameters.
		
		Example usage:
		  tensor_tracer_parameters = {'trace_dir': '/usr/tmp/trace_dir',
		                              'trace_mode': 'norm',
		                              'report_file': '/usr/tmp/trace_dir/report.all'}
		  tensor_tracer.set_parameters(tensor_tracer_parameters)
		
		This sets up the parameters for tensor tracer. A call to tensor tracer as
		below is necessary to enable debugging on CPUs and GPUs. On TPUs below can be
		skipped as this call is hooked into tpu.rewrite.
		  tt = tensor_tracer.TensorTracer()
		  loss = tt.trace_cpu(tf.get_default_graph(), tensor_fetches=loss)
		
		Args:
		  tensor_tracer_params: Tensor tracer parameter dictionary. Below gives
		  examples of these parameters: See tensor_tracer_report.py for all
		    parameters.
		      - enable: If set, tensor tracer will be enabled. Calling
		        enable_tensor_tracer automatically adds this parameters.
		      - trace_mode: The trace_mode to be used by tensor tracer. These include:
		        - summary: Collects multiple statistics for traced tensors, and writes
		          them a summary file that can be visualized using tensorboard. This
		          mode currently only works for TPUEstimator. It can be also be used
		          for other models, but outfeed must be handled by the user.
		        - norm: Collects norm of each traced tensor and writes them into a
		          text file pointed by 'trace_dir' flag. (Default mode).
		        - nan-inf: Checks the existince of NaNs and Infs in the tensor, and
		          writes a boolean value to a text file pointed by 'trace_dir' flag.
		          Note that 'norm' mode can also capture this information with more
		          numerical info.
		        - max-abs: Collects the absolute max for each traced tensors and
		          writes it into a text file pointed by 'trace_dir' flag.
		        - full-tensor: Writes the full tensor content of the traced tensors
		          into a text file pointed by 'trace_dir' flag.
		        - part-tensor: Writes a part of the tensor content of the traced
		          tensors into a text file pointed by 'trace_dir' flag.
		        - full_tensor_summary: Writes the full tensors as binary event files.
		          The outputs can be read using: trace =
		            tensor_tracer.read_tensor_tracer_event_file(event_file_path)
		
		      - report_file: Path to the metadata file that is written during graph
		        construction. If not set, metadata will be printed to stdout during
		        graph construction.
		      - trace_dir: Path where the execution traces will be written during the
		        graph execution. If not set, trace will be printed to stderr.
		      - trace_level: Tensor tracer aims to trace everything it can. This
		        introduces some overhead on graph execution and graph compilation
		        times. Using trace_level parameter, it is possible to trace operation
		        based on their priorities. For example, - trace_level=7 is the highest
		        trace_level, in which every op is traced. - trace_level=6 will skip
		        constant operations such as tf.constant. - trace_level=5 will skip
		        less important ops such as tf.identities. - The default trace_level=3,
		        that will skip concat ops, or random number generators. - To reduce
		        the graph compile time overhead, trace_level can be set to 0, that
		        will skip additions, and substractions, and multiplications as well.
		      - excluded_opnames: If set, any matching op name will not be traced.
		        excluded_opnames can be set as a regular expression. E.g,
		        excluded_opnames=.* will exclude everything.
		      - excluded_optypes: If set, any matching op type will not be traced.
		        excluded_optypes can be set as a regular expression. E.g,
		        excluded_optypes=.* will exclude everything. excluded_optypes=MatMul
		        will exclude all MatMul ops from tracing.
		      - included_opnames: If set, any matching op name will be forced to be
		        traced. included_opnames can be set as a regular expression. E.g,
		        '--included_opnames=some_op --excluded_opname=*.' will only trace
		        some_op.
		      - included_optypes: If set, any matching op type will be forced to be
		        traced. included_optypes can be set as a regular expression. E.g,
		        '--included_optypes=some_op_type --excluded_optypes=*.' will trace
		        only the ops with type 'some_op_type'
		      - flush_summaries: If summary mode is used, flush_summaries=1 will
		        flush summaries using outside compilation. Note that, if used with
		        low level APIs, flush_summaries=1 is necessary to obtain results.
		      Advanced Flags:
		      - trace_scalar: Scalar values are not traced by default. If this flag is
		        set, scalar values will also be traced.
		      - op_range: In the form of '%d:%d' that limits the tracing to the ops
		        within this limit. --op_range='5:10' will trace only the ops that have
		          topological order between 5-10.
		      - submode: 'brief' or 'detailed'. If the trace mode is not compact,
		        brief mode will print only the id of each traced tensor to save some
		        space. 'detailed' mode prints the full tensor name.
		      - use_fingerprint_subdirectory: The trace directory will be chosen as
		        using the fingerprint of the trace metadata under the provided
		        trace_dir.
	**/
	static public function set_parameters(?tensor_tracer_params:Dynamic):Dynamic;
	/**
		Programmatic interface to trace a tensor with Tensor Tracer.
		
		Tensor Tracer, by default, traces all tensors in the execution. This function
		can be used to limit traced tensors. If this function is called for a subset
		of the tensors, only those will be traced.
		
		For example, Tensor Traacer will only trace c below.
		  c = tf.MatMul(a, b)
		  tensor_tracer.trace_tensor(c)
		  d = tf.add(c, 1)
		Args:
		   tensor: the tensor object for which the tracing is requested.
		   tracepoint_name: an optional tensor tracepoint name string. A tracepoint
		     name is an Tensor Tracer internal name for the tensor. It is useful when
		     comparing equivalent traces from different models that have different
		     tensor namings. Equivalent tensors (with different names) can be mapped
		     to each other by assigning a common tracepoint_name.
		
		Returns:
		  The provided tensor.
	**/
	static public function trace_tensor(tensor:Dynamic, ?tracepoint_name:Dynamic):Dynamic;
}