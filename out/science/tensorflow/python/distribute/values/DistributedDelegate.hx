/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "DistributedDelegate") extern class DistributedDelegate {
	public function __abs__():Dynamic;
	public function __add__(o:Dynamic):Dynamic;
	public function __and__(o:Dynamic):Dynamic;
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
	public function __div__(o:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(o:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(o:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(o:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(o:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Should only be called by subclass __init__.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic):Dynamic;
	/**
		Should only be called by subclass __init__.
	**/
	public function new(values:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(o:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(o:Dynamic):Dynamic;
	public function __matmul__(o:Dynamic):Dynamic;
	public function __mod__(o:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(o:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(o:Dynamic):Dynamic;
	public function __pow__(o:Dynamic, ?modulo:Dynamic):Dynamic;
	public function __radd__(o:Dynamic):Dynamic;
	public function __rand__(o:Dynamic):Dynamic;
	public function __rdiv__(o:Dynamic):Dynamic;
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
	public function __rfloordiv__(o:Dynamic):Dynamic;
	public function __rmatmul__(o:Dynamic):Dynamic;
	public function __rmod__(o:Dynamic):Dynamic;
	public function __rmul__(o:Dynamic):Dynamic;
	public function __ror__(o:Dynamic):Dynamic;
	public function __rpow__(o:Dynamic):Dynamic;
	public function __rsub__(o:Dynamic):Dynamic;
	public function __rtruediv__(o:Dynamic):Dynamic;
	public function __rxor__(o:Dynamic):Dynamic;
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
	public function __sub__(o:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(o:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(o:Dynamic):Dynamic;
	public var _devices : Dynamic;
	/**
		Returns the value for the current device or raises a ValueError.
	**/
	public function _get():Dynamic;
	/**
		Returns the value for operations for the current device.
		
		Some implementations, e.g. `TPUMirroredVariable`, are not able to return the
		value type within a replica context. They can, however, return a value that
		can be used by the operations below.
	**/
	public function _get_as_operand():Dynamic;
	public function _get_cross_replica():Dynamic;
	/**
		Returns value in same replica or device if possible, else the _primary.
	**/
	public function _get_on_device_or_primary():Dynamic;
	/**
		Returns a representative component.
	**/
	public var _primary : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the per replica values.
	**/
	public var values : Dynamic;
}