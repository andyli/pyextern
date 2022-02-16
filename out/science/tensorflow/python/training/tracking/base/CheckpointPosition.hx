/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.base;
@:pythonImport("tensorflow.python.training.tracking.base", "CheckpointPosition") extern class CheckpointPosition {
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
		Specify an object within a checkpoint.
		
		Args:
		  checkpoint: A _CheckpointRestoreCoordinator object.
		  proto_id: The index of this object in TrackableObjectGraph.nodes.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, proto_id:Dynamic):Dynamic;
	/**
		Specify an object within a checkpoint.
		
		Args:
		  checkpoint: A _CheckpointRestoreCoordinator object.
		  proto_id: The index of this object in TrackableObjectGraph.nodes.
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
	public var _checkpoint : Dynamic;
	public var _proto_id : Dynamic;
	/**
		Set a checkpoint<->object correspondence and process slot variables.
		
		Args:
		  trackable: The object to record a correspondence for.
		
		Returns:
		  True if this is a new assignment, False if this object has already been
		  mapped to a checkpointed `Object` proto.
		Raises:
		  AssertionError: If another object is already bound to the `Object` proto.
	**/
	public function bind_object(trackable:Dynamic):Dynamic;
	public var checkpoint : Dynamic;
	/**
		Looks up or creates SaveableObjects which don't have cached ops.
	**/
	public function gather_ops_or_named_saveables():Dynamic;
	/**
		Determine whether this value is restorable with a Tensor initializer.
	**/
	public function is_simple_variable():Dynamic;
	public var object_proto : Dynamic;
	/**
		Restore this value into `trackable`.
	**/
	public function restore(trackable:Dynamic):Dynamic;
	/**
		Create or fetch restore ops for this object's attributes.
		
		Requires that the `Trackable` Python object has been bound to an object
		ID in the checkpoint.
		
		Returns:
		  A list of operations when graph building, or an empty list when executing
		  eagerly.
	**/
	public function restore_ops():Dynamic;
	public var restore_uid : Dynamic;
	public var trackable : Dynamic;
	/**
		The shape of the VARIABLE_VALUE tensor.
		
		Returns:
		  If found a TensorShape object, otherwise None.
	**/
	public function value_shape():Dynamic;
	/**
		Create value `Tensor`s for this object's attributes.
		
		Does not require that the Python object has been created. Used for
		restore-on-create when executing eagerly.
		
		Args:
		  shape_and_slices: A dict mapping from object attribute names to a shape
		    and slice string that will be passed to a RestoreV2 op. If the dict is
		    None or if an object attribute is not in the dict, the full tensor will
		    be restored.
		
		Returns:
		  A dictionary mapping from object attribute names to `Tensor`s.
	**/
	public function value_tensors(?shape_and_slices:Dynamic):Dynamic;
}