/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.source_remote;
@:pythonImport("tensorflow.python.debug.lib.source_remote") extern class Source_remote_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Format a traceback stack for a `CallTraceback` proto.
		
		Args:
		  origin_stack: The stack list as returned by `traceback.extract_stack()`.
		  call_traceback_proto: A `CallTraceback` proto whose fields are to be
		    populated.
	**/
	static public function _format_origin_stack(origin_stack:Dynamic, call_traceback_proto:Dynamic):Dynamic;
	static public function _load_debugged_source_file(file_path:Dynamic, source_file_proto:Dynamic):Dynamic;
	/**
		Send the tracebacks of a TensorFlow execution call.
		
		To gRPC debug server(s). This applies to graph execution (`tf.Session.run()`)
		calls and eager execution calls.
		
		If `send_source`, also sends the underlying source files outside the
		TensorFlow library.
		
		Args:
		  destinations: gRPC destination addresses, a `str` or a `list` of `str`s,
		    e.g., "localhost:4242". If a `list`, gRPC requests containing the same
		    `CallTraceback` proto payload will be sent to all the destinations.
		  origin_stack: The traceback stack for the origin of the execution call. For
		    graph execution, this is the traceback of the `tf.Session.run()`
		    invocation. For eager execution, this is the traceback of the Python
		    line that executes the eager opertion.
		  is_eager_execution: (`bool`) whether an eager execution call (i.e., not a
		    `tf.Session.run` or derived methods) is being sent.
		  call_key: The key of the execution call, as a string. For graph execution,
		    this is a string describing the feeds, fetches (and targets) names of the
		    `tf.Session.run` call. For eager execution, this is ignored.
		  graph: A Python `tf.Graph` object (i.e., *not* a `tf.GraphDef`), which
		    contains op tracebacks, if applicable.
		  send_source: Whether the source files involved in the op tracebacks but
		    outside the TensorFlow library are to be sent.
	**/
	static public function _send_call_tracebacks(destinations:Dynamic, origin_stack:Dynamic, ?is_eager_execution:Dynamic, ?call_key:Dynamic, ?graph:Dynamic, ?send_source:Dynamic):Dynamic;
	/**
		Extract source file paths outside TensorFlow Python library.
		
		Args:
		  code_defs: An iterable of `CodeDef` protos, i.e., an iterable of stack
		    traces.
		  id_to_string: A proto map from integer ids to strings.
		
		Returns:
		  An iterable of source file paths outside the TensorFlow Python library.
	**/
	static public function _source_file_paths_outside_tensorflow_py_library(code_defs:Dynamic, id_to_string:Dynamic):Dynamic;
	static public function _string_to_id(string:Dynamic, string_to_id:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Maximum gRPC message length in bytes.
	**/
	static public function grpc_message_length_bytes():Dynamic;
	static public var print_function : Dynamic;
	/**
		Send the tracebacks of an eager execution call to debug server(s).
		
		Args:
		  destinations: gRPC destination addresses, a `str` or a `list` of `str`s,
		    e.g., "localhost:4242". If a `list`, gRPC requests containing the same
		  origin_stack: The traceback of the eager operation invocation.
		  send_source: Whether the source files involved in the op tracebacks but
		    outside the TensorFlow library are to be sent.
	**/
	static public function send_eager_tracebacks(destinations:Dynamic, origin_stack:Dynamic, ?send_source:Dynamic):Dynamic;
	/**
		Send the tracebacks of a graph execution call to debug server(s).
		
		Args:
		  destinations: gRPC destination addresses, a `str` or a `list` of `str`s,
		    e.g., "localhost:4242". If a `list`, gRPC requests containing the same
		    `CallTraceback` proto payload will be sent to all the destinations.
		  run_key: A string describing the feeds, fetches (and targets) names of the
		    `tf.Session.run` call.
		  origin_stack: The traceback of the `tf.Session.run()` invocation.
		  graph: A Python `tf.Graph` object (i.e., *not* a `tf.GraphDef`), which
		    contains op tracebacks.
		  send_source: Whether the source files involved in the op tracebacks but
		    outside the TensorFlow library are to be sent.
	**/
	static public function send_graph_tracebacks(destinations:Dynamic, run_key:Dynamic, origin_stack:Dynamic, graph:Dynamic, ?send_source:Dynamic):Dynamic;
}