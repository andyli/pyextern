/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.graph_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.graph_io") extern class Graph_io_Module {
	static public var KEY_FEATURE_NAME : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.initialize_all_variables()` as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		
		Returns:
		  String `Tensor` of batched `Example` proto. If `keep_keys` is True, then
		  returns tuple of string `Tensor`s, where first value is the key.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
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
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  parser_num_threads: The number of threads to parse examples.
		    records to read at once
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		  If `keep_keys` is `True`, returns tuple of string `Tensor` and above dict.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reads TFRecord, queues, batches and parses `Example` proto.
		
		See more detailed description in `read_examples`.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  parser_num_threads: The number of threads to parse examples.
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_record_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.initialize_all_variables()` as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		
		Returns:
		  String `Tensor` of batched `Example` proto. If `keep_keys` is True, then
		  returns tuple of string `Tensor`s, where first value is the key.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
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
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  feature_queue_capacity: Capacity of the parsed features queue.
		  num_queue_runners: Number of queue runners to start for the feature queue,
		    Adding multiple queue runners for the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing.
		  parser_num_threads: (Deprecated) The number of threads to parse examples.
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		  If `keep_keys` is `True`, returns tuple of string `Tensor` and above dict.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?feature_queue_capacity:Dynamic, ?num_queue_runners:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
}