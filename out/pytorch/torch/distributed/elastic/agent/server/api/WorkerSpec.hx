/* This file is generated, do not edit! */
package torch.distributed.elastic.agent.server.api;
@:pythonImport("torch.distributed.elastic.agent.server.api", "WorkerSpec") extern class WorkerSpec {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __dataclass_fields__ : Dynamic;
	static public var __dataclass_params__ : Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	@:native("__init__")
	public function ___init__(role:Dynamic, local_world_size:Dynamic, rdzv_handler:Dynamic, ?fn:Dynamic, ?entrypoint:Dynamic, ?args:Dynamic, ?max_restarts:Dynamic, ?monitor_interval:Dynamic, ?master_port:Dynamic, ?master_addr:Dynamic, ?redirects:Dynamic, ?tee:Dynamic):Dynamic;
	public function new(role:Dynamic, local_world_size:Dynamic, rdzv_handler:Dynamic, ?fn:Dynamic, ?entrypoint:Dynamic, ?args:Dynamic, ?max_restarts:Dynamic, ?monitor_interval:Dynamic, ?master_port:Dynamic, ?master_addr:Dynamic, ?redirects:Dynamic, ?tee:Dynamic):Void;
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
	public function __post_init__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
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
	static public var args : Dynamic;
	static public var entrypoint : Dynamic;
	static public var fn : Dynamic;
	/**
		If the entrypoint is a function (e.g. ``Callable``) returns its ``__qualname__``,
		else if the entrypoint is a binary (e.g. ``str``), returns the binary name.
	**/
	public function get_entrypoint_name():Dynamic;
	static public var master_addr : Dynamic;
	static public var master_port : Dynamic;
	static public var max_restarts : Dynamic;
	static public var monitor_interval : Dynamic;
	static public var redirects : Dynamic;
	static public var tee : Dynamic;
}