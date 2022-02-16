/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_experimental_dataset_ops;
@:pythonImport("tensorflow.python.ops.gen_experimental_dataset_ops") extern class Gen_experimental_dataset_ops_Module {
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  cardinality: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function AssertCardinalityDataset(input_dataset:Dynamic, cardinality:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A transformation that asserts which transformations happen next.
		
		This transformation checks whether the camel-case names (i.e. "FlatMap", not
		"flat_map") of the transformations following this transformation match the list
		of names in the `transformations` argument. If there is a mismatch, the
		transformation raises an exception.
		
		The check occurs when iterating over the contents of the dataset, which
		means that the check happens *after* any static optimizations are applied
		to the dataset graph.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		    `AssertNextDataset` passes through the outputs of its input dataset.
		  transformations: A `Tensor` of type `string`.
		    A `tf.string` vector `tf.Tensor` identifying the transformations that are
		    expected to happen next.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function AssertNextDataset(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that shards the input dataset.
		
		Creates a dataset that shards the input dataset by num_workers, returning a
		sharded dataset for the index-th worker. This attempts to automatically shard
		a dataset by examining the Dataset graph and inserting a shard op before the
		inputs to a reader Dataset (e.g. CSVDataset, TFRecordDataset).
		
		This dataset will throw a NotFound error if we cannot shard the dataset
		automatically.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_workers: A `Tensor` of type `int64`.
		    A scalar representing the number of workers to distribute this dataset across.
		  index: A `Tensor` of type `int64`.
		    A scalar representing the index of the current worker out of num_workers.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  auto_shard_policy: An optional `int`. Defaults to `0`.
		  num_replicas: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function AutoShardDataset(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?auto_shard_policy:Dynamic, ?num_replicas:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BytesProducedStatsDataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function CSVDataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
		  exclude_cols: A `Tensor` of type `int64`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function CSVDatasetV2(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, exclude_cols:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  ratio_numerator: A `Tensor` of type `int64`.
		  ratio_denominator: A `Tensor` of type `int64`.
		  other_arguments: A list of `Tensor` objects.
		  num_elements_per_branch: An `int` that is `>= 1`.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		  other_arguments_lengths: A list of `ints` that has length `>= 1`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ChooseFastestBranchDataset(input_dataset:Dynamic, ratio_numerator:Dynamic, ratio_denominator:Dynamic, other_arguments:Dynamic, num_elements_per_branch:Dynamic, branches:Dynamic, other_arguments_lengths:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_datasets: A list of at least 2 `Tensor` objects with type `variant`.
		  num_experiments: An `int`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ChooseFastestDataset(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compresses a dataset element.
		
		Args:
		  components: A list of `Tensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function CompressElement(components:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the static batch size of a dataset sans partial batches.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function ComputeBatchSize(input_dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that reads data from the tf.data service.
		
		Args:
		  dataset_id: A `Tensor` of type `int64`.
		  processing_mode: A `Tensor` of type `string`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  job_name: A `Tensor` of type `string`.
		  max_outstanding_requests: A `Tensor` of type `int64`.
		  iteration_counter: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  task_refresh_interval_hint_ms: An optional `int`. Defaults to `-1`.
		  data_transfer_protocol: An optional `string`. Defaults to `""`.
		  target_workers: An optional `string`. Defaults to `"AUTO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function DataServiceDataset(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?task_refresh_interval_hint_ms:Dynamic, ?data_transfer_protocol:Dynamic, ?target_workers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that reads data from the tf.data service.
		
		Args:
		  dataset_id: A `Tensor` of type `int64`.
		  processing_mode: A `Tensor` of type `string`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  job_name: A `Tensor` of type `string`.
		  consumer_index: A `Tensor` of type `int64`.
		  num_consumers: A `Tensor` of type `int64`.
		  max_outstanding_requests: A `Tensor` of type `int64`.
		  iteration_counter: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  task_refresh_interval_hint_ms: An optional `int`. Defaults to `-1`.
		  data_transfer_protocol: An optional `string`. Defaults to `""`.
		  target_workers: An optional `string`. Defaults to `"AUTO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function DataServiceDatasetV2(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, consumer_index:Dynamic, num_consumers:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?task_refresh_interval_hint_ms:Dynamic, ?data_transfer_protocol:Dynamic, ?target_workers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset from the given `graph_def`.
		
		Creates a dataset from the provided `graph_def`.
		
		Args:
		  graph_def: A `Tensor` of type `string`.
		    The graph representation of the dataset (as serialized GraphDef).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function DatasetFromGraph(graph_def:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function DatasetToTFRecord(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function DenseToSparseBatchDataset(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
		  stop_on_empty_dataset: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function DirectedInterleaveDataset(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?stop_on_empty_dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function DummyIterationCounter(?name:Dynamic):Dynamic;
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
	static public function ExperimentalAssertNextDataset(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that shards the input dataset.
		
		Creates a dataset that shards the input dataset by num_workers, returning a
		sharded dataset for the index-th worker. This attempts to automatically shard
		a dataset by examining the Dataset graph and inserting a shard op before the
		inputs to a reader Dataset (e.g. CSVDataset, TFRecordDataset).
		
		This dataset will throw a NotFound error if we cannot shard the dataset
		automatically.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_workers: A `Tensor` of type `int64`.
		    A scalar representing the number of workers to distribute this dataset across.
		  index: A `Tensor` of type `int64`.
		    A scalar representing the index of the current worker out of num_workers.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  auto_shard_policy: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalAutoShardDataset(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?auto_shard_policy:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalBytesProducedStatsDataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalCSVDataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_datasets: A list of at least 2 `Tensor` objects with type `variant`.
		  num_experiments: An `int`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalChooseFastestDataset(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalDatasetCardinality(input_dataset:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalDatasetToTFRecord(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalDenseToSparseBatchDataset(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalDirectedInterleaveDataset(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalGroupByReducerDataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalGroupByWindowDataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the elements of `input_dataset` ignoring errors.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  log_warning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalIgnoreErrorsDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?log_warning:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the name of the device on which `resource` has been placed.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function ExperimentalIteratorGetDevice(resource:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalLMDBDataset(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalLatencyStatsDataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalMapAndBatchDataset(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalMapDataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  patterns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalMatchingFilesDataset(patterns:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalMaxIntraOpParallelismDataset(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalNonSerializableDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalParallelInterleaveDataset(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalParseExampleDataset(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalPrivateThreadPoolDataset(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalRandomDataset(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that changes the batch size of the dataset to current batch
		size // num_replicas.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_replicas: A `Tensor` of type `int64`.
		    A scalar representing the number of replicas to distribute this batch across. As
		    a result of this transformation the current batch size would end up being
		    divided  by this parameter.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_fallback: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalRebatchDataset(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_fallback:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalScanDataset(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalSetStatsAggregatorDataset(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalSleepDataset(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalSlidingWindowDataset(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalSqlDataset(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a statistics manager resource.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function ExperimentalStatsAggregatorHandle(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a summary of any statistics recorded by the given statistics manager.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function ExperimentalStatsAggregatorSummary(iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that stops iteration when predicate` is false.
		
		The `predicate` function must return a scalar boolean and accept the
		following arguments:
		
		* One tensor for each component of an element of `input_dataset`.
		* One tensor for each value in `other_arguments`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `predicate`.
		  predicate: A function decorated with @Defun.
		    A function returning a scalar boolean.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ExperimentalTakeWhileDataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalThreadPoolDataset(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalThreadPoolHandle(num_threads:Dynamic, display_name:Dynamic, ?max_intra_op_parallelism:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalUnbatchDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExperimentalUniqueDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gets the element at the specified index in a dataset.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function GetElementAtIndex(dataset:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function GroupByReducerDataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function GroupByWindowDataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the elements of `input_dataset` ignoring errors.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  log_warning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function IgnoreErrorsDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?log_warning:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		  dataset: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InitializeTableFromDataset(table_handle:Dynamic, dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the name of the device on which `resource` has been placed.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function IteratorGetDevice(resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the key-value pairs in one or more LMDB files.
		
		The Lightning Memory-Mapped Database Manager, or LMDB, is an embedded binary
		key-value database. This dataset can read the contents of LMDB database files,
		the names of which generally have the `.mdb` suffix.
		
		Each output element consists of a key-value pair represented as a pair of
		scalar string `Tensor`s, where the first `Tensor` contains the key and the
		second `Tensor` contains the value.
		
		LMDB uses different file formats on big- and little-endian machines.
		`LMDBDataset` can only read files in the format of the host machine.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or a vector containing the name(s) of the binary file(s) to be
		    read.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function LMDBDataset(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function LatencyStatsDataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
		  buffer_output_elements: A `Tensor` of type `int64`.
		  prefetch_input_elements: A `Tensor` of type `int64`.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  deterministic: An optional `string`. Defaults to `"default"`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function LegacyParallelInterleaveDatasetV2(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?deterministic:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  path: A `Tensor` of type `string`.
		  reader_func_other_args: A list of `Tensor` objects.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  reader_func: A function decorated with @Defun.
		  compression: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function LoadDataset(path:Dynamic, reader_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
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
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function MapAndBatchDataset(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  patterns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function MatchingFilesDataset(patterns:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function MaxIntraOpParallelismDataset(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function NonSerializableDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		The resulting dataset is similar to the `InterleaveDataset`, with the exception
		that if retrieving the next value from a dataset would cause the requester to
		block, it will skip that input dataset. This dataset is especially useful
		when loading data from a variable-latency datastores (e.g. HDFS, GCS), as it
		allows the training step to proceed so long as some data is available.
		
		!! WARNING !! If the `sloppy` parameter is set to `True`, the operation of this
		dataset will not be deterministic!
		
		This dataset has been superseded by `ParallelInterleaveDatasetV2`.  New code
		should use `ParallelInterleaveDatasetV2`.
		
		The Python API `tf.data.experimental.parallel_interleave` creates instances of
		this op. `tf.data.experimental.parallel_interleave` is a deprecated API.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    Dataset that produces a stream of arguments for the function `f`.
		  other_arguments: A list of `Tensor` objects.
		    Additional arguments to pass to `f` beyond those produced by `input_dataset`.
		    Evaluated once when the dataset is instantiated.
		  cycle_length: A `Tensor` of type `int64`.
		    Number of datasets (each created by applying `f` to the elements of
		    `input_dataset`) among which the `ParallelInterleaveDataset` will cycle in a
		    round-robin fashion.
		  block_length: A `Tensor` of type `int64`.
		    Number of elements at a time to produce from each interleaved invocation of a
		    dataset returned by `f`.
		  sloppy: A `Tensor` of type `bool`.
		    If `True`, return elements as they become available, even if that means returning
		    these elements in a non-deterministic order. Sloppy operation may result in better
		    performance in the presence of stragglers, but the dataset will still block if
		    all of its open streams are blocked.
		    If `False`, always return elements in a deterministic order.
		  buffer_output_elements: A `Tensor` of type `int64`.
		    The number of elements each iterator being interleaved should buffer (similar
		    to the `.prefetch()` transformation for each interleaved iterator).
		  prefetch_input_elements: A `Tensor` of type `int64`.
		    Determines the number of iterators to prefetch, allowing buffers to warm up and
		    data to be pre-fetched without blocking the main thread.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ParallelInterleaveDataset(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
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
		  ragged_keys: An optional list of `strings`. Defaults to `[]`.
		  ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		  ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ParseExampleDataset(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic, ?name:Dynamic):Dynamic;
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
		  deterministic: An optional `string`. Defaults to `"default"`.
		    A string indicating the op-level determinism to use. Deterministic controls
		    whether the dataset is allowed to return elements out of order if the next
		    element to be returned isn't available, but a later element is. Options are
		    "true", "false", and "default". "default" indicates that determinism should be
		    decided by the `experimental_deterministic` parameter of `tf.data.Options`.
		  ragged_keys: An optional list of `strings`. Defaults to `[]`.
		  ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		  ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ParseExampleDatasetV2(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?deterministic:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function PrivateThreadPoolDataset(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a Dataset that returns pseudorandom numbers.
		
		Creates a Dataset that returns a stream of uniformly distributed
		pseudorandom 64-bit signed integers.
		
		In the TensorFlow Python API, you can instantiate this dataset via the
		class `tf.data.experimental.RandomDataset`.
		
		Instances of this dataset are also created as a result of the
		`hoist_random_uniform` static optimization. Whether this optimization is
		performed is determined by the `experimental_optimization.hoist_random_uniform`
		option of `tf.data.Options`.
		
		Args:
		  seed: A `Tensor` of type `int64`.
		    A scalar seed for the random number generator. If either seed or
		    seed2 is set to be non-zero, the random number generator is seeded
		    by the given seed.  Otherwise, a random seed is used.
		  seed2: A `Tensor` of type `int64`.
		    A second scalar seed to avoid seed collision.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function RandomDataset(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that changes the batch size of the dataset to current batch
		size // num_workers.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_replicas: A `Tensor` of type `int64`.
		    A scalar representing the number of replicas to distribute this batch across. As
		    a result of this transformation the current batch size would end up being
		    divided  by this parameter.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_fallback: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function RebatchDataset(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_fallback:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that rebatches elements from `input_dataset` into new batch
		sizes.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  batch_sizes: A `Tensor` of type `int64`.
		    A vector of integers representing the size of batches to produce. These values
		    are cycled through in order.
		  drop_remainder: A `Tensor` of type `bool`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function RebatchDatasetV2(input_dataset:Dynamic, batch_sizes:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Registers a dataset with the tf.data service.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  external_state_policy: An `int`.
		  element_spec: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function RegisterDataset(dataset:Dynamic, address:Dynamic, protocol:Dynamic, external_state_policy:Dynamic, ?element_spec:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that takes a Bernoulli sample of the contents of another dataset.
		
		There is no transformation in the `tf.data` Python API for creating this dataset.
		Instead, it is created as a result of the `filter_with_random_uniform_fusion`
		static optimization. Whether this optimization is performed is determined by the
		`experimental_optimization.filter_with_random_uniform_fusion` option of
		`tf.data.Options`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  rate: A `Tensor` of type `float32`.
		    A scalar representing the sample rate. Each element of `input_dataset` is
		    retained with this probability, independent of all other elements.
		  seed: A `Tensor` of type `int64`.
		    A scalar representing seed of random number generator.
		  seed2: A `Tensor` of type `int64`.
		    A scalar representing seed2 of random number generator.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SamplingDataset(input_dataset:Dynamic, rate:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  path: A `Tensor` of type `string`.
		  shard_func_other_args: A list of `Tensor` objects.
		  shard_func: A function decorated with @Defun.
		  compression: An optional `string`. Defaults to `""`.
		  use_shard_func: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function SaveDataset(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, ?compression:Dynamic, ?use_shard_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  path: A `Tensor` of type `string`.
		  shard_func_other_args: A list of `Tensor` objects.
		  shard_func: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  compression: An optional `string`. Defaults to `""`.
		  use_shard_func: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SaveDatasetV2(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?compression:Dynamic, ?use_shard_func:Dynamic, ?name:Dynamic):Dynamic;
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
		  use_default_device: An optional `bool`. Defaults to `True`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ScanDataset(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?use_default_device:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function SetStatsAggregatorDataset(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function SleepDataset(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function SlidingWindowDataset(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that will write to / read from a snapshot.
		
		This dataset attempts to determine whether a valid snapshot exists at the
		`snapshot_path`, and reads from the snapshot in lieu of using `input_dataset`.
		If not, it will run the preprocessing pipeline as usual, and write out a
		snapshot of the data processed for future use.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  path: A `Tensor` of type `string`.
		    The path we should write snapshots to / read snapshots from.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  compression: An optional `string`. Defaults to `""`.
		  reader_path_prefix: An optional `string`. Defaults to `""`.
		  writer_path_prefix: An optional `string`. Defaults to `""`.
		  shard_size_bytes: An optional `int`. Defaults to `10737418240`.
		  pending_snapshot_expiry_seconds: An optional `int`. Defaults to `86400`.
		  num_reader_threads: An optional `int`. Defaults to `1`.
		  reader_buffer_size: An optional `int`. Defaults to `1`.
		  num_writer_threads: An optional `int`. Defaults to `1`.
		  writer_buffer_size: An optional `int`. Defaults to `1`.
		  shuffle_on_read: An optional `bool`. Defaults to `False`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  mode: An optional `string`. Defaults to `"auto"`.
		  snapshot_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SnapshotDataset(input_dataset:Dynamic, path:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?compression:Dynamic, ?reader_path_prefix:Dynamic, ?writer_path_prefix:Dynamic, ?shard_size_bytes:Dynamic, ?pending_snapshot_expiry_seconds:Dynamic, ?num_reader_threads:Dynamic, ?reader_buffer_size:Dynamic, ?num_writer_threads:Dynamic, ?writer_buffer_size:Dynamic, ?shuffle_on_read:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?mode:Dynamic, ?snapshot_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shard_dir: A `Tensor` of type `string`.
		  start_index: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  version: An `int`.
		  compression: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SnapshotDatasetReader(shard_dir:Dynamic, start_index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, version:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that will write to / read from a snapshot.
		
		This dataset attempts to determine whether a valid snapshot exists at the
		`snapshot_path`, and reads from the snapshot in lieu of using `input_dataset`.
		If not, it will run the preprocessing pipeline as usual, and write out a
		snapshot of the data processed for future use.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  path: A `Tensor` of type `string`.
		    The path we should write snapshots to / read snapshots from.
		  reader_func_other_args: A list of `Tensor` objects.
		  shard_func_other_args: A list of `Tensor` objects.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  reader_func: A function decorated with @Defun.
		    Optional. A function to control how to read data from snapshot shards.
		  shard_func: A function decorated with @Defun.
		    Optional. A function to control how to shard data when writing a snapshot.
		  compression: An optional `string`. Defaults to `""`.
		    The type of compression to be applied to the saved snapshot files.
		  reader_prefix: An optional `string`. Defaults to `""`.
		  writer_prefix: An optional `string`. Defaults to `""`.
		  hash_valid: An optional `bool`. Defaults to `False`.
		  hash: An optional `int`. Defaults to `0`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SnapshotDatasetV2(input_dataset:Dynamic, path:Dynamic, reader_func_other_args:Dynamic, shard_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, shard_func:Dynamic, ?compression:Dynamic, ?reader_prefix:Dynamic, ?writer_prefix:Dynamic, ?hash_valid:Dynamic, ?hash:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SnapshotNestedDatasetReader(inputs:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function SqlDataset(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a statistics manager resource.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function StatsAggregatorHandle(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function StatsAggregatorHandleV2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Set a summary_writer_interface to record statistics using given stats_aggregator.
		
		Args:
		  stats_aggregator: A `Tensor` of type `resource`.
		  summary: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function StatsAggregatorSetSummaryWriter(stats_aggregator:Dynamic, summary:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a summary of any statistics recorded by the given statistics manager.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function StatsAggregatorSummary(iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that stops iteration when predicate` is false.
		
		The `predicate` function must return a scalar boolean and accept the
		following arguments:
		
		* One tensor for each component of an element of `input_dataset`.
		* One tensor for each value in `other_arguments`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `predicate`.
		  predicate: A function decorated with @Defun.
		    A function returning a scalar boolean.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TakeWhileDataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ThreadPoolDataset(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ThreadPoolHandle(num_threads:Dynamic, display_name:Dynamic, ?max_intra_op_parallelism:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A dataset that splits the elements of its input into multiple elements.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function UnbatchDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Uncompresses a compressed dataset element.
		
		Args:
		  compressed: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function UncompressElement(compressed:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the unique elements of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function UniqueDataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  cardinality: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function assert_cardinality_dataset(input_dataset:Dynamic, cardinality:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function assert_cardinality_dataset_eager_fallback(input_dataset:Dynamic, cardinality:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A transformation that asserts which transformations happen next.
		
		This transformation checks whether the camel-case names (i.e. "FlatMap", not
		"flat_map") of the transformations following this transformation match the list
		of names in the `transformations` argument. If there is a mismatch, the
		transformation raises an exception.
		
		The check occurs when iterating over the contents of the dataset, which
		means that the check happens *after* any static optimizations are applied
		to the dataset graph.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		    `AssertNextDataset` passes through the outputs of its input dataset.
		  transformations: A `Tensor` of type `string`.
		    A `tf.string` vector `tf.Tensor` identifying the transformations that are
		    expected to happen next.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function assert_next_dataset(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function assert_next_dataset_eager_fallback(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that shards the input dataset.
		
		Creates a dataset that shards the input dataset by num_workers, returning a
		sharded dataset for the index-th worker. This attempts to automatically shard
		a dataset by examining the Dataset graph and inserting a shard op before the
		inputs to a reader Dataset (e.g. CSVDataset, TFRecordDataset).
		
		This dataset will throw a NotFound error if we cannot shard the dataset
		automatically.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_workers: A `Tensor` of type `int64`.
		    A scalar representing the number of workers to distribute this dataset across.
		  index: A `Tensor` of type `int64`.
		    A scalar representing the index of the current worker out of num_workers.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  auto_shard_policy: An optional `int`. Defaults to `0`.
		  num_replicas: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function auto_shard_dataset(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?auto_shard_policy:Dynamic, ?num_replicas:Dynamic, ?name:Dynamic):Dynamic;
	static public function auto_shard_dataset_eager_fallback(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, auto_shard_policy:Dynamic, num_replicas:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function bytes_produced_stats_dataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function bytes_produced_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  ratio_numerator: A `Tensor` of type `int64`.
		  ratio_denominator: A `Tensor` of type `int64`.
		  other_arguments: A list of `Tensor` objects.
		  num_elements_per_branch: An `int` that is `>= 1`.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		  other_arguments_lengths: A list of `ints` that has length `>= 1`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function choose_fastest_branch_dataset(input_dataset:Dynamic, ratio_numerator:Dynamic, ratio_denominator:Dynamic, other_arguments:Dynamic, num_elements_per_branch:Dynamic, branches:Dynamic, other_arguments_lengths:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function choose_fastest_branch_dataset_eager_fallback(input_dataset:Dynamic, ratio_numerator:Dynamic, ratio_denominator:Dynamic, other_arguments:Dynamic, num_elements_per_branch:Dynamic, branches:Dynamic, other_arguments_lengths:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_datasets: A list of at least 2 `Tensor` objects with type `variant`.
		  num_experiments: An `int`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function choose_fastest_dataset(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function choose_fastest_dataset_eager_fallback(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compresses a dataset element.
		
		Args:
		  components: A list of `Tensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function compress_element(components:Dynamic, ?name:Dynamic):Dynamic;
	static public function compress_element_eager_fallback(components:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the static batch size of a dataset sans partial batches.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function compute_batch_size(input_dataset:Dynamic, ?name:Dynamic):Dynamic;
	static public function compute_batch_size_eager_fallback(input_dataset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function csv_dataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function csv_dataset_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  exclude_cols: A `Tensor` of type `int64`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function csv_dataset_v2(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, exclude_cols:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function csv_dataset_v2_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, exclude_cols:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that reads data from the tf.data service.
		
		Args:
		  dataset_id: A `Tensor` of type `int64`.
		  processing_mode: A `Tensor` of type `string`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  job_name: A `Tensor` of type `string`.
		  max_outstanding_requests: A `Tensor` of type `int64`.
		  iteration_counter: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  task_refresh_interval_hint_ms: An optional `int`. Defaults to `-1`.
		  data_transfer_protocol: An optional `string`. Defaults to `""`.
		  target_workers: An optional `string`. Defaults to `"AUTO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function data_service_dataset(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?task_refresh_interval_hint_ms:Dynamic, ?data_transfer_protocol:Dynamic, ?target_workers:Dynamic, ?name:Dynamic):Dynamic;
	static public function data_service_dataset_eager_fallback(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, task_refresh_interval_hint_ms:Dynamic, data_transfer_protocol:Dynamic, target_workers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that reads data from the tf.data service.
		
		Args:
		  dataset_id: A `Tensor` of type `int64`.
		  processing_mode: A `Tensor` of type `string`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  job_name: A `Tensor` of type `string`.
		  consumer_index: A `Tensor` of type `int64`.
		  num_consumers: A `Tensor` of type `int64`.
		  max_outstanding_requests: A `Tensor` of type `int64`.
		  iteration_counter: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  task_refresh_interval_hint_ms: An optional `int`. Defaults to `-1`.
		  data_transfer_protocol: An optional `string`. Defaults to `""`.
		  target_workers: An optional `string`. Defaults to `"AUTO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function data_service_dataset_v2(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, consumer_index:Dynamic, num_consumers:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?task_refresh_interval_hint_ms:Dynamic, ?data_transfer_protocol:Dynamic, ?target_workers:Dynamic, ?name:Dynamic):Dynamic;
	static public function data_service_dataset_v2_eager_fallback(dataset_id:Dynamic, processing_mode:Dynamic, address:Dynamic, protocol:Dynamic, job_name:Dynamic, consumer_index:Dynamic, num_consumers:Dynamic, max_outstanding_requests:Dynamic, iteration_counter:Dynamic, output_types:Dynamic, output_shapes:Dynamic, task_refresh_interval_hint_ms:Dynamic, data_transfer_protocol:Dynamic, target_workers:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset from the given `graph_def`.
		
		Creates a dataset from the provided `graph_def`.
		
		Args:
		  graph_def: A `Tensor` of type `string`.
		    The graph representation of the dataset (as serialized GraphDef).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function dataset_from_graph(graph_def:Dynamic, ?name:Dynamic):Dynamic;
	static public function dataset_from_graph_eager_fallback(graph_def:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function dataset_to_tf_record(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function dataset_to_tf_record_eager_fallback(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function dense_to_sparse_batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_to_sparse_batch_dataset_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  stop_on_empty_dataset: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function directed_interleave_dataset(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?stop_on_empty_dataset:Dynamic, ?name:Dynamic):Dynamic;
	static public function directed_interleave_dataset_eager_fallback(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, stop_on_empty_dataset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function dummy_iteration_counter(?name:Dynamic):Dynamic;
	static public function dummy_iteration_counter_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_assert_next_dataset_eager_fallback(input_dataset:Dynamic, transformations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that shards the input dataset.
		
		Creates a dataset that shards the input dataset by num_workers, returning a
		sharded dataset for the index-th worker. This attempts to automatically shard
		a dataset by examining the Dataset graph and inserting a shard op before the
		inputs to a reader Dataset (e.g. CSVDataset, TFRecordDataset).
		
		This dataset will throw a NotFound error if we cannot shard the dataset
		automatically.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_workers: A `Tensor` of type `int64`.
		    A scalar representing the number of workers to distribute this dataset across.
		  index: A `Tensor` of type `int64`.
		    A scalar representing the index of the current worker out of num_workers.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  auto_shard_policy: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_auto_shard_dataset(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?auto_shard_policy:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_auto_shard_dataset_eager_fallback(input_dataset:Dynamic, num_workers:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, auto_shard_policy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_bytes_produced_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_datasets: A list of at least 2 `Tensor` objects with type `variant`.
		  num_experiments: An `int`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_choose_fastest_dataset(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_choose_fastest_dataset_eager_fallback(input_datasets:Dynamic, num_experiments:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_csv_dataset_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, header:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, record_defaults:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_dataset_cardinality_eager_fallback(input_dataset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_dataset_to_tf_record_eager_fallback(input_dataset:Dynamic, filename:Dynamic, compression_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_dense_to_sparse_batch_dataset_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_directed_interleave_dataset_eager_fallback(selector_input_dataset:Dynamic, data_input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_group_by_reducer_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_group_by_window_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the elements of `input_dataset` ignoring errors.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  log_warning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_ignore_errors_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?log_warning:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_ignore_errors_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, log_warning:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the name of the device on which `resource` has been placed.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function experimental_iterator_get_device(resource:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_iterator_get_device_eager_fallback(resource:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_latency_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_lmdb_dataset_eager_fallback(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_map_and_batch_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, preserve_cardinality:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_map_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, use_inter_op_parallelism:Dynamic, preserve_cardinality:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  patterns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_matching_files_dataset(patterns:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_matching_files_dataset_eager_fallback(patterns:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_max_intra_op_parallelism_dataset_eager_fallback(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_non_serializable_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_parallel_interleave_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_parse_example_dataset_eager_fallback(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, sloppy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_private_thread_pool_dataset_eager_fallback(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_random_dataset_eager_fallback(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that changes the batch size of the dataset to current batch
		size // num_replicas.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_replicas: A `Tensor` of type `int64`.
		    A scalar representing the number of replicas to distribute this batch across. As
		    a result of this transformation the current batch size would end up being
		    divided  by this parameter.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_fallback: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_rebatch_dataset(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_fallback:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_rebatch_dataset_eager_fallback(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, use_fallback:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_scan_dataset_eager_fallback(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, preserve_cardinality:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_set_stats_aggregator_dataset_eager_fallback(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_sleep_dataset_eager_fallback(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_sliding_window_dataset_eager_fallback(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_sql_dataset_eager_fallback(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_stats_aggregator_handle_eager_fallback(container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Produces a summary of any statistics recorded by the given statistics manager.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function experimental_stats_aggregator_summary(iterator:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_stats_aggregator_summary_eager_fallback(iterator:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that stops iteration when predicate` is false.
		
		The `predicate` function must return a scalar boolean and accept the
		following arguments:
		
		* One tensor for each component of an element of `input_dataset`.
		* One tensor for each value in `other_arguments`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `predicate`.
		  predicate: A function decorated with @Defun.
		    A function returning a scalar boolean.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function experimental_take_while_dataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function experimental_take_while_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_thread_pool_dataset_eager_fallback(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_thread_pool_handle_eager_fallback(num_threads:Dynamic, display_name:Dynamic, max_intra_op_parallelism:Dynamic, container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_unbatch_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function experimental_unique_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gets the element at the specified index in a dataset.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function get_element_at_index(dataset:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function get_element_at_index_eager_fallback(dataset:Dynamic, index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function group_by_reducer_dataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function group_by_reducer_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, init_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, finalize_func_other_arguments:Dynamic, key_func:Dynamic, init_func:Dynamic, reduce_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function group_by_window_dataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function group_by_window_dataset_eager_fallback(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size_func_other_arguments:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the elements of `input_dataset` ignoring errors.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  log_warning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ignore_errors_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?log_warning:Dynamic, ?name:Dynamic):Dynamic;
	static public function ignore_errors_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, log_warning:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		  dataset: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_from_dataset(table_handle:Dynamic, dataset:Dynamic, ?name:Dynamic):Dynamic;
	static public function initialize_table_from_dataset_eager_fallback(table_handle:Dynamic, dataset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the name of the device on which `resource` has been placed.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function iterator_get_device(resource:Dynamic, ?name:Dynamic):Dynamic;
	static public function iterator_get_device_eager_fallback(resource:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function latency_stats_dataset(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function latency_stats_dataset_eager_fallback(input_dataset:Dynamic, tag:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  buffer_output_elements: A `Tensor` of type `int64`.
		  prefetch_input_elements: A `Tensor` of type `int64`.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  deterministic: An optional `string`. Defaults to `"default"`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function legacy_parallel_interleave_dataset_v2(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?deterministic:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function legacy_parallel_interleave_dataset_v2_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, deterministic:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the key-value pairs in one or more LMDB files.
		
		The Lightning Memory-Mapped Database Manager, or LMDB, is an embedded binary
		key-value database. This dataset can read the contents of LMDB database files,
		the names of which generally have the `.mdb` suffix.
		
		Each output element consists of a key-value pair represented as a pair of
		scalar string `Tensor`s, where the first `Tensor` contains the key and the
		second `Tensor` contains the value.
		
		LMDB uses different file formats on big- and little-endian machines.
		`LMDBDataset` can only read files in the format of the host machine.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or a vector containing the name(s) of the binary file(s) to be
		    read.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function lmdb_dataset(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function lmdb_dataset_eager_fallback(filenames:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  path: A `Tensor` of type `string`.
		  reader_func_other_args: A list of `Tensor` objects.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  reader_func: A function decorated with @Defun.
		  compression: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function load_dataset(path:Dynamic, reader_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_dataset_eager_fallback(path:Dynamic, reader_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, compression:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function map_and_batch_dataset(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function map_and_batch_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, batch_size:Dynamic, num_parallel_calls:Dynamic, drop_remainder:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, preserve_cardinality:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  patterns: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function matching_files_dataset(patterns:Dynamic, ?name:Dynamic):Dynamic;
	static public function matching_files_dataset_eager_fallback(patterns:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function max_intra_op_parallelism_dataset(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_intra_op_parallelism_dataset_eager_fallback(input_dataset:Dynamic, max_intra_op_parallelism:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function non_serializable_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_serializable_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		The resulting dataset is similar to the `InterleaveDataset`, with the exception
		that if retrieving the next value from a dataset would cause the requester to
		block, it will skip that input dataset. This dataset is especially useful
		when loading data from a variable-latency datastores (e.g. HDFS, GCS), as it
		allows the training step to proceed so long as some data is available.
		
		!! WARNING !! If the `sloppy` parameter is set to `True`, the operation of this
		dataset will not be deterministic!
		
		This dataset has been superseded by `ParallelInterleaveDatasetV2`.  New code
		should use `ParallelInterleaveDatasetV2`.
		
		The Python API `tf.data.experimental.parallel_interleave` creates instances of
		this op. `tf.data.experimental.parallel_interleave` is a deprecated API.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    Dataset that produces a stream of arguments for the function `f`.
		  other_arguments: A list of `Tensor` objects.
		    Additional arguments to pass to `f` beyond those produced by `input_dataset`.
		    Evaluated once when the dataset is instantiated.
		  cycle_length: A `Tensor` of type `int64`.
		    Number of datasets (each created by applying `f` to the elements of
		    `input_dataset`) among which the `ParallelInterleaveDataset` will cycle in a
		    round-robin fashion.
		  block_length: A `Tensor` of type `int64`.
		    Number of elements at a time to produce from each interleaved invocation of a
		    dataset returned by `f`.
		  sloppy: A `Tensor` of type `bool`.
		    If `True`, return elements as they become available, even if that means returning
		    these elements in a non-deterministic order. Sloppy operation may result in better
		    performance in the presence of stragglers, but the dataset will still block if
		    all of its open streams are blocked.
		    If `False`, always return elements in a deterministic order.
		  buffer_output_elements: A `Tensor` of type `int64`.
		    The number of elements each iterator being interleaved should buffer (similar
		    to the `.prefetch()` transformation for each interleaved iterator).
		  prefetch_input_elements: A `Tensor` of type `int64`.
		    Determines the number of iterators to prefetch, allowing buffers to warm up and
		    data to be pre-fetched without blocking the main thread.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function parallel_interleave_dataset(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function parallel_interleave_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, sloppy:Dynamic, buffer_output_elements:Dynamic, prefetch_input_elements:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  ragged_keys: An optional list of `strings`. Defaults to `[]`.
		  ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		  ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function parse_example_dataset(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_example_dataset_eager_fallback(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, sloppy:Dynamic, ragged_keys:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  deterministic: An optional `string`. Defaults to `"default"`.
		    A string indicating the op-level determinism to use. Deterministic controls
		    whether the dataset is allowed to return elements out of order if the next
		    element to be returned isn't available, but a later element is. Options are
		    "true", "false", and "default". "default" indicates that determinism should be
		    decided by the `experimental_deterministic` parameter of `tf.data.Options`.
		  ragged_keys: An optional list of `strings`. Defaults to `[]`.
		  ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		  ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function parse_example_dataset_v2(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?deterministic:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_example_dataset_v2_eager_fallback(input_dataset:Dynamic, num_parallel_calls:Dynamic, dense_defaults:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, output_types:Dynamic, output_shapes:Dynamic, deterministic:Dynamic, ragged_keys:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function private_thread_pool_dataset(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function private_thread_pool_dataset_eager_fallback(input_dataset:Dynamic, num_threads:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a Dataset that returns pseudorandom numbers.
		
		Creates a Dataset that returns a stream of uniformly distributed
		pseudorandom 64-bit signed integers.
		
		In the TensorFlow Python API, you can instantiate this dataset via the
		class `tf.data.experimental.RandomDataset`.
		
		Instances of this dataset are also created as a result of the
		`hoist_random_uniform` static optimization. Whether this optimization is
		performed is determined by the `experimental_optimization.hoist_random_uniform`
		option of `tf.data.Options`.
		
		Args:
		  seed: A `Tensor` of type `int64`.
		    A scalar seed for the random number generator. If either seed or
		    seed2 is set to be non-zero, the random number generator is seeded
		    by the given seed.  Otherwise, a random seed is used.
		  seed2: A `Tensor` of type `int64`.
		    A second scalar seed to avoid seed collision.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function random_dataset(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_dataset_eager_fallback(seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that changes the batch size of the dataset to current batch
		size // num_workers.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  num_replicas: A `Tensor` of type `int64`.
		    A scalar representing the number of replicas to distribute this batch across. As
		    a result of this transformation the current batch size would end up being
		    divided  by this parameter.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_fallback: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function rebatch_dataset(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_fallback:Dynamic, ?name:Dynamic):Dynamic;
	static public function rebatch_dataset_eager_fallback(input_dataset:Dynamic, num_replicas:Dynamic, output_types:Dynamic, output_shapes:Dynamic, use_fallback:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that changes the batch size.
		
		Creates a dataset that rebatches elements from `input_dataset` into new batch
		sizes.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  batch_sizes: A `Tensor` of type `int64`.
		    A vector of integers representing the size of batches to produce. These values
		    are cycled through in order.
		  drop_remainder: A `Tensor` of type `bool`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function rebatch_dataset_v2(input_dataset:Dynamic, batch_sizes:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function rebatch_dataset_v2_eager_fallback(input_dataset:Dynamic, batch_sizes:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Registers a dataset with the tf.data service.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  address: A `Tensor` of type `string`.
		  protocol: A `Tensor` of type `string`.
		  external_state_policy: An `int`.
		  element_spec: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function register_dataset(dataset:Dynamic, address:Dynamic, protocol:Dynamic, external_state_policy:Dynamic, ?element_spec:Dynamic, ?name:Dynamic):Dynamic;
	static public function register_dataset_eager_fallback(dataset:Dynamic, address:Dynamic, protocol:Dynamic, external_state_policy:Dynamic, element_spec:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that takes a Bernoulli sample of the contents of another dataset.
		
		There is no transformation in the `tf.data` Python API for creating this dataset.
		Instead, it is created as a result of the `filter_with_random_uniform_fusion`
		static optimization. Whether this optimization is performed is determined by the
		`experimental_optimization.filter_with_random_uniform_fusion` option of
		`tf.data.Options`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  rate: A `Tensor` of type `float32`.
		    A scalar representing the sample rate. Each element of `input_dataset` is
		    retained with this probability, independent of all other elements.
		  seed: A `Tensor` of type `int64`.
		    A scalar representing seed of random number generator.
		  seed2: A `Tensor` of type `int64`.
		    A scalar representing seed2 of random number generator.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sampling_dataset(input_dataset:Dynamic, rate:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function sampling_dataset_eager_fallback(input_dataset:Dynamic, rate:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  path: A `Tensor` of type `string`.
		  shard_func_other_args: A list of `Tensor` objects.
		  shard_func: A function decorated with @Defun.
		  compression: An optional `string`. Defaults to `""`.
		  use_shard_func: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_dataset(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, ?compression:Dynamic, ?use_shard_func:Dynamic, ?name:Dynamic):Dynamic;
	static public function save_dataset_eager_fallback(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, compression:Dynamic, use_shard_func:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  path: A `Tensor` of type `string`.
		  shard_func_other_args: A list of `Tensor` objects.
		  shard_func: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  compression: An optional `string`. Defaults to `""`.
		  use_shard_func: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function save_dataset_v2(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?compression:Dynamic, ?use_shard_func:Dynamic, ?name:Dynamic):Dynamic;
	static public function save_dataset_v2_eager_fallback(input_dataset:Dynamic, path:Dynamic, shard_func_other_args:Dynamic, shard_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, compression:Dynamic, use_shard_func:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  use_default_device: An optional `bool`. Defaults to `True`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function scan_dataset(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?preserve_cardinality:Dynamic, ?use_default_device:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function scan_dataset_eager_fallback(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, preserve_cardinality:Dynamic, use_default_device:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function set_stats_aggregator_dataset(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function set_stats_aggregator_dataset_eager_fallback(input_dataset:Dynamic, stats_aggregator:Dynamic, tag:Dynamic, counter_prefix:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sleep_dataset(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function sleep_dataset_eager_fallback(input_dataset:Dynamic, sleep_microseconds:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sliding_window_dataset(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function sliding_window_dataset_eager_fallback(input_dataset:Dynamic, window_size:Dynamic, window_shift:Dynamic, window_stride:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that will write to / read from a snapshot.
		
		This dataset attempts to determine whether a valid snapshot exists at the
		`snapshot_path`, and reads from the snapshot in lieu of using `input_dataset`.
		If not, it will run the preprocessing pipeline as usual, and write out a
		snapshot of the data processed for future use.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  path: A `Tensor` of type `string`.
		    The path we should write snapshots to / read snapshots from.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  compression: An optional `string`. Defaults to `""`.
		  reader_path_prefix: An optional `string`. Defaults to `""`.
		  writer_path_prefix: An optional `string`. Defaults to `""`.
		  shard_size_bytes: An optional `int`. Defaults to `10737418240`.
		  pending_snapshot_expiry_seconds: An optional `int`. Defaults to `86400`.
		  num_reader_threads: An optional `int`. Defaults to `1`.
		  reader_buffer_size: An optional `int`. Defaults to `1`.
		  num_writer_threads: An optional `int`. Defaults to `1`.
		  writer_buffer_size: An optional `int`. Defaults to `1`.
		  shuffle_on_read: An optional `bool`. Defaults to `False`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  mode: An optional `string`. Defaults to `"auto"`.
		  snapshot_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function snapshot_dataset(input_dataset:Dynamic, path:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?compression:Dynamic, ?reader_path_prefix:Dynamic, ?writer_path_prefix:Dynamic, ?shard_size_bytes:Dynamic, ?pending_snapshot_expiry_seconds:Dynamic, ?num_reader_threads:Dynamic, ?reader_buffer_size:Dynamic, ?num_writer_threads:Dynamic, ?writer_buffer_size:Dynamic, ?shuffle_on_read:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?mode:Dynamic, ?snapshot_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function snapshot_dataset_eager_fallback(input_dataset:Dynamic, path:Dynamic, output_types:Dynamic, output_shapes:Dynamic, compression:Dynamic, reader_path_prefix:Dynamic, writer_path_prefix:Dynamic, shard_size_bytes:Dynamic, pending_snapshot_expiry_seconds:Dynamic, num_reader_threads:Dynamic, reader_buffer_size:Dynamic, num_writer_threads:Dynamic, writer_buffer_size:Dynamic, shuffle_on_read:Dynamic, seed:Dynamic, seed2:Dynamic, mode:Dynamic, snapshot_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shard_dir: A `Tensor` of type `string`.
		  start_index: A `Tensor` of type `int64`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  version: An `int`.
		  compression: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function snapshot_dataset_reader(shard_dir:Dynamic, start_index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, version:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	static public function snapshot_dataset_reader_eager_fallback(shard_dir:Dynamic, start_index:Dynamic, output_types:Dynamic, output_shapes:Dynamic, version:Dynamic, compression:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that will write to / read from a snapshot.
		
		This dataset attempts to determine whether a valid snapshot exists at the
		`snapshot_path`, and reads from the snapshot in lieu of using `input_dataset`.
		If not, it will run the preprocessing pipeline as usual, and write out a
		snapshot of the data processed for future use.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  path: A `Tensor` of type `string`.
		    The path we should write snapshots to / read snapshots from.
		  reader_func_other_args: A list of `Tensor` objects.
		  shard_func_other_args: A list of `Tensor` objects.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  reader_func: A function decorated with @Defun.
		    Optional. A function to control how to read data from snapshot shards.
		  shard_func: A function decorated with @Defun.
		    Optional. A function to control how to shard data when writing a snapshot.
		  compression: An optional `string`. Defaults to `""`.
		    The type of compression to be applied to the saved snapshot files.
		  reader_prefix: An optional `string`. Defaults to `""`.
		  writer_prefix: An optional `string`. Defaults to `""`.
		  hash_valid: An optional `bool`. Defaults to `False`.
		  hash: An optional `int`. Defaults to `0`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function snapshot_dataset_v2(input_dataset:Dynamic, path:Dynamic, reader_func_other_args:Dynamic, shard_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, shard_func:Dynamic, ?compression:Dynamic, ?reader_prefix:Dynamic, ?writer_prefix:Dynamic, ?hash_valid:Dynamic, ?hash:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function snapshot_dataset_v2_eager_fallback(input_dataset:Dynamic, path:Dynamic, reader_func_other_args:Dynamic, shard_func_other_args:Dynamic, output_types:Dynamic, output_shapes:Dynamic, reader_func:Dynamic, shard_func:Dynamic, compression:Dynamic, reader_prefix:Dynamic, writer_prefix:Dynamic, hash_valid:Dynamic, hash:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function snapshot_nested_dataset_reader(inputs:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function snapshot_nested_dataset_reader_eager_fallback(inputs:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sql_dataset(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function sql_dataset_eager_fallback(driver_name:Dynamic, data_source_name:Dynamic, query:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a statistics manager resource.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function stats_aggregator_handle(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function stats_aggregator_handle_eager_fallback(container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function stats_aggregator_handle_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function stats_aggregator_handle_v2_eager_fallback(container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Set a summary_writer_interface to record statistics using given stats_aggregator.
		
		Args:
		  stats_aggregator: A `Tensor` of type `resource`.
		  summary: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stats_aggregator_set_summary_writer(stats_aggregator:Dynamic, summary:Dynamic, ?name:Dynamic):Dynamic;
	static public function stats_aggregator_set_summary_writer_eager_fallback(stats_aggregator:Dynamic, summary:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Produces a summary of any statistics recorded by the given statistics manager.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function stats_aggregator_summary(iterator:Dynamic, ?name:Dynamic):Dynamic;
	static public function stats_aggregator_summary_eager_fallback(iterator:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that stops iteration when predicate` is false.
		
		The `predicate` function must return a scalar boolean and accept the
		following arguments:
		
		* One tensor for each component of an element of `input_dataset`.
		* One tensor for each value in `other_arguments`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `predicate`.
		  predicate: A function decorated with @Defun.
		    A function returning a scalar boolean.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function take_while_dataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function take_while_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function thread_pool_dataset(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function thread_pool_dataset_eager_fallback(input_dataset:Dynamic, thread_pool:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function thread_pool_handle(num_threads:Dynamic, display_name:Dynamic, ?max_intra_op_parallelism:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function thread_pool_handle_eager_fallback(num_threads:Dynamic, display_name:Dynamic, max_intra_op_parallelism:Dynamic, container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A dataset that splits the elements of its input into multiple elements.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function unbatch_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function unbatch_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Uncompresses a compressed dataset element.
		
		Args:
		  compressed: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function uncompress_element(compressed:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function uncompress_element_eager_fallback(compressed:Dynamic, output_types:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains the unique elements of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  metadata: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function unique_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function unique_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}