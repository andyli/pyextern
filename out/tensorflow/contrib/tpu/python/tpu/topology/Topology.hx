/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.topology;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.topology", "Topology") extern class Topology {
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
		Builds a Topology object.
		
		If `serialized` is not `None`, the topology is parsed from `serialized` and
		the other arguments are ignored. Otherwise, the topology is computed from
		`mesh_shape` and `device_coordinates`.
		
		Args:
		  serialized: A serialized `TopologyProto`, or `None`. If not `None`, the
		    serialized proto is parsed to discover the topology.
		  mesh_shape: A sequence of 3 positive integers, or `None`. If not `None`,
		    the shape of the TPU topology, in number of cores. Ignored if
		    `serialized` is not `None`.
		  device_coordinates: A rank 3 numpy array that describes the mapping from
		    TensorFlow TPU devices to TPU fabric coordinates, or `None`. Ignored
		    if `serialized is not `None`.
		
		Raises:
		  ValueError: If `serialized` does not describe a well-formed topology.
		  ValueError: If `serialized` is `None` and `mesh_shape` is not a sequence
		    of 3 positive integers.
		  ValueError: If `serialized` is `None` and `device_coordinates` is not a
		    rank 3 numpy int32 array that describes a valid coordinate mapping.
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
		  mesh_shape: A sequence of 3 positive integers, or `None`. If not `None`,
		    the shape of the TPU topology, in number of cores. Ignored if
		    `serialized` is not `None`.
		  device_coordinates: A rank 3 numpy array that describes the mapping from
		    TensorFlow TPU devices to TPU fabric coordinates, or `None`. Ignored
		    if `serialized is not `None`.
		
		Raises:
		  ValueError: If `serialized` does not describe a well-formed topology.
		  ValueError: If `serialized` is `None` and `mesh_shape` is not a sequence
		    of 3 positive integers.
		  ValueError: If `serialized` is `None` and `device_coordinates` is not a
		    rank 3 numpy int32 array that describes a valid coordinate mapping.
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
	/**
		Parses a serialized `TopologyProto` into `self`.
	**/
	public function _parse_topology(serialized:Dynamic):Dynamic;
	/**
		Describes the mapping from TPU devices to topology coordinates.
		
		Returns:
		  A rank 3 int32 array with shape `[tasks, devices, axis]`.
		  `tasks` is the number of tasks in the TPU cluster, `devices` is the number
		  of TPU devices per task, and `axis` is the number of axes in the TPU
		  cluster topology. Each entry gives the `axis`-th coordinate in the
		  topology of a task/device pair. TPU topologies are 3-dimensional, with
		  dimensions `(x, y, core number)`.
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
}