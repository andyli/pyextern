/* This file is generated, do not edit! */
package tensorflow.python.training.saving.saveable_object_util;
@:pythonImport("tensorflow.python.training.saving.saveable_object_util", "ResourceVariableSaveable") extern class ResourceVariableSaveable {
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
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	@:native("__init__")
	public function ___init__(_var:Dynamic, slice_spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	public function new(_var:Dynamic, slice_spec:Dynamic, name:Dynamic):Void;
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
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
	/**
		A hint to restore assertions that this object is optional.
	**/
	public var optional_restore : Dynamic;
	/**
		Restores this object from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint
		  restored_shapes: the shapes this object should conform to after
		    restore, or None.
		
		Returns:
		  An operation that restores the state of the object.
		
		Raises:
		  ValueError: If the object cannot be restored using the provided
		    parameters.
	**/
	public function restore(restored_tensors:Dynamic, restored_shapes:Dynamic):Dynamic;
}