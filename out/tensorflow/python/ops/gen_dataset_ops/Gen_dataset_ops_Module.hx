/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_dataset_ops;
@:pythonImport("tensorflow.python.ops.gen_dataset_ops") extern class Gen_dataset_ops_Module {
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
		A container for an iterator resource.
		
		Args:
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function anonymous_iterator(output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function anonymous_iterator
	**/
	static public function anonymous_iterator_eager_fallback(output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that batches `batch_size` elements from `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a
		    batch.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_dataset
	**/
	static public function batch_dataset_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that batches `batch_size` elements from `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  batch_size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a batch.
		  drop_remainder: A `Tensor` of type `bool`.
		    A scalar representing whether the last batch should be dropped in case its size
		    is smaller than desired.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function batch_dataset_v2(input_dataset:Dynamic, batch_size:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_dataset_v2
	**/
	static public function batch_dataset_v2_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that caches elements from `input_dataset`.
		
		A CacheDataset will iterate over the input_dataset, and store tensors. If the
		cache already exists, the cache will be used. If the cache is inappropriate
		(e.g. cannot be opened, contains tensors of the wrong shape / size), an error
		will the returned when used.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  filename: A `Tensor` of type `string`.
		    A path on the filesystem where we should cache the dataset. Note: this
		    will be a directory.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function cache_dataset(input_dataset:Dynamic, filename:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cache_dataset
	**/
	static public function cache_dataset_eager_fallback(input_dataset:Dynamic, filename:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that concatenates `input_dataset` with `another_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  another_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function concatenate_dataset(input_dataset:Dynamic, another_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function concatenate_dataset
	**/
	static public function concatenate_dataset_eager_fallback(input_dataset:Dynamic, another_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a serialized GraphDef representing `input_dataset`.
		
		Returns a graph representation for `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the dataset to return the graph representation for.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function dataset_to_graph(input_dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dataset_to_graph
	**/
	static public function dataset_to_graph_eager_fallback(input_dataset:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs the single element from the given dataset.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		    A handle to a dataset that contains a single element.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function dataset_to_single_element(dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dataset_to_single_element
	**/
	static public function dataset_to_single_element_eager_fallback(dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Converts the given variant tensor to an iterator and stores it in the given resource.
		
		Args:
		  resource_handle: A `Tensor` of type `resource`.
		    A handle to an iterator resource.
		  serialized: A `Tensor` of type `variant`.
		    A variant tensor storing the state of the iterator contained in the
		    resource.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function deserialize_iterator(resource_handle:Dynamic, serialized:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function deserialize_iterator
	**/
	static public function deserialize_iterator_eager_fallback(resource_handle:Dynamic, serialized:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset containing elements of first component of `input_dataset` having true in the last component.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function filter_by_last_component_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function filter_by_last_component_dataset
	**/
	static public function filter_by_last_component_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset containing elements of `input_dataset` matching `predicate`.
		
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
	static public function filter_dataset(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function filter_dataset
	**/
	static public function filter_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, predicate:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  buffer_size: A `Tensor` of type `int64`.
		    A scalar representing the number of bytes to buffer. Must be > 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function fixed_length_record_dataset(filenames:Dynamic, header_bytes:Dynamic, record_bytes:Dynamic, footer_bytes:Dynamic, buffer_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fixed_length_record_dataset
	**/
	static public function fixed_length_record_dataset_eager_fallback(filenames:Dynamic, header_bytes:Dynamic, record_bytes:Dynamic, footer_bytes:Dynamic, buffer_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		  header_bytes: A `Tensor` of type `int64`.
		  record_bytes: A `Tensor` of type `int64`.
		  footer_bytes: A `Tensor` of type `int64`.
		  buffer_size: A `Tensor` of type `int64`.
		  compression_type: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function fixed_length_record_dataset_v2(filenames:Dynamic, header_bytes:Dynamic, record_bytes:Dynamic, footer_bytes:Dynamic, buffer_size:Dynamic, compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fixed_length_record_dataset_v2
	**/
	static public function fixed_length_record_dataset_v2_eager_fallback(filenames:Dynamic, header_bytes:Dynamic, record_bytes:Dynamic, footer_bytes:Dynamic, buffer_size:Dynamic, compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Unlike MapDataset, the `f` in FlatMapDataset is expected to return a
		Dataset variant, and FlatMapDataset will flatten successive results
		into a single Dataset.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
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
	static public function flat_map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function flat_map_dataset
	**/
	static public function flat_map_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that invokes a function to generate elements.
		
		Args:
		  init_func_other_args: A list of `Tensor` objects.
		  next_func_other_args: A list of `Tensor` objects.
		  finalize_func_other_args: A list of `Tensor` objects.
		  init_func: A function decorated with @Defun.
		  next_func: A function decorated with @Defun.
		  finalize_func: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function generator_dataset(init_func_other_args:Dynamic, next_func_other_args:Dynamic, finalize_func_other_args:Dynamic, init_func:Dynamic, next_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function generator_dataset
	**/
	static public function generator_dataset_eager_fallback(init_func_other_args:Dynamic, next_func_other_args:Dynamic, finalize_func_other_args:Dynamic, init_func:Dynamic, next_func:Dynamic, finalize_func:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Unlike MapDataset, the `f` in InterleaveDataset is expected to return
		a Dataset variant, and InterleaveDataset will flatten successive
		results into a single Dataset. Unlike FlatMapDataset,
		InterleaveDataset will interleave sequences of up to `block_length`
		consecutive elements from `cycle_length` input elements.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		  cycle_length: A `Tensor` of type `int64`.
		  block_length: A `Tensor` of type `int64`.
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
	static public function interleave_dataset(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function interleave_dataset
	**/
	static public function interleave_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	**/
	static public function iterator(shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator
	**/
	static public function iterator_eager_fallback(shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts the given string representing a handle to an iterator to a resource.
		
		Args:
		  string_handle: A `Tensor` of type `string`.
		    A string representation of the given handle.
		  output_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    If specified, defines the type of each tuple component in an
		    element produced by the resulting iterator.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    If specified, defines the shape of each tuple component in an
		    element produced by the resulting iterator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function iterator_from_string_handle(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_from_string_handle
	**/
	static public function iterator_from_string_handle_eager_fallback(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  string_handle: A `Tensor` of type `string`.
		  output_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function iterator_from_string_handle_v2(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_from_string_handle_v2
	**/
	static public function iterator_from_string_handle_v2_eager_fallback(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gets the next output from the given iterator .
		
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
		Gets the next output from the given iterator as an Optional variant.
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function iterator_get_next_as_optional(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_get_next_as_optional
	**/
	static public function iterator_get_next_as_optional_eager_fallback(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_get_next
	**/
	static public function iterator_get_next_eager_fallback(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gets the next output from the given iterator.
		
		This operation is a synchronous version IteratorGetNext. It should only be used
		in situations where the iterator does not block the calling thread, or where
		the calling thread is not a member of the thread pool used to execute parallel
		operations (e.g. in eager mode).
		
		Args:
		  iterator: A `Tensor` of type `resource`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function iterator_get_next_sync(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_get_next_sync
	**/
	static public function iterator_get_next_sync_eager_fallback(iterator:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts the given `resource_handle` representing an iterator to a string.
		
		Args:
		  resource_handle: A `Tensor` of type `resource`.
		    A handle to an iterator resource.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function iterator_to_string_handle(resource_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_to_string_handle
	**/
	static public function iterator_to_string_handle_eager_fallback(resource_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shared_name: A `string`.
		  container: A `string`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function iterator_v2(shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function iterator_v2
	**/
	static public function iterator_v2_eager_fallback(shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Makes a new iterator from the given `dataset` and stores it in `iterator`.
		
		This operation may be executed multiple times. Each execution will reset the
		iterator in `iterator` to the first element of `dataset`.
		
		Args:
		  dataset: A `Tensor` of type `variant`.
		  iterator: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function make_iterator(dataset:Dynamic, iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function make_iterator
	**/
	static public function make_iterator_eager_fallback(dataset:Dynamic, iterator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_dataset
	**/
	static public function map_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Maps a function on the list of tensors unpacked from arguments on dimension 0.
		
		Args:
		  arguments: A list of `Tensor` objects.
		        A list of tensors whose types are `Targuments`, corresponding to the inputs
		        the function should be mapped over.
		  captured_inputs: A list of `Tensor` objects.
		        A list of tensors whose types are `Tcaptured`, corresponding to the captured
		        inputs of the defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		    A list of types.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		    A list of shapes.
		  f: A function decorated with @Defun.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function map_defun(arguments:Dynamic, captured_inputs:Dynamic, output_types:Dynamic, output_shapes:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_defun
	**/
	static public function map_defun_eager_fallback(arguments:Dynamic, captured_inputs:Dynamic, output_types:Dynamic, output_shapes:Dynamic, f:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Identity transformation that models performance.
		
		Identity transformation that models performance.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function model_dataset(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function model_dataset
	**/
	static public function model_dataset_eager_fallback(input_dataset:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a MultiDeviceIterator resource.
		
		Args:
		  devices: A list of `strings` that has length `>= 1`.
		    A list of devices the iterator works across.
		  shared_name: A `string`.
		    If non-empty, this resource will be shared under the given name
		    across multiple sessions.
		  container: A `string`.
		    If non-empty, this resource is placed in the given container.
		    Otherwise, a default container is used.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		    The list of shapes being produced.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function multi_device_iterator(devices:Dynamic, shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multi_device_iterator
	**/
	static public function multi_device_iterator_eager_fallback(devices:Dynamic, shared_name:Dynamic, container:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates a MultiDeviceIterator resource from its provided string handle.
		
		Args:
		  string_handle: A `Tensor` of type `string`.
		    String representing the resource.
		  output_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    The type list for the return values.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The list of shapes being produced.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function multi_device_iterator_from_string_handle(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multi_device_iterator_from_string_handle
	**/
	static public function multi_device_iterator_from_string_handle_eager_fallback(string_handle:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gets next element for the provided shard number.
		
		Args:
		  multi_device_iterator: A `Tensor` of type `resource`.
		    A MultiDeviceIterator resource.
		  shard_num: A `Tensor` of type `int32`.
		    Integer representing which shard to fetch data for.
		  incarnation_id: A `Tensor` of type `int64`.
		    Which incarnation of the MultiDeviceIterator is running.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		    The list of shapes being produced.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function multi_device_iterator_get_next_from_shard(multi_device_iterator:Dynamic, shard_num:Dynamic, incarnation_id:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multi_device_iterator_get_next_from_shard
	**/
	static public function multi_device_iterator_get_next_from_shard_eager_fallback(multi_device_iterator:Dynamic, shard_num:Dynamic, incarnation_id:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Initializes the multi device iterator with the given dataset.
		
		Args:
		  dataset: A `Tensor` of type `variant`. Dataset to be iterated upon.
		  multi_device_iterator: A `Tensor` of type `resource`.
		    A MultiDeviceIteratorResource.
		  max_buffer_size: A `Tensor` of type `int64`.
		    The maximum size of the host side per device buffer to keep.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function multi_device_iterator_init(dataset:Dynamic, multi_device_iterator:Dynamic, max_buffer_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multi_device_iterator_init
	**/
	static public function multi_device_iterator_init_eager_fallback(dataset:Dynamic, multi_device_iterator:Dynamic, max_buffer_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produces a string handle for the given MultiDeviceIterator.
		
		Args:
		  multi_device_iterator: A `Tensor` of type `resource`.
		    A MultiDeviceIterator resource.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function multi_device_iterator_to_string_handle(multi_device_iterator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multi_device_iterator_to_string_handle
	**/
	static public function multi_device_iterator_to_string_handle_eager_fallback(multi_device_iterator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		    A function of type `() -> DT_VARIANT`, where the returned
		    DT_VARIANT is a dataset.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function one_shot_iterator(dataset_factory:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function one_shot_iterator
	**/
	static public function one_shot_iterator_eager_fallback(dataset_factory:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset by applying optimizations to `input_dataset`.
		
		Creates a dataset by applying optimizations to `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  optimizations: A `Tensor` of type `string`.
		    A `tf.string` vector `tf.Tensor` identifying optimizations to use.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function optimize_dataset(input_dataset:Dynamic, optimizations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function optimize_dataset
	**/
	static public function optimize_dataset_eager_fallback(input_dataset:Dynamic, optimizations:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Constructs an Optional variant from a tuple of tensors.
		
		Args:
		  components: A list of `Tensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function optional_from_value(components:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function optional_from_value
	**/
	static public function optional_from_value_eager_fallback(components:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the value stored in an Optional variant or raises an error if none exists.
		
		Args:
		  optional: A `Tensor` of type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function optional_get_value(optional:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function optional_get_value
	**/
	static public function optional_get_value_eager_fallback(optional:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns true if and only if the given Optional variant has a value.
		
		Args:
		  optional: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function optional_has_value(optional:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function optional_has_value
	**/
	static public function optional_has_value_eager_fallback(optional:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates an Optional variant with no value.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function optional_none(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function optional_none
	**/
	static public function optional_none_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that batches and pads `batch_size` elements from the input.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
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
		  A `Tensor` of type `variant`.
	**/
	static public function padded_batch_dataset(input_dataset:Dynamic, batch_size:Dynamic, padded_shapes:Dynamic, padding_values:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function padded_batch_dataset
	**/
	static public function padded_batch_dataset_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, padded_shapes:Dynamic, padding_values:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that batches and pads `batch_size` elements from the input.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
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
		  drop_remainder: A `Tensor` of type `bool`.
		    A scalar representing whether the last batch should be dropped in case its size
		    is smaller than desired.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function padded_batch_dataset_v2(input_dataset:Dynamic, batch_size:Dynamic, padded_shapes:Dynamic, padding_values:Dynamic, drop_remainder:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function padded_batch_dataset_v2
	**/
	static public function padded_batch_dataset_v2_eager_fallback(input_dataset:Dynamic, batch_size:Dynamic, padded_shapes:Dynamic, padding_values:Dynamic, drop_remainder:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		  cycle_length: A `Tensor` of type `int64`.
		  block_length: A `Tensor` of type `int64`.
		  num_parallel_calls: A `Tensor` of type `int64`.
		  f: A function decorated with @Defun.
		    A function mapping elements of `input_dataset`, concatenated with
		    `other_arguments`, to a Dataset variant that contains elements matching
		    `output_types` and `output_shapes`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  sloppy: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function parallel_interleave_dataset_v2(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, num_parallel_calls:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parallel_interleave_dataset_v2
	**/
	static public function parallel_interleave_dataset_v2_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, cycle_length:Dynamic, block_length:Dynamic, num_parallel_calls:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?sloppy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that applies `f` to the outputs of `input_dataset`.
		
		Unlike a "MapDataset", which applies `f` sequentially, this dataset invokes up
		to `num_parallel_calls` copies of `f` in parallel.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  other_arguments: A list of `Tensor` objects.
		  num_parallel_calls: A `Tensor` of type `int32`.
		    The number of concurrent invocations of `f` that process
		    elements from `input_dataset` in parallel.
		  f: A function decorated with @Defun.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_inter_op_parallelism: An optional `bool`. Defaults to `True`.
		  sloppy: An optional `bool`. Defaults to `False`.
		  preserve_cardinality: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function parallel_map_dataset(input_dataset:Dynamic, other_arguments:Dynamic, num_parallel_calls:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?sloppy:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parallel_map_dataset
	**/
	static public function parallel_map_dataset_eager_fallback(input_dataset:Dynamic, other_arguments:Dynamic, num_parallel_calls:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?sloppy:Dynamic, ?preserve_cardinality:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that asynchronously prefetches elements from `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  buffer_size: A `Tensor` of type `int64`.
		    The maximum number of elements to buffer in an iterator over
		    this dataset.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function prefetch_dataset(input_dataset:Dynamic, buffer_size:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function prefetch_dataset
	**/
	static public function prefetch_dataset_eager_fallback(input_dataset:Dynamic, buffer_size:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  A `Tensor` of type `variant`.
	**/
	static public function range_dataset(start:Dynamic, stop:Dynamic, step:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function range_dataset
	**/
	static public function range_dataset_eager_fallback(start:Dynamic, stop:Dynamic, step:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reduces the input dataset to a singleton using a reduce function.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		    A variant tensor representing the input dataset.
		  initial_state: A list of `Tensor` objects.
		    A nested structure of tensors, representing the initial state of the
		    transformation.
		  other_arguments: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		    A function that maps `(old_state, input_element)` to `new_state`. It must take
		    two arguments and return a nested structures of tensors. The structure of
		    `new_state` must match the structure of `initial_state`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  use_inter_op_parallelism: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
	**/
	static public function reduce_dataset(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reduce_dataset
	**/
	static public function reduce_dataset_eager_fallback(input_dataset:Dynamic, initial_state:Dynamic, other_arguments:Dynamic, f:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?use_inter_op_parallelism:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the outputs of `input_dataset` `count` times.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of times that `input_dataset` should
		    be repeated. A value of `-1` indicates that it should be repeated infinitely.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function repeat_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function repeat_dataset
	**/
	static public function repeat_dataset_eager_fallback(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts the given `resource_handle` representing an iterator to a variant tensor.
		
		Args:
		  resource_handle: A `Tensor` of type `resource`.
		    A handle to an iterator resource.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function serialize_iterator(resource_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function serialize_iterator
	**/
	static public function serialize_iterator_eager_fallback(resource_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that shuffles and repeats elements from `input_dataset`
		
		pseudorandomly.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  buffer_size: A `Tensor` of type `int64`.
		    The number of output elements to buffer in an iterator over
		    this dataset. Compare with the `min_after_dequeue` attr when creating a
		    `RandomShuffleQueue`.
		  seed: A `Tensor` of type `int64`.
		    A scalar seed for the random number generator. If either `seed` or
		    `seed2` is set to be non-zero, the random number generator is seeded
		    by the given seed.  Otherwise, a random seed is used.
		  seed2: A `Tensor` of type `int64`.
		    A second scalar seed to avoid seed collision.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of times the underlying dataset
		    should be repeated. The default is `-1`, which results in infinite repetition.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function shuffle_and_repeat_dataset(input_dataset:Dynamic, buffer_size:Dynamic, seed:Dynamic, seed2:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shuffle_and_repeat_dataset
	**/
	static public function shuffle_and_repeat_dataset_eager_fallback(input_dataset:Dynamic, buffer_size:Dynamic, seed:Dynamic, seed2:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that shuffles elements from `input_dataset` pseudorandomly.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  buffer_size: A `Tensor` of type `int64`.
		    The number of output elements to buffer in an iterator over
		    this dataset. Compare with the `min_after_dequeue` attr when creating a
		    `RandomShuffleQueue`.
		  seed: A `Tensor` of type `int64`.
		    A scalar seed for the random number generator. If either `seed` or
		    `seed2` is set to be non-zero, the random number generator is seeded
		    by the given seed.  Otherwise, a random seed is used.
		  seed2: A `Tensor` of type `int64`.
		    A second scalar seed to avoid seed collision.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  reshuffle_each_iteration: An optional `bool`. Defaults to `True`.
		    If true, each iterator over this dataset will be given
		    a different pseudorandomly generated seed, based on a sequence seeded by the
		    `seed` and `seed2` inputs. If false, each iterator will be given the same
		    seed, and repeated iteration over this dataset will yield the exact same
		    sequence of results.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function shuffle_dataset(input_dataset:Dynamic, buffer_size:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?reshuffle_each_iteration:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shuffle_dataset
	**/
	static public function shuffle_dataset_eager_fallback(input_dataset:Dynamic, buffer_size:Dynamic, seed:Dynamic, seed2:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?reshuffle_each_iteration:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that skips `count` elements from the `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of elements from the `input_dataset`
		    that should be skipped.  If count is -1, skips everything.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function skip_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function skip_dataset
	**/
	static public function skip_dataset_eager_fallback(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that splits a SparseTensor into elements row-wise.
		
		Args:
		  indices: A `Tensor` of type `int64`.
		  values: A `Tensor`.
		  dense_shape: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_tensor_slice_dataset(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_tensor_slice_dataset
	**/
	static public function sparse_tensor_slice_dataset_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that contains `count` elements from the `input_dataset`.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  count: A `Tensor` of type `int64`.
		    A scalar representing the number of elements from the `input_dataset`
		    that should be taken. A value of `-1` indicates that all of `input_dataset`
		    is taken.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function take_dataset(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function take_dataset
	**/
	static public function take_dataset_eager_fallback(input_dataset:Dynamic, count:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that emits `components` as a tuple of tensors once.
		
		Args:
		  components: A list of `Tensor` objects.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_dataset(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_dataset
	**/
	static public function tensor_dataset_eager_fallback(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that emits each dim-0 slice of `components` once.
		
		Args:
		  components: A list of `Tensor` objects.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_slice_dataset(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_slice_dataset
	**/
	static public function tensor_slice_dataset_eager_fallback(components:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that emits the lines of one or more text files.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or a vector containing the name(s) of the file(s) to be
		    read.
		  compression_type: A `Tensor` of type `string`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  buffer_size: A `Tensor` of type `int64`.
		    A scalar containing the number of bytes to buffer.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function text_line_dataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function text_line_dataset
	**/
	static public function text_line_dataset_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a dataset that emits the records from one or more TFRecord files.
		
		Args:
		  filenames: A `Tensor` of type `string`.
		    A scalar or vector containing the name(s) of the file(s) to be
		    read.
		  compression_type: A `Tensor` of type `string`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  buffer_size: A `Tensor` of type `int64`.
		    A scalar representing the number of bytes to buffer. A value of
		    0 means no buffering will be performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tf_record_dataset(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tf_record_dataset
	**/
	static public function tf_record_dataset_eager_fallback(filenames:Dynamic, compression_type:Dynamic, buffer_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function unwrap_dataset_variant(input_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unwrap_dataset_variant
	**/
	static public function unwrap_dataset_variant_eager_fallback(input_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A dataset that creates window datasets from the input dataset.
		
		Args:
		  input_dataset: A `Tensor` of type `variant`.
		  size: A `Tensor` of type `int64`.
		    A scalar representing the number of elements to accumulate in a window.
		  shift: A `Tensor` of type `int64`.
		    A scalar representing the steps moving the sliding window forward in one
		    iteration. It must be positive.
		  stride: A `Tensor` of type `int64`.
		    A scalar representing the stride of the input elements of the sliding window.
		    It must be positive.
		  drop_remainder: A `Tensor` of type `bool`.
		    A scalar representing whether a window should be dropped in case its size is
		    smaller than desired.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function window_dataset(input_dataset:Dynamic, size:Dynamic, shift:Dynamic, stride:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function window_dataset
	**/
	static public function window_dataset_eager_fallback(input_dataset:Dynamic, size:Dynamic, shift:Dynamic, stride:Dynamic, drop_remainder:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function wrap_dataset_variant(input_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function wrap_dataset_variant
	**/
	static public function wrap_dataset_variant_eager_fallback(input_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a dataset that zips together `input_datasets`.
		
		Args:
		  input_datasets: A list of at least 1 `Tensor` objects with type `variant`.
		  output_types: A list of `tf.DTypes` that has length `>= 1`.
		  output_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`) that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function zip_dataset(input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function zip_dataset
	**/
	static public function zip_dataset_eager_fallback(input_datasets:Dynamic, output_types:Dynamic, output_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}