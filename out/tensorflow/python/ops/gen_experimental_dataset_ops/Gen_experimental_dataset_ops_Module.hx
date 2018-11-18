/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_experimental_dataset_ops;
@:pythonImport("tensorflow.python.ops.gen_experimental_dataset_ops") extern class Gen_experimental_dataset_ops_Module {
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
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  transformations: A `Tensor` of type `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_assert_next_dataset(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_assert_next_dataset
	**/
	static public function experimental_assert_next_dataset_eager_fallback(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		  compression_type: A `Tensor` of type `string`.
		  buffer_size: A `Tensor` of type `int64`.
		  header: A `Tensor` of type `bool`.
		  field_delim: A `Tensor` of type `string`.
		  use_quote_delim: A `Tensor` of type `bool`.
		  na_value: A `Tensor` of type `string`.
		  select_cols: A `Tensor` of type `int64`.
		  record_defaults: A list of `Tensor` objects with types from: `float32`, `float64`, `int32`, `int64`, `string`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_csv_dataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_csv_dataset
	**/
	static public function experimental_csv_dataset_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A substitute for `InterleaveDataset` on a fixed list of `N` datasets.
		
		Args:
		  selector_input_dataset: A `Tensor` of type `variant`.
		    A dataset of scalar `DT_INT64` elements that determines which of the
		    `N` data inputs should produce the next output element.
		  data_input_datasets: A list of at least 1 `Tensor` objects with type `variant`.
		    `N` datasets with the same type that will be interleaved according to
		    the values of `selector_input_dataset`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_directed_interleave_dataset(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_directed_interleave_dataset
	**/
	static public function experimental_directed_interleave_dataset_eager_fallback(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a resource that fills up a buffer by making function calls.
		
		Args:
		  string_arg: A `Tensor` of type `string`.
		    String argument to the function call.
		  target_device: A `Tensor` of type `string`.
		    Target device to execute the function on.
		  shared_name: A `string`.
		    If non-empty, this resource will be shared under the given name across
		    multiple sessions.
		  container: A `string`.
		    If non-empty, this resource is placed in the given container.
		    Otherwise, a default container is used.
		  f: A function decorated with @Defun. Function to be executed.
		  buffer_size: An `int`. Size of the buffer.
		  output_types: A list of `tf.DTypes`. The type list for the return values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function experimental_function_buffering_resource(string_arg:Dynamic, target_device:Dynamic, shared_name:Dynamic, container:Dynamic, f:Dynamic, buffer_size:Dynamic, output_types:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_function_buffering_resource
	**/
	static public function experimental_function_buffering_resource_eager_fallback(string_arg:Dynamic, target_device:Dynamic, shared_name:Dynamic, container:Dynamic, f:Dynamic, buffer_size:Dynamic, output_types:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gets the next element from a FunctionBufferingResource.
		
		Args:
		  function_buffer_resource: A `Tensor` of type `resource`.
		    The FunctionBufferingResource handle.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function experimental_function_buffering_resource_get_next(function_buffer_resource:Dynamic, output_types:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_function_buffering_resource_get_next
	**/
	static public function experimental_function_buffering_resource_get_next_eager_fallback(function_buffer_resource:Dynamic, output_types:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets the FunctionBufferingResource.
		
		Args:
		  function_buffer_resource: A `Tensor` of type `resource`.
		    The FunctionBufferingResource handle.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function experimental_function_buffering_resource_reset(function_buffer_resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_function_buffering_resource_reset
	**/
	static public function experimental_function_buffering_resource_reset_eager_fallback(function_buffer_resource:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  size: A `Tensor` of type `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_identity_indexed_dataset(size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_identity_indexed_dataset
	**/
	static public function experimental_identity_indexed_dataset_eager_fallback(size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the elements of `input_dataset` ignoring errors.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_ignore_errors_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_ignore_errors_dataset
	**/
	static public function experimental_ignore_errors_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  materialized: A `Tensor` of type `resource`.
		  index: A `Tensor` of type `uint64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function experimental_indexed_dataset_get(materialized:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_indexed_dataset_get
	**/
	static public function experimental_indexed_dataset_get_eager_fallback(materialized:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  materialized: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function experimental_indexed_dataset_materialize(dataset:Dynamic, materialized:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_indexed_dataset_materialize
	**/
	static public function experimental_indexed_dataset_materialize_eager_fallback(dataset:Dynamic, materialized:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the name of the device on which `resource` has been placed.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function experimental_iterator_get_device(resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_iterator_get_device
	**/
	static public function experimental_iterator_get_device_eager_fallback(resource:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_lmdb_dataset(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_lmdb_dataset
	**/
	static public function experimental_lmdb_dataset_eager_fallback(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: A `string`.
		  shared_name: A `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function experimental_materialized_index_dataset_handle(container:Dynamic, shared_name:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_materialized_index_dataset_handle
	**/
	static public function experimental_materialized_index_dataset_handle_eager_fallback(container:Dynamic, shared_name:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that uses a custom thread pool to compute `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  thread_pool: A `Tensor` of type `resource`.
		    A resource produced by the ThreadPoolHandle op.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_thread_pool_dataset(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_thread_pool_dataset
	**/
	static public function experimental_thread_pool_dataset_eager_fallback(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that uses a custom thread pool to compute `input_dataset`.
		
		Args:
		  num_threads: An `int`. The number of threads in the thread pool.
		  display_name: A `string`.
		    A human-readable name for the threads that may be visible in some
		    visualizations.
		    threadpool.
		  max_intra_op_parallelism: An optional `int`. Defaults to `1`.
		    The maximum degree of parallelism to use within operations that execute on this
		    threadpool.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function experimental_thread_pool_handle(num_threads:Dynamic, display_name:Dynamic, ?max_intra_op_parallelism:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_thread_pool_handle
	**/
	static public function experimental_thread_pool_handle_eager_fallback(num_threads:Dynamic, display_name:Dynamic, ?max_intra_op_parallelism:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the unique elements of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_unique_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_unique_dataset
	**/
	static public function experimental_unique_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}