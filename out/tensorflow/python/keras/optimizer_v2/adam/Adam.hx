/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizer_v2.adam;
@:pythonImport("tensorflow.python.keras.optimizer_v2.adam", "Adam") extern class Adam {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Overridden to support hyperparameter access.
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
		Construct a new Adam optimizer.
		
		If amsgrad = False:
		  Initialization:
		
		  $$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		  $$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$t := 0 \text{(Initialize timestep)}$$
		
		  The update rule for `variable` with gradient `g` uses an optimization
		  described at the end of section2 of the paper:
		
		  $$t := t + 1$$
		  $$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		
		  $$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		  $$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		  $$variable := variable - lr_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		If amsgrad = True:
		  Initialization:
		
		  $$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		  $$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$v_hat_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$t := 0 \text{(Initialize timestep)}$$
		
		  The update rule for `variable` with gradient `g` uses an optimization
		  described at the end of section2 of the paper:
		
		  $$t := t + 1$$
		  $$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		
		  $$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		  $$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		  $$v_hat_t := max(v_hat_{t-1}, v_t)
		  $$variable := variable - lr_t * m_t / (\sqrt{v_hat_t} + \epsilon)$$
		
		The default value of 1e-7 for epsilon might not be a good default in
		general. For example, when training an Inception network on ImageNet a
		current good choice is 1.0 or 0.1. Note that since AdamOptimizer uses the
		formulation just before Section 2.1 of the Kingma and Ba paper rather than
		the formulation in Algorithm 1, the "epsilon" referred to here is "epsilon
		hat" in the paper.
		
		The sparse implementation of this algorithm (used when the gradient is an
		IndexedSlices object, typically because of `tf.gather` or an embedding
		lookup in the forward pass) does apply momentum to variable slices even if
		they were not used in the forward pass (meaning they have a gradient equal
		to zero). Momentum decay (beta1) is also applied to the entire momentum
		accumulator. This means that the sparse behavior is equivalent to the dense
		behavior (in contrast to some momentum implementations which ignore momentum
		unless a variable slice was actually used).
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning rate.
		  beta_1: A float value or a constant float tensor. The exponential decay
		    rate for the 1st moment estimates.
		  beta_2: A float value or a constant float tensor. The exponential decay
		    rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  amsgrad: boolean. Whether to apply AMSGrad variant of this algorithm from
		    the paper "On the Convergence of Adam and beyond".
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".  @compatibility(eager) When eager execution is
		    enabled, `learning_rate`, `beta_1`, `beta_2`, and `epsilon` can each be
		    a callable that takes no arguments and returns the actual value to use.
		    This can be useful for changing these values across different
		    invocations of optimizer functions. @end_compatibility
		  **kwargs: keyword arguments. Allowed to be {`decay`}
	**/
	@:native("__init__")
	public function ___init__(?learning_rate:Dynamic, ?beta_1:Dynamic, ?beta_2:Dynamic, ?epsilon:Dynamic, ?amsgrad:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a new Adam optimizer.
		
		If amsgrad = False:
		  Initialization:
		
		  $$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		  $$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$t := 0 \text{(Initialize timestep)}$$
		
		  The update rule for `variable` with gradient `g` uses an optimization
		  described at the end of section2 of the paper:
		
		  $$t := t + 1$$
		  $$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		
		  $$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		  $$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		  $$variable := variable - lr_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		If amsgrad = True:
		  Initialization:
		
		  $$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		  $$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$v_hat_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		  $$t := 0 \text{(Initialize timestep)}$$
		
		  The update rule for `variable` with gradient `g` uses an optimization
		  described at the end of section2 of the paper:
		
		  $$t := t + 1$$
		  $$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		
		  $$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		  $$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		  $$v_hat_t := max(v_hat_{t-1}, v_t)
		  $$variable := variable - lr_t * m_t / (\sqrt{v_hat_t} + \epsilon)$$
		
		The default value of 1e-7 for epsilon might not be a good default in
		general. For example, when training an Inception network on ImageNet a
		current good choice is 1.0 or 0.1. Note that since AdamOptimizer uses the
		formulation just before Section 2.1 of the Kingma and Ba paper rather than
		the formulation in Algorithm 1, the "epsilon" referred to here is "epsilon
		hat" in the paper.
		
		The sparse implementation of this algorithm (used when the gradient is an
		IndexedSlices object, typically because of `tf.gather` or an embedding
		lookup in the forward pass) does apply momentum to variable slices even if
		they were not used in the forward pass (meaning they have a gradient equal
		to zero). Momentum decay (beta1) is also applied to the entire momentum
		accumulator. This means that the sparse behavior is equivalent to the dense
		behavior (in contrast to some momentum implementations which ignore momentum
		unless a variable slice was actually used).
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning rate.
		  beta_1: A float value or a constant float tensor. The exponential decay
		    rate for the 1st moment estimates.
		  beta_2: A float value or a constant float tensor. The exponential decay
		    rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  amsgrad: boolean. Whether to apply AMSGrad variant of this algorithm from
		    the paper "On the Convergence of Adam and beyond".
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".  @compatibility(eager) When eager execution is
		    enabled, `learning_rate`, `beta_1`, `beta_2`, and `epsilon` can each be
		    a callable that takes no arguments and returns the actual value to use.
		    This can be useful for changing these values across different
		    invocations of optimizer functions. @end_compatibility
		  **kwargs: keyword arguments. Allowed to be {`decay`}
	**/
	public function new(?learning_rate:Dynamic, ?beta_1:Dynamic, ?beta_2:Dynamic, ?epsilon:Dynamic, ?amsgrad:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Override setattr to support dynamic hyperparameter setting.
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
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
		All dependencies of this object.
		
		May be overridden to include conditional dependencies.
		
		Returns:
		  A list of `CheckpointableReference` objects indicating named
		  `Checkpointable` dependencies which should be saved along with this
		  object.
	**/
	public var _checkpoint_dependencies : Dynamic;
	/**
		Compute gradients of `loss` for the variables in `var_list`.
		
		This is the first part of `minimize()`.  It returns a list
		of (gradient, variable) pairs where "gradient" is the gradient
		for "variable".  Note that "gradient" can be a `Tensor`, an
		`IndexedSlices`, or `None` if there is no gradient for the
		given variable.
		
		Args:
		  loss: A callable taking no arguments which returns the value to minimize.
		  var_list: List or tuple of `tf.Variable` to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph under
		    the key `GraphKeys.TRAINABLE_VARIABLES`.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		
		Returns:
		  A list of (gradient, variable) pairs. Variable is always present, but
		  gradient can be `None`.
		
		Raises:
		  TypeError: If `var_list` contains anything else than `Variable` objects.
		  ValueError: If some arguments are invalid, or var_list is None.
	**/
	public function _compute_gradients(loss:Dynamic, var_list:Dynamic, ?grad_loss:Dynamic):Dynamic;
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
	public function _create_slots(var_list:Dynamic):Dynamic;
	/**
		Get decayed learning rate as a Tensor with dtype=var_dtype.
	**/
	public function _decayed_lr(var_dtype:Dynamic):Dynamic;
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
	public function _get_hyper(name:Dynamic, ?dtype:Dynamic):Dynamic;
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
	public function _prepare():Dynamic;
	/**
		Add ops to apply dense gradients to the variable `handle`.
		
		Args:
		  grad: a `Tensor` representing the gradient.
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
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
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
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
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		  indices: a `Tensor` of integral type representing the indices for which
		    the gradient is nonzero. Indices may be repeated.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse_duplicate_indices(grad:Dynamic, handle:Dynamic, indices:Dynamic):Dynamic;
	public function _resource_scatter_add(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
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
		Serialize a hyperparameter that can be a float, callable, or Tensor.
	**/
	public function _serialize_hyperparameter(hyperparameter_name:Dynamic):Dynamic;
	/**
		set hyper `name` to value. value can be callable, tensor, numeric.
	**/
	public function _set_hyper(name:Dynamic, value:Dynamic):Dynamic;
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
		Valid types for loss, variables and gradients.
		
		Subclasses should override to allow other float types.
		
		Returns:
		  Valid types for loss, variables and gradients.
	**/
	public function _valid_dtypes():Dynamic;
	/**
		Add a new slot variable for `var`.
	**/
	public function add_slot(_var:Dynamic, slot_name:Dynamic, ?initializer:Dynamic):Dynamic;
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?trainable:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Apply gradients to variables.
		
		This is the second part of `minimize()`. It returns an `Operation` that
		applies gradients.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`.
		  name: Optional name for the returned operation.  Default to the name
		    passed to the `Optimizer` constructor.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
		
		Raises:
		  TypeError: If `grads_and_vars` is malformed.
		  ValueError: If none of the variables have gradients.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an optimizer from its config.
		
		This method is the reverse of `get_config`,
		capable of instantiating the same optimizer from the config
		dictionary.
		
		Arguments:
		    config: A Python dictionary, typically the output of get_config.
		    custom_objects: A Python dictionary mapping names to additional Python
		      objects used to create this optimizer, such as a function used for a
		      hyperparameter.
		
		Returns:
		    An optimizer instance.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the config of the optimimizer.
		
		An optimizer config is a Python dictionary (serializable)
		containing the configuration of an optimizer.
		The same optimizer can be reinstantiated later
		(without any saved state) from this configuration.
		
		Returns:
		    Python dictionary.
	**/
	public function get_config():Dynamic;
	/**
		Returns gradients of `loss` with respect to `params`.
		
		Arguments:
		  loss: Loss tensor.
		  params: List of variables.
		
		Returns:
		  List of gradient tensors.
		
		Raises:
		  ValueError: In case any gradient cannot be computed (e.g. if gradient
		    function not implemented).
	**/
	public function get_gradients(loss:Dynamic, params:Dynamic):Dynamic;
	public function get_slot(_var:Dynamic, slot_name:Dynamic):Dynamic;
	/**
		A list of names for this optimizer's slots.
	**/
	public function get_slot_names():Dynamic;
	public function get_updates(loss:Dynamic, params:Dynamic):Dynamic;
	public function get_weights():Dynamic;
	public var iterations : Dynamic;
	/**
		Add operations to minimize `loss` by updating `var_list`.
		
		This method simply combines calls `compute_gradients()` and
		`apply_gradients()`. If you want to process the gradient before applying
		them call `compute_gradients()` and `apply_gradients()` explicitly instead
		of using this function.
		
		Args:
		  loss: A callable taking no arguments which returns the value to minimize.
		  var_list: list or tuple of `Variable` objects to update to minimize
		    `loss`.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
		
		Raises:
		  ValueError: If some of the variables are not `Variable` objects.
		
		@compatibility(eager)
		When eager execution is enabled, `loss` should be a Python function that
		takes no arguments and computes the value to be minimized. Minimization (and
		gradient computation) is done with respect to the elements of `var_list`.
		`grad_loss` is ignored when eager execution is enabled.
		@end_compatibility
	**/
	public function minimize(loss:Dynamic, var_list:Dynamic, ?grad_loss:Dynamic, ?name:Dynamic):Dynamic;
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		Returns variables of this Optimizer based on the order created.
	**/
	public function variables():Dynamic;
	/**
		Returns variables of this Optimizer based on the order created.
	**/
	public var weights : Dynamic;
}