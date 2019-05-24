/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "DatasetIterator") extern class DatasetIterator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Make an iterator for the dataset on given devices.
		
		If `split_batch_by` is not None, we "split" each batch of the
		dataset by `split_batch_by` value. To achieve this, we first unbatch the
		input dataset and then rebatch it with the per replica batch size that is
		calculated using `global_batch_size // split_batch_by`.
		The currently supported datasets are as follows:
		`dataset.batch()` is the last operation on the dataset OR
		`dataset.apply(map_and_batch)` is the last operation on the dataset OR
		`dataset.batch().prefetch()` are the last 2 operations on the dataset OR
		`dataset.apply(map_and_batch).prefetch()` are the last 2 operations.
		
		TODO(priyag): Support multi worker / host cases properly by cloning
		and sharding the dataset on each worker. Current setup will only work in
		some cases, such as in-graph multi worker GPU case. If the input pipeline
		has random shuffling (with a different seed on each worker), each worker
		will see random input from the same overall dataset in each step. Otherwise,
		each worker will see the same input in each step.
		
		Args:
		  dataset: `tf.data.Dataset` that will be used as the input source.
		  worker_device_pairs: A list of (worker, list of devices on that worker)
		    pairs.
		  split_batch_by: Optional integer. If present, we "split" each batch of the
		    dataset by `split_batch_by` value.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, worker_device_pairs:Dynamic, ?split_batch_by:Dynamic):Dynamic;
	/**
		Make an iterator for the dataset on given devices.
		
		If `split_batch_by` is not None, we "split" each batch of the
		dataset by `split_batch_by` value. To achieve this, we first unbatch the
		input dataset and then rebatch it with the per replica batch size that is
		calculated using `global_batch_size // split_batch_by`.
		The currently supported datasets are as follows:
		`dataset.batch()` is the last operation on the dataset OR
		`dataset.apply(map_and_batch)` is the last operation on the dataset OR
		`dataset.batch().prefetch()` are the last 2 operations on the dataset OR
		`dataset.apply(map_and_batch).prefetch()` are the last 2 operations.
		
		TODO(priyag): Support multi worker / host cases properly by cloning
		and sharding the dataset on each worker. Current setup will only work in
		some cases, such as in-graph multi worker GPU case. If the input pipeline
		has random shuffling (with a different seed on each worker), each worker
		will see random input from the same overall dataset in each step. Otherwise,
		each worker will see the same input in each step.
		
		Args:
		  dataset: `tf.data.Dataset` that will be used as the input source.
		  worker_device_pairs: A list of (worker, list of devices on that worker)
		    pairs.
		  split_batch_by: Optional integer. If present, we "split" each batch of the
		    dataset by `split_batch_by` value.
	**/
	public function new(dataset:Dynamic, worker_device_pairs:Dynamic, ?split_batch_by:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function get_iterator(worker:Dynamic):Dynamic;
	/**
		Returns the next input from the iterator for all replicas.
	**/
	public function get_next(?name:Dynamic):Dynamic;
	/**
		Initialze underlying iterators.
		
		Returns:
		  A list of any initializer ops that should be run.
	**/
	public function initialize():Dynamic;
	public var output_classes : Dynamic;
	public var output_shapes : Dynamic;
	public var output_types : Dynamic;
}