/* This file is generated, do not edit! */
package tensorflow.contrib.data;
@:pythonImport("tensorflow.contrib.data") extern class Data_Module {
	static public var AUTOTUNE : Dynamic;
	/**
		Creates a `Dataset` that counts from `start` in steps of size `step`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.Counter(...)`.
		
		For example:
		
		```python
		Dataset.count() == [0, 1, 2, ...)
		Dataset.count(2) == [2, 3, ...)
		Dataset.count(2, 5) == [2, 7, 12, ...)
		Dataset.count(0, -1) == [0, -1, -2, ...)
		Dataset.count(10, -1) == [10, 9, ...)
		```
		
		Args:
		  start: (Optional.) The starting value for the counter. Defaults to 0.
		  step: (Optional.) The step size for the counter. Defaults to 1.
		  dtype: (Optional.) The data type for counter elements. Defaults to
		    `tf.int64`.
		
		Returns:
		  A `Dataset` of scalar `dtype` elements.
	**/
	static public function Counter(?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Assert the shape of this `Dataset`.
		
		```python
		shapes = [tf.TensorShape([16, 256]), tf.TensorShape([None, 2])]
		result = dataset.apply(tf.contrib.data.assert_element_shape(shapes))
		print(result.output_shapes)  # ==> "((16, 256), (<unknown>, 2))"
		```
		
		If dataset shapes and expected_shape, are fully defined, assert they match.
		Otherwise, add assert op that will validate the shapes when tensors are
		evaluated, and set shapes on tensors, respectively.
		
		Note that unknown dimension in `expected_shapes` will be ignored.
		
		Args:
		  expected_shapes: A nested structure of `tf.TensorShape` objects.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function assert_element_shape(expected_shapes:Dynamic):Dynamic;
	/**
		A batching transformation that omits the final small batch (if present). (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.batch(..., drop_remainder=True)`.
		
		Like `tf.data.Dataset.batch`, this transformation combines
		consecutive elements of this dataset into batches. However, if the batch
		size does not evenly divide the input dataset size, this transformation will
		drop the final smaller element.
		
		The following example illustrates the difference between this
		transformation and `Dataset.batch()`:
		
		```python
		dataset = tf.data.Dataset.range(200)
		batched = dataset.apply(tf.contrib.data.batch_and_drop_remainder(128))
		print(batched.output_shapes)  # ==> "(128,)" (the batch dimension is known)
		```
		
		By contrast, `dataset.batch(128)` would yield a two-element dataset with
		shapes `(128,)` and `(72,)`, so the batch dimension would not be statically
		known.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		      consecutive elements of this dataset to combine in a single batch.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function batch_and_drop_remainder(batch_size:Dynamic):Dynamic;
	/**
		A transformation that buckets elements in a `Dataset` by length. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.bucket_by_sequence_length(...)`.
		
		Elements of the `Dataset` are grouped together by length and then are padded
		and batched.
		
		This is useful for sequence tasks in which the elements have variable length.
		Grouping together elements that have similar lengths reduces the total
		fraction of padding in a batch which increases training step efficiency.
		
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
		    need to be either of type `tf.SparseTensor` or of same shape).
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if `len(bucket_batch_sizes) != len(bucket_boundaries) + 1`.
	**/
	static public function bucket_by_sequence_length(element_length_func:Dynamic, bucket_boundaries:Dynamic, bucket_batch_sizes:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?pad_to_bucket_boundary:Dynamic, ?no_padding:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.choose_from_datasets(...)`.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.contrib.data.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between
		    `0` and `len(datasets) - 1`.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If the `datasets` or `choice_dataset` arguments have the wrong
		    type.
	**/
	static public function choose_from_datasets(datasets:Dynamic, choice_dataset:Dynamic):Dynamic;
	/**
		A transformation that copies dataset elements to the given `target_device`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.copy_to_device(...)`.
		
		Args:
		  target_device: The name of a device to which elements will be copied.
		  source_device: The original device on which `input_dataset` will be placed.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function copy_to_device(target_device:Dynamic, ?source_device:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.SparseTensor`s. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.dense_to_sparse_batch(...)`.
		
		Like `Dataset.padded_batch()`, this transformation combines multiple
		consecutive elements of the dataset, which might have different
		shapes, into a single element. The resulting element has three
		components (`indices`, `values`, and `dense_shape`), which
		comprise a `tf.SparseTensor` that represents the same data. The
		`row_shape` represents the dense shape of each row in the
		resulting `tf.SparseTensor`, to which the effective batch size is
		prepended. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.contrib.data.dense_to_sparse_batch(batch_size=2, row_shape=[6])) ==
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
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    number of consecutive elements of this dataset to combine in a
		    single batch.
		  row_shape: A `tf.TensorShape` or `tf.int64` vector tensor-like
		    object representing the equivalent dense shape of a row in the
		    resulting `tf.SparseTensor`. Each element of this dataset must
		    have the same rank as `row_shape`, and must have size less
		    than or equal to `row_shape` in each dimension.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function dense_to_sparse_batch(batch_size:Dynamic, row_shape:Dynamic):Dynamic;
	/**
		A transformation that enumerate the elements of a dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.enumerate_dataset(...)`.
		
		It is Similar to python's `enumerate`.
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { (7, 8), (9, 10) }
		
		# The nested structure of the `datasets` argument determines the
		# structure of elements in the resulting dataset.
		a.apply(tf.contrib.data.enumerate(start=5)) == { (5, 1), (6, 2), (7, 3) }
		b.apply(tf.contrib.data.enumerate()) == { (0, (7, 8)), (1, (9, 10)) }
		```
		
		Args:
		  start: A `tf.int64` scalar `tf.Tensor`, representing the start
		    value for enumeration.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function enumerate_dataset(?start:Dynamic):Dynamic;
	/**
		Returns an `Optional` that contains the next value from the iterator.
		
		If `iterator` has reached the end of the sequence, the returned `Optional`
		will have no value.
		
		Args:
		  iterator: A `tf.data.Iterator` object.
		
		Returns:
		  An `Optional` object representing the next value from the iterator (if it
		  has one) or no value.
	**/
	static public function get_next_as_optional(iterator:Dynamic):Dynamic;
	/**
		Returns the single element in `dataset` as a nested structure of tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.get_single_element(...)`.
		
		This function enables you to use a `tf.data.Dataset` in a stateless
		"tensor-in tensor-out" expression, without creating a `tf.data.Iterator`.
		This can be useful when your preprocessing transformations are expressed
		as a `Dataset`, and you want to use the transformation at serving time.
		For example:
		
		```python
		input_batch = tf.placeholder(tf.string, shape=[BATCH_SIZE])
		
		def preprocessing_fn(input_str):
		  # ...
		  return image, label
		
		dataset = (tf.data.Dataset.from_tensor_slices(input_batch)
		           .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		           .batch(BATCH_SIZE))
		
		image_batch, label_batch = tf.contrib.data.get_single_element(dataset)
		```
		
		Args:
		  dataset: A `tf.data.Dataset` object containing a single element.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the single
		  element of `dataset`.
		
		Raises:
		  TypeError: if `dataset` is not a `tf.data.Dataset` object.
		  InvalidArgumentError (at runtime): if `dataset` does not contain exactly
		    one element.
	**/
	static public function get_single_element(dataset:Dynamic):Dynamic;
	/**
		A transformation that groups elements and performs a reduction. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.group_by_reducer(...)`.
		
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
		Use `tf.data.experimental.group_by_window(...)`.
		
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
		Creates a `Dataset` from another `Dataset` and silently ignores any errors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.ignore_errors()`.
		
		Use this transformation to produce a dataset that contains the same elements
		as the input, but silently drops any elements that caused an error. For
		example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1., 2., 0., 4.])
		
		# Computing `tf.check_numerics(1. / 0.)` will raise an InvalidArgumentError.
		dataset = dataset.map(lambda x: tf.check_numerics(1. / x, "error"))
		
		# Using `ignore_errors()` will drop the element that causes an error.
		dataset =
		    dataset.apply(tf.contrib.data.ignore_errors())  # ==> { 1., 0.5, 0.2 }
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function ignore_errors():Dynamic;
	/**
		Returns a `Dataset` of feature dictionaries from `Example` protos. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.make_batched_features_dataset(...)`.
		
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
		    `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int representing the number of records to combine
		    in a single batch.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. See `tf.parse_example`.
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
		    the results will be interleaved.
		  parser_num_threads: Number of threads to use for parsing `Example` tensors
		    into a dictionary of `Feature` tensors.
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
		  ValueError: If `label_key` is not one of the `features` keys.
	**/
	static public function make_batched_features_dataset(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?reader:Dynamic, ?label_key:Dynamic, ?reader_args:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?sloppy_ordering:Dynamic, ?drop_final_batch:Dynamic):Dynamic;
	/**
		Reads CSV files into a dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.make_csv_dataset(...)`.
		
		Reads CSV files into a dataset, where each element is a (features, labels)
		tuple that corresponds to a batch of CSV rows. The features dictionary
		maps feature column names to `Tensor`s containing the corresponding
		feature data, and labels is a `Tensor` containing the batch's label data.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing CSV
		    records. See `tf.gfile.Glob` for pattern rules.
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
		    If >1, the results will be interleaved.
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
		
		Returns:
		  A dataset, where each element is a (features, labels) tuple that corresponds
		  to a batch of `batch_size` CSV rows. The features dictionary maps feature
		  column names to `Tensor`s containing the corresponding column data, and
		  labels is a `Tensor` containing the column data for the label column
		  specified by `label_name`.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function make_csv_dataset(file_pattern:Dynamic, batch_size:Dynamic, ?column_names:Dynamic, ?column_defaults:Dynamic, ?label_name:Dynamic, ?select_columns:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?header:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?num_parallel_reads:Dynamic, ?sloppy:Dynamic, ?num_rows_for_inference:Dynamic, ?compression_type:Dynamic):Dynamic;
	/**
		Returns a SaveableObject for saving/restore iterator state using Saver. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.make_saveable_from_iterator(...)`.
		
		Args:
		  iterator: Iterator.
		
		For example:
		
		```python
		with tf.Graph().as_default():
		  ds = tf.data.Dataset.range(10)
		  iterator = ds.make_initializable_iterator()
		  # Build the iterator SaveableObject.
		  saveable_obj = tf.contrib.data.make_saveable_from_iterator(iterator)
		  # Add the SaveableObject to the SAVEABLE_OBJECTS collection so
		  # it can be automatically saved using Saver.
		  tf.add_to_collection(tf.GraphKeys.SAVEABLE_OBJECTS, saveable_obj)
		  saver = tf.train.Saver()
		
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
	static public function make_saveable_from_iterator(iterator:Dynamic):Dynamic;
	/**
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.map_and_batch(...)`.
		
		Maps `map_func` across `batch_size` consecutive elements of this dataset
		and then combines them into a batch. Functionally, it is equivalent to `map`
		followed by `batch`. However, by fusing the two transformations together, the
		implementation can be more efficient. Surfacing this transformation in the API
		is temporary. Once automatic input pipeline optimization is implemented,
		the fusing of `map` and `batch` will happen automatically and this API will be
		deprecated.
		
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
		      specified, `batch_size * num_parallel_batches` elements will be
		      processed in parallel.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		A batching and padding transformation that omits the final small batch. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.padded_batch(..., drop_remainder=True)`.
		
		Like `tf.data.Dataset.padded_batch`, this transformation combines
		consecutive elements of this dataset into batches. However, if the batch
		size does not evenly divide the input dataset size, this transformation will
		drop the final smaller element.
		
		See `tf.contrib.data.batch_and_drop_remainder` for more details.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  padded_shapes: A nested structure of `tf.TensorShape` or
		    `tf.int64` vector tensor-like objects. See
		    `tf.data.Dataset.padded_batch` for details.
		  padding_values: (Optional.) A nested structure of scalar-shaped
		    `tf.Tensor`. See `tf.data.Dataset.padded_batch` for details.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function padded_batch_and_drop_remainder(batch_size:Dynamic, padded_shapes:Dynamic, ?padding_values:Dynamic):Dynamic;
	/**
		A parallel version of the `Dataset.interleave()` transformation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.parallel_interleave(...)`.
		
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
		    tf.contrib.data.parallel_interleave(
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
		  sloppy: If false, elements are produced in deterministic order. Otherwise,
		    the implementation is allowed, for the sake of expediency, to produce
		    elements in a non-deterministic order.
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
		A transformation that parses `Example` protos into a `dict` of tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.parse_example_dataset(...)`.
		
		Parses a number of serialized `Example` protos given in `serialized`. We refer
		to `serialized` as a batch with `batch_size` many entries of individual
		`Example` protos.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		and `SparseTensor` objects. `features` is a dict from keys to `VarLenFeature`,
		`SparseFeature`, and `FixedLenFeature` objects. Each `VarLenFeature`
		and `SparseFeature` is mapped to a `SparseTensor`, and each
		`FixedLenFeature` is mapped to a `Tensor`. See `tf.parse_example` for more
		details about feature dictionaries.
		
		Args:
		 features: A `dict` mapping feature keys to `FixedLenFeature`,
		   `VarLenFeature`, and `SparseFeature` values.
		 num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number of parsing processes to call in parallel.
		
		Returns:
		  A dataset transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if features argument is None.
	**/
	static public function parse_example_dataset(features:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		A transformation that prefetches dataset values to the given `device`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.prefetch_to_device(...)`.
		
		NOTE: Although the transformation creates a `tf.data.Dataset`, the
		transformation must be the final `Dataset` in the input pipeline.
		
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
		Reads batches of Examples. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.make_batched_features_dataset(...)`
		
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
		    `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int representing the number of records to combine
		    in a single batch.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. See `tf.parse_example`.
		  reader: A function or class that can be
		    called with a `filenames` tensor and (optional) `reader_args` and returns
		    a `Dataset` of `Example` tensors. Defaults to `tf.data.TFRecordDataset`.
		  reader_args: Additional arguments to pass to the reader class.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever.
		  capacity: Buffer size of the ShuffleDataset. A large capacity ensures better
		    shuffling but would increase memory usage and startup time.
		Returns:
		  A dict from keys in features to `Tensor` or `SparseTensor` objects.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?reader:Dynamic, ?reader_args:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?capacity:Dynamic):Dynamic;
	/**
		Returns the result of reducing the `dataset` using `reducer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.reduce(...)`.
		
		Args:
		  dataset: A `tf.data.Dataset` object.
		  reducer: A `tf.contrib.data.Reducer` object representing the reduce logic.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the result
		  of reducing `dataset` using `reducer`.
		
		Raises:
		  TypeError: if `dataset` is not a `tf.data.Dataset` object.
	**/
	static public function reduce_dataset(dataset:Dynamic, reducer:Dynamic):Dynamic;
	/**
		A transformation that resamples a dataset to achieve a target distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.rejection_resample(...)`.
		
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
		Use `tf.data.experimental.sample_from_datasets(...)`.
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  weights: (Optional.) A list of `len(datasets)` floating-point values where
		    `weights[i]` represents the probability with which an element should be
		    sampled from `datasets[i]`, or a `tf.data.Dataset` object where each
		    element is such a list. Defaults to a uniform distribution across
		    `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError: If the `weights` argument is specified and does not match the
		    length of the `datasets` element.
	**/
	static public function sample_from_datasets(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A transformation that scans a function across an input dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.scan(...)`.
		
		This transformation is a stateful relative of `tf.data.Dataset.map`.
		In addition to mapping `scan_func` across the elements of the input dataset,
		`scan()` accumulates one or more state tensors, whose initial values are
		`initial_state`.
		
		Args:
		  initial_state: A nested structure of tensors, representing the initial state
		    of the accumulator.
		  scan_func: A function that maps `(old_state, input_element)` to
		    `(new_state, output_element). It must take two arguments and return a
		    pair of nested structures of tensors. The `new_state` must match the
		    structure of `initial_state`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function scan(initial_state:Dynamic, scan_func:Dynamic):Dynamic;
	/**
		Shuffles and repeats a Dataset returning a new permutation for each epoch. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.shuffle_and_repeat(...)`.
		
		`dataset.apply(tf.contrib.data.shuffle_and_repeat(buffer_size, count))`
		
		is equivalent to
		
		`dataset.shuffle(buffer_size, reshuffle_each_iteration=True).repeat(count)`
		
		The difference is that the latter dataset is not serializable. So,
		if you need to checkpoint an input pipeline with reshuffling you must use
		this implementation.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    maximum number elements that will be buffered when prefetching.
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of times the dataset should be repeated. The default behavior
		    (if `count` is `None` or `-1`) is for the dataset be repeated
		    indefinitely.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function shuffle_and_repeat(buffer_size:Dynamic, ?count:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A sliding window over a dataset. (deprecated) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(stride)`. They will be removed in a future version.
		Instructions for updating:
		stride is deprecated, use window_shift instead
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.window(size=window_size, shift=window_shift, stride=window_stride).flat_map(lambda x: x.batch(window.size))` instead.
		
		This transformation passes a sliding window over this dataset. The window size
		is `window_size`, the stride of the input elements is `window_stride`, and the
		shift between consecutive windows is `window_shift`. If the remaining elements
		cannot fill up the sliding window, this transformation will drop the final
		smaller element. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { [1], [2], [3], [4], [5], [6] }
		
		a.apply(sliding_window_batch(window_size=3)) ==
		{ [[1], [2], [3]], [[2], [3], [4]], [[3], [4], [5]], [[4], [5], [6]] }
		
		a.apply(sliding_window_batch(window_size=3, window_shift=2)) ==
		{ [[1], [2], [3]], [[3], [4], [5]] }
		
		a.apply(sliding_window_batch(window_size=3, window_stride=2)) ==
		{ [[1], [3], [5]], [[2], [4], [6]] }
		```
		
		Args:
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements in the sliding window. It must be positive.
		  stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    forward shift of the sliding window in each iteration. The default is `1`.
		    It must be positive. Deprecated alias for `window_shift`.
		  window_shift: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    forward shift of the sliding window in each iteration. The default is `1`.
		    It must be positive.
		  window_stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    stride of the input elements in the sliding window. The default is `1`.
		    It must be positive.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if invalid arguments are provided.
	**/
	static public function sliding_window_batch(window_size:Dynamic, ?stride:Dynamic, ?window_shift:Dynamic, ?window_stride:Dynamic):Dynamic;
	/**
		A non-deterministic version of the `Dataset.interleave()` transformation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.contrib.data.parallel_interleave(..., sloppy=True)`.
		
		`sloppy_interleave()` maps `map_func` across `dataset`, and
		non-deterministically interleaves the results.
		
		The resulting dataset is almost identical to `interleave`. The key
		difference is that if retrieving a value from a given output iterator would
		cause `get_next` to block, that iterator will be skipped, and consumed
		when next available. If consuming from all iterators would cause the
		`get_next` call to block, the `get_next` call blocks until the first value is
		available.
		
		If the underlying datasets produce elements as fast as they are consumed, the
		`sloppy_interleave` transformation behaves identically to `interleave`.
		However, if an underlying dataset would block the consumer,
		`sloppy_interleave` can violate the round-robin order (that `interleave`
		strictly obeys), producing an element from a different underlying
		dataset instead.
		
		Example usage:
		
		```python
		# Preprocess 4 files concurrently.
		filenames = tf.data.Dataset.list_files("/path/to/data/train*.tfrecords")
		dataset = filenames.apply(
		    tf.contrib.data.sloppy_interleave(
		        lambda filename: tf.data.TFRecordDataset(filename),
		        cycle_length=4))
		```
		
		WARNING: The order of elements in the resulting dataset is not
		deterministic. Use `Dataset.interleave()` if you want the elements to have a
		deterministic order.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    `Dataset`.
		  cycle_length: The number of input `Dataset`s to interleave from in parallel.
		  block_length: The number of consecutive elements to pull from an input
		    `Dataset` before advancing to the next input `Dataset`. Note:
		    `sloppy_interleave` will skip the remainder of elements in the
		    `block_length` in order to avoid blocking.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function sloppy_interleave(map_func:Dynamic, cycle_length:Dynamic, ?block_length:Dynamic):Dynamic;
	/**
		Splits elements of a dataset into multiple elements on the batch dimension. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.unbatch()`.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		```python
		# NOTE: The following example uses `{ ... }` to represent the contents
		# of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.contrib.data.unbatch()) == {
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
		Use `tf.data.experimental.unique()`.
		
		Use this transformation to produce a dataset that contains one instance of
		each unique element in the input. For example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1, 37, 2, 37, 2, 1])
		
		# Using `unique()` will drop the duplicate elements.
		dataset = dataset.apply(tf.contrib.data.unique())  # ==> { 1, 37, 2 }
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unique():Dynamic;
}