/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.readers;
@:pythonImport("tensorflow.python.data.experimental.ops.readers") extern class Readers_Module {
	static public var _ACCEPTABLE_CSV_TYPES : Dynamic;
	static public var _DEFAULT_READER_BUFFER_SIZE_BYTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parse list of file names from pattern, optionally shuffled.
		
		Args:
		  file_pattern: File glob pattern, or list of glob patterns.
		  shuffle: Whether to shuffle the order of file names.
		
		Returns:
		  List of file names matching `file_pattern`.
		
		Raises:
		  ValueError: If `file_pattern` is empty, or pattern matches no files.
	**/
	static public function _get_file_names(file_pattern:Dynamic, shuffle:Dynamic):Dynamic;
	/**
		Transforms select_columns argument into sorted column indices.
	**/
	static public function _get_sorted_col_indices(select_columns:Dynamic, column_names:Dynamic):Dynamic;
	/**
		Infers column types from the first N valid CSV records of files.
	**/
	static public function _infer_column_defaults(filenames:Dynamic, num_cols:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, header:Dynamic, num_rows_for_inference:Dynamic, select_columns:Dynamic, file_io_fn:Dynamic):Dynamic;
	/**
		Infers column names from first rows of files.
	**/
	static public function _infer_column_names(filenames:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, file_io_fn:Dynamic):Dynamic;
	/**
		Given a string, infers its tensor type.
		
		Infers the type of a value by picking the least 'permissive' type possible,
		while still allowing the previous type inference for this column to be valid.
		
		Args:
		  str_val: String value to infer the type of.
		  na_value: Additional string to recognize as a NA/NaN CSV value.
		  prev_type: Type previously inferred based on values of this column that
		    we've seen up till now.
		Returns:
		  Inferred dtype.
	**/
	static public function _infer_type(str_val:Dynamic, na_value:Dynamic, prev_type:Dynamic):Dynamic;
	static public function _is_valid_float(str_val:Dynamic, float_dtype:Dynamic):Dynamic;
	static public function _is_valid_int32(str_val:Dynamic):Dynamic;
	static public function _is_valid_int64(str_val:Dynamic):Dynamic;
	/**
		Optionally shuffle and repeat dataset, as requested.
	**/
	static public function _maybe_shuffle_and_repeat(dataset:Dynamic, num_epochs:Dynamic, shuffle:Dynamic, shuffle_buffer_size:Dynamic, shuffle_seed:Dynamic):Dynamic;
	/**
		Generator that yields rows of CSV file(s) in order.
	**/
	static public function _next_csv_row(filenames:Dynamic, num_cols:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, header:Dynamic, file_io_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public function make_batched_features_dataset_v1(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?reader:Dynamic, ?label_key:Dynamic, ?reader_args:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?sloppy_ordering:Dynamic, ?drop_final_batch:Dynamic):Dynamic;
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
	static public function make_batched_features_dataset_v2(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?reader:Dynamic, ?label_key:Dynamic, ?reader_args:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?sloppy_ordering:Dynamic, ?drop_final_batch:Dynamic):Dynamic;
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
	static public function make_csv_dataset_v1(file_pattern:Dynamic, batch_size:Dynamic, ?column_names:Dynamic, ?column_defaults:Dynamic, ?label_name:Dynamic, ?select_columns:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?header:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?num_parallel_reads:Dynamic, ?sloppy:Dynamic, ?num_rows_for_inference:Dynamic, ?compression_type:Dynamic, ?ignore_errors:Dynamic):Dynamic;
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
	static public function make_csv_dataset_v2(file_pattern:Dynamic, batch_size:Dynamic, ?column_names:Dynamic, ?column_defaults:Dynamic, ?label_name:Dynamic, ?select_columns:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?header:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?num_parallel_reads:Dynamic, ?sloppy:Dynamic, ?num_rows_for_inference:Dynamic, ?compression_type:Dynamic, ?ignore_errors:Dynamic):Dynamic;
	/**
		Reads and optionally parses TFRecord files into a dataset.
		
		Provides common functionality such as batching, optional parsing, shuffling,
		and performant defaults.
		
		Args:
		  file_pattern: List of files or patterns of TFRecord file paths.
		    See `tf.io.gfile.glob` for pattern rules.
		  batch_size: An int representing the number of records to combine
		    in a single batch.
		  parser_fn: (Optional.) A function accepting string input to parse
		    and process the record contents. This function must map records
		    to components of a fixed shape, so they may be batched. By
		    default, uses the record contents unmodified.
		  num_epochs: (Optional.) An int specifying the number of times this
		    dataset is repeated.  If None (the default), cycles through the
		    dataset forever.
		  shuffle: (Optional.) A bool that indicates whether the input
		    should be shuffled. Defaults to `True`.
		  shuffle_buffer_size: (Optional.) Buffer size to use for
		    shuffling. A large buffer size ensures better shuffling, but
		    increases memory usage and startup time.
		  shuffle_seed: (Optional.) Randomization seed to use for shuffling.
		  prefetch_buffer_size: (Optional.) An int specifying the number of
		    feature batches to prefetch for performance improvement.
		    Defaults to auto-tune. Set to 0 to disable prefetching.
		  num_parallel_reads: (Optional.) Number of threads used to read
		    records from files. By default or if set to a value >1, the
		    results will be interleaved. Defaults to `24`.
		  num_parallel_parser_calls: (Optional.) Number of parallel
		    records to parse in parallel. Defaults to `batch_size`.
		  drop_final_batch: (Optional.) Whether the last batch should be
		    dropped in case its size is smaller than `batch_size`; the
		    default behavior is not to drop the smaller batch.
		
		Returns:
		  A dataset, where each element matches the output of `parser_fn`
		  except it will have an additional leading `batch-size` dimension,
		  or a `batch_size`-length 1-D tensor of strings if `parser_fn` is
		  unspecified.
	**/
	static public function make_tf_record_dataset(file_pattern:Dynamic, batch_size:Dynamic, ?parser_fn:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?shuffle_buffer_size:Dynamic, ?shuffle_seed:Dynamic, ?prefetch_buffer_size:Dynamic, ?num_parallel_reads:Dynamic, ?num_parallel_parser_calls:Dynamic, ?drop_final_batch:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}