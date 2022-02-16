/* This file is generated, do not edit! */
package torch.utils.data.communication.iter;
@:pythonImport("torch.utils.data.communication.iter") extern class Iter_Module {
	static public var DEFAULT_NON_BLOCKING_SLEEP : Dynamic;
	/**
		Indefinitely iterates over req_queue and passing values from source_datapipe to res_queue
		If raise_stop is true, raises exception when StopIteration received from the source_datapipe
	**/
	static public function DataPipeBehindQueues(source_datapipe:Dynamic, protocol:Dynamic, ?full_stop:Dynamic, ?blocking_request_get:Dynamic):Dynamic;
	static public function EnsureNonBlockingDataPipe(validated_datapipe:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function default_not_available_hook():Dynamic;
}