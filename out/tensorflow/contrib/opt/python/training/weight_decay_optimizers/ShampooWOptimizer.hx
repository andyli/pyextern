/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.weight_decay_optimizers;
@:pythonImport("tensorflow.contrib.opt.python.training.weight_decay_optimizers", "ShampooWOptimizer") extern class ShampooWOptimizer {
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
		Construct a new ShampooW optimizer.
		
		For further information see the documentation of the Shampoo Optimizer.
		
		Args:
		  weight_decay:  A `Tensor` or a floating point value.  The weight decay.
		  global_step: tensorflow variable indicating the step.
		  max_matrix_size: We do not perform SVD for matrices larger than this.
		  gbar_decay:
		  gbar_weight:  Used to update gbar: gbar[t] = gbar_decay[t] * gbar[t-1] +
		    gbar_weight[t] * g[t]
		  mat_gbar_decay:
		  mat_gbar_weight:  Used to update mat_gbar: mat_gbar_j[t] =
		    mat_gbar_decay[t] * mat_gbar_j[t-1] + mat_gbar_weight[t] * gg_j[t]
		  learning_rate: Similar to SGD
		  svd_interval: We should do SVD after this many steps. Default = 1, i.e.
		    every step. Usually 20 leads to no loss of accuracy, and 50 or 100 is
		    also OK. May also want more often early,
		                and less often later - set in caller as for example:
		                "svd_interval = lambda(T): tf.cond(
		                    T < 2000, lambda: 20.0, lambda: 1000.0)"
		  precond_update_interval: We should update the preconditioners after this
		    many steps. Default = 1. Usually less than svd_interval.
		  epsilon:  epsilon * I_n is added to each mat_gbar_j for stability
		  alpha:  total power of the preconditioners.
		  use_iterative_root: should the optimizer use SVD (faster) or the iterative
		    root method (for TPU) for finding the roots of PSD matrices.
		  use_locking: If `True` use locks for update operations.
		  name: name of optimizer.
	**/
	@:native("__init__")
	public function ___init__(weight_decay:Dynamic, global_step:Dynamic, ?max_matrix_size:Dynamic, ?gbar_decay:Dynamic, ?gbar_weight:Dynamic, ?mat_gbar_decay:Dynamic, ?mat_gbar_weight:Dynamic, ?learning_rate:Dynamic, ?svd_interval:Dynamic, ?precond_update_interval:Dynamic, ?epsilon:Dynamic, ?alpha:Dynamic, ?use_iterative_root:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new ShampooW optimizer.
		
		For further information see the documentation of the Shampoo Optimizer.
		
		Args:
		  weight_decay:  A `Tensor` or a floating point value.  The weight decay.
		  global_step: tensorflow variable indicating the step.
		  max_matrix_size: We do not perform SVD for matrices larger than this.
		  gbar_decay:
		  gbar_weight:  Used to update gbar: gbar[t] = gbar_decay[t] * gbar[t-1] +
		    gbar_weight[t] * g[t]
		  mat_gbar_decay:
		  mat_gbar_weight:  Used to update mat_gbar: mat_gbar_j[t] =
		    mat_gbar_decay[t] * mat_gbar_j[t-1] + mat_gbar_weight[t] * gg_j[t]
		  learning_rate: Similar to SGD
		  svd_interval: We should do SVD after this many steps. Default = 1, i.e.
		    every step. Usually 20 leads to no loss of accuracy, and 50 or 100 is
		    also OK. May also want more often early,
		                and less often later - set in caller as for example:
		                "svd_interval = lambda(T): tf.cond(
		                    T < 2000, lambda: 20.0, lambda: 1000.0)"
		  precond_update_interval: We should update the preconditioners after this
		    many steps. Default = 1. Usually less than svd_interval.
		  epsilon:  epsilon * I_n is added to each mat_gbar_j for stability
		  alpha:  total power of the preconditioners.
		  use_iterative_root: should the optimizer use SVD (faster) or the iterative
		    root method (for TPU) for finding the roots of PSD matrices.
		  use_locking: If `True` use locks for update operations.
		  name: name of optimizer.
	**/
	public function new(weight_decay:Dynamic, global_step:Dynamic, ?max_matrix_size:Dynamic, ?gbar_decay:Dynamic, ?gbar_weight:Dynamic, ?mat_gbar_decay:Dynamic, ?mat_gbar_weight:Dynamic, ?learning_rate:Dynamic, ?svd_interval:Dynamic, ?precond_update_interval:Dynamic, ?epsilon:Dynamic, ?alpha:Dynamic, ?use_iterative_root:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
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
	public function _apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	/**
		The main function to update a variable.
		
		Args:
		  grad: A Tensor containing gradient to apply.
		  var: A Tensor containing the variable to update.
		  indices: An array of integers, for sparse update.
		
		Returns:
		  Updated variable var = var - learning_rate * preconditioner * grad
		
		If the gradient is dense, var and grad have the same shape.
		If the update is sparse, then the first dimension of the gradient and var
		may differ, others are all the same. In this case the indices array
		provides the set of indices of the variable which are to be updated with
		each row of the gradient.
	**/
	public function _apply_gradient(grad:Dynamic, _var:Dynamic, ?indices:Dynamic):Dynamic;
	public function _apply_sparse(grad:Dynamic, _var:Dynamic):Dynamic;
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
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_sparse_duplicate_indices(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _apply_sparse_shared(grad_values:Dynamic, grad_indices:Dynamic, _var:Dynamic):Dynamic;
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
		Just a switch between the iterative power vs svd.
	**/
	public function _compute_power(_var:Dynamic, mat_g:Dynamic, mat_g_size:Dynamic, alpha:Dynamic, ?mat_h_slot_name:Dynamic):Dynamic;
	/**
		Computes mat_g^alpha, where alpha = -1/p, p a positive integer.
	**/
	public function _compute_power_iter(_var:Dynamic, mat_g:Dynamic, mat_g_size:Dynamic, alpha:Dynamic, mat_h_slot_name:Dynamic, ?iter_count:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Computes mat_h = mat_g^alpha using svd. mat_g is a symmetric PSD matrix.
		
		Args:
		  var: the variable we are updating.
		  mat_g: the symmetric PSD matrix whose power it to be computed
		  mat_g_size: size of mat_g
		  alpha: a real number
		  mat_h_slot_name: name of slot to store the power, if needed.
		
		Returns:
		  mat_h = mat_g^alpha
		
		Stores mat_h in the appropriate slot, if it exists.
		Note that mat_g is PSD. So we could use linalg_ops.self_adjoint_eig.
	**/
	public function _compute_power_svd(_var:Dynamic, mat_g:Dynamic, mat_g_size:Dynamic, alpha:Dynamic, mat_h_slot_name:Dynamic):Dynamic;
	/**
		Add an extra variable, not associated with a slot.
	**/
	public function _create_non_slot_variable(initial_value:Dynamic, name:Dynamic, colocate_with:Dynamic):Dynamic;
	/**
		Restore a slot variable's value, possibly creating it.
		
		Called when a variable which has an associated slot variable is created or
		restored. When executing eagerly, we create the slot variable with a
		restoring initializer.
		
		No new variables are created when graph building. Instead,
		_restore_slot_variable catches these after normal creation and adds restore
		ops to the graph. This method is nonetheless important when graph building
		for the case when a slot variable has already been created but `variable`
		has just been added to a dependency graph (causing us to realize that the
		slot variable needs to be restored).
		
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
	public function _decay_weights_op(_var:Dynamic):Dynamic;
	public function _decay_weights_sparse_op(_var:Dynamic, indices:Dynamic, scatter_add:Dynamic):Dynamic;
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
		A version of `apply_gradients` for cross-replica context.
		
		This is a version of `apply_gradients()` for when you are using a
		`DistributionStrategy` and are in a cross-replica context. If in a
		replica context, use `apply_gradients()` as normal.
		
		Args:
		  distribution: A `DistributionStrategy` object.
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`, and then aggregated across replicas.
		  global_step: Optional (mirrored) `Variable` to increment by one
		    after the variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the `Optimizer` constructor.
		
		Returns:
		  An `Operation` that applies the specified gradients across all
		  replicas. If `global_step` was not None, that operation also
		  increments `global_step`
	**/
	public function _distributed_apply(distribution:Dynamic, grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Do what is needed to finish the update.
		
		This is called with the `name_scope` using the "name" that
		users have chosen for the application of gradients.
		
		Args:
		  update_ops: List of `Operation` objects to update variables.  This list
		    contains the values returned by the `_apply_dense()` and
		    `_apply_sparse()` calls.
		  name_scope: String.  Name to use for the returned operation.
		
		Returns:
		  The operation to apply updates.
	**/
	public function _finish(update_ops:Dynamic, name_scope:Dynamic):Dynamic;
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
	public function _prepare():Dynamic;
	public function _resource_apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _resource_apply_sparse(grad:Dynamic, _var:Dynamic, indices:Dynamic):Dynamic;
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
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		  indices: a `Tensor` of integral type representing the indices for
		   which the gradient is nonzero. Indices may be repeated.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse_duplicate_indices(grad:Dynamic, handle:Dynamic, indices:Dynamic):Dynamic;
	public function _resource_scatter_add(x:Dynamic, i:Dynamic, v:Dynamic, ?_:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	/**
		Restore a newly created slot variable's value.
	**/
	public function _restore_slot_variable(slot_name:Dynamic, variable:Dynamic, slot_variable:Dynamic):Dynamic;
	static public function _scale_loss(loss_value:Dynamic):Dynamic;
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
		Updates the cumulative outer products of the gradients.
		
		Args:
		  mat_g: the matrix to be updated
		  grad: the gradient of the variable
		  axes: a list of k-1 integers 0 to k-1, except i
		  mat_gbar_decay: constant for weighted average:
		      mat_g = mat_g * decay + grad * weight
		  mat_gbar_weight: constant for weighted average
		  i: index of dimension to be updated.
		
		Returns:
		  updated mat_g = mat_g * mat_gbar_decay + grad_outer * mat_gbar_weight
		
		In Einstein notation if i = 0: grad_outer_aa'= g_abcd g_a'bcd
		thus grad_outer is a matrix d_i x d_i, where d_i is the size of the
		i'th dimension of g.
		Alternate view: If mat_i(grad) is the flattening of grad to a
		d_i x (d_1d_2...d_{i-1}d_{i+1}...d_k) matrix, then
		     grad_outer = mat_i(grad) mat_i(grad).transpose
	**/
	public function _update_mat_g(mat_g:Dynamic, grad:Dynamic, axes:Dynamic, mat_gbar_decay:Dynamic, mat_gbar_weight:Dynamic, i:Dynamic):Dynamic;
	/**
		Valid types for loss, variables and gradients.
		
		Subclasses should override to allow other float types.
		
		Returns:
		  Valid types for loss, variables and gradients.
	**/
	public function _valid_dtypes():Dynamic;
	/**
		Computes exponential weighted average: var = weight_t * var + rest.
		
		Important to ensure that var does not occur in rest, otherwise
		we can get race conditions in a distributed setting.
		
		Args:
		  var: variable to be updated
		  weight: parameter to be checked. If it is a constant, we can optimize.
		  weight_t: current value of parameter, used for weighting
		  rest: the remaining tensor to be added
		
		Returns:
		  updated variable.
	**/
	public function _weighted_average(_var:Dynamic, weight:Dynamic, weight_t:Dynamic, rest:Dynamic):Dynamic;
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
		Apply gradients to variables and decay the variables.
		
		This function is the same as Optimizer.apply_gradients except that it
		allows to specify the variables that should be decayed using
		decay_var_list. If decay_var_list is None, all variables in var_list
		are decayed.
		
		For more information see the documentation of Optimizer.apply_gradients.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the `Optimizer` constructor.
		  decay_var_list: Optional list of decay variables.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic, ?decay_var_list:Dynamic):Dynamic;
	/**
		Compute gradients of `loss` for the variables in `var_list`.
		
		This is the first part of `minimize()`.  It returns a list
		of (gradient, variable) pairs where "gradient" is the gradient
		for "variable".  Note that "gradient" can be a `Tensor`, an
		`IndexedSlices`, or `None` if there is no gradient for the
		given variable.
		
		Args:
		  loss: A Tensor containing the value to minimize or a callable taking
		    no arguments which returns the value to minimize. When eager execution
		    is enabled it must be a callable.
		  var_list: Optional list or tuple of `tf.Variable` to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph
		    under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		
		Returns:
		  A list of (gradient, variable) pairs. Variable is always present, but
		  gradient can be `None`.
		
		Raises:
		  TypeError: If `var_list` contains anything else than `Variable` objects.
		  ValueError: If some arguments are invalid.
		  RuntimeError: If called with eager execution enabled and `loss` is
		    not callable.
		
		@compatibility(eager)
		When eager execution is enabled, `gate_gradients`, `aggregation_method`,
		and `colocate_gradients_with_ops` are ignored.
		@end_compatibility
	**/
	public function compute_gradients(loss:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?grad_loss:Dynamic):Dynamic;
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
		Add operations to minimize `loss` by updating `var_list` with decay.
		
		This function is the same as Optimizer.minimize except that it allows to
		specify the variables that should be decayed using decay_var_list.
		If decay_var_list is None, all variables in var_list are decayed.
		
		For more information see the documentation of Optimizer.minimize.
		
		Args:
		  loss: A `Tensor` containing the value to minimize.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  var_list: Optional list or tuple of `Variable` objects to update to
		    minimize `loss`.  Defaults to the list of variables collected in
		    the graph under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or  `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  name: Optional name for the returned operation.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  decay_var_list: Optional list of decay variables.
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
	**/
	public function minimize(loss:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic, ?decay_var_list:Dynamic):Dynamic;
	/**
		A list of variables which encode the current state of `Optimizer`.
		
		Includes slot variables and additional global variables created by the
		optimizer in the current default graph.
		
		Returns:
		  A list of variables.
	**/
	public function variables():Dynamic;
}