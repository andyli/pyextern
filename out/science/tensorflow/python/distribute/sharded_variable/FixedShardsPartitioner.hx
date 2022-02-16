/* This file is generated, do not edit! */
package tensorflow.python.distribute.sharded_variable;
@:pythonImport("tensorflow.python.distribute.sharded_variable", "FixedShardsPartitioner") extern class FixedShardsPartitioner {
	/**
		Partitions the given `shape` and returns the partition results.
		
		Examples of a partitioner that allocates a fixed number of shards:
		
		```python
		partitioner = FixedShardsPartitioner(num_shards=2)
		partitions = partitioner(tf.TensorShape([10, 3], tf.float32), axis=0)
		print(partitions) # [2, 0]
		```
		
		Args:
		  shape: a `tf.TensorShape`, the shape to partition.
		  dtype: a `tf.dtypes.Dtype` indicating the type of the partition value.
		  axis: The axis to partition along.  Default: outermost axis.
		
		Returns:
		  A list of integers representing the number of partitions on each axis,
		  where i-th value correponds to i-th axis.
	**/
	public function __call__(shape:Dynamic, dtype:Dynamic, ?axis:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a new `FixedShardsPartitioner`.
		
		Args:
		  num_shards: `int`, number of shards to partition.
	**/
	@:native("__init__")
	public function ___init__(num_shards:Dynamic):Dynamic;
	/**
		Creates a new `FixedShardsPartitioner`.
		
		Args:
		  num_shards: `int`, number of shards to partition.
	**/
	public function new(num_shards:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}