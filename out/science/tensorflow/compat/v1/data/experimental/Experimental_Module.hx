/* This file is generated, do not edit! */
package tensorflow.compat.v1.data.experimental;
@:pythonImport("tensorflow.compat.v1.data.experimental") extern class Experimental_Module {
	static public var AUTOTUNE : Dynamic;
	/**
		Creates a `Dataset` that counts from `start` in steps of size `step`.
		
		Unlike `tf.data.Dataset.range` which will stop at some ending number,
		`Counter` will produce elements indefinitely.
		
		>>> dataset = tf.data.experimental.Counter().take(5)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int64, name=None)
		>>> dataset = tf.data.experimental.Counter(dtype=tf.int32)
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int32, name=None)
		>>> dataset = tf.data.experimental.Counter(start=2).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 3, 4, 5, 6]
		>>> dataset = tf.data.experimental.Counter(start=2, step=5).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 7, 12, 17, 22]
		>>> dataset = tf.data.experimental.Counter(start=10, step=-1).take(5)
		>>> list(dataset.as_numpy_iterator())
		[10, 9, 8, 7, 6]
		
		Args:
		  start: (Optional.) The starting value for the counter. Defaults to 0.
		  step: (Optional.) The step size for the counter. Defaults to 1.
		  dtype: (Optional.) The data type for counter elements. Defaults to
		    `tf.int64`.
		
		Returns:
		  A `Dataset` of scalar `dtype` elements.
	**/
	static public function Counter(?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var INFINITE_CARDINALITY : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.RaggedTensorSpec` instead.
	**/
	static public function RaggedTensorStructure(dtype:Dynamic, shape:Dynamic, ragged_rank:Dynamic):Dynamic;
	static public var SHARD_HINT : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.SparseTensorSpec` instead.
	**/
	static public function SparseTensorStructure(dtype:Dynamic, shape:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.TensorArraySpec` instead.
	**/
	static public function TensorArrayStructure(dtype:Dynamic, element_shape:Dynamic, dynamic_size:Dynamic, infer_shape:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.TensorSpec` instead.
	**/
	static public function TensorStructure(dtype:Dynamic, shape:Dynamic):Dynamic;
	static public var UNKNOWN_CARDINALITY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts the cardinality of the input dataset.
		
		NOTE: The following assumes that "examples.tfrecord" contains 42 records.
		
		>>> dataset = tf.data.TFRecordDataset("examples.tfrecord")
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.UNKNOWN_CARDINALITY).numpy())
		True
		>>> dataset = dataset.apply(tf.data.experimental.assert_cardinality(42))
		>>> print(tf.data.experimental.cardinality(dataset).numpy())
		42
		
		Args:
		  expected_cardinality: The expected cardinality of the input dataset.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  FailedPreconditionError: The assertion is checked at runtime (when iterating
		    the dataset) and an error is raised if the actual and expected cardinality
		    differ.
	**/
	static public function assert_cardinality(expected_cardinality:Dynamic):Dynamic;
	/**
		A transformation that buckets elements in a `Dataset` by length. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.bucket_by_sequence_length(...)`.
		
		Elements of the `Dataset` are grouped together by length and then are padded
		and batched.
		
		This is useful for sequence tasks in which the elements have variable length.
		Grouping together elements that have similar lengths reduces the total
		fraction of padding in a batch which increases training step efficiency.
		
		Below is an example to bucketize the input data to the 3 buckets
		"[0, 3), [3, 5), [5, inf)" based on sequence length, with batch size 2.
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: elements, tf.int64, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[3, 5],
		...         bucket_batch_sizes=[2, 2, 2]))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[1 2 3 4]
		 [5 6 7 0]]
		[[ 7  8  9 10 11  0]
		 [13 14 15 16 19 20]]
		[[ 0  0]
		 [21 22]]
		
		There is also a possibility to pad the dataset till the bucket boundary.
		You can also provide which value to be used while padding the data.
		Below example uses `-1` as padding and it also shows the input data
		being bucketizied to two buckets "[0,3], [4,6]".
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...   lambda: elements, tf.int32, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[4, 7],
		...         bucket_batch_sizes=[2, 2, 2],
		...         pad_to_bucket_boundary=True,
		...         padding_values=-1))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[ 0 -1 -1]
		 [ 5  6  7]]
		[[ 1  2  3  4 -1 -1]
		 [ 7  8  9 10 11 -1]]
		[[21 22 -1]]
		[[13 14 15 16 19 20]]
		
		When using `pad_to_bucket_boundary` option, it can be seen that it is
		not always possible to maintain the bucket batch size.
		You can drop the batches that do not maintain the bucket batch size by
		using the option `drop_remainder`. Using the same input data as in the
		above example you get the following result.
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...   lambda: elements, tf.int32, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[4, 7],
		...         bucket_batch_sizes=[2, 2, 2],
		...         pad_to_bucket_boundary=True,
		...         padding_values=-1,
		...         drop_remainder=True))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[ 0 -1 -1]
		 [ 5  6  7]]
		[[ 1  2  3  4 -1 -1]
		 [ 7  8  9 10 11 -1]]
		
		Args:
		  element_length_func: function from element in `Dataset` to `tf.int32`,
		    determines the length of the element, which will determine the bucket it
		    goes into.
		  bucket_boundaries: `list<int>`, upper length boundaries of the buckets.
		  bucket_batch_sizes: `list<int>`, batch size per bucket. Length should be
		    `len(bucket_boundaries) + 1`.
		  padded_shapes: Nested structure of `tf.TensorShape` to pass to
		    `tf.data.Dataset.padded_batch`. If not provided, will use
		    `dataset.output_shapes`, which will result in variable length dimensions
		    being padded out to the maximum length in each batch.
		  padding_values: Values to pad with, passed to
		    `tf.data.Dataset.padded_batch`. Defaults to padding with 0.
		  pad_to_bucket_boundary: bool, if `False`, will pad dimensions with unknown
		    size to maximum length in batch. If `True`, will pad dimensions with
		    unknown size to bucket boundary minus 1 (i.e., the maximum length in each
		    bucket), and caller must ensure that the source `Dataset` does not contain
		    any elements with length longer than `max(bucket_boundaries)`.
		  no_padding: `bool`, indicates whether to pad the batch features (features
		    need to be either of type `tf.sparse.SparseTensor` or of same shape).
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if `len(bucket_batch_sizes) != len(bucket_boundaries) + 1`.
	**/
	static public function bucket_by_sequence_length(element_length_func:Dynamic, bucket_boundaries:Dynamic, bucket_batch_sizes:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?pad_to_bucket_boundary:Dynamic, ?no_padding:Dynamic, ?drop_remainder:Dynamic):Dynamic;
	/**
		Returns the cardinality of `dataset`, if known.
		
		The operation returns the cardinality of `dataset`. The operation may return
		`tf.data.experimental.INFINITE_CARDINALITY` if `dataset` contains an infinite
		number of elements or `tf.data.experimental.UNKNOWN_CARDINALITY` if the
		analysis fails to determine the number of elements in `dataset` (e.g. when the
		dataset source is a file).
		
		>>> dataset = tf.data.Dataset.range(42)
		>>> print(tf.data.experimental.cardinality(dataset).numpy())
		42
		>>> dataset = dataset.repeat()
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.INFINITE_CARDINALITY).numpy())
		True
		>>> dataset = dataset.filter(lambda x: True)
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.UNKNOWN_CARDINALITY).numpy())
		True
		
		Args:
		  dataset: A `tf.data.Dataset` for which to determine cardinality.
		
		Returns:
		  A scalar `tf.int64` `Tensor` representing the cardinality of `dataset`. If
		  the cardinality is infinite or unknown, the operation returns the named
		  constant `INFINITE_CARDINALITY` and `UNKNOWN_CARDINALITY` respectively.
	**/
	static public function cardinality(dataset:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.choose_from_datasets(...)` instead. Note that, unlike the experimental endpoint, the non-experimental endpoint sets `stop_on_empty_dataset=True` by default. You should set this argument explicitly in case you would like to match the behavior of the experimental endpoint.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.data.experimental.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between `0`
		    and `len(datasets) - 1`.
		  stop_on_empty_dataset: If `True`, selection stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the selected elements start off as the user intends,
		    but may change as input datasets become empty. This can be difficult to
		    detect since the dataset starts off looking correct. Default to `False`
		    for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If `datasets` or `choice_dataset` has the wrong type.
		  ValueError: If `datasets` is empty.
	**/
	static public function choose_from_datasets(datasets:Dynamic, choice_dataset:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		A transformation that copies dataset elements to the given `target_device`.
		
		Args:
		  target_device: The name of a device to which elements will be copied.
		  source_device: The original device on which `input_dataset` will be placed.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function copy_to_device(target_device:Dynamic, ?source_device:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.RaggedTensor`s.
		
		This transformation combines multiple consecutive elements of the input
		dataset into a single element.
		
		Like `tf.data.Dataset.batch`, the components of the resulting element will
		have an additional outer dimension, which will be `batch_size` (or
		`N % batch_size` for the last element if `batch_size` does not divide the
		number of input elements `N` evenly and `drop_remainder` is `False`). If
		your program depends on the batches having the same outer dimension, you
		should set the `drop_remainder` argument to `True` to prevent the smaller
		batch from being produced.
		
		Unlike `tf.data.Dataset.batch`, the input elements to be batched may have
		different shapes:
		
		*  If an input element is a `tf.Tensor` whose static `tf.TensorShape` is
		   fully defined, then it is batched as normal.
		*  If an input element is a `tf.Tensor` whose static `tf.TensorShape` contains
		   one or more axes with unknown size (i.e., `shape[i]=None`), then the output
		   will contain a `tf.RaggedTensor` that is ragged up to any of such
		   dimensions.
		*  If an input element is a `tf.RaggedTensor` or any other type, then it is
		   batched as normal.
		
		Example:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices(np.arange(6))
		>>> dataset = dataset.map(lambda x: tf.range(x))
		>>> dataset.element_spec.shape
		TensorShape([None])
		>>> dataset = dataset.apply(
		...     tf.data.experimental.dense_to_ragged_batch(batch_size=2))
		>>> for batch in dataset:
		...   print(batch)
		<tf.RaggedTensor [[], [0]]>
		<tf.RaggedTensor [[0, 1], [0, 1, 2]]>
		<tf.RaggedTensor [[0, 1, 2, 3], [0, 1, 2, 3, 4]]>
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		  row_splits_dtype: The dtype that should be used for the `row_splits` of any
		    new ragged tensors.  Existing `tf.RaggedTensor` elements do not have their
		    row_splits dtype changed.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function dense_to_ragged_batch(batch_size:Dynamic, ?drop_remainder:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.sparse.SparseTensor`s.
		
		Like `Dataset.padded_batch()`, this transformation combines multiple
		consecutive elements of the dataset, which might have different
		shapes, into a single element. The resulting element has three
		components (`indices`, `values`, and `dense_shape`), which
		comprise a `tf.sparse.SparseTensor` that represents the same data. The
		`row_shape` represents the dense shape of each row in the
		resulting `tf.sparse.SparseTensor`, to which the effective batch size is
		prepended. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.data.experimental.dense_to_sparse_batch(
		    batch_size=2, row_shape=[6])) ==
		{
		    ([[0, 0], [0, 1], [0, 2], [1, 0], [1, 1]],  # indices
		     ['a', 'b', 'c', 'a', 'b'],                 # values
		     [2, 6]),                                   # dense_shape
		    ([[0, 0], [0, 1], [0, 2], [0, 3]],
		     ['a', 'b', 'c', 'd'],
		     [1, 6])
		}
		```
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  row_shape: A `tf.TensorShape` or `tf.int64` vector tensor-like object
		    representing the equivalent dense shape of a row in the resulting
		    `tf.sparse.SparseTensor`. Each element of this dataset must have the same
		    rank as `row_shape`, and must have size less than or equal to `row_shape`
		    in each dimension.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function dense_to_sparse_batch(batch_size:Dynamic, row_shape:Dynamic):Dynamic;
	/**
		Enables debug mode for tf.data.
		
		Example usage with pdb module:
		```
		import tensorflow as tf
		import pdb
		
		tf.data.experimental.enable_debug_mode()
		
		def func(x):
		  # Python 3.7 and older requires `pdb.Pdb(nosigint=True).set_trace()`
		  pdb.set_trace()
		  x = x + 1
		  return x
		
		dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		dataset = dataset.map(func)
		
		for item in dataset:
		  print(item)
		```
		
		The effect of debug mode is two-fold:
		
		1) Any transformations that would introduce asynchrony, parallelism, or
		non-determinism to the input pipeline execution will be forced to execute
		synchronously, sequentially, and deterministically.
		
		2) Any user-defined functions passed into tf.data transformations such as
		`map` will be wrapped in `tf.py_function` so that their body is executed
		"eagerly" as a Python function as opposed to a traced TensorFlow graph, which
		is the default behavior. Note that even when debug mode is enabled, the
		user-defined function is still traced  to infer the shape and type of its
		outputs; as a consequence, any `print` statements or breakpoints will be
		triggered once during the tracing before the actual execution of the input
		pipeline.
		
		NOTE: As the debug mode setting affects the construction of the tf.data input
		pipeline, it should be enabled before any tf.data definitions.
		
		Raises:
		  ValueError: When invoked from graph mode.
	**/
	static public function enable_debug_mode():Dynamic;
	/**
		A transformation that enumerates the elements of a dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.enumerate()`.
		
		It is similar to python's `enumerate`.
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { (7, 8), (9, 10) }
		
		# The nested structure of the `datasets` argument determines the
		# structure of elements in the resulting dataset.
		a.apply(tf.data.experimental.enumerate_dataset(start=5))
		=> { (5, 1), (6, 2), (7, 3) }
		b.apply(tf.data.experimental.enumerate_dataset())
		=> { (0, (7, 8)), (1, (9, 10)) }
		```
		
		Args:
		  start: A `tf.int64` scalar `tf.Tensor`, representing the start value for
		    enumeration.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function enumerate_dataset(?start:Dynamic):Dynamic;
	/**
		Constructs a dataset from the given variant and (nested) structure.
		
		Args:
		  variant: A scalar `tf.variant` tensor representing a dataset.
		  structure: A (nested) structure of `tf.TypeSpec` objects representing the
		    structure of each element in the dataset.
		
		Returns:
		  A `tf.data.Dataset` instance.
	**/
	static public function from_variant(variant:Dynamic, structure:Dynamic):Dynamic;
	/**
		Returns a `tf.experimental.Optional` with the next element of the iterator. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Iterator.get_next_as_optional()` instead.
		
		If the iterator has reached the end of the sequence, the returned
		`tf.experimental.Optional` will have no value.
		
		Args:
		  iterator: A `tf.data.Iterator`.
		
		Returns:
		  A `tf.experimental.Optional` object which either contains the next element
		  of the iterator (if it exists) or no value.
	**/
	static public function get_next_as_optional(iterator:Dynamic):Dynamic;
	/**
		Returns the single element of the `dataset` as a nested structure of tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.get_single_element()`.
		
		The function enables you to use a `tf.data.Dataset` in a stateless
		"tensor-in tensor-out" expression, without creating an iterator.
		This facilitates the ease of data transformation on tensors using the
		optimized `tf.data.Dataset` abstraction on top of them.
		
		For example, lets consider a `preprocessing_fn` which would take as an
		input the raw features and returns the processed feature along with
		it's label.
		
		```python
		def preprocessing_fn(raw_feature):
		  # ... the raw_feature is preprocessed as per the use-case
		  return feature
		
		raw_features = ...  # input batch of BATCH_SIZE elements.
		dataset = (tf.data.Dataset.from_tensor_slices(raw_features)
		           .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		           .batch(BATCH_SIZE))
		
		processed_features = tf.data.experimental.get_single_element(dataset)
		```
		
		In the above example, the `raw_features` tensor of length=BATCH_SIZE
		was converted to a `tf.data.Dataset`. Next, each of the `raw_feature` was
		mapped using the `preprocessing_fn` and the processed features were
		grouped into a single batch. The final `dataset` contains only one element
		which is a batch of all the processed features.
		
		NOTE: The `dataset` should contain only one element.
		
		Now, instead of creating an iterator for the `dataset` and retrieving the
		batch of features, the `tf.data.experimental.get_single_element()` function
		is used to skip the iterator creation process and directly output the batch
		of features.
		
		This can be particularly useful when your tensor transformations are
		expressed as `tf.data.Dataset` operations, and you want to use those
		transformations while serving your model.
		
		# Keras
		
		```python
		
		model = ... # A pre-built or custom model
		
		class PreprocessingModel(tf.keras.Model):
		  def __init__(self, model):
		    super().__init__(self)
		    self.model = model
		
		  @tf.function(input_signature=[...])
		  def serving_fn(self, data):
		    ds = tf.data.Dataset.from_tensor_slices(data)
		    ds = ds.map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		    ds = ds.batch(batch_size=BATCH_SIZE)
		    return tf.argmax(
		      self.model(tf.data.experimental.get_single_element(ds)),
		      axis=-1
		    )
		
		preprocessing_model = PreprocessingModel(model)
		your_exported_model_dir = ... # save the model to this path.
		tf.saved_model.save(preprocessing_model, your_exported_model_dir,
		              signatures={'serving_default': preprocessing_model.serving_fn})
		```
		
		# Estimator
		
		In the case of estimators, you need to generally define a `serving_input_fn`
		which would require the features to be processed by the model while
		inferencing.
		
		```python
		def serving_input_fn():
		
		  raw_feature_spec = ... # Spec for the raw_features
		  input_fn = tf.estimator.export.build_parsing_serving_input_receiver_fn(
		      raw_feature_spec, default_batch_size=None)
		  )
		  serving_input_receiver = input_fn()
		  raw_features = serving_input_receiver.features
		
		  def preprocessing_fn(raw_feature):
		    # ... the raw_feature is preprocessed as per the use-case
		    return feature
		
		  dataset = (tf.data.Dataset.from_tensor_slices(raw_features)
		            .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		            .batch(BATCH_SIZE))
		
		  processed_features = tf.data.experimental.get_single_element(dataset)
		
		  # Please note that the value of `BATCH_SIZE` should be equal to
		  # the size of the leading dimension of `raw_features`. This ensures
		  # that `dataset` has only element, which is a pre-requisite for
		  # using `tf.data.experimental.get_single_element(dataset)`.
		
		  return tf.estimator.export.ServingInputReceiver(
		      processed_features, serving_input_receiver.receiver_tensors)
		
		estimator = ... # A pre-built or custom estimator
		estimator.export_saved_model(your_exported_model_dir, serving_input_fn)
		```
		
		Args:
		  dataset: A `tf.data.Dataset` object containing a single element.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the single
		  element of `dataset`.
		
		Raises:
		  TypeError: if `dataset` is not a `tf.data.Dataset` object.
		  InvalidArgumentError: (at runtime) if `dataset` does not contain exactly
		    one element.
	**/
	static public function get_single_element(dataset:Dynamic):Dynamic;
	/**
		Returns the type signature for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or an `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.TypeSpec` objects matching the structure of an
		  element of `dataset_or_iterator` and specifying the type of individual
		  components.
		
		Raises:
		  TypeError: If input is not a `tf.data.Dataset` or an `tf.data.Iterator`
		    object.
	**/
	static public function get_structure(dataset_or_iterator:Dynamic):Dynamic;
	/**
		A transformation that groups elements and performs a reduction.
		
		This transformation maps element of a dataset to a key using `key_func` and
		groups the elements by key. The `reducer` is used to process each group; its
		`init_func` is used to initialize state for each group when it is created, the
		`reduce_func` is used to update the state every time an element is mapped to
		the matching group, and the `finalize_func` is used to map the final state to
		an output value.
		
		Args:
		  key_func: A function mapping a nested structure of tensors
		    (having shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.int64` tensor.
		  reducer: An instance of `Reducer`, which captures the reduction logic using
		    the `init_func`, `reduce_func`, and `finalize_func` functions.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function group_by_reducer(key_func:Dynamic, reducer:Dynamic):Dynamic;
	/**
		A transformation that groups windows of elements by key and reduces them. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.group_by_window(...)`.
		
		This transformation maps each consecutive element in a dataset to a key
		using `key_func` and groups the elements by key. It then applies
		`reduce_func` to at most `window_size_func(key)` elements matching the same
		key. All except the final window for each key will contain
		`window_size_func(key)` elements; the final window may be smaller.
		
		You may provide either a constant `window_size` or a window size determined by
		the key through `window_size_func`.
		
		Args:
		  key_func: A function mapping a nested structure of tensors
		    (having shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.int64` tensor.
		  reduce_func: A function mapping a key and a dataset of up to `window_size`
		    consecutive elements matching that key to another dataset.
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements matching the same key to combine in a single
		    batch, which will be passed to `reduce_func`. Mutually exclusive with
		    `window_size_func`.
		  window_size_func: A function mapping a key to a `tf.int64` scalar
		    `tf.Tensor`, representing the number of consecutive elements matching
		    the same key to combine in a single batch, which will be passed to
		    `reduce_func`. Mutually exclusive with `window_size`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if neither or both of {`window_size`, `window_size_func`} are
		    passed.
	**/
	static public function group_by_window(key_func:Dynamic, reduce_func:Dynamic, ?window_size:Dynamic, ?window_size_func:Dynamic):Dynamic;
	/**
		Creates a `Dataset` from another `Dataset` and silently ignores any errors.
		
		Use this transformation to produce a dataset that contains the same elements
		as the input, but silently drops any elements that caused an error. For
		example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1., 2., 0., 4.])
		
		# Computing `tf.debugging.check_numerics(1. / 0.)` will raise an
		InvalidArgumentError.
		dataset = dataset.map(lambda x: tf.debugging.check_numerics(1. / x, "error"))
		
		# Using `ignore_errors()` will drop the element that causes an error.
		dataset =
		    dataset.apply(tf.data.experimental.ignore_errors())  # ==> {1., 0.5, 0.2}
		```
		Args:
		   log_warning: (Optional.) A 'tf.bool' scalar indicating whether ignored
		    errors should be logged to stderr. Defaults to 'False'.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function ignore_errors(?log_warning:Dynamic):Dynamic;
	/**
		Returns an index lookup table based on the given dataset.
		
		This operation constructs a lookup table based on the given dataset of keys.
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is
		`[vocabulary size, vocabulary size + num_oov_buckets - 1]`.
		
		Sample Usages:
		
		>>> ds = tf.data.Dataset.range(100).map(lambda x: tf.strings.as_string(x * 2))
		>>> table = tf.data.experimental.index_table_from_dataset(
		...                                     ds, key_dtype=dtypes.int64)
		>>> table.lookup(tf.constant(['0', '2', '4'], dtype=tf.string)).numpy()
		array([0, 1, 2])
		
		Args:
		  dataset: A dataset of keys.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets.
		  key_dtype: The `key` data type.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table based on the given dataset.
		
		Raises:
		  ValueError: If
		    * `num_oov_buckets` is negative
		    * `vocab_size` is not greater than zero
		    * The `key_dtype` is not integer or string
	**/
	static public function index_table_from_dataset(?dataset:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?key_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a `Dataset` of feature dictionaries from `Example` protos.
		
		If label_key argument is provided, returns a `Dataset` of tuple
		comprising of feature dictionaries and label.
		
		Example:
		
		```
		serialized_examples = [
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		    feature { key: "kws" value { bytes_list { value: [ "code", "art" ] } } }
		  },
		  features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		    feature { key: "kws" value { bytes_list { value: [ "sports" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		features: {
		  "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		  "gender": FixedLenFeature([], dtype=tf.string),
		  "kws": VarLenFeature(dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		  "kws": SparseTensor(
		    indices=[[0, 0], [0, 1], [1, 0]],
		    values=["code", "art", "sports"]
		    dense_shape=[2, 2]),
		}
		```
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		    `Example` records. See `tf.io.gfile.glob` for pattern rules.
		  batch_size: An int representing the number of records to combine
		    in a single batch.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. See `tf.io.parse_example`.
		  reader: A function or class that can be
		    called with a `filenames` tensor and (optional) `reader_args` and returns
		    a `Dataset` of `Example` tensors. Defaults to `tf.data.TFRecordDataset`.
		  label_key: (Optional) A string corresponding to the key labels are stored in
		    `tf.Examples`. If provided, it must be one of the `features` key,
		    otherwise results in `ValueError`.
		  reader_args: Additional arguments to pass to the reader class.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. Defaults to `None`.
		  shuffle: A boolean, indicates whether the input should be shuffled. Defaults
		    to `True`.
		  shuffle_buffer_size: Buffer size of the ShuffleDataset. A large capacity
		    ensures better shuffling but would increase memory usage and startup time.
		  shuffle_seed: Randomization seed to use for shuffling.
		  prefetch_buffer_size: Number of feature batches to prefetch in order to
		    improve performance. Recommended value is the number of batches consumed
		    per training step. Defaults to auto-tune.
		  reader_num_threads: Number of threads used to read `Example` records. If >1,
		    the results will be interleaved. Defaults to `1`.
		  parser_num_threads: Number of threads to use for parsing `Example` tensors
		    into a dictionary of `Feature` tensors. Defaults to `2`.
		  sloppy_ordering: If `True`, reading performance will be improved at
		    the cost of non-deterministic ordering. If `False`, the order of elements
		    produced is deterministic prior to shuffling (elements are still
		    randomized if `shuffle=True`. Note that if the seed is set, then order
		    of elements after shuffling is deterministic). Defaults to `False`.
		  drop_final_batch: If `True`, and the batch size does not evenly divide the
		    input dataset size, the final smaller batch will be dropped. Defaults to
		    `False`.
		
		Returns:
		  A dataset of `dict` elements, (or a tuple of `dict` elements and label).
		  Each `dict` maps feature keys to `Tensor` or `SparseTensor` objects.
		
		Raises:
		  TypeError: If `reader` is of the wrong type.
		  ValueError: If `label_key` is not one of the `features` keys.
	**/
	static public function make_batched_features_dataset(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?reader:Dynamic, ?label_key:Dynamic, ?reader_args:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?sloppy_ordering:Dynamic, ?drop_final_batch:Dynamic):Dynamic;
	/**
		Reads CSV files into a dataset.
		
		Reads CSV files into a dataset, where each element of the dataset is a
		(features, labels) tuple that corresponds to a batch of CSV rows. The features
		dictionary maps feature column names to `Tensor`s containing the corresponding
		feature data, and labels is a `Tensor` containing the batch's label data.
		
		By default, the first rows of the CSV files are expected to be headers listing
		the column names. If the first rows are not headers, set `header=False` and
		provide the column names with the `column_names` argument.
		
		By default, the dataset is repeated indefinitely, reshuffling the order each
		time. This behavior can be modified by setting the `num_epochs` and `shuffle`
		arguments.
		
		For example, suppose you have a CSV file containing
		
		| Feature_A | Feature_B |
		| --------- | --------- |
		| 1         | "a"       |
		| 2         | "b"       |
		| 3         | "c"       |
		| 4         | "d"       |
		
		```
		# No label column specified
		dataset = tf.data.experimental.make_csv_dataset(filename, batch_size=2)
		iterator = ds.as_numpy_iterator()
		print(dict(next(iterator)))
		# prints a dictionary of batched features:
		# OrderedDict([('Feature_A', array([1, 4], dtype=int32)),
		#              ('Feature_B', array([b'a', b'd'], dtype=object))])
		```
		
		```
		# Set Feature_B as label column
		dataset = tf.data.experimental.make_csv_dataset(
		    filename, batch_size=2, label_name="Feature_B")
		iterator = ds.as_numpy_iterator()
		print(next(iterator))
		# prints (features, labels) tuple:
		# (OrderedDict([('Feature_A', array([1, 2], dtype=int32))]),
		#  array([b'a', b'b'], dtype=object))
		```
		
		See the
		[Load CSV data guide](https://www.tensorflow.org/tutorials/load_data/csv) for
		more examples of using `make_csv_dataset` to read CSV data.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing CSV
		    records. See `tf.io.gfile.glob` for pattern rules.
		  batch_size: An int representing the number of records to combine
		    in a single batch.
		  column_names: An optional list of strings that corresponds to the CSV
		    columns, in order. One per column of the input record. If this is not
		    provided, infers the column names from the first row of the records.
		    These names will be the keys of the features dict of each dataset element.
		  column_defaults: A optional list of default values for the CSV fields. One
		    item per selected column of the input record. Each item in the list is
		    either a valid CSV dtype (float32, float64, int32, int64, or string), or a
		    `Tensor` with one of the aforementioned types. The tensor can either be
		    a scalar default value (if the column is optional), or an empty tensor (if
		    the column is required). If a dtype is provided instead of a tensor, the
		    column is also treated as required. If this list is not provided, tries
		    to infer types based on reading the first num_rows_for_inference rows of
		    files specified, and assumes all columns are optional, defaulting to `0`
		    for numeric values and `""` for string values. If both this and
		    `select_columns` are specified, these must have the same lengths, and
		    `column_defaults` is assumed to be sorted in order of increasing column
		    index.
		  label_name: A optional string corresponding to the label column. If
		    provided, the data for this column is returned as a separate `Tensor` from
		    the features dictionary, so that the dataset complies with the format
		    expected by a `tf.Estimator.train` or `tf.Estimator.evaluate` input
		    function.
		  select_columns: An optional list of integer indices or string column
		    names, that specifies a subset of columns of CSV data to select. If
		    column names are provided, these must correspond to names provided in
		    `column_names` or inferred from the file header lines. When this argument
		    is specified, only a subset of CSV columns will be parsed and returned,
		    corresponding to the columns specified. Using this results in faster
		    parsing and lower memory usage. If both this and `column_defaults` are
		    specified, these must have the same lengths, and `column_defaults` is
		    assumed to be sorted in order of increasing column index.
		  field_delim: An optional `string`. Defaults to `","`. Char delimiter to
		    separate fields in a record.
		  use_quote_delim: An optional bool. Defaults to `True`. If false, treats
		    double quotation marks as regular characters inside of the string fields.
		  na_value: Additional string to recognize as NA/NaN.
		  header: A bool that indicates whether the first rows of provided CSV files
		    correspond to header lines with column names, and should not be included
		    in the data.
		  num_epochs: An int specifying the number of times this dataset is repeated.
		    If None, cycles through the dataset forever.
		  shuffle: A bool that indicates whether the input should be shuffled.
		  shuffle_buffer_size: Buffer size to use for shuffling. A large buffer size
		    ensures better shuffling, but increases memory usage and startup time.
		  shuffle_seed: Randomization seed to use for shuffling.
		  prefetch_buffer_size: An int specifying the number of feature
		    batches to prefetch for performance improvement. Recommended value is the
		    number of batches consumed per training step. Defaults to auto-tune.
		  num_parallel_reads: Number of threads used to read CSV records from files.
		    If >1, the results will be interleaved. Defaults to `1`.
		  sloppy: If `True`, reading performance will be improved at
		    the cost of non-deterministic ordering. If `False`, the order of elements
		    produced is deterministic prior to shuffling (elements are still
		    randomized if `shuffle=True`. Note that if the seed is set, then order
		    of elements after shuffling is deterministic). Defaults to `False`.
		  num_rows_for_inference: Number of rows of a file to use for type inference
		    if record_defaults is not provided. If None, reads all the rows of all
		    the files. Defaults to 100.
		  compression_type: (Optional.) A `tf.string` scalar evaluating to one of
		    `""` (no compression), `"ZLIB"`, or `"GZIP"`. Defaults to no compression.
		  ignore_errors: (Optional.) If `True`, ignores errors with CSV file parsing,
		    such as malformed data or empty lines, and moves on to the next valid
		    CSV record. Otherwise, the dataset raises an error and stops processing
		    when encountering any invalid records. Defaults to `False`.
		
		Returns:
		  A dataset, where each element is a (features, labels) tuple that corresponds
		  to a batch of `batch_size` CSV rows. The features dictionary maps feature
		  column names to `Tensor`s containing the corresponding column data, and
		  labels is a `Tensor` containing the column data for the label column
		  specified by `label_name`.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function make_csv_dataset(file_pattern:Dynamic, batch_size:Dynamic, ?column_names:Dynamic, ?column_defaults:Dynamic, ?label_name:Dynamic, ?select_columns:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?header:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?num_parallel_reads:Dynamic, ?sloppy:Dynamic, ?num_rows_for_inference:Dynamic, ?compression_type:Dynamic, ?ignore_errors:Dynamic):Dynamic;
	/**
		Returns a SaveableObject for saving/restoring iterator state using Saver. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`make_saveable_from_iterator` is intended for use in TF1 with `tf.compat.v1.Saver`. In TF2, use `tf.train.Checkpoint` instead.
		
		Args:
		  iterator: Iterator.
		  external_state_policy: A string that identifies how to handle input
		    pipelines that depend on external state. Possible values are
		    'ignore': The external state is silently ignored.
		    'warn': The external state is ignored, logging a warning.
		    'fail': The operation fails upon encountering external state.
		    By default we set it to 'fail'.
		
		Returns:
		  A SaveableObject for saving/restoring iterator state using Saver.
		
		Raises:
		  ValueError: If iterator does not support checkpointing.
		  ValueError: If `external_state_policy` is not one of 'warn', 'ignore' or
		    'fail'.
		
		For example:
		
		```python
		with tf.Graph().as_default():
		  ds = tf.data.Dataset.range(10)
		  iterator = ds.make_initializable_iterator()
		  # Build the iterator SaveableObject.
		  saveable_obj = tf.data.experimental.make_saveable_from_iterator(iterator)
		  # Add the SaveableObject to the SAVEABLE_OBJECTS collection so
		  # it can be automatically saved using Saver.
		  tf.compat.v1.add_to_collection(tf.GraphKeys.SAVEABLE_OBJECTS, saveable_obj)
		  saver = tf.compat.v1.train.Saver()
		
		  while continue_training:
		    ... Perform training ...
		    if should_save_checkpoint:
		      saver.save()
		```
		
		Note: When restoring the iterator, the existing iterator state is completely
		discarded. This means that any changes you may have made to the Dataset
		graph will be discarded as well! This includes the new Dataset graph
		that you may have built during validation. So, while running validation,
		make sure to run the initializer for the validation input pipeline after
		restoring the checkpoint.
		
		Note: Not all iterators support checkpointing yet. Attempting to save the
		state of an unsupported iterator will throw an error.
	**/
	static public function make_saveable_from_iterator(iterator:Dynamic, ?external_state_policy:Dynamic):Dynamic;
	/**
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.map(map_func, num_parallel_calls)` followed by `tf.data.Dataset.batch(batch_size, drop_remainder)`. Static tf.data optimizations will take care of using the fused implementation.
		
		Maps `map_func` across `batch_size` consecutive elements of this dataset
		and then combines them into a batch. Functionally, it is equivalent to `map`
		followed by `batch`. This API is temporary and deprecated since input pipeline
		optimization now fuses consecutive `map` and `batch` operations automatically.
		
		Args:
		  map_func: A function mapping a nested structure of tensors to another
		    nested structure of tensors.
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  num_parallel_batches: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the number of batches to create in parallel. On one hand,
		    higher values can help mitigate the effect of stragglers. On the other
		    hand, higher values can increase contention if CPU is scarce.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in case its size is smaller than
		    desired; the default behavior is not to drop the smaller batch.
		  num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number of elements to process in parallel. If not
		    specified, `batch_size * num_parallel_batches` elements will be processed
		    in parallel. If the value `tf.data.AUTOTUNE` is used, then
		    the number of parallel calls is set dynamically based on available CPU.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.map_and_batch()
		
		NOTE: This is an escape hatch for existing uses of `map_and_batch` that do not
		work with V2 functions. New uses are strongly discouraged and existing uses
		should migrate to `map_and_batch` as this method will not be removed in V2.
		
		Args:
		  map_func: A function mapping a nested structure of tensors to another
		    nested structure of tensors.
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  num_parallel_batches: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the number of batches to create in parallel. On one hand,
		    higher values can help mitigate the effect of stragglers. On the other
		    hand, higher values can increase contention if CPU is scarce.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in case its size is smaller than
		    desired; the default behavior is not to drop the smaller batch.
		  num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number of elements to process in parallel. If not
		    specified, `batch_size * num_parallel_batches` elements will be processed
		    in parallel. If the value `tf.data.AUTOTUNE` is used, then
		    the number of parallel calls is set dynamically based on available CPU.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch_with_legacy_function(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		A parallel version of the `Dataset.interleave()` transformation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.interleave(map_func, cycle_length, block_length, num_parallel_calls=tf.data.AUTOTUNE)` instead. If sloppy execution is desired, use `tf.data.Options.deterministic`.
		
		`parallel_interleave()` maps `map_func` across its input to produce nested
		datasets, and outputs their elements interleaved. Unlike
		`tf.data.Dataset.interleave`, it gets elements from `cycle_length` nested
		datasets in parallel, which increases the throughput, especially in the
		presence of stragglers. Furthermore, the `sloppy` argument can be used to
		improve performance, by relaxing the requirement that the outputs are produced
		in a deterministic order, and allowing the implementation to skip over nested
		datasets whose elements are not readily available when requested.
		
		Example usage:
		
		```python
		# Preprocess 4 files concurrently.
		filenames = tf.data.Dataset.list_files("/path/to/data/train*.tfrecords")
		dataset = filenames.apply(
		    tf.data.experimental.parallel_interleave(
		        lambda filename: tf.data.TFRecordDataset(filename),
		        cycle_length=4))
		```
		
		WARNING: If `sloppy` is `True`, the order of produced elements is not
		deterministic.
		
		Args:
		  map_func: A function mapping a nested structure of tensors to a `Dataset`.
		  cycle_length: The number of input `Dataset`s to interleave from in parallel.
		  block_length: The number of consecutive elements to pull from an input
		    `Dataset` before advancing to the next input `Dataset`.
		  sloppy: A boolean controlling whether determinism should be traded for
		    performance by allowing elements to be produced out of order.  If `sloppy`
		    is `None`, the `tf.data.Options.deterministic` dataset option (`True` by
		    default) is used to decide whether to enforce a deterministic order.
		  buffer_output_elements: The number of elements each iterator being
		    interleaved should buffer (similar to the `.prefetch()` transformation for
		    each interleaved iterator).
		  prefetch_input_elements: The number of input elements to transform to
		    iterators before they are needed for interleaving.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function parallel_interleave(map_func:Dynamic, cycle_length:Dynamic, ?block_length:Dynamic, ?sloppy:Dynamic, ?buffer_output_elements:Dynamic, ?prefetch_input_elements:Dynamic):Dynamic;
	/**
		A transformation that parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized `Example` protos given in `serialized`. We refer
		to `serialized` as a batch with `batch_size` many entries of individual
		`Example` protos.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`,
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `RaggedFeature`, `SparseFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and each
		`FixedLenFeature` is mapped to a `Tensor`. See `tf.io.parse_example` for more
		details about feature dictionaries.
		
		Args:
		 features: A `dict` mapping feature keys to `FixedLenFeature`,
		   `VarLenFeature`, `RaggedFeature`, and `SparseFeature` values.
		 num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number of parsing processes to call in parallel.
		 deterministic: (Optional.) A boolean controlling whether determinism
		    should be traded for performance by allowing elements to be produced out
		    of order if some parsing calls complete faster than others. If
		    `deterministic` is `None`, the
		    `tf.data.Options.deterministic` dataset option (`True` by default) is used
		    to decide whether to produce elements deterministically.
		
		Returns:
		  A dataset transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if features argument is None.
	**/
	static public function parse_example_dataset(features:Dynamic, ?num_parallel_calls:Dynamic, ?deterministic:Dynamic):Dynamic;
	/**
		A transformation that prefetches dataset values to the given `device`.
		
		NOTE: Although the transformation creates a `tf.data.Dataset`, the
		transformation must be the final `Dataset` in the input pipeline.
		
		For example,
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset = dataset.apply(tf.data.experimental.prefetch_to_device("/cpu:0"))
		>>> for element in dataset:
		...   print(f'Tensor {element} is on device {element.device}')
		Tensor 1 is on device /job:localhost/replica:0/task:0/device:CPU:0
		Tensor 2 is on device /job:localhost/replica:0/task:0/device:CPU:0
		Tensor 3 is on device /job:localhost/replica:0/task:0/device:CPU:0
		
		Args:
		  device: A string. The name of a device to which elements will be prefetched.
		  buffer_size: (Optional.) The number of elements to buffer on `device`.
		    Defaults to an automatically chosen value.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function prefetch_to_device(device:Dynamic, ?buffer_size:Dynamic):Dynamic;
	/**
		A transformation that resamples a dataset to achieve a target distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.rejection_resample(...)`.
		
		**NOTE** Resampling is performed via rejection sampling; some fraction
		of the input values will be dropped.
		
		Args:
		  class_func: A function mapping an element of the input dataset to a scalar
		    `tf.int32` tensor. Values should be in `[0, num_classes)`.
		  target_dist: A floating point type tensor, shaped `[num_classes]`.
		  initial_dist: (Optional.)  A floating point type tensor, shaped
		    `[num_classes]`.  If not provided, the true class distribution is
		    estimated live in a streaming fashion.
		  seed: (Optional.) Python integer seed for the resampler.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function rejection_resample(class_func:Dynamic, target_dist:Dynamic, ?initial_dist:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.sample_from_datasets(...)`.
		
		Creates a dataset by interleaving elements of `datasets` with `weight[i]`
		probability of picking an element from dataset `i`. Sampling is done without
		replacement. For example, suppose we have 2 datasets:
		
		```python
		dataset1 = tf.data.Dataset.range(0, 3)
		dataset2 = tf.data.Dataset.range(100, 103)
		```
		
		Suppose also that we sample from these 2 datasets with the following weights:
		
		```python
		sample_dataset = tf.data.Dataset.sample_from_datasets(
		    [dataset1, dataset2], weights=[0.5, 0.5])
		```
		
		One possible outcome of elements in sample_dataset is:
		
		```
		print(list(sample_dataset.as_numpy_iterator()))
		# [100, 0, 1, 101, 2, 102]
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  weights: (Optional.) A list or Tensor of `len(datasets)` floating-point
		    values where `weights[i]` represents the probability to sample from
		    `datasets[i]`, or a `tf.data.Dataset` object where each element is such a
		    list. Defaults to a uniform distribution across `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  stop_on_empty_dataset: If `True`, sampling stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the distribution of samples starts off as the user
		    intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct. Default
		    to `False` for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError:
		    - If `datasets` is empty, or
		    - If `weights` is specified and does not match the length of `datasets`.
	**/
	static public function sample_from_datasets(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		A transformation that scans a function across an input dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.scan(...) instead
		
		This transformation is a stateful relative of `tf.data.Dataset.map`.
		In addition to mapping `scan_func` across the elements of the input dataset,
		`scan()` accumulates one or more state tensors, whose initial values are
		`initial_state`.
		
		Args:
		  initial_state: A nested structure of tensors, representing the initial state
		    of the accumulator.
		  scan_func: A function that maps `(old_state, input_element)` to
		    `(new_state, output_element)`. It must take two arguments and return a
		    pair of nested structures of tensors. The `new_state` must match the
		    structure of `initial_state`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function scan(initial_state:Dynamic, scan_func:Dynamic):Dynamic;
	/**
		Shuffles and repeats a Dataset, reshuffling with each repetition. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.shuffle(buffer_size, seed)` followed by `tf.data.Dataset.repeat(count)`. Static tf.data optimizations will take care of using the fused implementation.
		
		>>> d = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> d = d.apply(tf.data.experimental.shuffle_and_repeat(2, count=2))
		>>> [elem.numpy() for elem in d] # doctest: +SKIP
		[2, 3, 1, 1, 3, 2]
		
		```python
		dataset.apply(
		  tf.data.experimental.shuffle_and_repeat(buffer_size, count, seed))
		```
		
		produces the same output as
		
		```python
		dataset.shuffle(
		  buffer_size, seed=seed, reshuffle_each_iteration=True).repeat(count)
		```
		
		In each repetition, this dataset fills a buffer with `buffer_size` elements,
		then randomly samples elements from this buffer, replacing the selected
		elements with new elements. For perfect shuffling, set the buffer size equal
		to the full size of the dataset.
		
		For instance, if your dataset contains 10,000 elements but `buffer_size` is
		set to 1,000, then `shuffle` will initially select a random element from
		only the first 1,000 elements in the buffer. Once an element is selected,
		its space in the buffer is replaced by the next (i.e. 1,001-st) element,
		maintaining the 1,000 element buffer.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the maximum
		    number elements that will be buffered when prefetching.
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the number
		    of times the dataset should be repeated. The default behavior (if `count`
		    is `None` or `-1`) is for the dataset be repeated indefinitely.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function shuffle_and_repeat(buffer_size:Dynamic, ?count:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		API to persist the output of the input dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.snapshot(...)`.
		
		The snapshot API allows users to transparently persist the output of their
		preprocessing pipeline to disk, and materialize the pre-processed data on a
		different training run.
		
		This API enables repeated preprocessing steps to be consolidated, and allows
		re-use of already processed data, trading off disk storage and network
		bandwidth for freeing up more valuable CPU resources and accelerator compute
		time.
		
		https://github.com/tensorflow/community/blob/master/rfcs/20200107-tf-data-snapshot.md
		has detailed design documentation of this feature.
		
		Users can specify various options to control the behavior of snapshot,
		including how snapshots are read from and written to by passing in
		user-defined functions to the `reader_func` and `shard_func` parameters.
		
		`shard_func` is a user specified function that maps input elements to snapshot
		shards.
		
		Users may want to specify this function to control how snapshot files should
		be written to disk. Below is an example of how a potential shard_func could
		be written.
		
		```python
		dataset = ...
		dataset = dataset.enumerate()
		dataset = dataset.apply(tf.data.experimental.snapshot("/path/to/snapshot/dir",
		    shard_func=lambda x, y: x % NUM_SHARDS, ...))
		dataset = dataset.map(lambda x, y: y)
		```
		
		`reader_func` is a user specified function that accepts a single argument:
		(1) a Dataset of Datasets, each representing a "split" of elements of the
		original dataset. The cardinality of the input dataset matches the
		number of the shards specified in the `shard_func` (see above). The function
		should return a Dataset of elements of the original dataset.
		
		Users may want specify this function to control how snapshot files should be
		read from disk, including the amount of shuffling and parallelism.
		
		Here is an example of a standard reader function a user can define. This
		function enables both dataset shuffling and parallel reading of datasets:
		
		```python
		def user_reader_func(datasets):
		  # shuffle the datasets splits
		  datasets = datasets.shuffle(NUM_CORES)
		  # read datasets in parallel and interleave their elements
		  return datasets.interleave(lambda x: x, num_parallel_calls=AUTOTUNE)
		
		dataset = dataset.apply(tf.data.experimental.snapshot("/path/to/snapshot/dir",
		    reader_func=user_reader_func))
		```
		
		By default, snapshot parallelizes reads by the number of cores available on
		the system, but will not attempt to shuffle the data.
		
		Args:
		  path: Required. A directory to use for storing / loading the snapshot to /
		    from.
		  compression: Optional. The type of compression to apply to the snapshot
		    written to disk. Supported options are `GZIP`, `SNAPPY`, `AUTO` or None.
		    Defaults to AUTO, which attempts to pick an appropriate compression
		    algorithm for the dataset.
		  reader_func: Optional. A function to control how to read data from snapshot
		    shards.
		  shard_func: Optional. A function to control how to shard data when writing a
		    snapshot.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function snapshot(path:Dynamic, ?compression:Dynamic, ?reader_func:Dynamic, ?shard_func:Dynamic):Dynamic;
	/**
		Returns a lookup table based on the given dataset.
		
		This operation constructs a lookup table based on the given dataset of pairs
		of (key, value).
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is
		`[vocabulary size, vocabulary size + num_oov_buckets - 1]`.
		
		Sample Usages:
		
		>>> keys = tf.data.Dataset.range(100)
		>>> values = tf.data.Dataset.range(100).map(
		...     lambda x: tf.strings.as_string(x * 2))
		>>> ds = tf.data.Dataset.zip((keys, values))
		>>> table = tf.data.experimental.table_from_dataset(
		...                               ds, default_value='n/a', key_dtype=tf.int64)
		>>> table.lookup(tf.constant([0, 1, 2], dtype=tf.int64)).numpy()
		array([b'0', b'2', b'4'], dtype=object)
		
		Args:
		  dataset: A dataset containing (key, value) pairs.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets.
		  key_dtype: The `key` data type.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table based on the given dataset.
		
		Raises:
		  ValueError: If
		    * `dataset` does not contain pairs
		    * The 2nd item in the `dataset` pairs has a dtype which is incompatible
		      with `default_value`
		    * `num_oov_buckets` is negative
		    * `vocab_size` is not greater than zero
		    * The `key_dtype` is not integer or string
	**/
	static public function table_from_dataset(?dataset:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?key_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A transformation that stops dataset iteration based on a `predicate`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.take_while(...)
		
		Args:
		  predicate: A function that maps a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    scalar `tf.bool` tensor.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function take_while(predicate:Dynamic):Dynamic;
	/**
		Returns a variant representing the given dataset.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A scalar `tf.variant` tensor representing the given dataset.
	**/
	static public function to_variant(dataset:Dynamic):Dynamic;
	/**
		Splits elements of a dataset into multiple elements on the batch dimension. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.unbatch()`.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		```python
		# NOTE: The following example uses `{ ... }` to represent the contents
		# of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.unbatch() == {
		    'a', 'b', 'c', 'a', 'b', 'a', 'b', 'c', 'd'}
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unbatch():Dynamic;
	/**
		Creates a `Dataset` from another `Dataset`, discarding duplicates. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.unique(...)
		
		Use this transformation to produce a dataset that contains one instance of
		each unique element in the input. For example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1, 37, 2, 37, 2, 1])
		
		# Using `unique()` will drop the duplicate elements.
		dataset = dataset.apply(tf.data.experimental.unique())  # ==> { 1, 37, 2 }
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unique():Dynamic;
}