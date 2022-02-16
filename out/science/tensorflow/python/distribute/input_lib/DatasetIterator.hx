/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "DatasetIterator") extern class DatasetIterator {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Make an iterator for the dataset on given devices.
		
		If `num_replicas_in_sync` is not None, we split each batch of the dataset
		into `num_replicas_in_sync` smaller batches, to be distributed among that
		worker's replicas, so that the batch size for a global step (across all
		workers and replicas) is as expected.
		
		Args:
		  dataset: `tf.data.Dataset` that will be used as the input source.
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  num_replicas_in_sync: Optional integer. If this is not None, the value is
		    used to decide how to rebatch datasets into smaller batches so that the
		    total batch size for each step (across all workers and replicas) adds up
		    to `dataset`'s batch size.
		  input_context: `InputContext` for sharding. Only pass this in for between
		    graph multi-worker cases where there is only one `input_worker`. In
		    these cases, we will shard based on the `input_pipeline_id` and
		    `num_input_pipelines` in the `InputContext`.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, input_workers:Dynamic, strategy:Dynamic, ?num_replicas_in_sync:Dynamic, ?input_context:Dynamic):Dynamic;
	/**
		Make an iterator for the dataset on given devices.
		
		If `num_replicas_in_sync` is not None, we split each batch of the dataset
		into `num_replicas_in_sync` smaller batches, to be distributed among that
		worker's replicas, so that the batch size for a global step (across all
		workers and replicas) is as expected.
		
		Args:
		  dataset: `tf.data.Dataset` that will be used as the input source.
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  num_replicas_in_sync: Optional integer. If this is not None, the value is
		    used to decide how to rebatch datasets into smaller batches so that the
		    total batch size for each step (across all workers and replicas) adds up
		    to `dataset`'s batch size.
		  input_context: `InputContext` for sharding. Only pass this in for between
		    graph multi-worker cases where there is only one `input_worker`. In
		    these cases, we will shard based on the `input_pipeline_id` and
		    `num_input_pipelines` in the `InputContext`.
	**/
	public function new(dataset:Dynamic, input_workers:Dynamic, strategy:Dynamic, ?num_replicas_in_sync:Dynamic, ?input_context:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
		Return the next item from the iterator. When exhausted, raise StopIteration
	**/
	public function __next__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	public function _get_next_no_partial_batch_handling(?name:Dynamic):Dynamic;
	public var _initializer : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		The type specification of an element of this iterator.
	**/
	public var element_spec : Dynamic;
	public function get_iterator(worker:Dynamic):Dynamic;
	/**
		Returns the next input from the iterator for all replicas.
	**/
	public function get_next(?name:Dynamic):Dynamic;
	/**
		Returns a `tf.experimental.Optional` that contains the next value for all replicas.
		
		If the `tf.distribute.DistributedIterator` has reached the end of the
		sequence, the returned `tf.experimental.Optional` will have no value.
		
		Example usage:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> global_batch_size = 2
		>>> steps_per_loop = 2
		>>> dataset = tf.data.Dataset.range(10).batch(global_batch_size)
		>>> distributed_iterator = iter(
		...     strategy.experimental_distribute_dataset(dataset))
		>>> def step_fn(x):
		...   # train the model with inputs
		...   return x
		>>> @tf.function
		... def train_fn(distributed_iterator):
		...   for _ in tf.range(steps_per_loop):
		...     optional_data = distributed_iterator.get_next_as_optional()
		...     if not optional_data.has_value():
		...       break
		...     per_replica_results = strategy.run(step_fn, args=(optional_data.get_value(),))
		...     tf.print(strategy.experimental_local_results(per_replica_results))
		>>> train_fn(distributed_iterator)
		... # ([0 1], [2 3])
		... # ([4], [])
		
		Returns:
		  An `tf.experimental.Optional` object representing the next value from the
		  `tf.distribute.DistributedIterator` (if it has one) or no value.
	**/
	public function get_next_as_optional():Dynamic;
	/**
		Initialize underlying iterators. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use the iterator's `initializer` property instead.
		
		Returns:
		  A list of any initializer ops that should be run.
	**/
	public function initialize():Dynamic;
	/**
		Returns a list of ops that initialize the iterator.
	**/
	public var initializer : Dynamic;
	public function next():Dynamic;
	public var output_classes : Dynamic;
	public var output_shapes : Dynamic;
	public var output_types : Dynamic;
}