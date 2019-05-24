/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.device_assignment;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.device_assignment") extern class Device_assignment_Module {
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
	static public var absolute_import : Dynamic;
	/**
		Computes a device_assignment of a computation across a TPU topology.
		
		Attempts to choose a compact grid of cores for locality.
		
		Returns a `DeviceAssignment` that describes the cores in the topology assigned
		to each core of each replica.
		
		`computation_shape` and `computation_stride` values should be powers of 2 for
		optimal packing.
		
		Args:
		  topology: A `Topology` object that describes the TPU cluster topology.
		    To obtain a TPU topology, evaluate the `Tensor` returned by
		    `initialize_system` using `Session.run`. Either a serialized
		    `TopologyProto` or a `Topology` object may be passed. Note: you must
		    evaluate the `Tensor` first; you cannot pass an unevaluated `Tensor` here.
		  computation_shape: A rank 1 int32 numpy array with size equal to the
		    topology rank, describing the shape of the computation's block of cores.
		    If None, the `computation_shape` is `[1] * topology_rank`.
		  computation_stride: A rank 1 int32 numpy array of size `topology_rank`,
		    describing the inter-core spacing of the `computation_shape` cores in the
		    TPU topology. If None, the `computation_stride` is `[1] * topology_rank`.
		  num_replicas: The number of computation replicas to run. The replicas will
		    be packed into the free spaces of the topology.
		
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
	static public function device_assignment(topology:Dynamic, ?computation_shape:Dynamic, ?computation_stride:Dynamic, ?num_replicas:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}