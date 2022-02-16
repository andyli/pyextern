/* This file is generated, do not edit! */
package torch.distributed.elastic.events;
@:pythonImport("torch.distributed.elastic.events") extern class Events_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function EventMetadataValue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _events_loggers : Dynamic;
	/**
		Constructs python logger based on the destination type or extends if provided.
		Available destination could be found in ``handlers.py`` file.
		The constructed logger does not propagate messages to the upper level loggers,
		e.g. root logger. This makes sure that a single event can be processed once.
		
		Args:
		    destination: The string representation of the event handler.
		        Available handlers found in ``handlers`` module
	**/
	static public function _get_or_create_logger(?destination:Dynamic):Dynamic;
	static public function construct_and_record_rdzv_event(run_id:Dynamic, message:Dynamic, node_state:Dynamic, ?name:Dynamic, ?hostname:Dynamic, ?pid:Dynamic, ?master_endpoint:Dynamic, ?local_id:Dynamic, ?rank:Dynamic):Dynamic;
	static public function get_logging_handler(?destination:Dynamic):Dynamic;
	static public function record(event:Dynamic, ?destination:Dynamic):Dynamic;
	static public function record_rdzv_event(event:Dynamic):Dynamic;
}