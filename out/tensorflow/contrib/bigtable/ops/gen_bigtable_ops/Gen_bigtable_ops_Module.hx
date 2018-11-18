/* This file is generated, do not edit! */
package tensorflow.contrib.bigtable.ops.gen_bigtable_ops;
@:pythonImport("tensorflow.contrib.bigtable.ops.gen_bigtable_ops") extern class Gen_bigtable_ops_Module {
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
		TODO: add doc.
		
		Args:
		  project_id: A `string`.
		  instance_id: A `string`.
		  connection_pool_size: An `int`.
		  max_receive_message_size: An optional `int`. Defaults to `-1`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function bigtable_client(project_id:Dynamic, instance_id:Dynamic, connection_pool_size:Dynamic, ?max_receive_message_size:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_client
	**/
	static public function bigtable_client_eager_fallback(project_id:Dynamic, instance_id:Dynamic, connection_pool_size:Dynamic, ?max_receive_message_size:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  keys_dataset: A `Tensor` of type `variant`.
		  table: A `Tensor` of type `resource`.
		  column_families: A `Tensor` of type `string`.
		  columns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_lookup_dataset(keys_dataset:Dynamic, table:Dynamic, column_families:Dynamic, columns:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_lookup_dataset
	**/
	static public function bigtable_lookup_dataset_eager_fallback(keys_dataset:Dynamic, table:Dynamic, column_families:Dynamic, columns:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  prefix: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_prefix_key_dataset(table:Dynamic, prefix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_prefix_key_dataset
	**/
	static public function bigtable_prefix_key_dataset_eager_fallback(table:Dynamic, prefix:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  start_key: A `Tensor` of type `string`.
		  end_key: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_range_key_dataset(table:Dynamic, start_key:Dynamic, end_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_range_key_dataset
	**/
	static public function bigtable_range_key_dataset_eager_fallback(table:Dynamic, start_key:Dynamic, end_key:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  prefix: A `Tensor` of type `string`.
		  start_key: A `Tensor` of type `string`.
		  end_key: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_sample_key_pairs_dataset(table:Dynamic, prefix:Dynamic, start_key:Dynamic, end_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_sample_key_pairs_dataset
	**/
	static public function bigtable_sample_key_pairs_dataset_eager_fallback(table:Dynamic, prefix:Dynamic, start_key:Dynamic, end_key:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_sample_keys_dataset(table:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_sample_keys_dataset
	**/
	static public function bigtable_sample_keys_dataset_eager_fallback(table:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  prefix: A `Tensor` of type `string`.
		  start_key: A `Tensor` of type `string`.
		  end_key: A `Tensor` of type `string`.
		  column_families: A `Tensor` of type `string`.
		  columns: A `Tensor` of type `string`.
		  probability: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function bigtable_scan_dataset(table:Dynamic, prefix:Dynamic, start_key:Dynamic, end_key:Dynamic, column_families:Dynamic, columns:Dynamic, probability:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_scan_dataset
	**/
	static public function bigtable_scan_dataset_eager_fallback(table:Dynamic, prefix:Dynamic, start_key:Dynamic, end_key:Dynamic, column_families:Dynamic, columns:Dynamic, probability:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  client: A `Tensor` of type `resource`.
		  table_name: A `string`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function bigtable_table(client:Dynamic, table_name:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bigtable_table
	**/
	static public function bigtable_table_eager_fallback(client:Dynamic, table_name:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table: A `Tensor` of type `resource`.
		  input_dataset: A `Tensor` of type `variant`.
		  column_families: A `Tensor` of type `string`.
		  columns: A `Tensor` of type `string`.
		  timestamp: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function dataset_to_bigtable(table:Dynamic, input_dataset:Dynamic, column_families:Dynamic, columns:Dynamic, timestamp:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dataset_to_bigtable
	**/
	static public function dataset_to_bigtable_eager_fallback(table:Dynamic, input_dataset:Dynamic, column_families:Dynamic, columns:Dynamic, timestamp:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}