/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_support;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_support", "TPUDistributionStrategy") extern class TPUDistributionStrategy {
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
		Construct a TPUDistributionStrategy.
		
		Args:
		  tpu_cluster_resolver: Any instance of `TPUClusterResolver`. If None, will
		    create one with '' as master address.
		  using_single_core: Bool. This is the debugging option, which might be
		    removed in future once the model replication functionality is mature
		    enough. If `False` (default behavior), the system automatically finds
		    the best configuration, in terms of number of TPU cores, for the model
		    replication, typically using all avaiable TPU cores. If overwrites as
		    `True`, force the model replication using single core, i.e., no
		    replication.
		Raises:
		  Exception: No TPU Found on the given worker.
	**/
	@:native("__init__")
	public function ___init__(?tpu_cluster_resolver:Dynamic, ?using_single_core:Dynamic):Dynamic;
	/**
		Construct a TPUDistributionStrategy.
		
		Args:
		  tpu_cluster_resolver: Any instance of `TPUClusterResolver`. If None, will
		    create one with '' as master address.
		  using_single_core: Bool. This is the debugging option, which might be
		    removed in future once the model replication functionality is mature
		    enough. If `False` (default behavior), the system automatically finds
		    the best configuration, in terms of number of TPU cores, for the model
		    replication, typically using all avaiable TPU cores. If overwrites as
		    `True`, force the model replication using single core, i.e., no
		    replication.
		Raises:
		  Exception: No TPU Found on the given worker.
	**/
	public function new(?tpu_cluster_resolver:Dynamic, ?using_single_core:Dynamic):Void;
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
		Makes a `TPUAssignment` for the passed in `cpu_model`.
	**/
	public function _make_assignment_for_model(cpu_model:Dynamic):Dynamic;
}