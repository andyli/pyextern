/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.readers;
@:pythonImport("tensorflow.contrib.data.python.ops.readers") extern class Readers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a `Dataset` of feature dictionaries from `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
	static public var print_function : Dynamic;
	/**
		Reads batches of Examples. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
}