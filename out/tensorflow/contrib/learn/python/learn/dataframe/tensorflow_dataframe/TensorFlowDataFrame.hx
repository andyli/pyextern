/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.tensorflow_dataframe;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.tensorflow_dataframe", "TensorFlowDataFrame") extern class TensorFlowDataFrame {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Indexing functionality for DataFrames.
		
		Args:
		  key: a string or an iterable of strings.
		
		Returns:
		  A Series or list of Series corresponding to the given keys.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		The number of columns in the DataFrame.
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Create a `DataFrame` from CSV files.
		
		If `has_header` is false, then `column_names` must be specified. If
		`has_header` is true and `column_names` are specified, then `column_names`
		overrides the names in the header.
		
		Args:
		  filepatterns: a list of file patterns that resolve to CSV files.
		  get_default_values: a function that produces a list of default values for
		    each column, given the column names.
		  has_header: whether or not the CSV files have headers.
		  column_names: a list of names for the columns in the CSV files.
		  num_threads: the number of readers that will work in parallel.
		  enqueue_size: block size for each read operation.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed lines.
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		
		Returns:
		  A `DataFrame` that has columns corresponding to `features` and is filled
		  with examples from `filepatterns`.
		
		Raises:
		  ValueError: no files match `filepatterns`.
		  ValueError: `features` contains the reserved name 'index'.
	**/
	static public function _from_csv_base(filepatterns:Dynamic, get_default_values:Dynamic, has_header:Dynamic, column_names:Dynamic, num_threads:Dynamic, enqueue_size:Dynamic, batch_size:Dynamic, queue_capacity:Dynamic, min_after_dequeue:Dynamic, shuffle:Dynamic, seed:Dynamic):Dynamic;
	/**
		Adds columns to DataFrame.
		
		Args:
		  **kwargs: assignments of the form key=value where key is a string
		  and value is an `inflow.Series`, a `pandas.Series` or a numpy array.
		
		Raises:
		  TypeError: keys are not strings.
		  TypeError: values are not `inflow.Series`, `pandas.Series` or
		  `numpy.ndarray`.
		
		TODO(jamieas): pandas assign method returns a new DataFrame. Consider
		switching to this behavior, changing the name or adding in_place as an
		argument.
	**/
	public function assign(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resize the batches in the `DataFrame` to the given `batch_size`.
		
		Args:
		  batch_size: desired batch size.
		  shuffle: whether records should be shuffled. Defaults to true.
		  num_threads: the number of enqueueing threads.
		  queue_capacity: capacity of the queue that will hold new batches.
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		
		Returns:
		  A `DataFrame` with `batch_size` rows.
	**/
	public function batch(batch_size:Dynamic, ?shuffle:Dynamic, ?num_threads:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic):Dynamic;
	public function build(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set of the column names.
	**/
	public function columns():Dynamic;
	/**
		Create a `DataFrame` from CSV files.
		
		If `has_header` is false, then `column_names` must be specified. If
		`has_header` is true and `column_names` are specified, then `column_names`
		overrides the names in the header.
		
		Args:
		  filepatterns: a list of file patterns that resolve to CSV files.
		  default_values: a list of default values for each column.
		  has_header: whether or not the CSV files have headers.
		  column_names: a list of names for the columns in the CSV files.
		  num_threads: the number of readers that will work in parallel.
		  enqueue_size: block size for each read operation.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed lines.
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		
		Returns:
		  A `DataFrame` that has columns corresponding to `features` and is filled
		  with examples from `filepatterns`.
		
		Raises:
		  ValueError: no files match `filepatterns`.
		  ValueError: `features` contains the reserved name 'index'.
	**/
	static public function from_csv(filepatterns:Dynamic, default_values:Dynamic, ?has_header:Dynamic, ?column_names:Dynamic, ?num_threads:Dynamic, ?enqueue_size:Dynamic, ?batch_size:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Create a `DataFrame` from CSV files, given a feature_spec.
		
		If `has_header` is false, then `column_names` must be specified. If
		`has_header` is true and `column_names` are specified, then `column_names`
		overrides the names in the header.
		
		Args:
		  filepatterns: a list of file patterns that resolve to CSV files.
		  feature_spec: a dict mapping column names to `FixedLenFeature` or
		      `VarLenFeature`.
		  has_header: whether or not the CSV files have headers.
		  column_names: a list of names for the columns in the CSV files.
		  num_threads: the number of readers that will work in parallel.
		  enqueue_size: block size for each read operation.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed lines.
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		
		Returns:
		  A `DataFrame` that has columns corresponding to `features` and is filled
		  with examples from `filepatterns`.
		
		Raises:
		  ValueError: no files match `filepatterns`.
		  ValueError: `features` contains the reserved name 'index'.
	**/
	static public function from_csv_with_feature_spec(filepatterns:Dynamic, feature_spec:Dynamic, ?has_header:Dynamic, ?column_names:Dynamic, ?num_threads:Dynamic, ?enqueue_size:Dynamic, ?batch_size:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Create a `DataFrame` from `tensorflow.Example`s.
		
		Args:
		  filepatterns: a list of file patterns containing `tensorflow.Example`s.
		  features: a dict mapping feature names to `VarLenFeature` or
		    `FixedLenFeature`.
		  reader_cls: a subclass of `tensorflow.ReaderBase` that will be used to
		    read the `Example`s.
		  num_threads: the number of readers that will work in parallel.
		  enqueue_size: block size for each read operation.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed `Example`s
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		
		Returns:
		  A `DataFrame` that has columns corresponding to `features` and is filled
		  with `Example`s from `filepatterns`.
		
		Raises:
		  ValueError: no files match `filepatterns`.
		  ValueError: `features` contains the reserved name 'index'.
	**/
	static public function from_examples(filepatterns:Dynamic, features:Dynamic, ?reader_cls:Dynamic, ?num_threads:Dynamic, ?enqueue_size:Dynamic, ?batch_size:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Creates a `tf.learn.DataFrame` from a `numpy.ndarray`.
		
		The returned `DataFrame` contains two columns: 'index' and 'value'. The
		'value' column contains a row from the array. The 'index' column contains
		the corresponding row number.
		
		Args:
		  numpy_array: `numpy.ndarray` that serves as a data source.
		  num_threads: the number of threads to use for enqueueing.
		  enqueue_size: the number of rows to enqueue per step.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed `Example`s
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		  data_name: a scope name identifying the data.
		
		Returns:
		  A `tf.learn.DataFrame` that contains batches drawn from the given
		  array.
	**/
	static public function from_numpy(numpy_array:Dynamic, ?num_threads:Dynamic, ?enqueue_size:Dynamic, ?batch_size:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?data_name:Dynamic):Dynamic;
	/**
		Create a `tf.learn.DataFrame` from a `pandas.DataFrame`.
		
		Args:
		  pandas_dataframe: `pandas.DataFrame` that serves as a data source.
		  num_threads: the number of threads to use for enqueueing.
		  enqueue_size: the number of rows to enqueue per step.
		  batch_size: desired batch size.
		  queue_capacity: capacity of the queue that will store parsed `Example`s
		  min_after_dequeue: minimum number of elements that can be left by a
		    dequeue operation. Only used if `shuffle` is true.
		  shuffle: whether records should be shuffled. Defaults to true.
		  seed: passed to random shuffle operations. Only used if `shuffle` is true.
		  data_name: a scope name identifying the data.
		
		Returns:
		  A `tf.learn.DataFrame` that contains batches drawn from the given
		  `pandas_dataframe`.
	**/
	static public function from_pandas(pandas_dataframe:Dynamic, ?num_threads:Dynamic, ?enqueue_size:Dynamic, ?batch_size:Dynamic, ?queue_capacity:Dynamic, ?min_after_dequeue:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?data_name:Dynamic):Dynamic;
	/**
		Builds and runs the columns of the `DataFrame` and yields batches.
		
		This is a generator that yields a dictionary mapping column names to
		evaluated columns.
		
		Args:
		  num_batches: the maximum number of batches to produce. If none specified,
		    the returned value will iterate through infinite batches.
		  graph: the `Graph` in which the `DataFrame` should be built.
		  session: the `Session` in which to run the columns of the `DataFrame`.
		  start_queues: if true, queues will be started before running and halted
		    after producting `n` batches.
		  initialize_variables: if true, variables will be initialized.
		  **kwargs: Additional keyword arguments e.g. `num_epochs`.
		
		Yields:
		  A dictionary, mapping column names to the values resulting from running
		  each column for a single batch.
	**/
	public function run(?num_batches:Dynamic, ?graph:Dynamic, ?session:Dynamic, ?start_queues:Dynamic, ?initialize_variables:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a new 'Graph` and `Session` and runs a single batch.
		
		Returns:
		  A dictionary mapping column names to numpy arrays that contain a single
		  batch of the `DataFrame`.
	**/
	public function run_once():Dynamic;
	/**
		Returns a new DataFrame with a subset of columns.
		
		Args:
		  keys: A list of strings. Each should be the name of a column in the
		    DataFrame.
		Returns:
		  A new DataFrame containing only the specified columns.
	**/
	public function select_columns(keys:Dynamic):Dynamic;
	/**
		Returns a `DataFrame` with only the rows indicated by `boolean_series`.
		
		Note that batches may no longer have consistent size after calling
		`select_rows`, so the new `DataFrame` may need to be rebatched.
		For example:
		'''
		filtered_df = df.select_rows(df["country"] == "jp").batch(64)
		'''
		
		Args:
		  boolean_series: a `Series` that evaluates to a boolean `Tensor`.
		
		Returns:
		  A new `DataFrame` with the same columns as `self`, but selecting only the
		  rows where `boolean_series` evaluated to `True`.
	**/
	public function select_rows(boolean_series:Dynamic):Dynamic;
	/**
		Deterministically split a `DataFrame` into two `DataFrame`s.
		
		Note this split is only as deterministic as the underlying hash function;
		see `tf.string_to_hash_bucket_fast`.  The hash function is deterministic
		for a given binary, but may change occasionally.  The only way to achieve
		an absolute guarantee that the split `DataFrame`s do not change across runs
		is to materialize them.
		
		Note too that the allocation of a row to one partition or the
		other is evaluated independently for each row, so the exact number of rows
		in each partition is binomially distributed.
		
		Args:
		  index_series: a `Series` of unique strings, whose hash will determine the
		    partitioning; or the name in this `DataFrame` of such a `Series`.
		    (This `Series` must contain strings because TensorFlow provides hash
		    ops only for strings, and there are no number-to-string converter ops.)
		  proportion: The proportion of the rows to select for the 'left'
		    partition; the remaining (1 - proportion) rows form the 'right'
		    partition.
		  batch_size: the batch size to use when rebatching the left and right
		    `DataFrame`s.  If None (default), the `DataFrame`s are not rebatched;
		    thus their batches will have variable sizes, according to which rows
		    are selected from each batch of the original `DataFrame`.
		
		Returns:
		  Two `DataFrame`s containing the partitioned rows.
	**/
	public function split(index_series:Dynamic, proportion:Dynamic, ?batch_size:Dynamic):Dynamic;
}