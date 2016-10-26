/* This file is generated, do not edit! */
package tensorflow.python.framework.device;
@:pythonImport("tensorflow.python.framework.device", "DeviceSpec") extern class DeviceSpec {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a new `DeviceSpec` object.
		
		Args:
		  job: string.  Optional job name.
		  replica: int.  Optional replica index.
		  task: int.  Optional task index.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left
		    unspecified, device represents 'any' device_index.
	**/
	@:native("__init__")
	public function ___init__(?job:Dynamic, ?replica:Dynamic, ?task:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic):Dynamic;
	/**
		Create a new `DeviceSpec` object.
		
		Args:
		  job: string.  Optional job name.
		  replica: int.  Optional replica index.
		  task: int.  Optional task index.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left
		    unspecified, device represents 'any' device_index.
	**/
	public function new(?job:Dynamic, ?replica:Dynamic, ?task:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _clear():Dynamic;
	/**
		Construct a `DeviceSpec` from a string.
		
		Args:
		  spec: a string of the form
		   /job:<name>/replica:<id>/task:<id>/device:CPU:<id>
		  or
		   /job:<name>/replica:<id>/task:<id>/device:GPU:<id>
		  as cpu and gpu are mutually exclusive.
		  All entries are optional.
		
		Returns:
		  A DeviceSpec.
	**/
	static public function from_string(spec:Dynamic):Dynamic;
	public var job : Dynamic;
	/**
		Merge the properties of "dev" into this `DeviceSpec`.
		
		Args:
		  dev: a `DeviceSpec`.
	**/
	public function merge_from(dev:Dynamic):Dynamic;
	/**
		Parse a `DeviceSpec` name into its components.
		
		Args:
		  spec: a string of the form
		   /job:<name>/replica:<id>/task:<id>/device:CPU:<id>
		  or
		   /job:<name>/replica:<id>/task:<id>/device:GPU:<id>
		  as cpu and gpu are mutually exclusive.
		  All entries are optional.
		
		Returns:
		  The `DeviceSpec`.
		
		Raises:
		  ValueError: if the spec was not valid.
	**/
	public function parse_from_string(spec:Dynamic):Dynamic;
	public var replica : Dynamic;
	public var task : Dynamic;
	/**
		Return a string representation of this `DeviceSpec`.
		
		Returns:
		  a string of the form
		  /job:<name>/replica:<id>/task:<id>/device:<device_type>:<id>.
	**/
	public function to_string():Dynamic;
}