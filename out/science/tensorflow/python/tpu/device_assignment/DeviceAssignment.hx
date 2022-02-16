/* This file is generated, do not edit! */
package tensorflow.python.tpu.device_assignment;
@:pythonImport("tensorflow.python.tpu.device_assignment", "DeviceAssignment") extern class DeviceAssignment {
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
		Constructs a `DeviceAssignment` object.
		
		Args:
		  topology: A `Topology` object that describes the physical TPU topology.
		  core_assignment: A logical to physical core mapping, represented as a
		    rank 3 numpy array. See the description of the `core_assignment`
		    property for more details.
		
		Raises:
		  ValueError: If `topology` is not `Topology` object.
		  ValueError: If `core_assignment` is not a rank 3 numpy array.
	**/
	@:native("__init__")
	public function ___init__(topology:Dynamic, core_assignment:Dynamic):Dynamic;
	/**
		Constructs a `DeviceAssignment` object.
		
		Args:
		  topology: A `Topology` object that describes the physical TPU topology.
		  core_assignment: A logical to physical core mapping, represented as a
		    rank 3 numpy array. See the description of the `core_assignment`
		    property for more details.
		
		Raises:
		  ValueError: If `topology` is not `Topology` object.
		  ValueError: If `core_assignment` is not a rank 3 numpy array.
	**/
	public function new(topology:Dynamic, core_assignment:Dynamic):Void;
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
	static public function build(topology:Dynamic, ?computation_shape:Dynamic, ?computation_stride:Dynamic, ?num_replicas:Dynamic):Dynamic;
	/**
		Returns the physical topology coordinates of a logical core.
	**/
	public function coordinates(replica:Dynamic, logical_core:Dynamic):Dynamic;
	/**
		The logical to physical core mapping.
		
		Returns:
		  An integer numpy array of rank 3, with shape
		  `[num_replicas, num_cores_per_replica, topology_rank]`. Maps
		  (replica, logical core) pairs to physical topology coordinates.
	**/
	public var core_assignment : Dynamic;
	/**
		Returns the CPU device attached to a logical core.
	**/
	public function host_device(?replica:Dynamic, ?logical_core:Dynamic, ?job:Dynamic):Dynamic;
	/**
		Lookup replica ids by task number and logical core.
		
		Args:
		  task_id: TensorFlow task number.
		  logical_core: An integer, identifying a logical core.
		Returns:
		  A sorted list of the replicas that are attached to that task and
		  logical_core.
		Raises:
		  ValueError: If no replica exists in the task which contains the logical
		  core.
	**/
	public function lookup_replicas(task_id:Dynamic, logical_core:Dynamic):Dynamic;
	/**
		The number of cores per replica.
	**/
	public var num_cores_per_replica : Dynamic;
	/**
		The number of replicas of the computation.
	**/
	public var num_replicas : Dynamic;
	/**
		A `Topology` that describes the TPU topology.
	**/
	public var topology : Dynamic;
	/**
		Returns the name of the TPU device assigned to a logical core.
	**/
	public function tpu_device(?replica:Dynamic, ?logical_core:Dynamic, ?job:Dynamic):Dynamic;
	/**
		Returns the ordinal of the TPU device assigned to a logical core.
	**/
	public function tpu_ordinal(?replica:Dynamic, ?logical_core:Dynamic):Dynamic;
}