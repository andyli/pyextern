/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.util;
@:pythonImport("tensorflow.python.training.checkpointable.util", "Checkpoint") extern class Checkpoint {
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
		Group objects into a training checkpoint.
		
		Args:
		  **kwargs: Keyword arguments are set as attributes of this object, and are
		    saved with the checkpoint. Values must be checkpointable objects.
		Raises:
		  ValueError: If objects in `kwargs` are not checkpointable.
	**/
	@:native("__init__")
	public function ___init__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Group objects into a training checkpoint.
		
		Args:
		  **kwargs: Keyword arguments are set as attributes of this object, and are
		    saved with the checkpoint. Values must be checkpointable objects.
		Raises:
		  ValueError: If objects in `kwargs` are not checkpointable.
	**/
	public function new(?kwargs:python.KwArgs<Dynamic>):Void;
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
		Support self.foo = checkpointable syntax.
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
		Returns a dictionary of values to checkpoint with this object.
		
		Keys in the returned dictionary are local to this object and in a separate
		namespace from dependencies. Values may either be `SaveableObject` factories
		or variables easily converted to `SaveableObject`s (as in `tf.train.Saver`'s
		`var_list` constructor argument).
		
		`SaveableObjects` have a name set, which Checkpointable needs to generate
		itself. So rather than returning `SaveableObjects` directly, this method
		should return a dictionary of callables which take `name` arguments and
		return `SaveableObjects` with that name.
		
		If this object may also be passed to the global-name-based `tf.train.Saver`,
		the returned callables should have a default value for their name argument
		(i.e. be callable with no arguments).
		
		Returned values must be saved only by this object; if any value may be
		shared, it should instead be a dependency. For example, variable objects
		save their own values with the key `VARIABLE_VALUE_KEY`, but objects which
		reference variables simply add a dependency.
		
		Returns:
		  The dictionary mapping attribute names to `SaveableObject` factories
		  described above. For example:
		  {VARIABLE_VALUE_KEY:
		   lambda name="global_name_for_this_object":
		   SaveableObject(name=name, ...)}
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
		Create a save counter if it does not yet exist.
	**/
	public function _maybe_create_save_counter():Dynamic;
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
		Override to allow CheckpointableBase to disable dependency tracking.
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
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
		Restore a training checkpoint.
		
		Restores this `Checkpoint` and any objects it depends on.
		
		When executing eagerly, either assigns values immediately if variables to
		restore have been created already, or defers restoration until the variables
		are created. Dependencies added after this call will be matched if they have
		a corresponding object in the checkpoint (the restore request will queue in
		any checkpointable object waiting for the expected dependency to be added).
		
		When graph building, restoration ops are added to the graph but not run
		immediately.
		
		To ensure that loading is complete and no more assignments will take place,
		use the `assert_consumed()` method of the status object returned by
		`restore`:
		
		```python
		checkpoint = tf.train.Checkpoint( ... )
		checkpoint.restore(path).assert_consumed()
		```
		
		An exception will be raised if any Python objects in the dependency graph
		were not found in the checkpoint, or if any checkpointed values do not have
		a matching Python object.
		
		When graph building, `assert_consumed()` indicates that all of the restore
		ops that will be created for this checkpoint have been created. They can be
		run via the `run_restore_ops()` method of the status object:
		
		```python
		checkpoint.restore(path).assert_consumed().run_restore_ops()
		```
		
		If the checkpoint has not been consumed completely, then the list of restore
		ops will grow as more objects are added to the dependency graph.
		
		Name-based `tf.train.Saver` checkpoints can be loaded using this
		method. Names are used to match variables. No restore ops are created/run
		until `run_restore_ops()` or `initialize_or_restore()` are called on the
		returned status object when graph building, but there is restore-on-creation
		when executing eagerly. Re-encode name-based checkpoints using
		`tf.train.Checkpoint.save` as soon as possible.
		
		Args:
		  save_path: The path to the checkpoint, as returned by `save` or
		    `tf.train.latest_checkpoint`. If None (as when there is no latest
		    checkpoint for `tf.train.latest_checkpoint` to return), returns an
		    object which may run initializers for objects in the dependency
		    graph. If the checkpoint was written by the name-based `tf.train.Saver`,
		    names are used to match variables.
		
		Returns:
		  A load status object, which can be used to make assertions about the
		  status of a checkpoint restoration and run initialization/restore ops.
		
		  The returned status object has the following methods:
		
		  * `assert_consumed()`:
		      Raises an exception if any variables/objects are unmatched: either
		      checkpointed values which don't have a matching Python object or
		      Python objects in the dependency graph with no values in the
		      checkpoint. This method returns the status object, and so may be
		      chained with `initialize_or_restore` or `run_restore_ops`.
		
		  * `assert_existing_objects_matched()`:
		      Raises an exception if any existing Python objects in the dependency
		      graph are unmatched. Unlike `assert_consumed`, this assertion will
		      pass if values in the checkpoint have no corresponding Python
		      objects. For example a `tf.keras.Layer` object which has not yet been
		      built, and so has not created any variables, will pass this assertion
		      but fail `assert_consumed`. Useful when loading part of a larger
		      checkpoint into a new Python program, e.g. a training checkpoint with
		      a `tf.train.Optimizer` was saved but only the state required for
		      inference is being loaded. This method returns the status object, and
		      so may be chained with `initialize_or_restore` or `run_restore_ops`.
		
		  * `assert_nontrivial_match()`: Asserts that something aside from the root
		      object was matched. This is a very weak assertion, but is useful for
		      sanity checking in library code where objects may exist in the
		      checkpoint which haven't been created in Python and some Python
		      objects may not have a checkpointed value.
		
		  * `initialize_or_restore(session=None)`:
		      When graph building, runs variable initializers if `save_path` is
		      `None`, but otherwise runs restore operations. If no `session` is
		      explicitly specified, the default session is used. No effect when
		      executing eagerly (variables are initialized or restored eagerly).
		
		  * `run_restore_ops(session=None)`:
		      When graph building, runs restore operations. If no `session` is
		      explicitly specified, the default session is used. No effect when
		      executing eagerly (restore operations are run eagerly). May only be
		      called when `save_path` is not `None`.
	**/
	public function restore(save_path:Dynamic):Dynamic;
	/**
		Saves a training checkpoint and provides basic checkpoint management.
		
		The saved checkpoint includes variables created by this object and any
		checkpointable objects it depends on at the time `Checkpoint.save()` is
		called.
		
		`save` is a basic convenience wrapper around the `write` method,
		sequentially numbering checkpoints using `save_counter` and updating the
		metadata used by `tf.train.latest_checkpoint`. More advanced checkpoint
		management, for example garbage collection and custom numbering, may be
		provided by other utilities which also wrap `write`
		(`tf.contrib.checkpoint.CheckpointManager` for example).
		
		Args:
		  file_prefix: A prefix to use for the checkpoint filenames
		    (/path/to/directory/and_a_prefix). Names are generated based on this
		    prefix and `Checkpoint.save_counter`.
		  session: The session to evaluate variables in. Ignored when executing
		    eagerly. If not provided when graph building, the default session is
		    used.
		
		Returns:
		  The full path to the checkpoint.
	**/
	public function save(file_prefix:Dynamic, ?session:Dynamic):Dynamic;
	/**
		An integer variable which starts at zero and is incremented on save.
		
		Used to number checkpoints.
		
		Returns:
		  The save counter variable.
	**/
	public var save_counter : Dynamic;
	/**
		Writes a training checkpoint.
		
		The checkpoint includes variables created by this object and any
		checkpointable objects it depends on at the time `Checkpoint.write()` is
		called.
		
		`write` does not number checkpoints, increment `save_counter`, or update the
		metadata used by `tf.train.latest_checkpoint`. It is primarily intended for
		use by higher level checkpoint management utilities. `save` provides a very
		basic implementation of these features.
		
		Args:
		  file_prefix: A prefix to use for the checkpoint filenames
		    (/path/to/directory/and_a_prefix).
		  session: The session to evaluate variables in. Ignored when executing
		    eagerly. If not provided when graph building, the default session is
		    used.
		
		Returns:
		  The full path to the checkpoint (i.e. `file_prefix`).
	**/
	public function write(file_prefix:Dynamic, ?session:Dynamic):Dynamic;
}