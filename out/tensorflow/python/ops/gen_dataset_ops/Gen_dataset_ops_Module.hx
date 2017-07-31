/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_dataset_ops;
@:pythonImport("tensorflow.python.ops.gen_dataset_ops") extern class Gen_dataset_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
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
		Creates a dataset that batches `batch_size` elements from `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that yields a SparseTensor for each element of the input.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		    A handle to an input dataset. Must have a single component.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch.
		  row_shape: A `Tensor` of type `int64`.
		    A vector representing the dense shape of each row in the produced
		    SparseTensor.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function dense_to_sparse_batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, row_shape:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset containing elements of `input_dataset` matching `predicate`.
		
		The `predicate` function must return a scalar boolean and accept the
		following arguments:
		
		* One tensor for each component of an element of `input_dataset`.
		* One tensor for each value in `other_arguments`.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  other_arguments: A list of `Tensor` objects.
		    A list of tensors, typically values that were captured when
		    building a closure for `predicate`.
		  predicate: A function decorated with @Defun.
		    A function returning a scalar boolean.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function filter_dataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the records from one or more binary files.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or a vector containing the name(s) of the file(s) to be
		    read.
		  header_bytes: A `Tensor` of type `int64`.
		    A scalar representing the number of bytes to skip at the
		    beginning of a file.
		  record_bytes: A `Tensor` of type `int64`.
		    A scalar representing the number of bytes in each record.
		  footer_bytes: A `Tensor` of type `int64`.
		    A scalar representing the number of bytes to skip at the end
		    of a file.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function fixed_length_record_dataset(filenames:Dynamic, header_bytes:Dynamic, record_bytes:Dynamic, footer_bytes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Unlike MapDataset, the `f` in FlatMapDataset is expected to return a
		Dataset resource, and FlatMapDataset will flatten successive results
		into a single Dataset.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  other_arguments: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset resource that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function flat_map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that computes a windowed group-by on `input_dataset`.
		
		// TODO(mrry): Support non-int64 keys.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  key_func_other_arguments: A list of `Tensor` objects.
		  reduce_func_other_arguments: A list of `Tensor` objects.
		  window_size: A `Tensor` of type `int64`.
		  key_func: A function decorated with @Defun.
		    A function mapping an element of `input_dataset`, concatenated
		    with `key_func_other_arguments` to a scalar value of type DT_INT64.
		  reduce_func: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function group_by_window_dataset(input_dataset:Dynamic, key_func_other_arguments:Dynamic, reduce_func_other_arguments:Dynamic, window_size:Dynamic, key_func:Dynamic, reduce_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A container for an iterator resource.
		
		Args:
		  shared_name: A `string`.
		  container: A `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
		  A handle to the iterator that can be passed to a "MakeIterator"
		  or "IteratorGetNext" op.
	**/
	static public function iterator(shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Releases any resources used by the given iterator.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function iterator_dispose(iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gets the next output from the given iterator.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function iterator_get_next(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes a new iterator from the given `dataset` and stores it in `iterator`.
		
		This operation may be executed multiple times. Each execution will reset the
		iterator in `iterator` to the first element of `dataset`.
		
		Args:
		  dataset: A `Tensor` of type `resource`.
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function make_iterator(dataset:Dynamic, iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  other_arguments: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes a "one-shot" iterator that can be iterated only once.
		
		A one-shot iterator bundles the logic for defining the dataset and
		the state of the iterator in a single op, which allows simple input
		pipelines to be defined without an additional initialization
		("MakeIterator") step.
		
		One-shot iterators have the following limitations:
		
		* They do not support parameterization: all logic for creating the underlying
		  dataset must be bundled in the `dataset_factory` function.
		* They are not resettable. Once a one-shot iterator reaches the end of its
		  underlying dataset, subsequent "IteratorGetNext" operations on that
		  iterator will always produce an `OutOfRange` error.
		
		For greater flexibility, use "Iterator" and "MakeIterator" to define
		an iterator using an arbitrary subgraph, which may capture tensors
		(including fed values) as parameters, and which may be reset multiple
		times by rerunning "MakeIterator".
		
		Args:
		  dataset_factory: A function decorated with @Defun.
		    A function of type `() -> DT_RESOURCE`, where the returned
		    DT_RESOURCE is a handle to a dataset.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
		  A handle to the iterator that can be passed to an "IteratorGetNext"
		  op.
	**/
	static public function one_shot_iterator(dataset_factory:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that batches and pads `batch_size` elements from the input.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch.
		  padded_shapes: A list of at least 1 `Tensor` objects with type `int64`.
		    A list of int64 tensors representing the desired padded shapes
		    of the corresponding output components. These shapes may be partially
		    specified, using `-1` to indicate that a particular dimension should be
		    padded to the maximum size of all batch elements.
		  padding_values: A list of `Tensor` objects.
		    A list of scalars containing the padding value to use for
		    each of the outputs.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function padded_batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, padded_shapes:Dynamic, padding_values:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Unlike a "MapDataset", which applies `f` sequentially, this dataset uses
		up to `num_threads` threads to process elements from `input_dataset`
		in parallel.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  other_arguments: A list of `Tensor` objects.
		  num_threads: A `Tensor` of type `int32`.
		    The number of threads to use to process elements from
		    `input_dataset`.
		  output_buffer_size: A `Tensor` of type `int64`.
		    The maximum number of output elements to buffer in an
		    iterator over this dataset.
		  f: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function parallel_map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, num_threads:Dynamic, output_buffer_size:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset with a range of values. Corresponds to python's xrange.
		
		Args:
		  start: A `Tensor` of type `int64`.
		    corresponds to start in python's xrange().
		  stop: A `Tensor` of type `int64`.
		    corresponds to stop in python's xrange().
		  step: A `Tensor` of type `int64`.
		    corresponds to step in python's xrange().
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function range_dataset(start:Dynamic, stop:Dynamic, step:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the outputs of `input_dataset` `count` times.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of times that `input_dataset` should
		    be repeated. A value of `-1` indicates that it should be repeated infinitely.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function repeat_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that shuffles elements from `input_dataset` pseudorandomly.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  buffer_size: A `Tensor` of type `int64`.
		    The number of output elements to buffer in an iterator over
		    this dataset. Compare with the `min_after_dequeue` attr when creating a
		    `RandomShuffleQueue`.
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
		  A `Tensor` of type `resource`.
	**/
	static public function shuffle_dataset(input_dataset:Dynamic, buffer_size:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that skips `count` elements from the `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of elements from the `input_dataset`
		    that should be skipped.  If count is -1, skips everything.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function skip_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that splits a SparseTensor into elements row-wise.
		
		Args:
		  indices: A `Tensor` of type `int64`.
		  values: A `Tensor`.
		  dense_shape: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function sparse_tensor_slice_dataset(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that contains `count` elements from the `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `resource`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of elements from the `input_dataset`
		    that should be taken. A value of `-1` indicates that all of `input_dataset`
		    is taken.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function take_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits `components` as a tuple of tensors once.
		
		Args:
		  components: A list of `Tensor` objects.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tensor_dataset(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits each dim-0 slice of `components` once.
		
		Args:
		  components: A list of `Tensor` objects.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tensor_slice_dataset(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the lines of one or more text files.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or a vector containing the name(s) of the file(s) to be
		    read.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function text_line_dataset(filenames:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the records from one or more TFRecord files.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or vector containing the name(s) of the file(s) to be
		    read.
		  compression_type: A `Tensor` of type `string`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tf_record_dataset(filenames:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dataset that zips together `input_datasets`.
		
		Args:
		  input_datasets: A list of at least 1 `Tensor` objects with type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function zip_dataset(input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
}