/* This file is generated, do not edit! */
package tensorflow.contrib.ignite.python.ops.gen_dataset_ops;
@:pythonImport("tensorflow.contrib.ignite.python.ops.gen_dataset_ops") extern class Gen_dataset_ops_Module {
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
		IgniteDataset that allows to get data from Apache Ignite.
		
		Apache Ignite is a memory-centric distributed database, caching, and processing
		platform for transactional, analytical, and streaming workloads, delivering
		in-memory speeds at petabyte scale. This contrib package contains an
		integration between Apache Ignite and TensorFlow. The integration is based on
		tf.data from TensorFlow side and Binary Client Protocol from Apache Ignite side.
		It allows to use Apache Ignite as a datasource for neural network training,
		inference and all other computations supported by TensorFlow. Ignite Dataset
		is based on Apache Ignite Binary Client Protocol.
		
		Args:
		  cache_name: A `Tensor` of type `string`. Ignite Cache Name.
		  host: A `Tensor` of type `string`. Ignite Thin Client Host.
		  port: A `Tensor` of type `int32`. Ignite Thin Client Port.
		  local: A `Tensor` of type `bool`.
		    Local flag that defines that data should be fetched from local host only.
		  part: A `Tensor` of type `int32`. Partition data should be fetched from.
		  page_size: A `Tensor` of type `int32`. Page size for Ignite Thin Client.
		  schema: A `Tensor` of type `int32`.
		    Internal structure that defines schema of cache objects.
		  permutation: A `Tensor` of type `int32`.
		    Internal structure that defines permutation of cache objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ignite_dataset(cache_name:Dynamic, host:Dynamic, port:Dynamic, local:Dynamic, part:Dynamic, page_size:Dynamic, schema:Dynamic, permutation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ignite_dataset
	**/
	static public function ignite_dataset_eager_fallback(cache_name:Dynamic, host:Dynamic, port:Dynamic, local:Dynamic, part:Dynamic, page_size:Dynamic, schema:Dynamic, permutation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}