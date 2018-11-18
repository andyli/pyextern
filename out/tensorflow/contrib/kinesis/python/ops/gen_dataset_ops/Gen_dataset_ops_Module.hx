/* This file is generated, do not edit! */
package tensorflow.contrib.kinesis.python.ops.gen_dataset_ops;
@:pythonImport("tensorflow.contrib.kinesis.python.ops.gen_dataset_ops") extern class Gen_dataset_ops_Module {
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
		Creates a dataset that emits the messages of one or more Kinesis topics.
		
		Args:
		  stream: A `Tensor` of type `string`.
		    A `tf.string` tensor containing the name of the stream.
		  shard: A `Tensor` of type `string`.
		    A `tf.string` tensor containing the id of the shard.
		  read_indefinitely: A `Tensor` of type `bool`.
		    If `True`, the Kinesis dataset will keep retry
		    again on `EOF` after the `interval` period. If `False`, then
		    the dataset will stop on `EOF`. The default value is `True`.
		  interval: A `Tensor` of type `int64`.
		    The interval for the Kinesis Client to wait before
		    it tries to get records again (in millisecond).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function kinesis_dataset(stream:Dynamic, shard:Dynamic, read_indefinitely:Dynamic, interval:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function kinesis_dataset
	**/
	static public function kinesis_dataset_eager_fallback(stream:Dynamic, shard:Dynamic, read_indefinitely:Dynamic, interval:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}