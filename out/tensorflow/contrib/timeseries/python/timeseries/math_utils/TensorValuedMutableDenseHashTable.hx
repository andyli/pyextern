/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.math_utils;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.math_utils", "TensorValuedMutableDenseHashTable") extern class TensorValuedMutableDenseHashTable {
	/**
		SaveableObject implementation for MutableDenseHashTable.
	**/
	static public function _Saveable(table:Dynamic, name:Dynamic):Dynamic;
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
		Creates an empty `MutableDenseHashTable` object.
		
		Creates a table, the type of its keys and values are specified by key_dtype
		and value_dtype, respectively.
		
		Args:
		  key_dtype: the type of the key tensors.
		  value_dtype: the type of the value tensors.
		  default_value: The value to use if a key is missing in the table.
		  empty_key: the key to use to represent empty buckets internally. Must not
		    be used in insert, remove or lookup operations.
		  initial_num_buckets: the initial number of buckets.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		  checkpoint: if True, the contents of the table are saved to and restored
		    from checkpoints. If `shared_name` is empty for a checkpointed table, it
		    is shared using the table node name.
		  deleted_key: the key to use to represent deleted buckets internally. Must
		    not be used in insert, remove or lookup operations and be different from
		    the empty_key.
		
		Returns:
		  A `MutableDenseHashTable` object.
		
		Raises:
		  ValueError: If checkpoint is True and no name was specified.
	**/
	@:native("__init__")
	public function ___init__(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates an empty `MutableDenseHashTable` object.
		
		Creates a table, the type of its keys and values are specified by key_dtype
		and value_dtype, respectively.
		
		Args:
		  key_dtype: the type of the key tensors.
		  value_dtype: the type of the value tensors.
		  default_value: The value to use if a key is missing in the table.
		  empty_key: the key to use to represent empty buckets internally. Must not
		    be used in insert, remove or lookup operations.
		  initial_num_buckets: the initial number of buckets.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		  checkpoint: if True, the contents of the table are saved to and restored
		    from checkpoints. If `shared_name` is empty for a checkpointed table, it
		    is shared using the table node name.
		  deleted_key: the key to use to represent deleted buckets internally. Must
		    not be used in insert, remove or lookup operations and be different from
		    the empty_key.
		
		Returns:
		  A `MutableDenseHashTable` object.
		
		Raises:
		  ValueError: If checkpoint is True and no name was specified.
	**/
	public function new(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Restore-on-create for a variable be saved with this `Checkpointable`.
		
		If the user has requested that this object or another `Checkpointable` which
		depends on this object be restored from a checkpoint (deferred loading
		before variable object creation), `initializer` may be ignored and the value
		from the checkpoint used instead.
		
		Args:
		  name: A name for the variable. Must be unique within this object.
		  shape: The shape of the variable.
		  dtype: The data type of the variable.
		  initializer: The initializer to use. Ignored if there is a deferred
		    restoration left over from a call to
		    `_restore_from_checkpoint_position`.
		  getter: The getter to wrap which actually fetches the variable.
		  overwrite: If True, disables unique name and type checks.
		  **kwargs_for_getter: Passed to the getter.
		
		Returns:
		  The new variable object.
		
		Raises:
		  ValueError: If the variable name is not unique.
	**/
	public function _add_variable_with_custom_getter(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?getter:Dynamic, ?overwrite:Dynamic, ?kwargs_for_getter:python.KwArgs<Dynamic>):Dynamic;
	/**
		All dependencies of this object.
		
		May be overridden to include conditional dependencies.
		
		Returns:
		  A list of `CheckpointableReference` objects indicating named
		  `Checkpointable` dependencies which should be saved along with this
		  object.
	**/
	public var _checkpoint_dependencies : Dynamic;
	/**
		A dictionary with deferred dependencies.
		
		Stores restorations for other Checkpointable objects on which this object
		may eventually depend. May be overridden by sub-classes (e.g. Optimizers use
		conditional dependencies based the current graph, and so need separate
		management of deferred dependencies too).
		
		Returns:
		  A dictionary mapping from local name to a list of _CheckpointPosition
		  objects.
	**/
	public var _deferred_dependencies : Dynamic;
	/**
		For object-based checkpointing.
	**/
	public function _gather_saveables_for_checkpoint():Dynamic;
	/**
		Pop and load any deferred checkpoint restores into `checkpointable`.
		
		This method does not add a new dependency on `checkpointable`, but it does
		check if any outstanding/deferred dependencies have been queued waiting for
		this dependency to be added (matched based on `name`). If so,
		`checkpointable` and its dependencies are restored. The restorations are
		considered fulfilled and so are deleted.
		
		`_track_checkpointable` is more appropriate for adding a
		normal/unconditional dependency, and includes handling for deferred
		restorations. This method allows objects such as `Optimizer` to use the same
		restoration logic while managing conditional dependencies themselves, by
		overriding `_checkpoint_dependencies` and `_lookup_dependency` to change the
		object's dependencies based on the context it is saved/restored in (a single
		optimizer instance can have state associated with multiple graphs).
		
		Args:
		  name: The name of the dependency within this object (`self`), used to
		    match `checkpointable` with values saved in a checkpoint.
		  checkpointable: The Checkpointable object to restore (inheriting from
		    `CheckpointableBase`).
	**/
	public function _handle_deferred_dependencies(name:Dynamic, checkpointable:Dynamic):Dynamic;
	/**
		Look up a dependency by name.
		
		May be overridden to include conditional dependencies.
		
		Args:
		  name: The local name of the dependency.
		Returns:
		  A `Checkpointable` object, or `None` if no dependency by this name was
		  found.
	**/
	public function _lookup_dependency(name:Dynamic):Dynamic;
	/**
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_checkpointable():Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	/**
		If automatic dependency tracking is enabled, ignores `value`.
	**/
	public function _no_dependency(value:Dynamic):Dynamic;
	/**
		Return a dependency's value for restore-on-create.
		
		Note the restoration is not deleted; if for some reason preload is called
		and then not assigned to the variable (for example because a custom getter
		overrides the initializer), the assignment will still happen once the
		variable is tracked (determined based on checkpoint.restore_uid).
		
		Args:
		  name: The object-local name of the dependency holding the variable's
		    value.
		  shape: The shape of the variable being loaded into.
		Returns:
		  An callable for use as a variable's initializer/initial_value, or None if
		  one should not be set (either because there was no variable with this name
		  in the checkpoint or because it needs more complex deserialization). Any
		  non-trivial deserialization will happen when the variable object is
		  tracked.
	**/
	public function _preload_simple_restoration(name:Dynamic, shape:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	/**
		Declare a dependency on another `Checkpointable` object.
		
		Indicates that checkpoints for this object should include variables from
		`checkpointable`.
		
		Variables in a checkpoint are mapped to `Checkpointable`s based on the names
		provided when the checkpoint was written. To avoid breaking existing
		checkpoints when modifying a class, neither variable names nor dependency
		names (the names passed to `_track_checkpointable`) may change.
		
		Args:
		  checkpointable: A `Checkpointable` which this object depends on.
		  name: A local name for `checkpointable`, used for loading checkpoints into
		    the correct objects.
		  overwrite: Boolean, whether silently replacing dependencies is OK. Used
		    for __setattr__, where throwing an error on attribute reassignment would
		    be inappropriate.
		
		Returns:
		  `checkpointable`, for convenience when declaring a dependency and
		  assigning to a member variable in one statement.
		
		Raises:
		  TypeError: If `checkpointable` does not inherit from `Checkpointable`.
		  ValueError: If another object is already tracked by this name.
	**/
	public function _track_checkpointable(checkpointable:Dynamic, name:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		A function that creates a resource handle.
	**/
	public function create_resource():Dynamic;
	/**
		Returns tensors of all keys and values in the table.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A pair of tensors with the first tensor containing all keys and the
		    second tensors containing all values in the table.
	**/
	public function export(?name:Dynamic):Dynamic;
	/**
		A function that initializes the resource. Optional.
	**/
	public function initialize():Dynamic;
	/**
		Associates `keys` with `values`.
		
		Args:
		  keys: Keys to insert. Can be a tensor of any shape. Must match the
		    table's key type.
		  values: Values to be associated with keys. Must be a tensor of the same
		    shape as `keys` and match the table's value type.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
		
		Raises:
		  TypeError: when `keys` or `values` doesn't match the table data
		    types.
	**/
	public function insert(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		Looks up `keys` in a table, outputs the corresponding values.
		
		The `default_value` is used for keys not present in the table.
		
		Args:
		  keys: Keys to look up. Can be a tensor of any shape. Must match the
		    table's key_dtype.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor containing the values in the same shape as `keys` using the
		    table's value type.
		
		Raises:
		  TypeError: when `keys` do not match the table data types.
	**/
	public function lookup(keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The name of the table.
	**/
	public var name : Dynamic;
	/**
		Removes `keys` and its associated values from the table.
		
		If a key is not present in the table, it is silently ignored.
		
		Args:
		  keys: Keys to remove. Can be a tensor of any shape. Must match the table's
		    key type.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
		
		Raises:
		  TypeError: when `keys` do not match the table data types.
	**/
	public function remove(keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the resource handle associated with this Resource.
	**/
	public var resource_handle : Dynamic;
	/**
		Compute the number of elements in this table.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar tensor containing the number of elements in this table.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		The table value dtype.
	**/
	public var value_dtype : Dynamic;
}