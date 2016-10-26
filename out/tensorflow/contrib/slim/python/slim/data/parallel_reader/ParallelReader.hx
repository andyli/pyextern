/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.parallel_reader;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.parallel_reader", "ParallelReader") extern class ParallelReader {
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		ParallelReader creates num_readers instances of the reader_class.
		
		Each instance is created by calling the `reader_class` function passing
		the arguments specified in `reader_kwargs` as in:
		  reader_class(**read_kwargs)
		
		When you read from a ParallelReader, with its `read()` method,
		you just dequeue examples from the `common_queue`.
		
		The readers will read different files in parallel, asynchronously enqueueing
		their output into `common_queue`. The `common_queue.dtypes` must be
		[tf.string, tf.string]
		
		Because each reader can read from a different file, the examples in the
		`common_queue` could be from different files. Due to the asynchronous
		reading there is no guarantee that all the readers will read the same
		number of examples.
		
		If the `common_queue` is a shuffling queue, then the examples are shuffled.
		
		Usage:
		  common_queue = tf.RandomShuffleQueue(
		      capacity=256,
		      min_after_dequeue=128,
		      dtypes=[tf.string, tf.string])
		  p_reader = ParallelReader(tf.TFRecordReader, common_queue)
		
		  common_queue = tf.FIFOQueue(
		      capacity=256,
		      dtypes=[tf.string, tf.string])
		  p_reader = ParallelReader(readers, common_queue, num_readers=2)
		
		
		Args:
		  reader_class: one of the io_ops.ReaderBase subclasses ex: TFRecordReader
		  common_queue: a Queue to hold (key, value pairs) with `dtypes` equal to
		    [tf.string, tf.string]. Must be one of the data_flow_ops.Queues
		    instances, ex. `tf.FIFOQueue()`, `tf.RandomShuffleQueue()`, ...
		  num_readers: a integer, number of instances of reader_class to create.
		  reader_kwargs: an optional dict of kwargs to create the readers.
		
		Raises:
		  TypeError: if `common_queue.dtypes` is not [tf.string, tf.string].
	**/
	@:native("__init__")
	public function ___init__(reader_class:Dynamic, common_queue:Dynamic, ?num_readers:Dynamic, ?reader_kwargs:Dynamic):Dynamic;
	/**
		ParallelReader creates num_readers instances of the reader_class.
		
		Each instance is created by calling the `reader_class` function passing
		the arguments specified in `reader_kwargs` as in:
		  reader_class(**read_kwargs)
		
		When you read from a ParallelReader, with its `read()` method,
		you just dequeue examples from the `common_queue`.
		
		The readers will read different files in parallel, asynchronously enqueueing
		their output into `common_queue`. The `common_queue.dtypes` must be
		[tf.string, tf.string]
		
		Because each reader can read from a different file, the examples in the
		`common_queue` could be from different files. Due to the asynchronous
		reading there is no guarantee that all the readers will read the same
		number of examples.
		
		If the `common_queue` is a shuffling queue, then the examples are shuffled.
		
		Usage:
		  common_queue = tf.RandomShuffleQueue(
		      capacity=256,
		      min_after_dequeue=128,
		      dtypes=[tf.string, tf.string])
		  p_reader = ParallelReader(tf.TFRecordReader, common_queue)
		
		  common_queue = tf.FIFOQueue(
		      capacity=256,
		      dtypes=[tf.string, tf.string])
		  p_reader = ParallelReader(readers, common_queue, num_readers=2)
		
		
		Args:
		  reader_class: one of the io_ops.ReaderBase subclasses ex: TFRecordReader
		  common_queue: a Queue to hold (key, value pairs) with `dtypes` equal to
		    [tf.string, tf.string]. Must be one of the data_flow_ops.Queues
		    instances, ex. `tf.FIFOQueue()`, `tf.RandomShuffleQueue()`, ...
		  num_readers: a integer, number of instances of reader_class to create.
		  reader_kwargs: an optional dict of kwargs to create the readers.
		
		Raises:
		  TypeError: if `common_queue.dtypes` is not [tf.string, tf.string].
	**/
	public function new(reader_class:Dynamic, common_queue:Dynamic, ?num_readers:Dynamic, ?reader_kwargs:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	public var common_queue : Dynamic;
	public var num_readers : Dynamic;
	/**
		Returns the number of records this reader has produced.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  An int64 Tensor.
	**/
	public function num_records_produced(?name:Dynamic):Dynamic;
	/**
		Returns the number of work units this reader has finished processing.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  An int64 Tensor.
	**/
	public function num_work_units_completed(?name:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by the reader.
		
		The multiple reader instances are all configured to `read()` from the
		filenames listed in `queue` and enqueue their output into the `common_queue`
		passed to the constructor, and this method returns the next record dequeued
		from that `common_queue`.
		
		
		Readers dequeue a work unit from `queue` if necessary (e.g. when a
		reader needs to start reading from a new file since it has finished with
		the previous file).
		
		A queue runner for enqueing in the `common_queue` is automatically added to
		the TF QueueRunners collection.
		
		Args:
		  queue: A Queue or a mutable string Tensor representing a handle
		    to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  The next record (i.e. (key, value pair)) from the common_queue.
	**/
	public function read(queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns up to num_records (key, value pairs) produced by a reader.
		
		Will dequeue a work unit from queue if necessary (e.g., when the
		Reader needs to start reading from a new file since it has
		finished with the previous file).
		It may return less than num_records even before the last batch.
		
		Args:
		  queue: A Queue or a mutable string Tensor representing a handle
		    to a Queue, with string work items.
		  num_records: Number of records to read.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of Tensors (keys, values).
		  keys: A 1-D string Tensor.
		  values: A 1-D string Tensor.
	**/
	public function read_up_to(queue:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op that implements the reader.
	**/
	public var reader_ref : Dynamic;
	/**
		Restore a reader to its initial clean state.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	public function reset(?name:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  state: A string Tensor.
		    Result of a SerializeState of a Reader with matching type.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	public function restore_state(state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A string Tensor.
	**/
	public function serialize_state(?name:Dynamic):Dynamic;
	/**
		Whether the Reader implementation can serialize its state.
	**/
	public var supports_serialize : Dynamic;
}