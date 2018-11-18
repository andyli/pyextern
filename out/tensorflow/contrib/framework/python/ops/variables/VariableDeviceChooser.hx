/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.variables;
@:pythonImport("tensorflow.contrib.framework.python.ops.variables", "VariableDeviceChooser") extern class VariableDeviceChooser {
	/**
		Call self as a function.
	**/
	public function __call__(op:Dynamic):Dynamic;
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
		Initialize VariableDeviceChooser.
		
		Usage:
		  To use with 2 parameter servers:
		    VariableDeviceChooser(2)
		
		  To use without parameter servers:
		    VariableDeviceChooser()
		    VariableDeviceChooser(device_type='GPU') # For GPU placement
		
		Args:
		  num_tasks: number of tasks.
		  job_name: String, a name for the parameter server job.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left
		    unspecified, device represents 'any' device_index.
	**/
	@:native("__init__")
	public function ___init__(?num_tasks:Dynamic, ?job_name:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic, ?replica:Dynamic):Dynamic;
	/**
		Initialize VariableDeviceChooser.
		
		Usage:
		  To use with 2 parameter servers:
		    VariableDeviceChooser(2)
		
		  To use without parameter servers:
		    VariableDeviceChooser()
		    VariableDeviceChooser(device_type='GPU') # For GPU placement
		
		Args:
		  num_tasks: number of tasks.
		  job_name: String, a name for the parameter server job.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left
		    unspecified, device represents 'any' device_index.
	**/
	public function new(?num_tasks:Dynamic, ?job_name:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic, ?replica:Dynamic):Void;
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
}