/* This file is generated, do not edit! */
package tensorflow.python.training.saving.saveable_object;
@:pythonImport("tensorflow.python.training.saving.saveable_object", "SaveSpec") extern class SaveSpec {
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
		Creates a `SaveSpec` object.
		
		Args:
		  tensor: the tensor to save or callable that produces a tensor to save.
		    If the value is `None`, the `SaveSpec` is ignored.
		  slice_spec: the slice to be saved. See `Variable.SaveSliceInfo`.
		  name: the name to save the tensor under.
		  dtype: The data type of the Tensor. Required if `tensor` is callable.
		    Used for error checking in the restore op.
		  device: The device generating and consuming this tensor. Required if
		    `tensor` is callable. Used to group objects to save by device.
	**/
	@:native("__init__")
	public function ___init__(tensor:Dynamic, slice_spec:Dynamic, name:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Creates a `SaveSpec` object.
		
		Args:
		  tensor: the tensor to save or callable that produces a tensor to save.
		    If the value is `None`, the `SaveSpec` is ignored.
		  slice_spec: the slice to be saved. See `Variable.SaveSliceInfo`.
		  name: the name to save the tensor under.
		  dtype: The data type of the Tensor. Required if `tensor` is callable.
		    Used for error checking in the restore op.
		  device: The device generating and consuming this tensor. Required if
		    `tensor` is callable. Used to group objects to save by device.
	**/
	public function new(tensor:Dynamic, slice_spec:Dynamic, name:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Void;
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
	public var tensor : Dynamic;
}