/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.grpc_tensorflow_server;
@:pythonImport("tensorflow.python.debug.lib.grpc_tensorflow_server") extern class Grpc_tensorflow_server_Module {
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
	static public function main(unused_args:Dynamic):Dynamic;
	/**
		Parse content of cluster_spec string and inject info into cluster protobuf.
		
		Args:
		  cluster_spec: cluster specification string, e.g.,
		        "local|localhost:2222;localhost:2223"
		  cluster: cluster protobuf.
		  verbose: If verbose logging is requested.
		
		Raises:
		  ValueError: if the cluster_spec string is invalid.
	**/
	static public function parse_cluster_spec(cluster_spec:Dynamic, cluster:Dynamic, ?verbose:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}