/* This file is generated, do not edit! */
package tensorflow.python.framework.device;
@:pythonImport("tensorflow.python.framework.device", "MergeDevice") extern class MergeDevice {
	/**
		Call self as a function.
	**/
	public function __call__(node_def:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(spec:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(spec:Dynamic):Void;
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
	public var _spec : Dynamic;
	/**
		Indicate whether the wrapped spec is empty.
		
		In the degenerate case where self._spec is an empty specification, a caller
		may wish to skip a merge step entirely. (However this class does not have
		enough information to make that determination.)
		
		Returns:
		  A boolean indicating whether a device merge will be trivial.
	**/
	public var is_null_merge : Dynamic;
	/**
		Merge a node def without materializing a full DeviceSpec object.
		
		Often a device merge is invoked in order to generate a string which can be
		passed into the c api. In such a case, we can cache the
		  node_def.device  ->  merge_result_string
		
		map, and in most cases avoid:
		  - Materializing a copy of self._spec (In the case of DeviceSpecV1)
		  - Materializing a DeviceSpec for node_def.device
		  - A DeviceSpec.merge_from invocation
		
		In practice the cache hit rate for this function is very high, because the
		number of invocations when iterating through the device stack is much
		larger than the number of devices.
		
		Args:
		  node_def: An Operation (or Operation-like) to merge device constraints
		    with self._spec
		
		Returns:
		  A string containing the merged device specification.
	**/
	public function shortcut_string_merge(node_def:Dynamic):Dynamic;
}