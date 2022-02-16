/* This file is generated, do not edit! */
package tensorflow.python.training.saving.functional_saver;
@:pythonImport("tensorflow.python.training.saving.functional_saver", "_SingleDeviceSaver") extern class _SingleDeviceSaver {
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
		Specify a list of `SaveableObject`s to save and restore.
		
		Args:
		  saveable_objects: A list of `SaveableObject`s.
	**/
	@:native("__init__")
	public function ___init__(saveable_objects:Dynamic):Dynamic;
	/**
		Specify a list of `SaveableObject`s to save and restore.
		
		Args:
		  saveable_objects: A list of `SaveableObject`s.
	**/
	public function new(saveable_objects:Dynamic):Void;
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
	public var _saveable_objects : Dynamic;
	/**
		Restore the saveable objects from a checkpoint with `file_prefix`.
		
		Args:
		  file_prefix: A string or scalar string Tensor containing the prefix for
		    files to read from.
		  options: Optional `CheckpointOptions` object.
		
		Returns:
		  A dictionary mapping from SaveableObject names to restore operations.
	**/
	public function restore(file_prefix:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Save the saveable objects to a checkpoint with `file_prefix`.
		
		Args:
		  file_prefix: A string or scalar string Tensor containing the prefix to
		    save under.
		  options: Optional `CheckpointOptions` object.
		Returns:
		  An `Operation`, or None when executing eagerly.
	**/
	public function save(file_prefix:Dynamic, ?options:Dynamic):Dynamic;
}