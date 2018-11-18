/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_summary_ops;
@:pythonImport("tensorflow.python.ops.gen_summary_ops") extern class Gen_summary_ops_Module {
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
		  writer: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function close_summary_writer(writer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function close_summary_writer
	**/
	static public function close_summary_writer_eager_fallback(writer:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  db_uri: A `Tensor` of type `string`.
		  experiment_name: A `Tensor` of type `string`.
		  run_name: A `Tensor` of type `string`.
		  user_name: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_summary_db_writer(writer:Dynamic, db_uri:Dynamic, experiment_name:Dynamic, run_name:Dynamic, user_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_summary_db_writer
	**/
	static public function create_summary_db_writer_eager_fallback(writer:Dynamic, db_uri:Dynamic, experiment_name:Dynamic, run_name:Dynamic, user_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  logdir: A `Tensor` of type `string`.
		  max_queue: A `Tensor` of type `int32`.
		  flush_millis: A `Tensor` of type `int32`.
		  filename_suffix: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_summary_file_writer(writer:Dynamic, logdir:Dynamic, max_queue:Dynamic, flush_millis:Dynamic, filename_suffix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_summary_file_writer
	**/
	static public function create_summary_file_writer_eager_fallback(writer:Dynamic, logdir:Dynamic, max_queue:Dynamic, flush_millis:Dynamic, filename_suffix:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function flush_summary_writer(writer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function flush_summary_writer
	**/
	static public function flush_summary_writer_eager_fallback(writer:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  event: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function import_event(writer:Dynamic, event:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function import_event
	**/
	static public function import_event_eager_fallback(writer:Dynamic, event:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shared_name: An optional `string`. Defaults to `""`.
		  container: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function summary_writer(?shared_name:Dynamic, ?container:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function summary_writer
	**/
	static public function summary_writer_eager_fallback(?shared_name:Dynamic, ?container:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tag: A `Tensor` of type `string`.
		  tensor: A `Tensor` of type `float32`.
		  sample_rate: A `Tensor` of type `float32`.
		  max_outputs: An optional `int` that is `>= 1`. Defaults to `3`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_audio_summary(writer:Dynamic, step:Dynamic, tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_audio_summary
	**/
	static public function write_audio_summary_eager_fallback(writer:Dynamic, step:Dynamic, tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tensor: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_graph_summary(writer:Dynamic, step:Dynamic, tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_graph_summary
	**/
	static public function write_graph_summary_eager_fallback(writer:Dynamic, step:Dynamic, tensor:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tag: A `Tensor` of type `string`.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_histogram_summary(writer:Dynamic, step:Dynamic, tag:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_histogram_summary
	**/
	static public function write_histogram_summary_eager_fallback(writer:Dynamic, step:Dynamic, tag:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tag: A `Tensor` of type `string`.
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `float32`, `half`.
		  bad_color: A `Tensor` of type `uint8`.
		  max_images: An optional `int` that is `>= 1`. Defaults to `3`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_image_summary(writer:Dynamic, step:Dynamic, tag:Dynamic, tensor:Dynamic, bad_color:Dynamic, ?max_images:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_image_summary
	**/
	static public function write_image_summary_eager_fallback(writer:Dynamic, step:Dynamic, tag:Dynamic, tensor:Dynamic, bad_color:Dynamic, ?max_images:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tag: A `Tensor` of type `string`.
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_scalar_summary(writer:Dynamic, step:Dynamic, tag:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_scalar_summary
	**/
	static public function write_scalar_summary_eager_fallback(writer:Dynamic, step:Dynamic, tag:Dynamic, value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  writer: A `Tensor` of type `resource`.
		  step: A `Tensor` of type `int64`.
		  tensor: A `Tensor`.
		  tag: A `Tensor` of type `string`.
		  summary_metadata: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_summary(writer:Dynamic, step:Dynamic, tensor:Dynamic, tag:Dynamic, summary_metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_summary
	**/
	static public function write_summary_eager_fallback(writer:Dynamic, step:Dynamic, tensor:Dynamic, tag:Dynamic, summary_metadata:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}