/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.base;
@:pythonImport("tensorflow.python.training.checkpointable.base", "_CheckpointPosition") extern class _CheckpointPosition {
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
		Specify an object within a checkpoint.
		
		Args:
		  checkpoint: A _Checkpoint object.
		  proto_id: The index of this object in CheckpointableObjectGraph.nodes.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, proto_id:Dynamic):Dynamic;
	/**
		Specify an object within a checkpoint.
		
		Args:
		  checkpoint: A _Checkpoint object.
		  proto_id: The index of this object in CheckpointableObjectGraph.nodes.
	**/
	public function new(checkpoint:Dynamic, proto_id:Dynamic):Void;
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
		Looks up or creates SaveableObjects which don't have cached ops.
	**/
	public function _gather_ops_or_named_saveables():Dynamic;
	/**
		Set a checkpoint<->object correspondence and process slot variables.
		
		Args:
		  checkpointable: The object to record a correspondence for.
		Returns:
		  True if this is a new assignment, False if this object has already been
		  mapped to a checkpointed `Object` proto.
		Raises:
		  AssertionError: If another object is already bound to the `Object` proto.
	**/
	public function bind_object(checkpointable:Dynamic):Dynamic;
	public var checkpoint : Dynamic;
	public var checkpointable : Dynamic;
	/**
		Determine whether this value is restorable with a Tensor initializer.
	**/
	public function is_simple_variable():Dynamic;
	public var object_proto : Dynamic;
	/**
		Restore this value into `checkpointable`.
	**/
	public function restore(checkpointable:Dynamic):Dynamic;
	/**
		Create or fetch restore ops for this object's attributes.
		
		Requires that the `Checkpointable` Python object has been bound to an object
		ID in the checkpoint.
		
		Returns:
		  A list of operations when graph building, or an empty list when executing
		  eagerly.
	**/
	public function restore_ops():Dynamic;
	public var restore_uid : Dynamic;
	/**
		Create value `Tensor`s for this object's attributes.
		
		Does not require that the Python object has been created. Used for
		restore-on-create when executing eagerly.
		
		Returns:
		  A dictionary mapping from object attribute names to `Tensor`s.
	**/
	public function value_tensors():Dynamic;
}