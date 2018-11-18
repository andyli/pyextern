/* This file is generated, do not edit! */
package tensorflow.python.training.saver;
@:pythonImport("tensorflow.python.training.saver", "BulkSaverBuilder") extern class BulkSaverBuilder {
	/**
		Create a dictionary of names to operation lists.
		
		Args:
		  op_list: A list, tuple, or set of Variables or SaveableObjects.
		  convert_variable_to_tensor: Whether or not to convert single Variables
		    with no slice info into Tensors.
		
		Returns:
		  A dictionary of names to the operations that must be saved under
		  that name.  Variables with save_slice_info are grouped together under the
		  same key in no particular order.
		
		Raises:
		  TypeError: If the type of op_list or its elements is not supported.
		  ValueError: If at least two saveables share the same name.
	**/
	static public function OpListToDict(op_list:Dynamic, ?convert_variable_to_tensor:Dynamic):Dynamic;
	/**
		SaveableObject implementation that handles ResourceVariables.
	**/
	static public function ResourceVariableSaveable(_var:Dynamic, slice_spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Class used to describe tensor slices that need to be saved.
	**/
	static public function SaveSpec(tensor:Dynamic, slice_spec:Dynamic, name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Base class for saving and restoring saveable objects.
	**/
	static public function SaveableObject(op:Dynamic, specs:Dynamic, name:Dynamic):Dynamic;
	/**
		Create `SaveableObject`s from an operation.
		
		Args:
		  op: A variable, operation, or SaveableObject to coerce into a
		    SaveableObject.
		  name: A string name for the SaveableObject.
		
		Yields:
		  `SaveableObject`s which together save/restore `op`.
		
		Raises:
		  TypeError: If `name` is not a string.
		  ValueError: For operations with no known conversion to SaveableObject.
	**/
	static public function SaveableObjectsForOp(op:Dynamic, name:Dynamic):Dynamic;
	/**
		SaveableObject implementation that handles Variables.
	**/
	static public function VariableSaveable(_var:Dynamic, slice_spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Add operations to restore saveables.
		
		Args:
		  filename_tensor: Tensor for the path of the file to load.
		  saveables: A list of SaveableObject objects.
		  restore_sequentially: True if we want to restore variables sequentially
		    within a shard.
		  reshape: True if we want to reshape loaded tensors to the shape of
		    the corresponding variable.
		  preferred_shard: Shard to open first when loading a sharded file.
		  name: Name for the returned op.
		
		Returns:
		  An Operation that restores the variables.
	**/
	public function _AddRestoreOps(filename_tensor:Dynamic, saveables:Dynamic, restore_sequentially:Dynamic, reshape:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add ops to save variables that are on the same shard.
		
		Args:
		  filename_tensor: String Tensor.
		  saveables: A list of SaveableObject objects.
		
		Returns:
		  A tensor with the filename used to save.
	**/
	public function _AddSaveOps(filename_tensor:Dynamic, saveables:Dynamic):Dynamic;
	/**
		Adds the saveable to the saveables list.
		
		Args:
		  saveables: List to append the SaveableObject to.
		  seen_ops: Set of the ops of the saveables already processed.  Used to
		    check that each saveable is only saved once.
		  saveable: The saveable.
		
		Raises:
		  ValueError: If the saveable has already been processed.
	**/
	public function _AddSaveable(saveables:Dynamic, seen_ops:Dynamic, saveable:Dynamic):Dynamic;
	/**
		Add Ops to restore variables from multiple devices.
		
		Args:
		  filename_tensor: Tensor for the path of the file to load.
		  per_device: A list of (device, SaveableObject) pairs, as
		    returned by _GroupByDevices().
		  restore_sequentially: True if we want to restore variables sequentially
		    within a shard.
		  reshape: True if we want to reshape loaded tensors to the shape of
		    the corresponding variable.
		
		Returns:
		  An Operation that restores the variables.
	**/
	public function _AddShardedRestoreOps(filename_tensor:Dynamic, per_device:Dynamic, restore_sequentially:Dynamic, reshape:Dynamic):Dynamic;
	/**
		Add ops to save the params per shard.
		
		Args:
		  filename_tensor: a scalar String Tensor.
		  per_device: A list of (device, BaseSaverBuilder.SaveableObject) pairs, as
		    returned by _GroupByDevices().
		
		Returns:
		  An op to save the variables.
	**/
	public function _AddShardedSaveOps(filename_tensor:Dynamic, per_device:Dynamic):Dynamic;
	/**
		Add ops to save the params per shard, for the V2 format.
		
		Note that the sharded save procedure for the V2 format is different from
		V1: there is a special "merge" step that merges the small metadata produced
		from each device.
		
		Args:
		  checkpoint_prefix: scalar String Tensor.  Interpreted *NOT AS A
		    FILENAME*, but as a prefix of a V2 checkpoint;
		  per_device: A list of (device, BaseSaverBuilder.VarToSave) pairs, as
		    returned by _GroupByDevices().
		
		Returns:
		  An op to save the variables, which, when evaluated, returns the prefix
		    "<user-fed prefix>" only and does not include the sharded spec suffix.
	**/
	public function _AddShardedSaveOpsForV2(checkpoint_prefix:Dynamic, per_device:Dynamic):Dynamic;
	/**
		Group Variable tensor slices per device.
		
		TODO(touts): Make sure that all the devices found are on different
		job/replica/task/cpu|gpu.  It would be bad if 2 were on the same device.
		It can happen if the devices are unspecified.
		
		Args:
		  saveables: A list of BaseSaverBuilder.SaveableObject objects.
		
		Returns:
		  A list of tuples: (device_name, BaseSaverBuilder.SaveableObject) tuples.
		  The list is sorted by ascending device_name.
		
		Raises:
		  ValueError: If the tensors of a saveable are on different devices.
	**/
	public function _GroupByDevices(saveables:Dynamic):Dynamic;
	static public function _IsVariable(v:Dynamic):Dynamic;
	/**
		Returns the variables and names that will be used for a Saver.
		
		Args:
		  names_to_saveables: A dict (k, v) where k is the name of an operation and
		     v is an operation to save or a BaseSaverBuilder.Saver.
		
		Returns:
		  A list of BaseSaverBuilder.SaveableObject objects.
		
		Raises:
		  TypeError: If any of the keys are not strings or any of the
		    values are not one of Tensor or Variable or a checkpointable operation.
		  ValueError: If the same operation is given in more than one value
		    (this also applies to slices of SlicedVariables).
	**/
	public function _ValidateAndSliceInputs(names_to_saveables:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?write_version:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?write_version:Dynamic):Void;
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
		build() with option to only perform save and restore.
	**/
	public function _build_internal(names_to_saveables:Dynamic, ?reshape:Dynamic, ?sharded:Dynamic, ?max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?name:Dynamic, ?restore_sequentially:Dynamic, ?filename:Dynamic, ?build_save:Dynamic, ?build_restore:Dynamic):Dynamic;
	/**
		Builds save/restore graph nodes or runs save/restore in eager mode.
		
		Args:
		  names_to_saveables: A dictionary mapping name to a Variable or
		    SaveableObject. Each name will be associated with the
		    corresponding variable in the checkpoint.
		  reshape: If True, allow restoring parameters from a checkpoint
		    that where the parameters have a different shape.  This is
		    only needed when you try to restore from a Dist-Belief checkpoint,
		    and only some times.
		  sharded: If True, shard the checkpoints, one per device that has
		    Variable nodes.
		  max_to_keep: Maximum number of checkpoints to keep.  As new checkpoints
		    are created, old ones are deleted.  If None or 0, no checkpoints are
		    deleted from the filesystem but only the last one is kept in the
		    `checkpoint` file.  Presently the number is only roughly enforced.  For
		    example in case of restarts more than max_to_keep checkpoints may be
		    kept.
		  keep_checkpoint_every_n_hours: How often checkpoints should be kept.
		    Defaults to 10,000 hours.
		  name: String.  Optional name to use as a prefix when adding operations.
		  restore_sequentially: A Bool, which if true, causes restore of different
		    variables to happen sequentially within each device.
		  filename: If known at graph construction time, filename used for variable
		    loading/saving. If None, then the default name "model" will be used.
		
		Returns:
		  A SaverDef proto.
		
		Raises:
		  TypeError: If 'names_to_saveables' is not a dictionary mapping string
		    keys to variable Tensors.
		  ValueError: If any of the keys or values in 'names_to_saveables' is not
		    unique.
	**/
	public function build(names_to_saveables:Dynamic, ?reshape:Dynamic, ?sharded:Dynamic, ?max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?name:Dynamic, ?restore_sequentially:Dynamic, ?filename:Dynamic):Dynamic;
	/**
		Restore all tensors contained in saveables.
		
		By default, this issues separate calls to `restore_op` for each saveable.
		Subclasses may override to load multiple saveables in a single call.
		
		Args:
		  filename_tensor: String Tensor.
		  saveables: List of BaseSaverBuilder.SaveableObject objects.
		  preferred_shard: Int.  Shard to open first when loading a sharded file.
		  restore_sequentially: Unused.  Bool.  If true, each restore is sequential.
		
		Returns:
		  A list of Tensors resulting from reading 'saveable' from
		    'filename'.
	**/
	public function bulk_restore(filename_tensor:Dynamic, saveables:Dynamic, preferred_shard:Dynamic, restore_sequentially:Dynamic):Dynamic;
	/**
		Create ops to restore 'saveable'.
		
		This is intended to be overridden by subclasses that want to generate
		different Ops.
		
		Args:
		  filename_tensor: String Tensor.
		  saveable: A BaseSaverBuilder.SaveableObject object.
		  preferred_shard: Int.  Shard to open first when loading a sharded file.
		
		Returns:
		  A list of Tensors resulting from reading 'saveable' from
		    'filename'.
	**/
	public function restore_op(filename_tensor:Dynamic, saveable:Dynamic, preferred_shard:Dynamic):Dynamic;
	/**
		Create an Op to save 'saveables'.
		
		This is intended to be overridden by subclasses that want to generate
		different Ops.
		
		Args:
		  filename_tensor: String Tensor.
		  saveables: A list of BaseSaverBuilder.SaveableObject objects.
		
		Returns:
		  An Operation that save the variables.
		
		Raises:
		  RuntimeError: (implementation detail) if "self._write_version" is an
		    unexpected value.
	**/
	public function save_op(filename_tensor:Dynamic, saveables:Dynamic):Dynamic;
	/**
		Append sharding information to a filename.
		
		Args:
		  filename_tensor: A string tensor.
		  shard: Integer.  The shard for the filename.
		  num_shards: An int Tensor for the number of shards.
		
		Returns:
		  A string tensor.
	**/
	public function sharded_filename(filename_tensor:Dynamic, shard:Dynamic, num_shards:Dynamic):Dynamic;
}