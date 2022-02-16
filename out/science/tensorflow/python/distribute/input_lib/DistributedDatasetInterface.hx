/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "DistributedDatasetInterface") extern class DistributedDatasetInterface {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		The type specification of an element of this `tf.distribute.DistributedDataset`.
		
		Example usage:
		
		>>> global_batch_size = 16
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> dataset = tf.data.Dataset.from_tensors(([1.],[2])).repeat(100).batch(global_batch_size)
		>>> dist_dataset = strategy.experimental_distribute_dataset(dataset)
		>>> dist_dataset.element_spec
		(PerReplicaSpec(TensorSpec(shape=(None, 1), dtype=tf.float32, name=None),
		                TensorSpec(shape=(None, 1), dtype=tf.float32, name=None)),
		 PerReplicaSpec(TensorSpec(shape=(None, 1), dtype=tf.int32, name=None),
		                TensorSpec(shape=(None, 1), dtype=tf.int32, name=None)))
		
		Returns:
		  A nested structure of `tf.TypeSpec` objects matching the structure of an
		  element of this `tf.distribute.DistributedDataset`. This returned value is
		  typically a `tf.distribute.DistributedValues` object and specifies the
		  `tf.TensorSpec` of individual components.
	**/
	public var element_spec : Dynamic;
	/**
		Reduces this iterable object to a single element.
		
		The transformation calls `reduce_func` successively on each element.
		The `initial_state` argument is used for the initial state and the final
		state is returned as the result.
		
		Args:
		  initial_state: An element representing the initial state of the
		    reduction.
		  reduce_func: A function that maps `(old_state, input_element)` to
		    `new_state`. The structure of `new_state` must match the structure of
		    `old_state`. For the first element, `old_state` is `initial_state`.
		
		Returns:
		  The final state of the transformation.
	**/
	public function reduce(initial_state:Dynamic, reduce_func:Dynamic):Dynamic;
}