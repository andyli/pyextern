/* This file is generated, do not edit! */
package tensorflow.python.grappler.cluster;
@:pythonImport("tensorflow.python.grappler.cluster", "Cluster") extern class Cluster {
	/**
		Returns a snapshot of the peak memory usage.
		
		Args:
		  item: The item for which to measure the costs.
		Returns: A hashtable indexed by device name.
	**/
	public function DeterminePeakMemoryUsage(item:Dynamic):Dynamic;
	public function EstimatePerformance(device:Dynamic):Dynamic;
	public function GetSupportedDevices(item:Dynamic):Dynamic;
	/**
		Returns a list of all available operations (sorted alphabetically).
	**/
	public function ListAvailableOps():Dynamic;
	/**
		Returns a list of available hardware devices.
	**/
	public function ListDevices():Dynamic;
	/**
		Returns the cost of running the specified item.
		
		Args:
		  item: The item for which to measure the costs.
		Returns: The triplet op_perfs, runtime, step_stats.
	**/
	public function MeasureCosts(item:Dynamic):Dynamic;
	public function Shutdown():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Creates a Cluster.
		
		Args:
		  allow_soft_placement: If True, TF will automatically fix illegal
		    placements instead of erroring out if the placement isn't legal.
		  disable_detailed_stats: If True, detailed statistics will not be
		    available.
		  disable_timeline: If True, the timeline information will not be reported.
		  devices: A list of devices of type device_properties_pb2.NamedDevice.
		    If None, a device list will be created based on the spec of
		    the local machine.
	**/
	@:native("__init__")
	public function ___init__(?allow_soft_placement:Dynamic, ?disable_detailed_stats:Dynamic, ?disable_timeline:Dynamic, ?devices:Dynamic):Dynamic;
	/**
		Creates a Cluster.
		
		Args:
		  allow_soft_placement: If True, TF will automatically fix illegal
		    placements instead of erroring out if the placement isn't legal.
		  disable_detailed_stats: If True, detailed statistics will not be
		    available.
		  disable_timeline: If True, the timeline information will not be reported.
		  devices: A list of devices of type device_properties_pb2.NamedDevice.
		    If None, a device list will be created based on the spec of
		    the local machine.
	**/
	public function new(?allow_soft_placement:Dynamic, ?disable_detailed_stats:Dynamic, ?disable_timeline:Dynamic, ?devices:Dynamic):Void;
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
	public var tf_cluster : Dynamic;
}