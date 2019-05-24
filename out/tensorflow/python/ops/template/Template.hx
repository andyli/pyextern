/* This file is generated, do not edit! */
package tensorflow.python.ops.template;
@:pythonImport("tensorflow.python.ops.template", "Template") extern class Template {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Creates a template for the given function.
		
		Args:
		  name: A name for the scope created by this template. The
		    name will be made unique by appending `_N` to the it (see how
		    `tf.variable_scope` treats the `default_name` for details).
		  func: The function to apply each time.
		  create_scope_now: Whether to create the scope at Template construction
		    time, rather than first call. Defaults to false. Creating the scope at
		    construction time may be more convenient if the template is to passed
		    through much lower level code, and you want to be sure of the scope
		    name without knowing exactly where it will be first called. If set to
		    True, the scope will be created in the constructor, and all subsequent
		    times in `__call__`, leading to a trailing numeral being added to the
		    names of all created Tensors. If set to False, the scope will be created
		    at the first call location.
		  unique_name: When used, it overrides `name` and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is
		    false, an error is raised. Defaults to None.
		  custom_getter: optional custom getter to pass to `variable_scope()`
		  create_graph_function: When True, `func` will be executed as a graph
		    function. Enabling this flag gives the caller access to graph-function
		    semantics, i.e., accesses to variables are totally ordered and
		    side-effecting ops are not pruned.
		
		Raises:
		  ValueError: if `name` is None.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, func:Dynamic, ?create_scope_now:Dynamic, ?unique_name:Dynamic, ?custom_getter:Dynamic, ?create_graph_function:Dynamic):Dynamic;
	/**
		Creates a template for the given function.
		
		Args:
		  name: A name for the scope created by this template. The
		    name will be made unique by appending `_N` to the it (see how
		    `tf.variable_scope` treats the `default_name` for details).
		  func: The function to apply each time.
		  create_scope_now: Whether to create the scope at Template construction
		    time, rather than first call. Defaults to false. Creating the scope at
		    construction time may be more convenient if the template is to passed
		    through much lower level code, and you want to be sure of the scope
		    name without knowing exactly where it will be first called. If set to
		    True, the scope will be created in the constructor, and all subsequent
		    times in `__call__`, leading to a trailing numeral being added to the
		    names of all created Tensors. If set to False, the scope will be created
		    at the first call location.
		  unique_name: When used, it overrides `name` and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is
		    false, an error is raised. Defaults to None.
		  custom_getter: optional custom getter to pass to `variable_scope()`
		  create_graph_function: When True, `func` will be executed as a graph
		    function. Enabling this flag gives the caller access to graph-function
		    semantics, i.e., accesses to variables are totally ordered and
		    side-effecting ops are not pruned.
		
		Raises:
		  ValueError: if `name` is None.
	**/
	public function new(name:Dynamic, func:Dynamic, ?create_scope_now:Dynamic, ?unique_name:Dynamic, ?custom_getter:Dynamic, ?create_graph_function:Dynamic):Void;
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
	public function _call_func(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Returns the func given to this Template.
	**/
	public var func : Dynamic;
	/**
		Returns the list of global variables created by the Template.
	**/
	public var global_variables : Dynamic;
	/**
		Returns the list of global variables created by the Template.
	**/
	public var local_variables : Dynamic;
	/**
		Returns the name given to this Template.
	**/
	public var name : Dynamic;
	/**
		Returns the list of non-trainable variables created by the Template.
	**/
	public var non_trainable_variables : Dynamic;
	/**
		List of non-trainable weights/variables created by the Template.
	**/
	public var non_trainable_weights : Dynamic;
	/**
		Returns the list of trainable variables created by the Template.
	**/
	public var trainable_variables : Dynamic;
	/**
		List of trainable weights/variables created by the Template.
	**/
	public var trainable_weights : Dynamic;
	/**
		Returns the variable scope object created by this Template. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-21.
		Instructions for updating:
		The .var_scope property is deprecated. Please change your code to use the .variable_scope property
	**/
	public var var_scope : Dynamic;
	/**
		Returns the variable scope object created by this Template.
	**/
	public var variable_scope : Dynamic;
	/**
		Returns the variable scope name created by this Template.
	**/
	public var variable_scope_name : Dynamic;
	/**
		Returns the list of global and local variables created by the Template.
		    
	**/
	public var variables : Dynamic;
	/**
		List of weights/variables created by the Template.
	**/
	public var weights : Dynamic;
}