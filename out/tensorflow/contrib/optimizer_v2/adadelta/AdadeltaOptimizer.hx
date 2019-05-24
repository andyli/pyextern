/* This file is generated, do not edit! */
package tensorflow.contrib.optimizer_v2.adadelta;
@:pythonImport("tensorflow.contrib.optimizer_v2.adadelta", "AdadeltaOptimizer") extern class AdadeltaOptimizer {
	static public var GATE_GRAPH : Dynamic;
	static public var GATE_NONE : Dynamic;
	static public var GATE_OP : Dynamic;
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
		Construct a new Adadelta optimizer.
		
		Some of the args below are hyperparameters, where a hyperparameter is
		defined as a scalar Tensor, a regular Python value or a callable (which
		will be evaluated when `apply_gradients` is called) returning a scalar
		Tensor or a Python value.
		
		Args:
		  learning_rate: A float hyperparameter. The learning rate.
		    To match the exact form in the original paper use 1.0.
		  rho: A float hyperparameter. The decay rate.
		  epsilon: A float hyperparameter. A constant epsilon used to better
		    condition the grad update.
		  use_locking: If `True` use locks for update operations.
		  name: Optional name prefix for the operations created when applying
		    gradients.  Defaults to "Adadelta".
	**/
	@:native("__init__")
	public function ___init__(?learning_rate:Dynamic, ?rho:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new Adadelta optimizer.
		
		Some of the args below are hyperparameters, where a hyperparameter is
		defined as a scalar Tensor, a regular Python value or a callable (which
		will be evaluated when `apply_gradients` is called) returning a scalar
		Tensor or a Python value.
		
		Args:
		  learning_rate: A float hyperparameter. The learning rate.
		    To match the exact form in the original paper use 1.0.
		  rho: A float hyperparameter. The decay rate.
		  epsilon: A float hyperparameter. A constant epsilon used to better
		    condition the grad update.
		  use_locking: If `True` use locks for update operations.
		  name: Optional name prefix for the operations created when applying
		    gradients.  Defaults to "Adadelta".
	**/
	public function new(?learning_rate:Dynamic, ?rho:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
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
		Add ops to apply dense gradients to `var`.
		
		Args:
		  grad: A `Tensor`.
		  var: A `Variable` object.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_dense(grad:Dynamic, _var:Dynamic, state:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `var`.
		
		The IndexedSlices object passed to `grad` in this function is by default
		pre-processed in `_apply_sparse_duplicate_indices` to remove duplicate
		indices (see its docstring for details). Optimizers which can tolerate or
		have correct special cases for duplicate sparse indices may override
		`_apply_sparse_duplicate_indices` instead of this function, avoiding that
		overhead.
		
		Args:
		  grad: `IndexedSlices`, with no repeated indices.
		  var: A `Variable` object.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_sparse(grad:Dynamic, _var:Dynamic, state:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `var`, with repeated sparse indices.
		
		Optimizers which override this method must deal with IndexedSlices objects
		such as the following:
		
		  IndexedSlicesValue(values=[1, 1], indices=[0, 0], dense_shape=[1])
		
		The correct interpretation is:
		
		  IndexedSlicesValue(values=[2], indices=[0], dense_shape=[1])
		
		Many optimizers deal incorrectly with repeated indices when updating based
		on sparse gradients (e.g. summing squares rather than squaring the sum, or
		applying momentum terms multiple times). Adding first is always the correct
		behavior, so this is enforced here by reconstructing the IndexedSlices to
		have only unique indices, then calling _apply_sparse.
		
		Optimizers which deal correctly with repeated indices may instead override
		this method to avoid the overhead of summing indices.
		
		Args:
		  grad: `IndexedSlices`.
		  var: A `Variable` object.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_sparse_duplicate_indices(grad:Dynamic, _var:Dynamic, state:Dynamic):Dynamic;
	/**
		Asserts tensors are all valid types (see `_valid_dtypes`).
		
		Args:
		  tensors: Tensors to check.
		
		Raises:
		  ValueError: If any tensor is not a valid type.
	**/
	public function _assert_valid_dtypes(tensors:Dynamic):Dynamic;
	/**
		Call the function if param is callable.
	**/
	public function _call_if_callable(param:Dynamic):Dynamic;
	/**
		From Checkpointable. Gather graph-specific non-slot variables to save.
	**/
	public var _checkpoint_dependencies : Dynamic;
	/**
		Add an extra variable, not associated with a slot.
	**/
	public function _create_non_slot_variable(initial_value:Dynamic, name:Dynamic, colocate_with:Dynamic):Dynamic;
	/**
		Checkpointable: Restore a slot variable's value, possibly creating it.
		
		Called when a variable which has an associated slot variable is created or
		restored.
		
		Args:
		  slot_variable_position: A `checkpointable._CheckpointPosition` object
		    indicating the slot variable `Checkpointable` object to be restored.
		  slot_name: The name of this `Optimizer`'s slot to restore into.
		  variable: The variable object this slot is being created for.
	**/
	public function _create_or_restore_slot_variable(slot_variable_position:Dynamic, slot_name:Dynamic, variable:Dynamic):Dynamic;
	/**
		Create all slots needed by the variables.
		
		Args:
		  var_list: A list of `Variable` objects.
	**/
	public function _create_slots(var_list:Dynamic):Dynamic;
	/**
		Create all slots needed by the variables and any non-slot variables.
		
		Args:
		  var_list: A list of `Variable` objects.
		  state: An object with these methods: `create_slot(var, val, slot_name,
		    optional_op_name)`, `create_slot_with_initializer(` `var, initializer,
		    shape, dtype, slot_name, optional_op_name)`, `zeros_slot(var, slot_name,
		    optional_op_name)`, `create_non_slot_variable(initial_value, name,
		    colocate_with)`, `get_hyper(name)`
	**/
	public function _create_vars(var_list:Dynamic, state:Dynamic):Dynamic;
	/**
		Lets Checkpointable know where non-slot variables are created.
		
		If necessary, creates a new state object for the current default graph.
		Checkpointable will then add entries to that state's deferred dependency
		dictionary. The state object will check that dictionary when creating
		non-slot variables, restoring their value if an entry is found.
		
		Returns:
		  A dictionary which holds deferred dependencies for the current default
		  graph.
	**/
	public var _deferred_dependencies : Dynamic;
	/**
		`apply_gradients` for use with a `DistributionStrategy`.
	**/
	public function _distributed_apply(distribution:Dynamic, grads_and_vars:Dynamic, global_step:Dynamic, name:Dynamic):Dynamic;
	/**
		Do what is needed to finish the update.
		
		This is called inside a scope colocated with any non-slot variables.
		
		Args:
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  The operation to apply updates, or None if no updates.
	**/
	public function _finish(state:Dynamic):Dynamic;
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
	public function _get_non_slot_variable(name:Dynamic, ?graph:Dynamic):Dynamic;
	/**
		Either looks up or creates `_OptimizerV2State`.
		
		If any variables are available, they should be passed via the `var_list`
		argument, and these will be used to determine the graph to create/retrieve
		state for. Otherwise the returned state is for the current default graph.
		
		Args:
		  var_list: A list of variables to extract a graph from.
		
		Returns:
		  An `_OptimizerV2State` object.
	**/
	public function _get_or_create_state(?var_list:Dynamic):Dynamic;
	/**
		Find or create a slot for a variable.
		
		Args:
		  var: A `Variable` object.
		  val: A `Tensor`.  The initial value of the slot.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _get_or_make_slot(_var:Dynamic, val:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Find or create a slot for a variable, using an Initializer.
		
		Args:
		  var: A `Variable` object.
		  initializer: An `Initializer`.  The initial value of the slot.
		  shape: Shape of the initial value of the slot.
		  dtype: Type of the value of the slot.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _get_or_make_slot_with_initializer(_var:Dynamic, initializer:Dynamic, shape:Dynamic, dtype:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	public function _get_per_graph_state():Dynamic;
	public function _get_state_for_var(_var:Dynamic):Dynamic;
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
		From Checkpointable. Find a non-slot variable in the current graph.
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
		Additional variables created by the `Optimizer`.
		
		Returns:
		  A list or tuple of variables.
	**/
	public function _non_slot_variables():Dynamic;
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
		Code to execute before applying gradients.
		
		Note that most uses of _prepare() in Optimizer have been subsumed
		by explicit support for hyper parameters in OptimizerV2
		
		Args:
		  state: An object with a `get_hyper(name)` method.
		
		Returns:
		  Return value will be ignored.
	**/
	public function _prepare(state:Dynamic):Dynamic;
	/**
		Add ops to apply dense gradients to the variable `handle`.
		
		Args:
		  grad: a `Tensor` representing the gradient.
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_dense(grad:Dynamic, _var:Dynamic, state:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to the variable `handle`.
		
		Similar to `_apply_sparse`, the `indices` argument to this method has been
		de-duplicated. Optimizers which deal correctly with non-unique indices may
		instead override `_resource_apply_sparse_duplicate_indices` to avoid this
		overhead.
		
		Args:
		  grad: a `Tensor` representing the gradient for the affected indices.
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		  indices: a `Tensor` of integral type representing the indices for which
		    the gradient is nonzero. Indices are unique.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse(grad:Dynamic, _var:Dynamic, indices:Dynamic, state:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `handle`, with repeated indices.
		
		Optimizers which override this method must deal with repeated indices. See
		the docstring of `_apply_sparse_duplicate_indices` for details. By default
		the correct behavior, to sum non-unique indices and their associated
		gradients, is enforced by first pre-processing `grad` and `indices` and
		passing them on to `_resource_apply_sparse`. Optimizers which deal correctly
		with duplicate indices may instead override this method to avoid the
		overhead of summing.
		
		Args:
		  grad: a `Tensor` representing the gradient for the affected indices.
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		  indices: a `Tensor` of integral type representing the indices for which
		    the gradient is nonzero. Indices may be repeated.
		  state: An object with `get_slot(var, name)`, `get_non_slot(self, name)`,
		    and `get_hyper(name)` methods.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse_duplicate_indices(grad:Dynamic, handle:Dynamic, indices:Dynamic, state:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	/**
		Restore a newly created slot variable's value.
	**/
	public function _restore_slot_variable(slot_name:Dynamic, variable:Dynamic, slot_variable:Dynamic):Dynamic;
	/**
		Scale loss for the number of replicas.
	**/
	static public function _scale_loss(loss_value:Dynamic, scale_loss_by_num_replicas:Dynamic):Dynamic;
	public function _set_hyper(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	/**
		Returns a dict for caching slots created under the given name.
		
		Args:
		  slot_name: Name for the slot.
		
		Returns:
		  A dict that maps primary `Variable` objects to the slot created
		  for that variable, under the given slot name.
	**/
	public function _slot_dict(slot_name:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Optimizers may not track dependencies. Raises an error.
	**/
	public function _track_checkpointable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Valid types for loss, variables and gradients.
		
		Subclasses should override to allow other float types.
		
		Returns:
		  Valid types for loss, variables and gradients.
	**/
	public function _valid_dtypes():Dynamic;
	/**
		Find or create a slot initialized with 0.0.
		
		Args:
		  var: A `Variable` object.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _zeros_slot(_var:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Apply gradients to variables.
		
		This is the second part of `minimize()`. It returns an `Operation` that
		applies gradients.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`.
		  global_step: Optional `Variable` to increment by one after the variables
		    have been updated.
		  name: Optional name for the returned operation.  Default to the name
		    passed to the `Optimizer` constructor.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
		
		Raises:
		  TypeError: If `grads_and_vars` is malformed.
		  ValueError: If none of the variables have gradients.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients of `loss` for the variables in `var_list`.
		
		This is the first part of `minimize()`.  It returns a list
		of (gradient, variable) pairs where "gradient" is the gradient
		for "variable".  Note that "gradient" can be a `Tensor`, an
		`IndexedSlices`, or `None` if there is no gradient for the
		given variable.
		
		Args:
		  loss: A Tensor containing the value to minimize or a callable taking no
		    arguments which returns the value to minimize. When eager execution is
		    enabled it must be a callable.
		  var_list: Optional list or tuple of `tf.Variable` to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph under
		    the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  stop_gradients: Optional. A Tensor or list of tensors not to differentiate
		    through.
		  scale_loss_by_num_replicas: Optional boolean. If true, scale the loss down
		    by the number of replicas. By default, auto-detects whether this is
		    needed.
		
		Returns:
		  A list of (gradient, variable) pairs. Variable is always present, but
		  gradient can be `None`.
		
		Raises:
		  TypeError: If `var_list` contains anything else than `Variable` objects.
		  ValueError: If some arguments are invalid.
		  RuntimeError: If called with eager execution enabled and `loss` is
		    not callable.
		
		@compatibility(eager)
		When eager execution is enabled, `gate_gradients`, and `aggregation_method`
		are ignored.
		@end_compatibility
	**/
	public function compute_gradients(loss:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?grad_loss:Dynamic, ?stop_gradients:Dynamic, ?scale_loss_by_num_replicas:Dynamic):Dynamic;
	public function get_name():Dynamic;
	/**
		Return a slot named `name` created for `var` by the Optimizer.
		
		Some `Optimizer` subclasses use additional variables.  For example
		`Momentum` and `Adagrad` use variables to accumulate updates.  This method
		gives access to these `Variable` objects if for some reason you need them.
		
		Use `get_slot_names()` to get the list of slot names created by the
		`Optimizer`.
		
		Args:
		  var: A variable passed to `minimize()` or `apply_gradients()`.
		  name: A string.
		
		Returns:
		  The `Variable` for the slot if it was created, `None` otherwise.
	**/
	public function get_slot(_var:Dynamic, name:Dynamic):Dynamic;
	/**
		Return a list of the names of slots created by the `Optimizer`.
		
		See `get_slot()`.
		
		Returns:
		  A list of strings.
	**/
	public function get_slot_names():Dynamic;
	/**
		Add operations to minimize `loss` by updating `var_list`.
		
		This method simply combines calls `compute_gradients()` and
		`apply_gradients()`. If you want to process the gradient before applying
		them call `compute_gradients()` and `apply_gradients()` explicitly instead
		of using this function.
		
		Args:
		  loss: A `Tensor` containing the value to minimize.
		  global_step: Optional `Variable` to increment by one after the variables
		    have been updated.
		  var_list: Optional list or tuple of `Variable` objects to update to
		    minimize `loss`.  Defaults to the list of variables collected in the
		    graph under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or  `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  name: Optional name for the returned operation.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  stop_gradients: Optional. A Tensor or list of tensors not to differentiate
		    through.
		  scale_loss_by_num_replicas: Optional boolean. If true, scale the loss down
		    by the number of replicas. By default, auto-detects whether this is
		    needed.
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
		
		Raises:
		  ValueError: If some of the variables are not `Variable` objects.
		
		@compatibility(eager)
		When eager execution is enabled, `loss` should be a Python function that
		takes elements of `var_list` as arguments and computes the value to be
		minimized. If `var_list` is None, `loss` should take no arguments.
		Minimization (and gradient computation) is done with respect to the
		elements of `var_list` if not None, else with respect to any trainable
		variables created during the execution of the `loss` function.
		`gate_gradients`, `aggregation_method`, and `grad_loss` are ignored when
		eager execution is enabled.
		@end_compatibility
	**/
	public function minimize(loss:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic, ?stop_gradients:Dynamic, ?scale_loss_by_num_replicas:Dynamic):Dynamic;
	/**
		A list of variables which encode the current state of `Optimizer`.
		
		Includes slot variables and additional global variables created by the
		optimizer in the current default graph.
		
		Returns:
		  A list of variables.
	**/
	public function variables():Dynamic;
}