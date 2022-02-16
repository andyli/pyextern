/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "DistributedDatasetsFromFunction") extern class DistributedDatasetsFromFunction {
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
		Makes an iterable from datasets created by the given function.
		
		Args:
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  input_contexts: A list of `InputContext` instances to be passed to call(s)
		    to `dataset_fn`. Length and order should match worker order in
		    `worker_device_pairs`.
		  dataset_fn: A function that returns a `Dataset` given an `InputContext`.
		    Either dataset_fn or components should be passed to construct
		    DistributedDatasetsFromFunction. Use this when constructing
		    DistributedDataset using a function. Use components when constructing
		    using DistributedDatasetsFromFunctionSpec.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
		  components: datasets when DistributedDatasetsFromFunction is constructed
		    from DistributedDatasetsFromFunctionSpec. Only one of dataset or
		    components should be passed.
		  element_spec: element spec for DistributedDataset when constructing from
		    DistributedDatasetSpec. This will be used to set the element_spec for
		    DistributedDatasetsFromFunctionSpec and verified against element_spec
		    from components.
		  build: whether to build underlying datasets when this object is created.
		    This is only useful for `ParameterServerStrategy` now.
	**/
	@:native("__init__")
	public function ___init__(input_workers:Dynamic, strategy:Dynamic, ?input_contexts:Dynamic, ?dataset_fn:Dynamic, ?options:Dynamic, ?components:Dynamic, ?element_spec:Dynamic, ?build:Dynamic):Dynamic;
	/**
		Makes an iterable from datasets created by the given function.
		
		Args:
		  input_workers: an `InputWorkers` object.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		    handle last partial batch.
		  input_contexts: A list of `InputContext` instances to be passed to call(s)
		    to `dataset_fn`. Length and order should match worker order in
		    `worker_device_pairs`.
		  dataset_fn: A function that returns a `Dataset` given an `InputContext`.
		    Either dataset_fn or components should be passed to construct
		    DistributedDatasetsFromFunction. Use this when constructing
		    DistributedDataset using a function. Use components when constructing
		    using DistributedDatasetsFromFunctionSpec.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
		  components: datasets when DistributedDatasetsFromFunction is constructed
		    from DistributedDatasetsFromFunctionSpec. Only one of dataset or
		    components should be passed.
		  element_spec: element spec for DistributedDataset when constructing from
		    DistributedDatasetSpec. This will be used to set the element_spec for
		    DistributedDatasetsFromFunctionSpec and verified against element_spec
		    from components.
		  build: whether to build underlying datasets when this object is created.
		    This is only useful for `ParameterServerStrategy` now.
	**/
	public function new(input_workers:Dynamic, strategy:Dynamic, ?input_contexts:Dynamic, ?dataset_fn:Dynamic, ?options:Dynamic, ?components:Dynamic, ?element_spec:Dynamic, ?build:Dynamic):Void;
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
	public function build():Dynamic;
	public var cardinality : Dynamic;
	/**
		The type specification of an element of this dataset.
	**/
	public var element_spec : Dynamic;
	/**
		Execute a `reduce_fn` over all the elements of the input.
	**/
	public function reduce(initial_state:Dynamic, reduce_fn:Dynamic):Dynamic;
}