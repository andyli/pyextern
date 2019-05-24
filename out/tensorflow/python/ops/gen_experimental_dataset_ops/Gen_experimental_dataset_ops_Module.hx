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
		Records the bytes size of each element of `input_dataset` in a StatsAggregator.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  tag: A `Tensor` of type `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_bytes_produced_stats_dataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_bytes_produced_stats_dataset
	**/
	static public function experimental_bytes_produced_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Returns the cardinality of `input_dataset`.
		
		Returns the cardinality of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the dataset to return cardinality for.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function experimental_dataset_cardinality(input_dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_dataset_cardinality
	**/
	static public function experimental_dataset_cardinality_eager_fallback(input_dataset:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Writes the given dataset to the given file using the TFRecord format.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the dataset to write.
		  filename: A `Tensor` of type `string`.
		    A scalar string tensor representing the filename to use.
		  compression_type: A `Tensor` of type `string`.
		    A scalar string tensor containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function experimental_dataset_to_tf_record(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_dataset_to_tf_record
	**/
	static public function experimental_dataset_to_tf_record_eager_fallback(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that batches input elements into a SparseTensor.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A handle to an input dataset. Must have a single component.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch.
		  row_shape: A `Tensor` of type `int64`.
		    A vector representing the dense shape of each row in the produced
		    SparseTensor. The shape may be partially specified, using `-1` to indicate
		    that a particular dimension should use the maximum size of all batch elements.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_dense_to_sparse_batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_dense_to_sparse_batch_dataset
	**/
	static public function experimental_dense_to_sparse_batch_dataset_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Creates a dataset that computes a group-by on `input_dataset`.
		
		Creates a dataset that computes a group-by on `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  key_func_other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `key_func`.
		  init_func_other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `init_func`.
		  reduce_func_other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `reduce_func`.
		  finalize_func_other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `finalize_func`.
		  key_func: A function decorated with @Defun.
		    A function mapping an element of `input_dataset`, concatenated
		    with `key_func_other_arguments` to a scalar value of type DT_INT64.
		  init_func: A function decorated with @Defun.
		    A function mapping a key of type DT_INT64, concatenated with
		    `init_func_other_arguments` to the initial reducer state.
		  reduce_func: A function decorated with @Defun.
		    A function mapping the current reducer state and an element of `input_dataset`,
		    concatenated with `reduce_func_other_arguments` to a new reducer state.
		  finalize_func: A function decorated with @Defun.
		    A function mapping the final reducer state to an output element.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_group_by_reducer_dataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_group_by_reducer_dataset
	**/
	static public function experimental_group_by_reducer_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that computes a windowed group-by on `input_dataset`.
		
		// TODO(mrry): Support non-int64 keys.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  key_func_other_arguments: A list of `Tensor` objects.
		  reduce_func_other_arguments: A list of `Tensor` objects.
		  window_size_func_other_arguments: A list of `Tensor` objects.
		  key_func: A function decorated with @Defun.
		    A function mapping an element of `input_dataset`, concatenated
		    with `key_func_other_arguments` to a scalar value of type DT_INT64.
		  reduce_func: A function decorated with @Defun.
		  window_size_func: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_group_by_window_dataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_group_by_window_dataset
	**/
	static public function experimental_group_by_window_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Records the latency of producing `input_dataset` elements in a StatsAggregator.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  tag: A `Tensor` of type `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_latency_stats_dataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_latency_stats_dataset
	**/
	static public function experimental_latency_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Creates a dataset that fuses mapping with batching.
		
		Creates a dataset that applies `f` to the outputs of `input_dataset` and then
		batches `batch_size` of them.
		
		Unlike a "MapDataset", which applies `f` sequentially, this dataset invokes up
		to `batch_size * num_parallel_batches` copies of `f` in parallel.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when building a closure
		    for `f`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch. It determines the number of concurrent invocations of `f` that process
		    elements from `input_dataset` in parallel.
		  num_parallel_calls: A `Tensor` of type `int64`.
		    A scalar representing the maximum number of parallel invocations of the `map_fn`
		    function. Applying the `map_fn` on consecutive input elements in parallel has
		    the potential to improve input pipeline throughput.
		  drop_remainder: A `Tensor` of type `bool`.
		    A scalar representing whether the last batch should be dropped in case its size
		    is smaller than desired.
		  f: A function decorated with @Defun.
		    A function to apply to the outputs of `input_dataset`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  preserve_cardinality: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_map_and_batch_dataset(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_map_and_batch_dataset
	**/
	static public function experimental_map_and_batch_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_inter_op_parallelism: An optional `bool`. Defaults to `True`.
		  preserve_cardinality: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_map_dataset
	**/
	static public function experimental_map_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  patterns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_matching_files_dataset(patterns:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_matching_files_dataset
	**/
	static public function experimental_matching_files_dataset_eager_fallback(patterns:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Creates a dataset that overrides the maximum intra-op parallelism.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  max_intra_op_parallelism: A `Tensor` of type `int64`.
		    Identifies the maximum intra-op parallelism to use.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_max_intra_op_parallelism_dataset(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_max_intra_op_parallelism_dataset
	**/
	static public function experimental_max_intra_op_parallelism_dataset_eager_fallback(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_non_serializable_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_non_serializable_dataset
	**/
	static public function experimental_non_serializable_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that fuses mapping with batching.
		
		Creates a dataset that applies `f` to the outputs of `input_dataset` and then
		batches `batch_size` of them.
		
		Unlike a "MapDataset", which applies `f` sequentially, this dataset invokes up
		to `batch_size * num_parallel_batches` copies of `f` in parallel.
		
		Unlike "MapAndBatchDatasetV2", this dataset uses a NUMA-aware thread scheduling
		policy. Because it uses the single-threaded executor, it only supports the
		function-based control flow ops.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when building a closure
		    for `f`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch. It determines the number of concurrent invocations of `f` that process
		    elements from `input_dataset` in parallel.
		  num_parallel_calls: A `Tensor` of type `int64`.
		    A scalar representing the maximum number of parallel invocations of the `map_fn`
		    function. Applying the `map_fn` on consecutive input elements in parallel has
		    the potential to improve input pipeline throughput.
		  drop_remainder: A `Tensor` of type `bool`.
		    A scalar representing whether the last batch should be dropped in case its size
		    is smaller than desired.
		  f: A function decorated with @Defun.
		    A function to apply to the outputs of `input_dataset`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  preserve_cardinality: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_numa_map_and_batch_dataset(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_numa_map_and_batch_dataset
	**/
	static public function experimental_numa_map_and_batch_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		The resulting dataset is similar to the `InterleaveDataset`, with the exception
		that if retrieving the next value from a dataset would cause the requester to
		block, it will skip that input dataset. This dataset is especially useful
		when loading data from a variable-latency datastores (e.g. HDFS, GCS), as it
		allows the training step to proceed so long as some data is available.
		
		!! WARNING !! This dataset is not deterministic!
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		  cycle_length: A `Tensor` of type `int64`.
		  block_length: A `Tensor` of type `int64`.
		  sloppy: A `Tensor` of type `bool`.
		  buffer_output_elements: A `Tensor` of type `int64`.
		  prefetch_input_elements: A `Tensor` of type `int64`.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_parallel_interleave_dataset(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_parallel_interleave_dataset
	**/
	static public function experimental_parallel_interleave_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transforms `input_dataset` containing `Example` protos as vectors of DT_STRING into a dataset of `Tensor` or `SparseTensor` objects representing the parsed features.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  num_parallel_calls: A `Tensor` of type `int64`.
		  dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A dict mapping string keys to `Tensor`s.
		    The keys of the dict must match the dense_keys of the feature.
		  sparse_keys: A list of `strings`.
		    A list of string keys in the examples features.
		    The results for these keys will be returned as `SparseTensor` objects.
		  dense_keys: A list of `strings`.
		    A list of Ndense string Tensors (scalars).
		    The keys expected in the Examples features associated with dense values.
		  sparse_types: A list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`.
		    A list of `DTypes` of the same length as `sparse_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  dense_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    List of tuples with the same length as `dense_keys`.
		    The shape of the data for each dense feature referenced by `dense_keys`.
		    Required for any input tensors identified by `dense_keys`.  Must be
		    either fully defined, or may contain an unknown first dimension.
		    An unknown first dimension means the feature is treated as having
		    a variable number of blocks, and the output shape along this dimension
		    is considered unknown at graph build time.  Padding is applied for
		    minibatch elements smaller than the maximum number of blocks for the
		    given feature along this dimension.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		    The list of shapes being produced.
		  sloppy: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_parse_example_dataset(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_parse_example_dataset
	**/
	static public function experimental_parse_example_dataset_eager_fallback(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that uses a custom thread pool to compute `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  num_threads: A `Tensor` of type `int64`.
		    Identifies the number of threads to use for the private threadpool.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_private_thread_pool_dataset(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_private_thread_pool_dataset
	**/
	static public function experimental_private_thread_pool_dataset_eager_fallback(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a Dataset that returns pseudorandom numbers.
		
		Args:
		  seed: A `Tensor` of type `int64`.
		    A scalar seed for the random number generator. If either seed or
		    seed2 is set to be non-zero, the random number generator is seeded
		    by the given seed.  Otherwise, a random seed is used.
		  seed2: A `Tensor` of type `int64`.
		    A second scalar seed to avoid seed collision.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_random_dataset(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_random_dataset
	**/
	static public function experimental_random_dataset_eager_fallback(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset successively reduces `f` over the elements of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  initial_state: A list of `Tensor` objects.
		  other_arguments: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  preserve_cardinality: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_scan_dataset(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_scan_dataset
	**/
	static public function experimental_scan_dataset_eager_fallback(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  stats_aggregator: A `Tensor` of type `resource`.
		  tag: A `Tensor` of type `string`.
		  counter_prefix: A `Tensor` of type `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_set_stats_aggregator_dataset(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_set_stats_aggregator_dataset
	**/
	static public function experimental_set_stats_aggregator_dataset_eager_fallback(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  sleep_microseconds: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_sleep_dataset(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_sleep_dataset
	**/
	static public function experimental_sleep_dataset_eager_fallback(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that passes a sliding window over `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  window_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements in the
		    sliding window.
		  window_shift: A `Tensor` of type `int64`.
		    A scalar representing the steps moving the sliding window
		    forward in one iteration. It must be positive.
		  window_stride: A `Tensor` of type `int64`.
		    A scalar representing the stride of the input elements of the sliding window.
		    It must be positive.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_sliding_window_dataset(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_sliding_window_dataset
	**/
	static public function experimental_sliding_window_dataset_eager_fallback(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that executes a SQL query and emits rows of the result set.
		
		Args:
		  driver_name: A `Tensor` of type `string`.
		    The database type. Currently, the only supported type is 'sqlite'.
		  data_source_name: A `Tensor` of type `string`.
		    A connection string to connect to the database.
		  query: A `Tensor` of type `string`. A SQL query to execute.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_sql_dataset(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_sql_dataset
	**/
	static public function experimental_sql_dataset_eager_fallback(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a statistics manager resource.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function experimental_stats_aggregator_handle(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_stats_aggregator_handle
	**/
	static public function experimental_stats_aggregator_handle_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produces a summary of any statistics recorded by the given statistics manager.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function experimental_stats_aggregator_summary(iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_stats_aggregator_summary
	**/
	static public function experimental_stats_aggregator_summary_eager_fallback(iterator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		A dataset that splits the elements of its input into multiple elements.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_unbatch_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function experimental_unbatch_dataset
	**/
	static public function experimental_unbatch_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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