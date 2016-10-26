/* This file is generated, do not edit! */
package tensorflow.python.training.saver;
@:pythonImport("tensorflow.python.training.saver", "BaseSaverBuilder") extern class BaseSaverBuilder {
	/**
		Class used to describe variable slices that need to be saved.
	**/
	static public function VarToSave(_var:Dynamic, slice_spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Add operations to restore vars_to_save.
		
		Args:
		  filename_tensor: Tensor for the path of the file to load.
		  vars_to_save: A list of _VarToSave objects.
		  restore_sequentially: True if we want to restore variables sequentially
		    within a shard.
		  reshape: True if we want to reshape loaded tensors to the shape of
		    the corresponding variable.
		  preferred_shard: Shard to open first when loading a sharded file.
		  name: Name for the returned op.
		
		Returns:
		  An Operation that restores the variables.
	**/
	public function _AddRestoreOps(filename_tensor:Dynamic, vars_to_save:Dynamic, restore_sequentially:Dynamic, reshape:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add ops to save variables that are on the same shard.
		
		Args:
		  filename_tensor: String Tensor.
		  vars_to_save: A list of _VarToSave objects.
		
		Returns:
		  A tensor with the filename used to save.
	**/
	public function _AddSaveOps(filename_tensor:Dynamic, vars_to_save:Dynamic):Dynamic;
	/**
		Add Ops to restore variables from multiple devices.
		
		Args:
		  filename_tensor: Tensor for the path of the file to load.
		  per_device: A list of (device, _VarToSave) pairs, as
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
		  filename_tensor: String Tensor.
		  per_device: A list of (device, BaseSaverBuilder.VarToSave) pairs, as
		    returned by _GroupByDevices().
		
		Returns:
		  An op to save the variables.
	**/
	public function _AddShardedSaveOps(filename_tensor:Dynamic, per_device:Dynamic):Dynamic;
	/**
		Create a VarToSave and add it  to the vars_to_save list.
		
		Args:
		  vars_to_save: List to append the new VarToSave to.
		  seen_variables: Set of variables already processed.  Used to check
		    that each variable is only saved once.
		  variable: Variable to save.
		  slice_spec: String.  Slice spec for the variable.
		  name: Name to use to save the variable.
		
		Raises:
		  ValueError: If the variable has already been processed.
	**/
	public function _AddVarToSave(vars_to_save:Dynamic, seen_variables:Dynamic, variable:Dynamic, slice_spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Group Variable tensor slices per device.
		
		TODO(touts): Make sure that all the devices found are on different
		job/replica/task/cpu|gpu.  It would be bad if 2 were on the same device.
		It can happen if the devices as unspecified.
		
		Args:
		  vars_to_save: A list of BaseSaverBuilder.VarToSave objects.
		
		Returns:
		  A list of tuples: (device_name, BaseSaverBuilder.VarToSave) tuples.
		  The list is sorted by ascending device_name.
	**/
	public function _GroupByDevices(vars_to_save:Dynamic):Dynamic;
	public function _IsVariable(v:Dynamic):Dynamic;
	/**
		Returns the variables and names that will be used for a Saver.
		
		Args:
		  names_to_variables: A dict (k, v) where k is the name of a variable and v
		     is a Variable to save or a BaseSaverBuilder.Saver.
		
		Returns:
		  A list of BaseSaverBuilder.VarToSave objects.
		
		Raises:
		  TypeError: If any of the keys are not strings or any of the
		    values are not one of Tensor or Variable.
		  ValueError: If the same variable is given in more than one value
		    (this also applies to slices of SlicedVariables).
	**/
	public function _ValidateAndSliceInputs(names_to_variables:Dynamic):Dynamic;
	/**
		Create a dictionary of names to variable lists.
		
		Args:
		  var_list: A list, tuple, or set of Variables.
		
		Returns:
		  A dictionary of variable names to the variables that must be saved under
		  that name.  Variables with save_slice_info are grouped together under the
		  same key in no particular order.
		
		Raises:
		  TypeError: If the type of var_list or its elements is not supported.
		  ValueError: If at least two variables share the same name.
	**/
	public function _VarListToDict(var_list:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	/**
		Adds save/restore nodes to the graph and creates a SaverDef proto.
		
		Args:
		  names_to_variables: A dictionary mapping name to a Variable.
		    Each name will be associated with the
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
		    loading/saving.
		
		Returns:
		  A SaverDef proto.
		
		Raises:
		  TypeError: If 'names_to_variables' is not a dictionary mapping string
		    keys to variable Tensors.
		  ValueError: If any of the keys or values in 'names_to_variables' is not
		    unique.
	**/
	public function build(names_to_variables:Dynamic, ?reshape:Dynamic, ?sharded:Dynamic, ?max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?name:Dynamic, ?restore_sequentially:Dynamic, ?filename:Dynamic):Dynamic;
	/**
		Create an Op to read the variable 'var_to_save'.
		
		This is intended to be overridden by subclasses that want to generate
		different Ops.
		
		Args:
		  filename_tensor: String Tensor.
		  var_to_save: A BaseSaverBuilder.VarToSave object.
		  preferred_shard: Int.  Shard to open first when loading a sharded file.
		
		Returns:
		  A Tensor resulting from reading 'var_to_save' from 'filename'.
	**/
	public function restore_op(filename_tensor:Dynamic, var_to_save:Dynamic, preferred_shard:Dynamic):Dynamic;
	/**
		Create an Op to save 'vars_to_save'.
		
		This is intended to be overridden by subclasses that want to generate
		different Ops.
		
		Args:
		  filename_tensor: String Tensor.
		  vars_to_save: A list of BaseSaverBuilder.VarToSave objects.
		
		Returns:
		  An Operation that save the variables.
	**/
	public function save_op(filename_tensor:Dynamic, vars_to_save:Dynamic):Dynamic;
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