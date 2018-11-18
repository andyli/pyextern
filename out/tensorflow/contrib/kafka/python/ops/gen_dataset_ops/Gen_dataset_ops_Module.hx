/* This file is generated, do not edit! */
package tensorflow.contrib.kafka.python.ops.gen_dataset_ops;
@:pythonImport("tensorflow.contrib.kafka.python.ops.gen_dataset_ops") extern class Gen_dataset_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Creates a dataset that emits the messages of one or more Kafka topics.
		
		Args:
		  topics: A `Tensor` of type `string`.
		    A `tf.string` tensor containing one or more subscriptions,
		    in the format of [topic:partition:offset:length],
		    by default length is -1 for unlimited.
		  servers: A `Tensor` of type `string`. A list of bootstrap servers.
		  group: A `Tensor` of type `string`. The consumer group id.
		  eof: A `Tensor` of type `bool`.
		    If True, the kafka reader will stop on EOF.
		  timeout: A `Tensor` of type `int64`.
		    The timeout value for the Kafka Consumer to wait
		    (in millisecond).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function kafka_dataset(topics:Dynamic, servers:Dynamic, group:Dynamic, eof:Dynamic, timeout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function kafka_dataset
	**/
	static public function kafka_dataset_eager_fallback(topics:Dynamic, servers:Dynamic, group:Dynamic, eof:Dynamic, timeout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}