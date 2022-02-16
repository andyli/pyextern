/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_utils;
@:pythonImport("tensorflow.python.debug.lib.debug_utils") extern class Debug_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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