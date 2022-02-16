/* This file is generated, do not edit! */
package tensorflow.python.debug;
@:pythonImport("tensorflow.python.debug") extern class Debug_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add watch on a `Tensor` to `RunOptions`.
		
		N.B.:
		  1. Under certain circumstances, the `Tensor` may not get actually watched
		    (e.g., if the node of the `Tensor` is constant-folded during runtime).
		  2. For debugging purposes, the `parallel_iteration` attribute of all
		    `tf.while_loop`s in the graph are set to 1 to prevent any node from
		    being executed multiple times concurrently. This change does not affect
		    subsequent non-debugged runs of the same `tf.while_loop`s.
		
		Args:
		  run_options: An instance of `config_pb2.RunOptions` to be modified.
		  node_name: (`str`) name of the node to watch.
		  output_slot: (`int`) output slot index of the tensor from the watched node.
		  debug_ops: (`str` or `list` of `str`) name(s) of the debug op(s). Can be a
		    `list` of `str` or a single `str`. The latter case is equivalent to a
		    `list` of `str` with only one element.
		    For debug op types with customizable attributes, each debug op string can
		    optionally contain a list of attribute names, in the syntax of:
		      debug_op_name(attr_name_1=attr_value_1;attr_name_2=attr_value_2;...)
		  debug_urls: (`str` or `list` of `str`) URL(s) to send debug values to,
		    e.g., `file:///tmp/tfdbg_dump_1`, `grpc://localhost:12345`.
		  tolerate_debug_op_creation_failures: (`bool`) Whether to tolerate debug op
		    creation failures by not throwing exceptions.
		  global_step: (`int`) Optional global_step count for this debug tensor
		    watch.
	**/
	static public function add_debug_tensor_watch(run_options:Dynamic, node_name:Dynamic, ?output_slot:Dynamic, ?debug_ops:Dynamic, ?debug_urls:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		A predicate for whether a tensor consists of any bad numerical values.
		
		This predicate is common enough to merit definition in this module.
		Bad numerical values include `nan`s and `inf`s.
		The signature of this function follows the requirement of the method
		`DebugDumpDir.find()`.
		
		Args:
		  datum: (`DebugTensorDatum`) Datum metadata.
		  tensor: (`numpy.ndarray` or None) Value of the tensor. None represents
		    an uninitialized tensor.
		
		Returns:
		  (`bool`) True if and only if tensor consists of any nan or inf values.
	**/
	static public function has_inf_or_nan(datum:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Load a tensor from an Event proto.
		
		Args:
		  event: The Event proto, assumed to hold a tensor value in its
		      summary.value[0] field.
		
		Returns:
		  The tensor value loaded from the event file, as a `numpy.ndarray`, if
		  representation of the tensor value by a `numpy.ndarray` is possible.
		  For uninitialized Tensors, returns `None`. For Tensors of data types that
		  cannot be represented as `numpy.ndarray` (e.g., `tf.resource`), return
		  the `TensorProto` protobuf object without converting it to a
		  `numpy.ndarray`.
	**/
	static public function load_tensor_from_event(event:Dynamic):Dynamic;
	/**
		Load a tensor from an event file.
		
		Assumes that the event file contains a `Event` protobuf and the `Event`
		protobuf contains a `Tensor` value.
		
		Args:
		  event_file_path: (`str`) path to the event file.
		
		Returns:
		  The tensor value loaded from the event file, as a `numpy.ndarray`. For
		  uninitialized Tensors, returns `None`. For Tensors of data types that
		  cannot be converted to `numpy.ndarray` (e.g., `tf.resource`), return
		  `None`.
	**/
	static public function load_tensor_from_event_file(event_file_path:Dynamic):Dynamic;
	/**
		Reconstruct original (non-debugger-decorated) partition GraphDef.
		
		This method strips the input `tf.compat.v1.GraphDef` of the Copy* and
		Debug*-type nodes inserted by the debugger.
		
		The reconstructed partition graph is identical to the original (i.e.,
		  non-debugger-decorated) partition graph except in the following respects:
		    1) The exact names of the runtime-inserted internal nodes may differ.
		       These include _Send, _Recv, _HostSend, _HostRecv, _Retval ops.
		    2) As a consequence of 1, the nodes that receive input directly from such
		       send- and recv-type ops will have different input names.
		    3) The parallel_iteration attribute of while-loop Enter ops are set to 1.
		
		Args:
		  debug_graph_def: The debugger-decorated `tf.compat.v1.GraphDef`, with the
		    debugger-inserted Copy* and Debug* nodes.
		
		Returns:
		  The reconstructed `tf.compat.v1.GraphDef` stripped of the debugger-inserted
		  nodes.
	**/
	static public function reconstruct_non_debug_graph_def(debug_graph_def:Dynamic):Dynamic;
	/**
		Add debug watches to `RunOptions` for a TensorFlow graph.
		
		To watch all `Tensor`s on the graph, let both `node_name_regex_allowlist`
		and `op_type_regex_allowlist` be the default (`None`).
		
		N.B.:
		  1. Under certain circumstances, the `Tensor` may not get actually watched
		    (e.g., if the node of the `Tensor` is constant-folded during runtime).
		  2. For debugging purposes, the `parallel_iteration` attribute of all
		    `tf.while_loop`s in the graph are set to 1 to prevent any node from
		    being executed multiple times concurrently. This change does not affect
		    subsequent non-debugged runs of the same `tf.while_loop`s.
		
		
		Args:
		  run_options: An instance of `config_pb2.RunOptions` to be modified.
		  graph: An instance of `ops.Graph`.
		  debug_ops: (`str` or `list` of `str`) name(s) of the debug op(s) to use.
		  debug_urls: URLs to send debug values to. Can be a list of strings,
		    a single string, or None. The case of a single string is equivalent to
		    a list consisting of a single string, e.g., `file:///tmp/tfdbg_dump_1`,
		    `grpc://localhost:12345`.
		    For debug op types with customizable attributes, each debug op name string
		    can optionally contain a list of attribute names, in the syntax of:
		      debug_op_name(attr_name_1=attr_value_1;attr_name_2=attr_value_2;...)
		  node_name_regex_allowlist: Regular-expression allowlist for node_name,
		    e.g., `"(weight_[0-9]+|bias_.*)"`
		  op_type_regex_allowlist: Regular-expression allowlist for the op type of
		    nodes, e.g., `"(Variable|Add)"`.
		    If both `node_name_regex_allowlist` and `op_type_regex_allowlist`
		    are set, the two filtering operations will occur in a logical `AND`
		    relation. In other words, a node will be included if and only if it
		    hits both allowlists.
		  tensor_dtype_regex_allowlist: Regular-expression allowlist for Tensor
		    data type, e.g., `"^int.*"`.
		    This allowlist operates in logical `AND` relations to the two allowlists
		    above.
		  tolerate_debug_op_creation_failures: (`bool`) whether debug op creation
		    failures (e.g., due to dtype incompatibility) are to be tolerated by not
		    throwing exceptions.
		  global_step: (`int`) Optional global_step count for this debug tensor
		    watch.
		  reset_disk_byte_usage: (`bool`) whether to reset the tracked disk byte
		    usage to zero (default: `False`).
	**/
	static public function watch_graph(run_options:Dynamic, graph:Dynamic, ?debug_ops:Dynamic, ?debug_urls:Dynamic, ?node_name_regex_allowlist:Dynamic, ?op_type_regex_allowlist:Dynamic, ?tensor_dtype_regex_allowlist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic, ?global_step:Dynamic, ?reset_disk_byte_usage:Dynamic):Dynamic;
	/**
		Add debug tensor watches, denylisting nodes and op types.
		
		This is similar to `watch_graph()`, but the node names and op types are
		denylisted, instead of allowlisted.
		
		N.B.:
		  1. Under certain circumstances, the `Tensor` may not get actually watched
		    (e.g., if the node of the `Tensor` is constant-folded during runtime).
		  2. For debugging purposes, the `parallel_iteration` attribute of all
		    `tf.while_loop`s in the graph are set to 1 to prevent any node from
		    being executed multiple times concurrently. This change does not affect
		    subsequent non-debugged runs of the same `tf.while_loop`s.
		
		Args:
		  run_options: An instance of `config_pb2.RunOptions` to be modified.
		  graph: An instance of `ops.Graph`.
		  debug_ops: (`str` or `list` of `str`) name(s) of the debug op(s) to use. See
		    the documentation of `watch_graph` for more details.
		  debug_urls: URL(s) to send debug values to, e.g.,
		    `file:///tmp/tfdbg_dump_1`, `grpc://localhost:12345`.
		  node_name_regex_denylist: Regular-expression denylist for node_name. This
		    should be a string, e.g., `"(weight_[0-9]+|bias_.*)"`.
		  op_type_regex_denylist: Regular-expression denylist for the op type of
		    nodes, e.g., `"(Variable|Add)"`. If both node_name_regex_denylist and
		    op_type_regex_denylist are set, the two filtering operations will occur in
		    a logical `OR` relation. In other words, a node will be excluded if it
		    hits either of the two denylists; a node will be included if and only if
		    it hits neither of the denylists.
		  tensor_dtype_regex_denylist: Regular-expression denylist for Tensor data
		    type, e.g., `"^int.*"`. This denylist operates in logical `OR` relations
		    to the two allowlists above.
		  tolerate_debug_op_creation_failures: (`bool`) whether debug op creation
		    failures (e.g., due to dtype incompatibility) are to be tolerated by not
		    throwing exceptions.
		  global_step: (`int`) Optional global_step count for this debug tensor watch.
		  reset_disk_byte_usage: (`bool`) whether to reset the tracked disk byte
		    usage to zero (default: `False`).
	**/
	static public function watch_graph_with_denylists(run_options:Dynamic, graph:Dynamic, ?debug_ops:Dynamic, ?debug_urls:Dynamic, ?node_name_regex_denylist:Dynamic, ?op_type_regex_denylist:Dynamic, ?tensor_dtype_regex_denylist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic, ?global_step:Dynamic, ?reset_disk_byte_usage:Dynamic):Dynamic;
}