/* This file is generated, do not edit! */
package tensorflow.contrib.cloud.python.ops.gen_bigquery_reader_ops;
@:pythonImport("tensorflow.contrib.cloud.python.ops.gen_bigquery_reader_ops") extern class Gen_bigquery_reader_ops_Module {
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
		A Reader that outputs rows from a BigQuery table as tensorflow Examples.
		
		Args:
		  project_id: A `string`. GCP project ID.
		  dataset_id: A `string`. BigQuery Dataset ID.
		  table_id: A `string`. Table to read.
		  columns: A list of `strings`.
		    List of columns to read. Leave empty to read all columns.
		  timestamp_millis: An `int`.
		    Table snapshot timestamp in millis since epoch. Relative
		    (negative or zero) snapshot times are not allowed. For more details, see
		    'Table Decorators' in BigQuery docs.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  test_end_point: An optional `string`. Defaults to `""`.
		    Do not use. For testing purposes only.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to reference the Reader.
	**/
	static public function big_query_reader(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, columns:Dynamic, timestamp_millis:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic):Dynamic;
	static public function big_query_reader_eager_fallback(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, columns:Dynamic, timestamp_millis:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Generates serialized partition messages suitable for batch reads.
		
		This op should not be used directly by clients. Instead, the
		bigquery_reader_ops.py file defines a clean interface to the reader.
		
		Args:
		  project_id: A `string`. GCP project ID.
		  dataset_id: A `string`. BigQuery Dataset ID.
		  table_id: A `string`. Table to read.
		  columns: A list of `strings`.
		    List of columns to read. Leave empty to read all columns.
		  timestamp_millis: An `int`.
		    Table snapshot timestamp in millis since epoch. Relative
		    (negative or zero) snapshot times are not allowed. For more details, see
		    'Table Decorators' in BigQuery docs.
		  num_partitions: An `int`. Number of partitions to split the table into.
		  test_end_point: An optional `string`. Defaults to `""`.
		    Do not use. For testing purposes only.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Serialized table partitions.
	**/
	static public function generate_big_query_reader_partitions(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, columns:Dynamic, timestamp_millis:Dynamic, num_partitions:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function generate_big_query_reader_partitions
	**/
	static public function generate_big_query_reader_partitions_eager_fallback(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, columns:Dynamic, timestamp_millis:Dynamic, num_partitions:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}