/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_feed;
@:pythonImport("tensorflow.python.tpu.tpu_feed", "InfeedQueue") extern class InfeedQueue {
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
		Creates a new InfeedQueue with the given configuration.
		
		The configuration need not be fully specified at creation since it
		can be modified subsequently by methods that set the values
		explicitly or infer them from the shapes of inputs.
		
		Args:
		  number_of_tuple_elements: the number of Tensors fed atomically through the
		    queue, must be present unless it can be inferred from other arguments.
		  tuple_types: if not None, a list of types of the elements of the queue.
		  tuple_shapes: if not None, a list of shapes of the elements of the queue.
		  shard_dimensions: if not None, a list of dimensions on which the
		    elements of the queue should be sharded during automatic
		    parallelization.
		  number_of_partitions: if > 1, the infeed dequeue shape will contain
		    the full shape that includes all partitions and add corresponding XLA
		    annotation on the infeed dequeue op. In this case, the infeed is still
		    data parallel that feeds per-core batch size to each core while the XLA
		    computation may be partitioned. As XLA requires infeed dequeue shape to
		    be per-replica shape, thus we need number_of_partitions here to
		    calculate the per-replica unpartitioned shape.
		  name: the name of the queue.
		
		Raises:
		  ValueError: if number_of_tuple_elements <= 0; or
		    number_of_tuple_arguments, tuple_types, tuple_shapes, and
		    shard_dimensions are all None; or the length of tuple_types,
		    tuple_shapes, or shard_dimensions is not equal to
		    number_of_tuple_elements; or any element of shard_dimensions
		    can't be converted to a Dimension.
		  TypeError: if any element of tuple_types or tuple_shapes can't
		    be converted to a dtype or TensorShape, respectively.
	**/
	@:native("__init__")
	public function ___init__(?number_of_tuple_elements:Dynamic, ?tuple_types:Dynamic, ?tuple_shapes:Dynamic, ?shard_dimensions:Dynamic, ?number_of_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a new InfeedQueue with the given configuration.
		
		The configuration need not be fully specified at creation since it
		can be modified subsequently by methods that set the values
		explicitly or infer them from the shapes of inputs.
		
		Args:
		  number_of_tuple_elements: the number of Tensors fed atomically through the
		    queue, must be present unless it can be inferred from other arguments.
		  tuple_types: if not None, a list of types of the elements of the queue.
		  tuple_shapes: if not None, a list of shapes of the elements of the queue.
		  shard_dimensions: if not None, a list of dimensions on which the
		    elements of the queue should be sharded during automatic
		    parallelization.
		  number_of_partitions: if > 1, the infeed dequeue shape will contain
		    the full shape that includes all partitions and add corresponding XLA
		    annotation on the infeed dequeue op. In this case, the infeed is still
		    data parallel that feeds per-core batch size to each core while the XLA
		    computation may be partitioned. As XLA requires infeed dequeue shape to
		    be per-replica shape, thus we need number_of_partitions here to
		    calculate the per-replica unpartitioned shape.
		  name: the name of the queue.
		
		Raises:
		  ValueError: if number_of_tuple_elements <= 0; or
		    number_of_tuple_arguments, tuple_types, tuple_shapes, and
		    shard_dimensions are all None; or the length of tuple_types,
		    tuple_shapes, or shard_dimensions is not equal to
		    number_of_tuple_elements; or any element of shard_dimensions
		    can't be converted to a Dimension.
		  TypeError: if any element of tuple_types or tuple_shapes can't
		    be converted to a dtype or TensorShape, respectively.
	**/
	public function new(?number_of_tuple_elements:Dynamic, ?tuple_types:Dynamic, ?tuple_shapes:Dynamic, ?shard_dimensions:Dynamic, ?number_of_partitions:Dynamic, ?name:Dynamic):Void;
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
	public function _default_ordinal_function(index:Dynamic):Dynamic;
	public function _default_placement_function(index:Dynamic):Dynamic;
	/**
		Generate a host-side Op to enqueue a tuple to the queue.
		
		If device is None the inputs are all required to have the same
		device specification, and the enqueue Op is colocated with
		inputs[0]. Otherwise the enqueue Op is placed on 'device'.
		
		Args:
		  inputs: a list of Tensors with the types and shapes of the tuple elements.
		  name_prefix: the base name for the Op.
		  index: the shard index, used to uniquify the Op name.
		  device: device to place the Op on, or None if it should be
		    colocated with the inputs.
		  tpu_ordinal: ordinal of the TPU device on the host to use for
		  infeed if device is a CPU device. Should be set to -1 if device
		  is a TPU device.
		
		Returns:
		  An Op corresponding to a shard of infeed enqueued at the host,
		  suitable for use within a replicated block.
		
		Raises:
		  ValueError: if device is None and inputs do not all have the
		    same device specification.
	**/
	public function _generate_enqueue_op(inputs:Dynamic, name_prefix:Dynamic, index:Dynamic, ?device:Dynamic, ?tpu_ordinal:Dynamic):Dynamic;
	/**
		Checks that the configuration is self-consistent.
		
		Raises:
		  ValueError: if the shapes and sharding policies don't match.
	**/
	public function _validate():Dynamic;
	/**
		Freezes the InfeedQueue so it can no longer be modified.
		
		The configuration is implicitly frozen before any host-side or
		device-side Ops are generated. The configuration cannot be frozen
		until the types and shapes of the tuple elements have been set.
		
		Raises:
		  ValueError: if the types or shapes of the tuple elements have not been
		  set.
	**/
	public function freeze():Dynamic;
	/**
		Generates the device-side Op to dequeue a tuple from the queue.
		
		Implicitly freezes the queue configuration if it is not already
		frozen, which will raise errors if the shapes and types have not
		been fully specified.
		
		Args:
		  tpu_device: The TPU device ordinal where the infeed instruction should be
		    placed. If None, no explicit placement will be performed, and it is up
		    to the user to call this API from within a proper TPU device scope.
		    The XLA code will fail if the TPU dequeue instruction is not bound to
		    any device.
		
		Returns:
		  A list of Outputs corresponding to a shard of infeed dequeued
		  into XLA, suitable for use within a replicated block.
		
		Raises:
		  ValueError: if the types or shapes of the tuple elements have not been
		  set; or if a dequeue op has already been generated.
	**/
	public function generate_dequeue_op(?tpu_device:Dynamic):Dynamic;
	/**
		Generates the host-side Ops to enqueue the shards of a tuple.
		
		sharded_inputs is a list, one for each shard, of lists of
		Tensors. sharded_inputs[i] is the tuple of Tensors to use to feed
		shard i of the queue. Returns the host-side Ops that must be run to
		enqueue the sharded tuple. The Op for shard i is colocated with the inputs
		for shard i.
		
		Implicitly freezes the queue configuration if it is not already
		frozen. If the configuration has already been frozen, and is not
		compatible with the types and shapes of sharded_inputs, an error
		will be raised.
		
		Args:
		  sharded_inputs: a list of lists of Tensors. The length of the outer list
		    determines the number of shards. Each inner list indicates the types
		    and shapes of the tuples in the corresponding shard.
		  tpu_ordinal_function: if not None, a function that takes the
		    shard index as input and returns the ordinal of the TPU device
		    the shard's infeed should be placed on. tpu_ordinal_function must be
		    set if the inputs are placed on CPU devices.
		  placement_function: if not None, a function that takes the shard index as
		    input and returns the host device where the enqueue op should be placed
		    on.
		
		Returns:
		  A list of host-side Ops, one for each shard, that when executed together
		  will enqueue a full-size element of infeed.
		
		Raises:
		  ValueError: if the queue configuration has previously been frozen and the
		    shapes of the elements of sharded_inputs are not compatible with the
		    frozen configuration; or if the shapes of the elements of sharded_inputs
		    don't form a consistent unsharded tuple; or if the elements of a tuple
		    have different device constraints.
		  TypeError: if the queue configuration has previously been frozen and the
		    types of the elements of sharded_inputs are not compatible with the
		    frozen configuration; or if the types of the elements of sharded_inputs
		    don't form a consistent unsharded tuple.
	**/
	public function generate_enqueue_ops(sharded_inputs:Dynamic, ?tpu_ordinal_function:Dynamic, ?placement_function:Dynamic):Dynamic;
	/**
		Gets the number of shards to use for the InfeedQueue.
		
		Returns:
		  Number of shards or None if the number of shards has not been set.
	**/
	public var number_of_shards : Dynamic;
	/**
		Returns the number of InfeedQueue tuple elements.
	**/
	public var number_of_tuple_elements : Dynamic;
	/**
		Sets the shapes and types of the queue tuple elements.
		
		input_tensors is a list of Tensors whose types and shapes are used
		to set the queue configuration.
		
		Args:
		  input_tensors: list of Tensors of the same types and shapes as
		    the desired queue Tuple.
		
		Raises:
		  ValueError: if input_tensors is not a list of length
		    self.number_of_tuple_elements
	**/
	public function set_configuration_from_input_tensors(input_tensors:Dynamic):Dynamic;
	/**
		Sets the shapes and types of the queue tuple elements.
		
		input_tensors is a list of lists of Tensors whose types and shapes are used
		to set the queue configuration. The length of the outer list is the number
		of shards required, and each inner list is the tuple of Tensors to use to
		determine the types and shapes of the corresponding shard. This method
		depends on the shard dimension, and calling it freezes the shard policy.
		
		Args:
		  input_tensors: list of lists of Tensors. The outer list length corresponds
		    to the desired number of shards, and each inner list is the size
		    and shape of the desired configuration of the corresponding shard.
		
		Raises:
		  ValueError: if any inner list is not a list of length
		    self.number_of_tuple_elements; or the inner lists do not combine to
		    form a consistent unsharded shape.
		  TypeError: if the types of the Tensors in the inner lists do not match.
	**/
	public function set_configuration_from_sharded_input_tensors(input_tensors:Dynamic):Dynamic;
	/**
		Sets the number of shards to use for the InfeedQueue.
		
		Args:
		  number_of_shards: number of ways to shard the InfeedQueue.
		
		Raises:
		  ValueError: if number_of_shards is not > 0; or the policies have
		    been frozen and number_of_shards was already set to something
		    else.
	**/
	public function set_number_of_shards(number_of_shards:Dynamic):Dynamic;
	/**
		Sets the shard_dimension of each element of the queue.
		
		shard_dimensions must be a list of length
		self.number_of_tuple_elements, and each element must be
		convertible to a Dimension compatible with self.tuple_shapes.
		
		Args:
		  shard_dimensions: the dimensions of each queue element.
		
		Raises:
		  ValueError: if shard_dimensions is not of length
		    self.number_of_tuple_elements; or an element of
		    shard_dimensions cannot be converted to a Dimension; or an
		    element of shard_dimensions is a Dimension that is out of
		    range for the corresponding tuple element shape.
	**/
	public function set_shard_dimensions(shard_dimensions:Dynamic):Dynamic;
	/**
		Sets the shape of each element of the queue.
		
		tuple_shapes must be a list of length
		self.number_of_tuple_elements, and each element must be
		convertible to a TensorShape.
		
		Args:
		  tuple_shapes: the shapes of each queue element.
		
		Raises:
		  ValueError: if tuple_shapes is not of length
		    self.number_of_tuple_elements.
		  TypeError: if an element of tuple_shapes cannot be converted to
		    a TensorShape.
	**/
	public function set_tuple_shapes(tuple_shapes:Dynamic):Dynamic;
	/**
		Sets the type of each element of the queue.
		
		tuple_types must be a list of length
		self.number_of_tuple_elements, and each element must be
		convertible to a dtype.
		
		Args:
		  tuple_types: the types of each queue element.
		
		Raises:
		  ValueError: if tuple_types is not of length
		    self.number_of_tuple_elements.
		  TypeError: if an element of tuple_types cannot be converted to a
		    dtype.
	**/
	public function set_tuple_types(tuple_types:Dynamic):Dynamic;
	/**
		Gets the shard dimension of each tuple element.
		
		Returns:
		  A list of length number_of_tuple_elements, where each list entry
		  is the shard dimension of that tuple element or None if the
		  shard dimension has not been set.
	**/
	public var shard_dimensions : Dynamic;
	/**
		Returns the sharding policies of the InfeedQueue tuple elements.
	**/
	public var sharding_policies : Dynamic;
	/**
		POORLY-PERFORMING ON MULTI-HOST SYSTEMS.
		
		Generates the host-side Ops to enqueue a tuple.
		
		This method performs poorly because it takes an entire input on a single
		host, splits it, and distributes it to all of the cores. It is present only
		to simplify tutorial examples.
		
		inputs is a list of Tensors to use to feed the queue. Each input is split
		into self.number_of_shards shards. Returns an Op for each shard to enqueue
		the shard. The Op for shard i is placed on device placement_function(i).
		
		Implicitly freezes the queue configuration if it is not already
		frozen. If the configuration has already been frozen, and is not
		compatible with the types and shapes of inputs, an error
		will be raised.
		
		Args:
		  inputs: a list of Tensors which indicates the types and shapes of the
		    queue tuple.
		 device_assignment: if not `None`, a TPU `DeviceAssignment`. If
		    device_assignment is not `None`, but `placement_function` and
		    `ordinal_function` are None, then `device_assignment` will be used to
		    place infeeds on the first k TPU shards, where k is the number of shards
		    in the queue. If all three are `None`, then default placement and
		    ordinal functions are used.
		  placement_function: if not None, a function that takes the shard
		    index as input and returns a device string indicating which
		    device the shard's infeed should be placed on. If placement_function
		    and tpu_ordinal_function are None, inputs are sharded round-robin
		    across the devices in the system.
		  tpu_ordinal_function: if not None, a function that takes the
		    shard index as input and returns the ordinal of the TPU device
		    the shard's infeed should be placed on. If placement_function
		    and tpu_ordinal_function are None, inputs are sharded round-robin
		    across the devices in the system.
		
		Returns:
		  A list of host-side Ops, one for each shard, that when executed together
		  will enqueue a full-size element of infeed.
		
		Raises:
		  ValueError: if the queue configuration has previously been frozen and the
		    shapes of the elements of inputs are not compatible with the frozen
		    configuration.
		  TypeError: if the queue configuration has previously been frozen and the
		    types of the elements of inputs are not compatible with the frozen
		    configuration.
	**/
	public function split_inputs_and_generate_enqueue_ops(inputs:Dynamic, ?device_assignment:Dynamic, ?placement_function:Dynamic, ?tpu_ordinal_function:Dynamic):Dynamic;
	/**
		Returns the shapes of the InfeedQueue tuple elements.
	**/
	public var tuple_shapes : Dynamic;
	/**
		Returns the types of the InfeedQueue tuple elements.
	**/
	public var tuple_types : Dynamic;
}