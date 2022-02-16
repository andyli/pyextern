/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "DistributedDatasetV1") extern class DistributedDatasetV1 {
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
		Distribute the dataset on all workers.
		
		If `num_replicas_in_sync` is not None, we split each batch of the dataset
		into `num_replicas_in_sync` smaller batches, to be distributed among that
		worker's replicas, so that the batch size for a global step (across all
		workers and replicas) is as expected.
		
		Args:
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  dataset: `tf.data.Dataset` that will be used as the input source. Either
		    dataset or components field should be passed when constructing
		    DistributedDataset. Use this when contructing DistributedDataset from a
		    new `tf.data.Dataset`. Use components when constructing using
		    DistributedDatasetSpec.
		  num_replicas_in_sync: Optional integer. If this is not None, the value
		    is used to decide how to rebatch datasets into smaller batches so that
		    the total batch size for each step (across all workers and replicas)
		    adds up to `dataset`'s batch size.
		  input_context: `InputContext` for sharding. Only pass this in for between
		    graph multi-worker cases where there is only one `input_worker`. In
		    these cases, we will shard based on the `input_pipeline_id` and
		    `num_input_pipelines` in the `InputContext`.
		  components: datasets when DistributedDataset is constructed from
		    DistributedDatasetSpec. Either field dataset or components should be
		    passed.
		  element_spec: element spec for DistributedDataset when constructing from
		    DistributedDatasetSpec. This will be used to set the element_spec for
		    DistributedDataset and verified against element_spec from components.
		  enable_get_next_as_optional: this is required when components is passed
		    instead of dataset.
		  build: whether to build underlying datasets when this object is created.
		    This is only useful for `ParameterServerStrategy` now.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, input_workers:Dynamic, strategy:Dynamic, ?num_replicas_in_sync:Dynamic, ?input_context:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Distribute the dataset on all workers.
		
		If `num_replicas_in_sync` is not None, we split each batch of the dataset
		into `num_replicas_in_sync` smaller batches, to be distributed among that
		worker's replicas, so that the batch size for a global step (across all
		workers and replicas) is as expected.
		
		Args:
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  dataset: `tf.data.Dataset` that will be used as the input source. Either
		    dataset or components field should be passed when constructing
		    DistributedDataset. Use this when contructing DistributedDataset from a
		    new `tf.data.Dataset`. Use components when constructing using
		    DistributedDatasetSpec.
		  num_replicas_in_sync: Optional integer. If this is not None, the value
		    is used to decide how to rebatch datasets into smaller batches so that
		    the total batch size for each step (across all workers and replicas)
		    adds up to `dataset`'s batch size.
		  input_context: `InputContext` for sharding. Only pass this in for between
		    graph multi-worker cases where there is only one `input_worker`. In
		    these cases, we will shard based on the `input_pipeline_id` and
		    `num_input_pipelines` in the `InputContext`.
		  components: datasets when DistributedDataset is constructed from
		    DistributedDatasetSpec. Either field dataset or components should be
		    passed.
		  element_spec: element spec for DistributedDataset when constructing from
		    DistributedDatasetSpec. This will be used to set the element_spec for
		    DistributedDataset and verified against element_spec from components.
		  enable_get_next_as_optional: this is required when components is passed
		    instead of dataset.
		  build: whether to build underlying datasets when this object is created.
		    This is only useful for `ParameterServerStrategy` now.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
	**/
	public function new(dataset:Dynamic, input_workers:Dynamic, strategy:Dynamic, ?num_replicas_in_sync:Dynamic, ?input_context:Dynamic, ?options:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an iterator for the `tf.distribute.DistributedDataset`.
		
		The returned iterator implements the Python Iterator protocol.
		
		Example usage:
		
		>>> global_batch_size = 4
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3, 4]).repeat().batch(global_batch_size)
		>>> distributed_iterator = iter(strategy.experimental_distribute_dataset(dataset))
		>>> print(next(distributed_iterator))
		PerReplica:{
		  0: tf.Tensor([1 2], shape=(2,), dtype=int32),
		  1: tf.Tensor([3 4], shape=(2,), dtype=int32)
		}
		
		Returns:
		  An `tf.distribute.DistributedIterator` instance for the given
		  `tf.distribute.DistributedDataset` object to enumerate over the
		  distributed data.
	**/
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
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	public function _create_cloned_datasets_from_dataset(dataset:Dynamic, input_context:Dynamic, input_workers:Dynamic, strategy:Dynamic, num_replicas_in_sync:Dynamic):Dynamic;
	public function _get_iterator():Dynamic;
	/**
		Get an initializable iterator for DistributedDatasetV1.
	**/
	public function _make_initializable_iterator(?shared_name:Dynamic):Dynamic;
	/**
		Get an iterator for DistributedDatasetV1.
	**/
	public function _make_one_shot_iterator():Dynamic;
	/**
		Returns a callable that rebatches the input dataset.
		
		Args:
		  dataset: A `tf.data.Dataset` representing the dataset to be distributed.
		  num_workers: An integer representing the number of workers to distribute
		    `dataset` among.
		  num_replicas_in_sync: An integer representing the number of replicas in
		    sync across all workers.
	**/
	public function _make_rebatch_fn(dataset:Dynamic, num_workers:Dynamic, num_replicas_in_sync:Dynamic):Dynamic;
	/**
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	public function build(?dataset_to_replace:Dynamic):Dynamic;
	public var cardinality : Dynamic;
	/**
		The type specification of an element of this dataset.
	**/
	public var element_spec : Dynamic;
	/**
		Get an initializable iterator for DistributedDatasetV1.
		
		Note: This API is deprecated. Please use
		`tf.compat.v1.data.make_initializable_iterator(dataset)` to create an
		initializable iterator.
		
		Returns:
		  A DistributedIteratorV1 instance.
	**/
	public function make_initializable_iterator():Dynamic;
	/**
		Get a one time use iterator for DistributedDatasetV1.
		
		Note: This API is deprecated. Please use `for ... in dataset:` to iterate
		over the dataset or `iter` to create an iterator.
		
		Returns:
		  A DistributedIteratorV1 instance.
	**/
	public function make_one_shot_iterator():Dynamic;
	/**
		Execute a `reduce_fn` over all the elements of the input.
	**/
	public function reduce(initial_state:Dynamic, reduce_fn:Dynamic):Dynamic;
}