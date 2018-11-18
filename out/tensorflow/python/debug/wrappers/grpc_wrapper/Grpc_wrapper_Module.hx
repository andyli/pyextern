/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.grpc_wrapper;
@:pythonImport("tensorflow.python.debug.wrappers.grpc_wrapper") extern class Grpc_wrapper_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _signal_handler(unused_signal:Dynamic, unused_frame:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Publish traceback and source code if graph version is new.
		
		`graph.version` is compared with `old_graph_version`. If the former is higher
		(i.e., newer), the graph traceback and the associated source code is sent to
		the debug server at the specified gRPC URLs.
		
		Args:
		  debug_server_urls: A single gRPC debug server URL as a `str` or a `list` of
		    debug server URLs.
		  graph: A Python `tf.Graph` object.
		  feed_dict: Feed dictionary given to the `Session.run()` call.
		  fetches: Fetches from the `Session.run()` call.
		  old_graph_version: Old graph version to compare to.
		
		Returns:
		  If `graph.version > old_graph_version`, the new graph version as an `int`.
		  Else, the `old_graph_version` is returned.
	**/
	static public function publish_traceback(debug_server_urls:Dynamic, graph:Dynamic, feed_dict:Dynamic, fetches:Dynamic, old_graph_version:Dynamic):Dynamic;
	static public function register_signal_handler():Dynamic;
}