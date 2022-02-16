/* This file is generated, do not edit! */
package tensorflow.profiler.experimental.server;
@:pythonImport("tensorflow.profiler.experimental.server") extern class Server_Module {
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
		Start a profiler grpc server that listens to given port.
		
		The profiler server will exit when the process finishes. The service is
		defined in tensorflow/core/profiler/profiler_service.proto.
		
		Args:
		  port: port profiler server listens to.
		Example usage: ```python tf.profiler.experimental.server.start(6009) # do
		  your training here.
	**/
	static public function start(port:Dynamic):Dynamic;
}