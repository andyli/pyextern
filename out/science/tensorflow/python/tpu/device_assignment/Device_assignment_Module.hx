/* This file is generated, do not edit! */
package tensorflow.python.tpu.device_assignment;
@:pythonImport("tensorflow.python.tpu.device_assignment") extern class Device_assignment_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var SINGLE_CORE_ASSIGNMENT : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes a nested dict which maps task and logical core to replicas.
	**/
	static public function _compute_task_and_cores_to_replicas(core_assignment:Dynamic, topology:Dynamic):Dynamic;
	/**
		Ring-order of a X by Y mesh, with a fixed Z coordinate.
		
		For example, in a 4x4 mesh, this returns the following order.
		  0 -- 1 -- 2 -- 3
		  |    |    |    |
		  15-- 6 -- 5 -- 4
		  |    |    |    |
		  14-- 7 -- 8 -- 9
		  |    |    |    |
		  13-- 12-- 11-- 10
		
		Note that chip 0 is not included in the output.
		
		Args:
		  x_size: An integer represents the mesh size in the x-dimension. Must be
		    larger than 1.
		  y_size: An integer represents the mesh size in the y-dimension. Must be
		    larger than 1.
		  z_coord: An integer represents the z-coordinate to use for the chips in the
		    ring.
		
		Returns:
		  A list of (x,y,z) triples in ring order.
	**/
	static public function _open_ring_2d(x_size:Dynamic, y_size:Dynamic, z_coord:Dynamic):Dynamic;
	/**
		Ring-order of a X by Y by Z mesh.
		
		Constructs the 3d ring from 2d rings that are stacked in the Z dimension and
		joined in one corner.
		
		z == 0:
		  0 -- 1 -- 2 -- 3
		  |    |    |    |
		  15 - 6 -- 5 -- 4
		  |    |    |    |
		  14 - 7 -- 8 -- 9
		  |    |    |    |
		  13 - 12 - 11 - 10
		z == 1:
		  63 - 30 - 29 - 28
		  |    |    |    |
		  16 - 25 - 26 - 27
		  |    |    |    |
		  17 - 24 - 23 - 22
		  |    |    |    |
		  18 - 19 - 20 - 21
		z == 2:
		  62 - 31 - 32 - 33
		  |    |    |    |
		  45 - 36 - 35 - 34
		  |    |    |    |
		  44 - 37 - 38 - 39
		  |    |    |    |
		  43 - 42 - 41 - 40
		z == 3:
		  61 - 60 - 59 - 58
		  |    |    |    |
		  46 - 55 - 56 - 57
		  |    |    |    |
		  47 - 54 - 53 - 52
		  |    |    |    |
		  48 - 49 - 50 - 51
		
		Args:
		  x_size: An integer represents the mesh size in the x-dimension. Must be
		    larger than 1.
		  y_size: An integer represents the mesh size in the y-dimension. Must be
		    larger than 1.
		  z_size: An integer represents the mesh size in the z-dimension. Must be
		    larger than 1.  For example, in a 4x4x4 mesh, this returns the following
		    order.
		
		Returns:
		  A list of (x,y,z) triples in ring order.
	**/
	static public function _ring_3d(x_size:Dynamic, y_size:Dynamic, z_size:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes a device_assignment of a computation across a TPU topology.
		
		Attempts to choose a compact grid of cores for locality.
		
		Returns a `DeviceAssignment` that describes the cores in the topology assigned
		to each core of each replica.
		
		`computation_shape` and `computation_stride` values should be powers of 2 for
		optimal packing.
		
		Args:
		  topology: A `Topology` object that describes the TPU cluster topology. To
		    obtain a TPU topology, evaluate the `Tensor` returned by
		    `initialize_system` using `Session.run`. Either a serialized
		    `TopologyProto` or a `Topology` object may be passed. Note: you must
		      evaluate the `Tensor` first; you cannot pass an unevaluated `Tensor`
		      here.
		  computation_shape: A rank 1 int32 numpy array with size equal to the
		    topology rank, describing the shape of the computation's block of cores.
		    If None, the `computation_shape` is `[1] * topology_rank`.
		  computation_stride: A rank 1 int32 numpy array of size `topology_rank`,
		    describing the inter-core spacing of the `computation_shape` cores in the
		    TPU topology. If None, the `computation_stride` is `[1] * topology_rank`.
		  num_replicas: The number of computation replicas to run. The replicas will
		    be packed into the free spaces of the topology.
		  device_order_mode: An enum of `DeviceOrderMode` class which indicates
		    whether to assign devices to form rings or meshes, or let the library to
		    choose.
		
		Returns:
		  A DeviceAssignment object, which describes the mapping between the logical
		  cores in each computation replica and the physical cores in the TPU
		  topology.
		
		Raises:
		  ValueError: If `topology` is not a valid `Topology` object.
		  ValueError: If `computation_shape` or `computation_stride` are not 1D int32
		    numpy arrays with shape [3] where all values are positive.
		  ValueError: If computation's replicas cannot fit into the TPU topology.
	**/
	static public function device_assignment(topology:Dynamic, ?computation_shape:Dynamic, ?computation_stride:Dynamic, ?num_replicas:Dynamic, ?device_order_mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}