/* This file is generated, do not edit! */
package torch.fx.experimental.partitioner_utils;
@:pythonImport("torch.fx.experimental.partitioner_utils", "PartitionerConfig") extern class PartitionerConfig {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create new instance of PartitionerConfig(devices, mode, transfer_rate_bytes_per_sec, node_to_latency_mapping, node_to_partition_mapping, partition_to_logical_device_mapping, saturate_host)
	**/
	static public function __new__(_cls:Dynamic, devices:Dynamic, ?mode:Dynamic, ?transfer_rate_bytes_per_sec:Dynamic, ?node_to_latency_mapping:Dynamic, ?node_to_partition_mapping:Dynamic, ?partition_to_logical_device_mapping:Dynamic, ?saturate_host:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _field_types : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Make a new PartitionerConfig object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Return a new PartitionerConfig object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var devices : Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var mode : Dynamic;
	/**
		Alias for field number 3
	**/
	public var node_to_latency_mapping : Dynamic;
	/**
		Alias for field number 4
	**/
	public var node_to_partition_mapping : Dynamic;
	/**
		Alias for field number 5
	**/
	public var partition_to_logical_device_mapping : Dynamic;
	/**
		Alias for field number 6
	**/
	public var saturate_host : Dynamic;
	/**
		Alias for field number 2
	**/
	public var transfer_rate_bytes_per_sec : Dynamic;
}