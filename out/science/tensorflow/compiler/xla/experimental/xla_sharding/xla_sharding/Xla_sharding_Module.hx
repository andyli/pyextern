/* This file is generated, do not edit! */
package tensorflow.compiler.xla.experimental.xla_sharding.xla_sharding;
@:pythonImport("tensorflow.compiler.xla.experimental.xla_sharding.xla_sharding") extern class Xla_sharding_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a tensor that has AssignDevice sharding attribute.
	**/
	static public function assign_device(tensor:Dynamic, device:Dynamic, ?assign_tuple_sharding:Dynamic, ?use_sharding_op:Dynamic):Dynamic;
	/**
		Switches from automatic SPMD partitioning to manual partitioning.
		
		Converts a full-shaped tensor (to be automatically partitioned by SPMD
		partitioner) to a shard-shaped tensor to be consumed by manually partitioned
		ops.
		
		Args:
		  tensor: A tf.Tensor in full shape.
		  manual_sharding: A serialized string of OpSharding to be used in manual
		    partitioning.
		  single_dim: If >= 0, the conversion will happen only on this dim in
		    subgroups.
		  unspecified_dims: An optional list of dimensions unspecified.
		
		Returns:
		  A shard-shaped tensor to be consumed by manually partitioned ops.
	**/
	static public function auto_to_manual_spmd_partition(tensor:Dynamic, manual_sharding:Dynamic, ?single_dim:Dynamic, ?unspecified_dims:Dynamic):Dynamic;
	/**
		Copies the a tensor's sharding to another.
		
		Args:
		  from_tensor: Source tensor. Must be the sole output of an op.
		  to_tensor: the tensor the annotate with the copy.
		  use_sharding_op: whether to create a sharding op on `to_tensor`.
		
		Returns:
		  A tensor with sharding annotation copied from `from_tensor`.
	**/
	static public function copy_sharding(from_tensor:Dynamic, to_tensor:Dynamic, ?use_sharding_op:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns sharding attribute of an op.
		
		Args:
		  op: a TensorFlow op.
		
		Returns:
		  The attribute representing XLA sharding on this op.
	**/
	static public function get_op_sharding(op:Dynamic):Dynamic;
	/**
		Returns the tile assignment shape for a sharded Tensor.
		
		Args:
		  sharding: a serialized OpSharding message describing the layout of a
		    sharded Tensor.
		
		Returns:
		  A list, for each dimension of the sharded Tensor, of the number of shards
		    into which it has been split. Returns None if the input indicates no tile
		    assignments.
	**/
	static public function get_sharding_tile_shape(sharding:Dynamic):Dynamic;
	/**
		Returns sharding attribute of a Tensor.
		
		Args:
		  tensor: a Tensor.
		
		Returns:
		  The attribute representing XLA sharding on tensor's op.
	**/
	static public function get_tensor_sharding(tensor:Dynamic):Dynamic;
	/**
		Switches from manual partitioning to automatic SPMD partitioning.
		
		Converts a shard-shaped tensor (manually partitioned in SPMD-style) to a
		full-shaped tensor to be partitioned automatically by the SPMD partitioner.
		
		Args:
		  tensor: A tf.Tensor in shard shape.
		  manual_sharding: a serialized string of OpSharding to be used in manual
		    partitioning.
		  full_shape: the shape of tensor before partitioning.
		  single_dim: If >= 0, the conversion will happen only on this dim in
		    subgroups.
		  unspecified_dims: An optional list of dimensions unspecified.
		
		Returns:
		  A full-shaped tensor to be partitioned automatically by the SPMD
		  partitioner.
	**/
	static public function manual_to_auto_spmd_partition(tensor:Dynamic, manual_sharding:Dynamic, full_shape:Dynamic, ?single_dim:Dynamic, ?unspecified_dims:Dynamic):Dynamic;
	/**
		Returns a tensor that is split along multiple dimensions in a device mesh.
		
		Args:
		  tensor: A tf.Tensor to split.
		  device_mesh: An np.ndarray describing the topology of the device mesh and
		    each element is the ID of the device in the topology.
		  tensor_split_dims_mapping: A list of integers that map each tensor axis to
		    the device mesh axis along which it is sharded. Its length is the tensor
		    rank, and tensor_split_dims_mapping[i] is device mesh axis for tensor
		    dimension i. Use -1 for tensor dimensions that are not sharded.
		  use_sharding_op: If true, adds a sharding op to set the sharding.
		  manual_mesh_dims: An optional list of mesh dims for manual subgroups.
		  unspecified_dims: An optional list of dimensions unspecified.
		
		Raises:
		  ValueError: The number of tensor split dimensions is larger than device mesh
		    rank.
	**/
	static public function mesh_split(tensor:Dynamic, device_mesh:Dynamic, tensor_split_dims_mapping:Dynamic, ?use_sharding_op:Dynamic, ?manual_mesh_dims:Dynamic, ?unspecified_dims:Dynamic):Dynamic;
	/**
		Returns a Sharding object representing sharding along multiple dimensions.
		
		Args:
		  device_mesh: An np.ndarray describing the topology of the device mesh and
		    each element is the ID of the device in the topology.
		  tensor_split_dims_mapping: A list of integers that map each tensor axis to
		    the device mesh axis along which it is sharded. Its length is the tensor
		    rank, and tensor_split_dims_mapping[i] is device mesh axis for tensor
		    dimension i. Use -1 for tensor dimensions that are not sharded.
		  manual_mesh_dims: An optional list of mesh dims for manual subgroups.
		
		Raises:
		  ValueError: The number of tensor split dimensions is larger than device mesh
		    rank.
	**/
	static public function mesh_split_sharding(device_mesh:Dynamic, tensor_split_dims_mapping:Dynamic, ?manual_mesh_dims:Dynamic):Dynamic;
	/**
		Returns a tensor that has tiled sharding.
		
		Args:
		  tensor: A tf.Tensor to shard.
		  tile_assignment: An np.ndarray describing the topology of the tiling and
		    which device will compute which part of the topology. It must have one
		    more dimension than tensor, and the last dimension represents partially
		    replicated tiles.
		  use_sharding_op: If true, adds a sharding op to set the sharding.
		  unspecified_dims: An optional list of dimensions unspecified.
	**/
	static public function partial_tile(tensor:Dynamic, tile_assignment:Dynamic, ?use_sharding_op:Dynamic, ?unspecified_dims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function replicate(tensor:Dynamic, ?assign_tuple_sharding:Dynamic, ?use_sharding_op:Dynamic):Dynamic;
	/**
		Returns a tensor that is split along the given dimension.
		
		Args:
		  tensor: A tf.Tensor to split.
		  split_dimension: The dimension to split.
		  num_devices: The number of devices to partition the dimension.
		  assign_tuple_sharding: If the sharding type should be a tuple.
		  use_sharding_op: If true, adds a sharding op to set the sharding.
		  input_shape: The full shape of the input tensor.
	**/
	static public function split(tensor:Dynamic, split_dimension:Dynamic, num_devices:Dynamic, ?assign_tuple_sharding:Dynamic, ?use_sharding_op:Dynamic, ?input_shape:Dynamic):Dynamic;
	/**
		Returns a tensor that has tiled sharding.
		
		Args:
		  tensor: A tf.Tensor to shard.
		  tile_assignment: An np.ndarray describing the topology of the tiling and
		    which device will compute which part of the topology.
		  assign_tuple_sharding: If the sharding type should be a tuple.
		  use_sharding_op: If true, adds a sharding op to set the sharding.
		  unspecified_dims: An optional list of dimensions unspecified.
	**/
	static public function tile(tensor:Dynamic, tile_assignment:Dynamic, ?assign_tuple_sharding:Dynamic, ?use_sharding_op:Dynamic, ?unspecified_dims:Dynamic):Dynamic;
}