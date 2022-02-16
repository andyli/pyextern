/* This file is generated, do not edit! */
package tensorflow.python.training.adam;
@:pythonImport("tensorflow.python.training.adam", "AdamOptimizer") extern class AdamOptimizer {
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
		Construct a new Adam optimizer.
		
		Initialization:
		
		$$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		$$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		$$t := 0 \text{(Initialize timestep)}$$
		
		The update rule for `variable` with gradient `g` uses an optimization
		described at the end of section 2 of the paper:
		
		$$t := t + 1$$
		$$\text{lr}_t := \mathrm{learning_rate} *
		  \sqrt{1 - \beta_2^t} / (1 - \beta_1^t)$$
		
		$$m_t := \beta_1 * m_{t-1} + (1 - \beta_1) * g$$
		$$v_t := \beta_2 * v_{t-1} + (1 - \beta_2) * g * g$$
		$$\text{variable} := \text{variable} -
		  \text{lr}_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		The default value of 1e-8 for epsilon might not be a good default in
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
		  beta1: A float value or a constant float tensor. The exponential decay
		    rate for the 1st moment estimates.
		  beta2: A float value or a constant float tensor. The exponential decay
		    rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  use_locking: If True use locks for update operations.
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".
	**/
	@:native("__init__")
	public function ___init__(?learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new Adam optimizer.
		
		Initialization:
		
		$$m_0 := 0 \text{(Initialize initial 1st moment vector)}$$
		$$v_0 := 0 \text{(Initialize initial 2nd moment vector)}$$
		$$t := 0 \text{(Initialize timestep)}$$
		
		The update rule for `variable` with gradient `g` uses an optimization
		described at the end of section 2 of the paper:
		
		$$t := t + 1$$
		$$\text{lr}_t := \mathrm{learning_rate} *
		  \sqrt{1 - \beta_2^t} / (1 - \beta_1^t)$$
		
		$$m_t := \beta_1 * m_{t-1} + (1 - \beta_1) * g$$
		$$v_t := \beta_2 * v_{t-1} + (1 - \beta_2) * g * g$$
		$$\text{variable} := \text{variable} -
		  \text{lr}_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		The default value of 1e-8 for epsilon might not be a good default in
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
		  beta1: A float value or a constant float tensor. The exponential decay
		    rate for the 1st moment estimates.
		  beta2: A float value or a constant float tensor. The exponential decay
		    rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  use_locking: If True use locks for update operations.
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".
	**/
	public function new(?learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
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
		Restores a connection between trackables when loading from SavedModel.
		
		SavedModel stores both the object metadata and its list of children. When
		loading, this function is used along with `_deserialize_from_proto` to load
		objects from the SavedModel: First, all saved objects are created with
		`_deserialize_from_proto`. After that is complete, the children are
		connected using `_add_trackable_child`.
		
		**Example**
		
		`tf.Module`, `tf.keras.Model` and Keras layers use `__setattr__` to track
		children. This is why users can call `model.v = tf.Variable(...)`, and the
		variable will be automatically saved to the checkpoint. The implementation
		of this method for the listed objects is:
		
		```
		def _add_trackable_child(self, name, value):
		  self.__setattr__(name, value)
		```
		
		Args:
		  name: The name of the connection between the parent and child `Trackable`.
		  value: The child `Trackable` object.
	**/
	public function _add_trackable_child(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Restore-on-create for a variable be saved with this `Trackable`.
		
		If the user has requested that this object or another `Trackable` which
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
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
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
		
		Returns:
		  An `Operation`.
	**/
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
	public function _apply_sparse_shared(grad:Dynamic, _var:Dynamic, indices:Dynamic, scatter_add:Dynamic):Dynamic;
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
		From Trackable. Gather graph-specific non-slot variables to save.
	**/
	public var _checkpoint_dependencies : Dynamic;
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
		  slot_variable_position: A `trackable._CheckpointPosition` object
		    indicating the slot variable `Trackable` object to be restored.
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
		A dictionary with deferred dependencies.
		
		Stores restorations for other Trackable objects on which this object
		may eventually depend. May be overridden by sub-classes (e.g. Optimizers use
		conditional dependencies based the current graph, and so need separate
		management of deferred dependencies too).
		
		Returns:
		  A dictionary mapping from local name to a list of CheckpointPosition
		  objects.
	**/
	public var _deferred_dependencies : Dynamic;
	/**
		Returns a new object restored by the SavedModel.
		
		Trackable classes decorated with `register_serializable` should overwrite
		this method to change how the object is loaded from SavedModel. By default,
		the object is initialized with no arguments.
		
		Example:
		
		```
		def _serialize_to_proto(self, **unused_kwargs):
		  return Message(name="a")
		
		@classmethod
		def _deserialize_from_proto(cls, proto, **unused_kwargs):
		  if proto.Is(Message.DESCRIPTOR):
		    unpacked = Message()
		    proto.Unpack(unpacked)
		    return cls(unpacked.name)
		  else:
		    return cls()
		```
		
		This function is only used by the Python API. C++ and TensorFlow Serving do
		not have access to your registered class and cannot execute any of the
		non-tf.functions attached to the Python class. However, all signatures and
		tf.functions are still accessible.
		
		**Avoid creating duplicate trackables**
		
		SavedModel is saved by recursively gathering all of the trackables and their
		children. SavedModel loading reverses those steps by creating all
		trackables, then reconnecting the children trackables to their parents using
		`Trackable._add_trackable_child`.
		
		That means that if `_deserialize_from_proto` calls the `__init__` function,
		which creates all of the children trackables, then those children end up
		being created *twice*.
		
		To avoid this, structure your code so that Trackables are not created
		when deserialized from SavedModel:
		
		```
		@register_serializable()
		class Serializable(trackable):
		  def __init __(self, from_proto=False):
		    create_non_trackable_objects()
		    if not from_proto:
		      create_variables_and_other_trackables()
		
		  def _deserialize_from_proto(cls, **kwargs):
		    return cls(from_proto=True)
		
		  def _add_trackable_child(self, name, value):
		    self.__setattr__(name, value)
		```
		
		Args:
		  **kwargs: Keyword arguments passed to the object when loading. As of now,
		    the only supported kwarg is:
		    * proto: A `google.protobuf.Any` proto read from the SavedModel.
		
		Returns:
		  A new object.
	**/
	static public function _deserialize_from_proto(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		or variables easily converted to `SaveableObject`s (as in
		`tf.compat.v1.train.Saver`'s
		`var_list` constructor argument).
		
		`SaveableObjects` have a name set, which Trackable needs to generate
		itself. So rather than returning `SaveableObjects` directly, this method
		should return a dictionary of callables which take `name` arguments and
		return `SaveableObjects` with that name.
		
		If this object may also be passed to the global-name-based
		`tf.compat.v1.train.Saver`,
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
	public function _get_beta_accumulators():Dynamic;
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
		Pop and load any deferred checkpoint restores into `trackable`.
		
		This method does not add a new dependency on `trackable`, but it does
		check if any outstanding/deferred dependencies have been queued waiting for
		this dependency to be added (matched based on `name`). If so,
		`trackable` and its dependencies are restored. The restorations are
		considered fulfilled and so are deleted.
		
		`_track_trackable` is more appropriate for adding a
		normal/unconditional dependency, and includes handling for deferred
		restorations. This method allows objects such as `Optimizer` to use the same
		restoration logic while managing conditional dependencies themselves, by
		overriding `_checkpoint_dependencies` and `_lookup_dependency` to change the
		object's dependencies based on the context it is saved/restored in (a single
		optimizer instance can have state associated with multiple graphs).
		
		Args:
		  name: The name of the dependency within this object (`self`), used to
		    match `trackable` with values saved in a checkpoint.
		  trackable: The Trackable object to restore (inheriting from `Trackable`).
	**/
	public function _handle_deferred_dependencies(name:Dynamic, trackable:Dynamic):Dynamic;
	/**
		Lists extra dependencies to serialize.
		
		Internal sub-classes can override this method to return extra dependencies
		that should be saved with the object during SavedModel serialization. For
		example, this is used to save `trainable_variables` in Keras models. The
		python property `trainable_variables` contains logic to iterate through the
		weights from the model and its sublayers. The serialized Keras model saves
		`trainable_weights` as a trackable list of variables.
		
		PLEASE NOTE when overriding this method:
		  1. This function may only generate new trackable objects the first time it
		     is called.
		  2. The returned dictionary must not have naming conflicts with
		     dependencies tracked by the root. In other words, if the root is
		     tracking `object_1` with name 'x', and this functions returns
		     `{'x': object_2}`, an error is raised when saving.
		
		Args:
		  serialization_cache: A dictionary shared between all objects in the same
		    object graph. This object is passed to both
		    `_list_extra_dependencies_for_serialization` and
		    `_list_functions_for_serialization`.
		
		Returns:
		  A dictionary mapping attribute names to trackable objects.
	**/
	public function _list_extra_dependencies_for_serialization(serialization_cache:Dynamic):Dynamic;
	/**
		Lists the functions of this trackable to serialize.
		
		Internal sub-classes can override this with specific logic. E.g.
		`AutoTrackable` provides an implementation that returns the `attr`
		that return functions.
		
		Args:
		  serialization_cache: Dictionary passed to all objects in the same object
		    graph during serialization.
		
		Returns:
		    A dictionary mapping attribute names to `Function` or
		    `ConcreteFunction`.
	**/
	public function _list_functions_for_serialization(serialization_cache:Dynamic):Dynamic;
	/**
		From Trackable. Find a non-slot variable in the current graph.
	**/
	public function _lookup_dependency(name:Dynamic):Dynamic;
	/**
		Makes new resource handle ops corresponding to existing resource tensors.
		
		Internal sub-classes can override this to inform model saving how to add new
		resource handle ops to the main GraphDef of a SavedModel (TF 1.x style
		graph), which allows session based APIs (e.g, C++ loader API) to interact
		with resources owned by this object.
		
		Args:
		  save_options: A tf.saved_model.SaveOptions instance.
		
		Returns:
		  A tuple of (object_map, resource_map):
		    object_map: A dictionary mapping from objects that hold existing
		      resource tensors to replacement objects created to hold the new
		      resource tensors.
		    resource_map: A dictionary mapping from existing resource tensors to
		      newly created resource tensors.
	**/
	public function _map_resources(save_options:Dynamic):Dynamic;
	/**
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_trackable():Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	public var _name_based_restores : Dynamic;
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
		String used to identify this object in a SavedModel.
		
		THIS FIELD HAS BEEN DEPRECATED IN FAVOR OF THE NAME REGISTERED WITH
		`register_serializable`.
		
		Generally, the object identifier is constant across objects of the same
		class, while the metadata field is used for instance-specific data.
		
		Returns:
		  String object identifier.
	**/
	public var _object_identifier : Dynamic;
	/**
		Return a dependency's value for restore-on-create.
		
		Note the restoration is not deleted; if for some reason preload is called
		and then not assigned to the variable (for example because a custom getter
		overrides the initializer), the assignment will still happen once the
		variable is tracked (determined based on checkpoint.restore_uid).
		
		Args:
		  name: The object-local name of the dependency holding the variable's
		    value.
		
		Returns:
		  An callable for use as a variable's initializer/initial_value, or None if
		  one should not be set (either because there was no variable with this name
		  in the checkpoint or because it needs more complex deserialization). Any
		  non-trivial deserialization will happen when the variable object is
		  tracked.
	**/
	public function _preload_simple_restoration(name:Dynamic):Dynamic;
	/**
		Create all needed tensors before applying gradients.
		
		This is called with the name_scope using the "name" that
		users have chosen for the application of gradients.
	**/
	public function _prepare():Dynamic;
	/**
		Add ops to apply dense gradients to the variable `handle`.
		
		Args:
		  grad: a `Tensor` representing the gradient.
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		
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
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		  indices: a `Tensor` of integral type representing the indices for
		   which the gradient is nonzero. Indices are unique.
		
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
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		  indices: a `Tensor` of integral type representing the indices for
		   which the gradient is nonzero. Indices may be repeated.
		
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
		Returns a proto of any type to be saved into the SavedModel.
		
		Trackable classes decorated with `register_serializable` should overwrite
		this method to save metadata for this object to the SavedModel. The proto
		returned by this function will be passed to `_deserialize_from_proto` in the
		form of a `google.protobuf.Any` proto.
		
		This data is only saved and used by the Python API. Existing C++ loading
		APIs such as `tensorflow::LoadSavedModel` will not read this field at all.
		
		Args:
		  **kwargs: Keyword arguments passed to the object during saving. There are
		    no kwargs at this time. One future kwarg would be the SavedModel
		    directory, which will be used by the Assets object.
		
		Returns:
		  A new proto
	**/
	public function _serialize_to_proto(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _setattr_tracking : Dynamic;
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
		Declare a dependency on another `Trackable` object.
		
		Indicates that checkpoints for this object should include variables from
		`trackable`.
		
		Variables in a checkpoint are mapped to `Trackable`s based on the names
		provided when the checkpoint was written. To avoid breaking existing
		checkpoints when modifying a class, neither variable names nor dependency
		names (the names passed to `_track_trackable`) may change.
		
		Args:
		  trackable: A `Trackable` which this object depends on.
		  name: A local name for `trackable`, used for loading checkpoints into the
		    correct objects.
		  overwrite: Boolean, whether silently replacing dependencies is OK. Used
		    for __setattr__, where throwing an error on attribute reassignment would
		    be inappropriate.
		
		Returns:
		  `trackable`, for convenience when declaring a dependency and
		  assigning to a member variable in one statement.
		
		Raises:
		  TypeError: If `trackable` does not inherit from `Trackable`.
		  ValueError: If another object is already tracked by this name.
	**/
	public function _track_trackable(trackable:Dynamic, name:Dynamic, ?overwrite:Dynamic):Dynamic;
	public var _unconditional_checkpoint_dependencies : Dynamic;
	public var _unconditional_dependency_names : Dynamic;
	public var _update_uid : Dynamic;
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
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the `Optimizer` constructor.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
		
		Raises:
		  TypeError: If `grads_and_vars` is malformed.
		  ValueError: If none of the variables have gradients.
		  RuntimeError: If you should use `_distributed_apply()` instead.
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
		Add operations to minimize `loss` by updating `var_list`.
		
		This method simply combines calls `compute_gradients()` and
		`apply_gradients()`. If you want to process the gradient before applying
		them call `compute_gradients()` and `apply_gradients()` explicitly instead
		of using this function.
		
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
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
		
		Raises:
		  ValueError: If some of the variables are not `Variable` objects.
		
		@compatibility(eager)
		When eager execution is enabled, `loss` should be a Python function that
		takes no arguments and computes the value to be minimized. Minimization (and
		gradient computation) is done with respect to the elements of `var_list` if
		not None, else with respect to any trainable variables created during the
		execution of the `loss` function. `gate_gradients`, `aggregation_method`,
		`colocate_gradients_with_ops` and `grad_loss` are ignored when eager
		execution is enabled.
		@end_compatibility
	**/
	public function minimize(loss:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
	/**
		A list of variables which encode the current state of `Optimizer`.
		
		Includes slot variables and additional global variables created by the
		optimizer in the current default graph.
		
		Returns:
		  A list of variables.
	**/
	public function variables():Dynamic;
}