/* This file is generated, do not edit! */
package tensorflow.python.tpu.topology;
@:pythonImport("tensorflow.python.tpu.topology", "Topology") extern class Topology {
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
		Builds a Topology object.
		
		If `serialized` is not `None`, the topology is parsed from `serialized` and
		the other arguments are ignored. Otherwise, the topology is computed from
		`mesh_shape` and `device_coordinates`.
		
		Args:
		  serialized: A serialized `TopologyProto`, or `None`. If not `None`, the
		    serialized proto is parsed to discover the topology.
		  mesh_shape: A sequence of 4 positive integers, or `None`. If not `None`,
		    the shape of the TPU topology, in number of cores. Ignored if
		    `serialized` is not `None`.
		  device_coordinates: A rank 4 numpy array that describes the mapping from
		    TensorFlow TPU devices to TPU fabric coordinates, or `None`. Ignored
		    if `serialized is not `None`.
		
		Raises:
		  ValueError: If `serialized` does not describe a well-formed topology.
		  ValueError: If `serialized` is `None` and `mesh_shape` is not a sequence
		    of 4 positive integers.
		  ValueError: If `serialized` is `None` and `device_coordinates` is not a
		    rank 4 numpy int32 array that describes a valid coordinate mapping.
	**/
	@:native("__init__")
	public function ___init__(?serialized:Dynamic, ?mesh_shape:Dynamic, ?device_coordinates:Dynamic):Dynamic;
	/**
		Builds a Topology object.
		
		If `serialized` is not `None`, the topology is parsed from `serialized` and
		the other arguments are ignored. Otherwise, the topology is computed from
		`mesh_shape` and `device_coordinates`.
		
		Args:
		  serialized: A serialized `TopologyProto`, or `None`. If not `None`, the
		    serialized proto is parsed to discover the topology.
		  mesh_shape: A sequence of 4 positive integers, or `None`. If not `None`,
		    the shape of the TPU topology, in number of cores. Ignored if
		    `serialized` is not `None`.
		  device_coordinates: A rank 4 numpy array that describes the mapping from
		    TensorFlow TPU devices to TPU fabric coordinates, or `None`. Ignored
		    if `serialized is not `None`.
		
		Raises:
		  ValueError: If `serialized` does not describe a well-formed topology.
		  ValueError: If `serialized` is `None` and `mesh_shape` is not a sequence
		    of 4 positive integers.
		  ValueError: If `serialized` is `None` and `device_coordinates` is not a
		    rank 4 numpy int32 array that describes a valid coordinate mapping.
	**/
	public function new(?serialized:Dynamic, ?mesh_shape:Dynamic, ?device_coordinates:Dynamic):Void;
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
		Inverts a [task,device,axis] topology to [x,y,z] -> task/device maps.
	**/
	public function _invert_topology():Dynamic;
	/**
		Parses a serialized `TopologyProto` into `self`.
	**/
	public function _parse_topology(serialized:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the CPU device attached to a logical core.
	**/
	public function cpu_device_name_at_coordinates(device_coordinates:Dynamic, ?job:Dynamic):Dynamic;
	/**
		Describes the mapping from TPU devices to topology coordinates.
		
		Returns:
		  A rank 3 int32 array with shape `[tasks, devices, axis]`.
		  `tasks` is the number of tasks in the TPU cluster, `devices` is the number
		  of TPU devices per task, and `axis` is the number of axes in the TPU
		  cluster topology. Each entry gives the `axis`-th coordinate in the
		  topology of a task/device pair. TPU topologies are 4-dimensional, with
		  dimensions `(x, y, z, core number)`.
	**/
	public var device_coordinates : Dynamic;
	/**
		Returns the number of dimensions in the mesh.
	**/
	public var mesh_rank : Dynamic;
	/**
		A rank 1 int32 array describing the shape of the TPU topology.
	**/
	public var mesh_shape : Dynamic;
	/**
		Array of indices of missing devices.
	**/
	public var missing_devices : Dynamic;
	/**
		Returns the number of TensorFlow tasks in the TPU slice.
	**/
	public var num_tasks : Dynamic;
	/**
		Returns the number of TPU devices per task in the TPU slice.
	**/
	public var num_tpus_per_task : Dynamic;
	/**
		Returns the serialized form of the topology.
	**/
	public function serialized():Dynamic;
	/**
		Returns the TensorFlow task number attached to `device_coordinates`.
		
		Args:
		  device_coordinates: An integer sequence describing a device's physical
		    coordinates in the TPU fabric.
		
		Returns:
		  Returns the TensorFlow task number that contains the TPU device with those
		  physical coordinates.
	**/
	public function task_ordinal_at_coordinates(device_coordinates:Dynamic):Dynamic;
	/**
		Returns the name of the TPU device assigned to a logical core.
	**/
	public function tpu_device_name_at_coordinates(device_coordinates:Dynamic, ?job:Dynamic):Dynamic;
	/**
		Returns the TensorFlow device number at `device_coordinates`.
		
		Args:
		  device_coordinates: An integer sequence describing a device's physical
		    coordinates in the TPU fabric.
		
		Returns:
		  Returns the TensorFlow device number within the task corresponding to
		  attached to the device with those physical coordinates.
	**/
	public function tpu_device_ordinal_at_coordinates(device_coordinates:Dynamic):Dynamic;
}