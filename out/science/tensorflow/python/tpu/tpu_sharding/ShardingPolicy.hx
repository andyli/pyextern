/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_sharding;
@:pythonImport("tensorflow.python.tpu.tpu_sharding", "ShardingPolicy") extern class ShardingPolicy {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	public function _fill_default_values():Dynamic;
	/**
		Return the unsharded shape that would generate a given sharded shape.
		
		Args:
		  shape: the sharded shape to unshard
		
		Returns:
		  The unsharded shape.
		
		Raises:
		  ValueError: if shape is unknown or does not contain
		    self.shard_dimension
		  TypeError: if shape is not convertible to a TensorShape
	**/
	public function _unshard_shape(shape:Dynamic):Dynamic;
	/**
		Prevents further modification to the sharding policy.
		
		Any values that have not been set when freeze is called are set to
		defaults. If the ShardingPolicy is already frozen, this is a NoOp.
	**/
	public function freeze():Dynamic;
	/**
		Returns the shape of a shard of a full Tensor.
		
		When given the shape of a 'full-size' Tensor, returns the shape of
		the sub-Tensor after it has been sharded. Freezes the policy if it
		has not yet been frozen.
		
		Args:
		  shape: The shape of the full-size Tensor to be sharded.
		  shard_index: The index of the shard whose shape should be returned.
		    shard_index can be None for sharding policies that use the same shape
		    for every shard.
		
		Returns:
		  The shape of the sharded version of the Tensor.
		
		Raises:
		  ValueError: If shard_index is None when shards are of different
		    shapes; or shard_index is not None and
		    !(0<=shard_index<number_of_shards); or shape does not have at
		    least self.shard_dimension+1 dimensions; or the value of
		    shape's shard dimension is not a multiple of
		    self.number_of_shards
	**/
	public function get_sharded_shape(shape:Dynamic, ?shard_index:Dynamic):Dynamic;
	/**
		Returns the shape of an unpartitioned Tensor.
		
		When given the shape of a 'sharded-size' Tensor, returns the shape
		of the full shape of its unpartitioned Tensor.
		
		Args:
		  shape: The shape of the sharded Tensor.
		
		Returns:
		  The shape of the unpartitioned version of the Tensor.
		
		Raises:
		  ValueError: if shape has unknown sharded dimension
	**/
	public function get_unpartitioned_shape(shape:Dynamic):Dynamic;
	/**
		Returns the shape of an unsharded Tensor given a list of shards.
		
		When given a list of shapes of shards, returns the shape of the
		unsharded Tensor that would generate the shards. Sets defaults for the
		policy if number_of_shards or shard_dimension is None.
		
		Args:
		  shapes: The shapes of the Tensor shards to be combined.
		
		Returns:
		  The shape of the unsharded version of the Tensor.
		
		Raises:
		  ValueError: if shapes is not a list of length
		    self.number_of_shards; or any element of shapes is not a valid
		    shape consistent with the sharding policy; or the list of
		    shapes is not a valid sharding of a full shape.
		  TypeError: if an element of shapes is not convertible to a
		    TensorShape
	**/
	public function get_unsharded_shape(shapes:Dynamic):Dynamic;
	/**
		Merges the policy of another policy into the current policy.
		
		Args:
		  other: The policy to merge into this one.
		
		Raises:
		  ValueError: If this policy has been frozen and the merge conflicts with
		  the frozen policy.
	**/
	public function merge(other:Dynamic):Dynamic;
	/**
		Returns the number of partitions of the policy or None if unspecified.
	**/
	public var number_of_partitions : Dynamic;
	/**
		Returns the number of shards in the policy or None if unspecified.
	**/
	public var number_of_shards : Dynamic;
	/**
		Sets the number of partitions for the current policy.
		
		If the policy has been frozen then shard_dimension must match the
		existing setting.
		
		Args:
		  number_of_partitions: The number of partitions to use in the policy.
		
		Raises:
		  ValueError: If the policy has been frozen and shard_dimension
		    differs from the frozen value.
	**/
	public function set_number_of_partitions(number_of_partitions:Dynamic):Dynamic;
	/**
		Sets the number of shards for the current policy.
		
		If the policy has been frozen then number_of_shards must match the
		existing setting.
		
		Args:
		  number_of_shards: The number of shards to use in the policy.
		
		Raises:
		  ValueError: If the policy has been frozen and number_of_shards
		    differs from the frozen value; or number_of_shards <= 0.
	**/
	public function set_number_of_shards(number_of_shards:Dynamic):Dynamic;
	/**
		Sets the shard dimension for the current policy.
		
		If the policy has been frozen then shard_dimension must match the
		existing setting.
		
		Args:
		  shard_dimension: The shard dimension to use in the policy.
		
		Raises:
		  ValueError: If the policy has been frozen and shard_dimension
		    differs from the frozen value, or shard_dimension can't be
		    interpreted as a Dimension.
	**/
	public function set_shard_dimension(shard_dimension:Dynamic):Dynamic;
	/**
		Returns the shard dimension of the policy or None if unspecified.
	**/
	public var shard_dimension : Dynamic;
}