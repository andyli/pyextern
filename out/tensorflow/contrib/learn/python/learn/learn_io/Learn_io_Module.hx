/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io") extern class Learn_io_Module {
	static public var HAS_DASK : Dynamic;
	static public var HAS_PANDAS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Extract data from dask.Series or dask.DataFrame for predictors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please feed input to tf.data to support dask.
		
		Given a distributed dask.DataFrame or dask.Series containing columns or names
		for one or more predictors, this operation returns a single dask.DataFrame or
		dask.Series that can be iterated over.
		
		Args:
		  data: A distributed dask.DataFrame or dask.Series.
		
		Returns:
		  A dask.DataFrame or dask.Series that can be iterated over.
		  If the supplied argument is neither a dask.DataFrame nor a dask.Series this
		  operation returns it without modification.
	**/
	static public function extract_dask_data(data:Dynamic):Dynamic;
	/**
		Extract data from dask.Series or dask.DataFrame for labels. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please feed input to tf.data to support dask.
		
		Given a distributed dask.DataFrame or dask.Series containing exactly one
		column or name, this operation returns a single dask.DataFrame or dask.Series
		that can be iterated over.
		
		Args:
		  labels: A distributed dask.DataFrame or dask.Series with exactly one
		          column or name.
		
		Returns:
		  A dask.DataFrame or dask.Series that can be iterated over.
		  If the supplied argument is neither a dask.DataFrame nor a dask.Series this
		  operation returns it without modification.
		
		Raises:
		  ValueError: If the supplied dask.DataFrame contains more than one
		              column or the supplied dask.Series contains more than
		              one name.
	**/
	static public function extract_dask_labels(labels:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for predictors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
		Given a DataFrame, will extract the values and cast them to float. The
		DataFrame is expected to contain values of type int, float or bool.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values as floats.
		
		Raises:
		  ValueError: if data contains types other than int, float or bool.
	**/
	static public function extract_pandas_data(data:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for labels. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
		Args:
		  labels: `pandas.DataFrame` or `pandas.Series` containing one column of
		    labels to be extracted.
		
		Returns:
		  A numpy `ndarray` of labels from the DataFrame.
		
		Raises:
		  ValueError: if more than one column is found or type is not int, float or
		    bool.
	**/
	static public function extract_pandas_labels(labels:Dynamic):Dynamic;
	/**
		Extracts numpy matrix from pandas DataFrame. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values.
	**/
	static public function extract_pandas_matrix(data:Dynamic):Dynamic;
	/**
		Returns input function that returns dicts of numpy arrays (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.data.
		
		   yielded from a generator.
		
		It is assumed that every dict of numpy arrays yielded from the dictionary
		represents a single sample. The generator should consume a single epoch of the
		data.
		
		This returns a function outputting `features` and `target` based on the dict
		of numpy arrays. The dict `features` has the same keys as an element yielded
		from x.
		
		Example:
		  ```python
		  def generator():
		    for index in range(10):
		      yield {'height': np.random.randint(32,36),
		            'age': np.random.randint(18, 80),
		            'label': np.ones(1)}
		
		  with tf.Session() as session:
		    input_fn = generator_io.generator_input_fn(
		        generator, target_key="label", batch_size=2, shuffle=False,
		        num_epochs=1)
		  ```
		
		Args:
		  x: Generator Function, returns a `Generator` that will yield the data
		    in `dict` of numpy arrays
		  target_key: String or Container of Strings, the key or Container of keys of
		    the numpy arrays in x dictionaries to use as target.
		  batch_size: Integer, size of batches to return.
		  num_epochs: Integer, number of epochs to iterate over data. If `None` will
		    run forever.
		  shuffle: Boolean, if True shuffles the queue. Avoid shuffle at prediction
		    time.
		  queue_capacity: Integer, size of queue to accumulate.
		  num_threads: Integer, number of threads used for reading and enqueueing.
		  pad_value: default value for dynamic padding of data samples, if provided.
		
		Returns:
		  Function, that returns a feature `dict` with `Tensors` and an optional
		   label `dict` with `Tensors`, or if target_key is `str` label is a `Tensor`
		
		Raises:
		  TypeError: `x` is not `FunctionType`.
		  TypeError: `x()` is not `GeneratorType`.
		  TypeError: `next(x())` is not `dict`.
		  TypeError: `target_key` is not `str` or `target_key` is not `Container`
		     of `str`.
		  KeyError:  `target_key` not a key or `target_key[index]` not in next(`x()`).
		  KeyError: `key` mismatch between dicts emitted from `x()`
	**/
	static public function generator_input_fn(x:Dynamic, ?target_key:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?pad_value:Dynamic):Dynamic;
	/**
		This input_fn diffs from the core version with default `shuffle`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.estimator.inputs.numpy_input_fn.
	**/
	static public function numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	/**
		This input_fn diffs from the core version with default `shuffle`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.estimator.inputs.pandas_input_fn
	**/
	static public function pandas_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?target_column:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Speeds up parsing by using queues to do it asynchronously. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		This function adds the tensors in `parsed_features` to a queue, which allows
		the parsing (or any other expensive op before this) to be asynchronous wrt the
		rest of the training graph. This greatly improves read latency and speeds up
		training since the data will already be parsed and ready when each step of
		training needs it.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  parsed_features: A dict of string key to `Tensor` or `SparseTensor` objects.
		  keys: `Tensor` of string keys.
		  feature_queue_capacity: Capacity of the parsed features queue.
		  num_enqueue_threads: Number of threads to enqueue the parsed example queue.
		    Using multiple threads to enqueue the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing. In order to have predictable and repeatable order of reading and
		    enqueueing, such as in prediction and evaluation mode,
		    `num_enqueue_threads` should be 1.
		  name: Name of resulting op.
		
		Returns:
		  Returns tuple of:
		  - `Tensor` corresponding to `keys` if provided, otherwise `None`.
		  -  A dict of string key to `Tensor` or `SparseTensor` objects corresponding
		     to `parsed_features`.
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function queue_parsed_features(parsed_features:Dynamic, ?keys:Dynamic, ?feature_queue_capacity:Dynamic, ?num_enqueue_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.local_variables_initializer()` and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples. In order to have
		    predictable and repeatable order of reading and enqueueing, such as in
		    prediction and evaluation mode, `num_threads` should be 1.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		  seed: An integer (optional). Seed used if randomize_input == True.
		
		Returns:
		  String `Tensor` of batched `Example` proto.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.local_variables_initializer() and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  feature_queue_capacity: Capacity of the parsed features queue. Set this
		    value to a small number, for example 5 if the parsed features are large.
		  reader_num_threads: The number of threads to read examples. In order to have
		    predictable and repeatable order of reading and enqueueing, such as in
		    prediction and evaluation mode, `reader_num_threads` should be 1.
		  num_enqueue_threads: Number of threads to enqueue the parsed example queue.
		    Using multiple threads to enqueue the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing. In order to have predictable and repeatable order of reading and
		    enqueueing, such as in prediction and evaluation mode,
		    `num_enqueue_threads` should be 1.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once. If `None`, defaults to `batch_size`.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?feature_queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?num_enqueue_threads:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic, ?read_batch_size:Dynamic):Dynamic;
	/**
		Reads TFRecord, queues, batches and parses `Example` proto. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		See more detailed description in `read_examples`.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.local_variables_initializer() and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples. In order to have
		    predictable and repeatable order of reading and enqueueing, such as in
		    prediction and evaluation mode, `reader_num_threads` should be 1.
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_record_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.local_variables_initializer()` and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples. In order to have
		    predictable and repeatable order of reading and enqueueing, such as in
		    prediction and evaluation mode, `num_threads` should be 1.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		  seed: An integer (optional). Seed used if randomize_input == True.
		
		Returns:
		  Returns tuple of:
		  - `Tensor` of string keys.
		  - String `Tensor` of batched `Example` proto.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a shared queue for file
		names, setup a worker queue that pulls from the shared queue, read `Example`
		protos using provided `reader`, use batch queue to create batches of examples
		of size `batch_size`. This provides at most once visit guarantees. Note that
		this only works if the parameter servers are not pre-empted or restarted or
		the session is not restored from a checkpoint since the state of a queue
		is not checkpointed and we will end up restarting from the entire list of
		files.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.local_variables_initializer()` and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		  seed: An integer (optional). Seed used if randomize_input == True.
		
		Returns:
		  Returns tuple of:
		  - `Tensor` of string keys.
		  - String `Tensor` of batched `Example` proto.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_examples_shared_queue(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.local_variables_initializer() and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples. In order to have
		    predictable and repeatable order of reading and enqueueing, such as in
		    prediction and evaluation mode, `reader_num_threads` should be 1.
		  feature_queue_capacity: Capacity of the parsed features queue.
		  num_enqueue_threads: Number of threads to enqueue the parsed example queue.
		    Using multiple threads to enqueue the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing. In order to have predictable and repeatable order of reading and
		    enqueueing, such as in prediction and evaluation mode,
		    `num_enqueue_threads` should be 1.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once. If `None`, defaults to `batch_size`.
		
		Returns:
		  Returns tuple of:
		  - `Tensor` of string keys.
		  - A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?feature_queue_capacity:Dynamic, ?num_enqueue_threads:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic, ?read_batch_size:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.data.
		
		Given file pattern (or list of files), will setup a shared queue for file
		names, setup a worker queue that gets filenames from the shared queue,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.local_variables_initializer() and run the op in a session.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  feature_queue_capacity: Capacity of the parsed features queue.
		  num_queue_runners: Number of threads to enqueue the parsed example queue.
		    Using multiple threads to enqueue the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing.
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		
		Returns:
		  Returns tuple of:
		  - `Tensor` of string keys.
		  - A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_features_shared_queue(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?feature_queue_capacity:Dynamic, ?num_queue_runners:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic):Dynamic;
}