/* This file is generated, do not edit! */
package tensorflow.python.distribute.cross_device_ops;
@:pythonImport("tensorflow.python.distribute.cross_device_ops", "CollectiveAllReduce") extern class CollectiveAllReduce {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Initializes the object.
		
		Args:
		  devices: a list of device strings to run collectives on.
		  group_size: the global group size. For between-graph replicated training
		    it's the total number of devices across all workers.
		  collective_keys: an optional CollectiveKey object.
		  canonicalize_devices: Whether to canonicalize devices for workers or not.
	**/
	@:native("__init__")
	public function ___init__(devices:Dynamic, group_size:Dynamic, ?collective_keys:Dynamic, ?canonicalize_devices:Dynamic):Dynamic;
	/**
		Initializes the object.
		
		Args:
		  devices: a list of device strings to run collectives on.
		  group_size: the global group size. For between-graph replicated training
		    it's the total number of devices across all workers.
		  collective_keys: an optional CollectiveKey object.
		  canonicalize_devices: Whether to canonicalize devices for workers or not.
	**/
	public function new(devices:Dynamic, group_size:Dynamic, ?collective_keys:Dynamic, ?canonicalize_devices:Dynamic):Void;
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
	/**
		Implements CrossDeviceOps.all_reduce.
	**/
	public function _all_reduce(reduce_op:Dynamic, value:Dynamic, replica_id:Dynamic, options:Dynamic):Dynamic;
	/**
		All reduce a list of per_replica_value.
	**/
	public function _all_reduce_per_replica_values(reduce_op:Dynamic, per_replica_values:Dynamic, options:Dynamic):Dynamic;
	/**
		all gather multiple per-replica-values.
	**/
	public function _batch_all_gather(per_replica_values:Dynamic, axis:Dynamic, options:Dynamic):Dynamic;
	/**
		Gather `per_replica_value` to `destinations`.
		
		Args:
		  per_replica_value: a `tf.distribute.DistributedValues`, or a `tf.Tensor`
		    like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to gather to. To perform an all-gather, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is gathered
		    to the devices of that variable, and this method doesn't update the
		    variable.
		  axis: specifies the dimension to gather along within each replica's
		    tensor.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`
		
		Raises:
		  ValueError: if per_replica_value can't be converted to a
		    `tf.distribute.DistributedValues` or if destinations is not a string,
		    `tf.Variable` or `tf.distribute.DistributedValues`.
	**/
	public function _gather(per_replica_value:Dynamic, destinations:Dynamic, axis:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Implementation of `gather` method of `tf.distribute.CrossDeviceOps`.
		
		Overriding this method is useful for subclass implementers.
		
		Args:
		  per_replica_value: a `tf.distribute.DistributedValues`, or a `tf.Tensor`
		    like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to gather to. To perform an all-gather, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is gathered
		    to the devices of that variable, this method doesn't update the
		    variable.
		  axis: specifies the dimension to gather along within each replica's
		    tensor.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`.
		
		Raises:
		  ValueError: if per_replica_value can't be converted to a
		    `tf.distribute.DistributedValues` or if destinations is not a string,
		    `tf.Variable` or `tf.distribute.DistributedValues`.
	**/
	public function _gather_implementation(per_replica_value:Dynamic, destinations:Dynamic, axis:Dynamic, options:Dynamic):Dynamic;
	public var _num_between_graph_workers : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Reduce values to destinations in batches.
		
		See `tf.distribute.StrategyExtended.batch_reduce_to`. This can only be
		called in the cross-replica context.
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` specifying how values should be
		    combined.
		  value_destination_pairs: a sequence of (value, destinations) pairs. See
		    `tf.distribute.CrossDeviceOps.reduce` for descriptions.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A list of `tf.Tensor` or `tf.distribute.DistributedValues`, one per pair
		  in `value_destination_pairs`.
		
		Raises:
		  ValueError: if `value_destination_pairs` is not an iterable of
		    tuples of `tf.distribute.DistributedValues` and destinations.
	**/
	public function batch_reduce(reduce_op:Dynamic, value_destination_pairs:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Implementation of `batch_reduce`.
		
		Overriding this method is useful for subclass implementers.
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` specifying how values should be
		    combined.
		  value_destination_pairs: a sequence of (value, destinations) pairs. See
		    `reduce` for descriptions.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A list of `tf.Tensor` or `tf.distribute.DistributedValues`, one per pair
		  in `value_destination_pairs`.
		
		Raises:
		  ValueError: if `value_destination_pairs` is not an iterable of
		    tuples of `tf.distribute.DistributedValues` and destinations.
	**/
	public function batch_reduce_implementation(reduce_op:Dynamic, value_destination_pairs:Dynamic, options:Dynamic):Dynamic;
	/**
		Broadcast `tensor` to `destinations`.
		
		This can only be called in the cross-replica context.
		
		Args:
		  tensor: a `tf.Tensor` like object. The value to broadcast.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to broadcast to. Note that if it's a `tf.Variable`, the value is
		    broadcasted to the devices of that variable, this method doesn't update
		    the variable.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`.
	**/
	public function broadcast(tensor:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Implementation of `broadcast`.
		
		Args:
		  tensor: a `tf.Tensor` like object. The value to broadcast.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to broadcast to.
		    `destinations`. Note that if it's a `tf.Variable`, the value is
		    broadcasted to the devices of that variable, this method doesn't update
		    the variable.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`.
	**/
	public function broadcast_implementation(tensor:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Reduce `per_replica_value` to `destinations`.
		
		See `tf.distribute.StrategyExtended.reduce_to`. This can only be called in
		the cross-replica context.
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` specifying how values should be
		    combined.
		  per_replica_value: a `tf.distribute.DistributedValues`, or a `tf.Tensor`
		    like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to reduce to. To perform an all-reduce, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is reduced
		    to the devices of that variable, and this method doesn't update the
		    variable.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`.
		
		Raises:
		  ValueError: if per_replica_value can't be converted to a
		    `tf.distribute.DistributedValues` or if destinations is not a string,
		    `tf.Variable` or `tf.distribute.DistributedValues`.
	**/
	public function reduce(reduce_op:Dynamic, per_replica_value:Dynamic, destinations:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Implementation of `reduce`.
		
		Overriding this method is useful for subclass implementers.
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` specifying how values should be
		    combined.
		  per_replica_value: a `tf.distribute.DistributedValues`, or a `tf.Tensor`
		    like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to reduce to. To perform an all-reduce, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is reduced
		    to the devices of that variable, this method doesn't update the
		    variable.
		  options: a `tf.distribute.experimental.CommunicationOptions`. See
		    `tf.distribute.experimental.CommunicationOptions` for details.
		
		Returns:
		  A `tf.Tensor` or `tf.distribute.DistributedValues`.
		
		Raises:
		  ValueError: if per_replica_value can't be converted to a
		    `tf.distribute.DistributedValues` or if destinations is not a string,
		    `tf.Variable` or `tf.distribute.DistributedValues`.
	**/
	public function reduce_implementation(reduce_op:Dynamic, per_replica_value:Dynamic, destinations:Dynamic, options:Dynamic):Dynamic;
}