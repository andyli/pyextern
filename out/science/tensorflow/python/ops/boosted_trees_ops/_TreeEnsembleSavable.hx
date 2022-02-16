/* This file is generated, do not edit! */
package tensorflow.python.ops.boosted_trees_ops;
@:pythonImport("tensorflow.python.ops.boosted_trees_ops", "_TreeEnsembleSavable") extern class _TreeEnsembleSavable {
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
		Creates a _TreeEnsembleSavable object.
		
		Args:
		  resource_handle: handle to the decision tree ensemble variable.
		  create_op: the op to initialize the variable.
		  name: the name to save the tree ensemble variable under.
	**/
	@:native("__init__")
	public function ___init__(resource_handle:Dynamic, create_op:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates a _TreeEnsembleSavable object.
		
		Args:
		  resource_handle: handle to the decision tree ensemble variable.
		  create_op: the op to initialize the variable.
		  name: the name to save the tree ensemble variable under.
	**/
	public function new(resource_handle:Dynamic, create_op:Dynamic, name:Dynamic):Void;
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
		Restores the associated tree ensemble from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint.
		  unused_restored_shapes: the shapes this object should conform to after
		    restore. Not meaningful for trees.
		
		Returns:
		  The operation that restores the state of the tree ensemble variable.
	**/
	public function restore(restored_tensors:Dynamic, unused_restored_shapes:Dynamic):Dynamic;
}