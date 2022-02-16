/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.loss_scale_optimizer;
@:pythonImport("tensorflow.python.keras.mixed_precision.loss_scale_optimizer", "LossScaleOptimizer") extern class LossScaleOptimizer {
	static public var _HAS_AGGREGATE_GRAD : Dynamic;
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
		Create a new Optimizer.
		
		This must be called by the constructors of subclasses.
		Note that Optimizer instances should not bind to a single graph,
		and so shouldn't keep Tensors as member variables. Generally
		you should be able to use the _set_hyper()/state.get_hyper()
		facility instead.
		
		This class is stateful and thread-compatible.
		
		Example of custom gradient transformations:
		
		```python
		def my_gradient_transformer(grads_and_vars):
		  # Simple example, double the gradients.
		  return [(2. * g, v) for g, v in grads_and_vars]
		
		optimizer = tf.keras.optimizers.SGD(
		    1e-3, gradient_transformers=[my_gradient_transformer])
		```
		
		Args:
		  name: String. The name to use for momentum accumulator weights created
		    by the optimizer.
		  gradient_aggregator: The function to use to aggregate gradients across
		    devices (when using `tf.distribute.Strategy`). If `None`, defaults to
		    summing the gradients across devices. The function should accept and
		    return a list of `(gradient, variable)` tuples.
		  gradient_transformers: Optional. List of functions to use to transform
		    gradients before applying updates to Variables. The functions are
		    applied after `gradient_aggregator`. The functions should accept and
		    return a list of `(gradient, variable)` tuples.
		  **kwargs: keyword arguments. Allowed arguments are `clipvalue`,
		    `clipnorm`, `global_clipnorm`.
		    If `clipvalue` (float) is set, the gradient of each weight
		    is clipped to be no higher than this value.
		    If `clipnorm` (float) is set, the gradient of each weight
		    is individually clipped so that its norm is no higher than this value.
		    If `global_clipnorm` (float) is set the gradient of all weights is
		    clipped so that their global norm is no higher than this value.
		
		Raises:
		  ValueError: in case of any invalid argument.
	**/
	@:native("__init__")
	public function ___init__(inner_optimizer:Dynamic, ?_dynamic:Dynamic, ?initial_scale:Dynamic, ?dynamic_growth_steps:Dynamic):Dynamic;
	/**
		Create a new Optimizer.
		
		This must be called by the constructors of subclasses.
		Note that Optimizer instances should not bind to a single graph,
		and so shouldn't keep Tensors as member variables. Generally
		you should be able to use the _set_hyper()/state.get_hyper()
		facility instead.
		
		This class is stateful and thread-compatible.
		
		Example of custom gradient transformations:
		
		```python
		def my_gradient_transformer(grads_and_vars):
		  # Simple example, double the gradients.
		  return [(2. * g, v) for g, v in grads_and_vars]
		
		optimizer = tf.keras.optimizers.SGD(
		    1e-3, gradient_transformers=[my_gradient_transformer])
		```
		
		Args:
		  name: String. The name to use for momentum accumulator weights created
		    by the optimizer.
		  gradient_aggregator: The function to use to aggregate gradients across
		    devices (when using `tf.distribute.Strategy`). If `None`, defaults to
		    summing the gradients across devices. The function should accept and
		    return a list of `(gradient, variable)` tuples.
		  gradient_transformers: Optional. List of functions to use to transform
		    gradients before applying updates to Variables. The functions are
		    applied after `gradient_aggregator`. The functions should accept and
		    return a list of `(gradient, variable)` tuples.
		  **kwargs: keyword arguments. Allowed arguments are `clipvalue`,
		    `clipnorm`, `global_clipnorm`.
		    If `clipvalue` (float) is set, the gradient of each weight
		    is clipped to be no higher than this value.
		    If `clipnorm` (float) is set, the gradient of each weight
		    is individually clipped so that its norm is no higher than this value.
		    If `global_clipnorm` (float) is set the gradient of all weights is
		    clipped so that their global norm is no higher than this value.
		
		Raises:
		  ValueError: in case of any invalid argument.
	**/
	public function new(inner_optimizer:Dynamic, ?_dynamic:Dynamic, ?initial_scale:Dynamic, ?dynamic_growth_steps:Dynamic):Void;
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
	public function _add_variable_with_custom_getter(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Called in `apply_gradients` to aggregate gradients across devices.
		
		Note that user subclasses may override this, so the interface should not be
		changed.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs.
		
		Returns:
		  A list of (aggregrated_gradient, variable) pairs. By default, this calls
		  `self.gradient_aggregator`.
	**/
	public function _aggregate_gradients(grads_and_vars:Dynamic):Dynamic;
	public function _apply_gradients(grads:Dynamic, wrapped_vars:Dynamic, name:Dynamic):Dynamic;
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
	public var _checkpoint_dependencies : Dynamic;
	/**
		Compute gradients of `loss` for the variables in `var_list`.
		
		This is the first part of `minimize()`.  It returns a list
		of (gradient, variable) pairs where "gradient" is the gradient
		for "variable".  Note that "gradient" can be a `Tensor`, an
		`IndexedSlices`, or `None` if there is no gradient for the
		given variable.
		
		Args:
		  loss: `Tensor` or callable. If a callable, `loss` should take no
		    arguments and return the value to minimize. If a `Tensor`, the `tape`
		    argument must be passed.
		  var_list: list or tuple of `Variable` objects to update to minimize
		    `loss`, or a callable returning the list or tuple of `Variable` objects.
		    Use callable when the variable list would otherwise be incomplete before
		    `minimize` and the variables are created at the first time when `loss`
		    is called.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  tape: (Optional) `tf.GradientTape`. If `loss` is provided as a `Tensor`,
		    the tape that computed the `loss` must be provided.
		
		Returns:
		  A list of (gradient, variable) pairs. Variable is always present, but
		  gradient can be `None`.
		
		Raises:
		  TypeError: If `var_list` contains anything else than `Variable` objects.
		  ValueError: If some arguments are invalid, or var_list is None.
	**/
	public function _compute_gradients(loss:Dynamic, var_list:Dynamic, ?grad_loss:Dynamic, ?tape:Dynamic):Dynamic;
	/**
		Creates all weights, including iterations, hyperparameters and slot vars.
		
		This will add newly created variables to `optimizer.weights`.
		
		New variables are only created when this method is called the first time, or
		when called with different variables in the var_list.
		
		Args:
		  var_list: list or tuple of `Variable` objects that will be minimized
		    using this optimizer.
	**/
	public function _create_all_weights(var_list:Dynamic):Dynamic;
	public function _create_hypers():Dynamic;
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
	public function _create_slots(var_list:Dynamic):Dynamic;
	/**
		Get decayed learning rate as a Tensor with dtype=var_dtype.
	**/
	public function _decayed_lr(var_dtype:Dynamic):Dynamic;
	public var _deferred_dependencies : Dynamic;
	public var _dense_apply_args : Dynamic;
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
		`apply_gradients` using a `DistributionStrategy`.
	**/
	public function _distributed_apply(distribution:Dynamic, grads_and_vars:Dynamic, name:Dynamic, apply_state:Dynamic):Dynamic;
	/**
		Returns the `tf.distribute.Strategy` this optimizer was created under.
	**/
	public function _distribution_strategy_scope():Dynamic;
	/**
		Compatibility for subclasses that don't pass apply_state through.
	**/
	public function _fallback_apply_state(var_device:Dynamic, var_dtype:Dynamic):Dynamic;
	public function _gather_saveables_for_checkpoint(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Called in `minimize` to compute gradients from loss.
	**/
	public function _get_gradients(tape:Dynamic, loss:Dynamic, var_list:Dynamic, ?grad_loss:Dynamic):Dynamic;
	public function _get_hyper(name:Dynamic, ?dtype:Dynamic):Dynamic;
	public function _handle_deferred_dependencies(name:Dynamic, trackable:Dynamic):Dynamic;
	public function _init_set_name(name:Dynamic, ?zero_based:Dynamic):Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	public function _list_extra_dependencies_for_serialization(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _list_functions_for_serialization(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _lookup_dependency(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _maybe_initialize_trackable():Dynamic;
	public function _name_based_attribute_restore(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _name_based_restores : Dynamic;
	public function _no_dependency(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _object_identifier : Dynamic;
	public function _preload_simple_restoration(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _prepare(var_list:Dynamic):Dynamic;
	public function _prepare_local(var_device:Dynamic, var_dtype:Dynamic, apply_state:Dynamic):Dynamic;
	public function _raise_if_strategy_unsupported():Dynamic;
	/**
		Add ops to apply dense gradients to the variable `handle`.
		
		Args:
		  grad: a `Tensor` representing the gradient.
		  handle: a `Tensor` of dtype `resource` which points to the variable to be
		    updated.
		  apply_state: A dict which is used across multiple apply calls.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_dense(grad:Dynamic, handle:Dynamic, apply_state:Dynamic):Dynamic;
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
		  apply_state: A dict which is used across multiple apply calls.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse(grad:Dynamic, handle:Dynamic, indices:Dynamic, apply_state:Dynamic):Dynamic;
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
		  **kwargs: May optionally contain `apply_state`
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse_duplicate_indices(grad:Dynamic, handle:Dynamic, indices:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _resource_scatter_add(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	public function _resource_scatter_update(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	/**
		Restore a newly created slot variable's value.
	**/
	public function _restore_slot_variable(slot_name:Dynamic, variable:Dynamic, slot_variable:Dynamic):Dynamic;
	/**
		Serialize a hyperparameter that can be a float, callable, or Tensor.
	**/
	public function _serialize_hyperparameter(hyperparameter_name:Dynamic):Dynamic;
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
	/**
		set hyper `name` to value. value can be callable, tensor, numeric.
	**/
	public function _set_hyper(name:Dynamic, value:Dynamic):Dynamic;
	public var _setattr_tracking : Dynamic;
	public function _single_restoration_from_checkpoint_position(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _sparse_apply_args : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _track_trackable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _tracking_metadata : Dynamic;
	/**
		Called in `apply_gradients` after aggregation.
	**/
	public function _transform_gradients(grads_and_vars:Dynamic):Dynamic;
	/**
		Called in `.minimize` to transform loss before computing gradients.
	**/
	public function _transform_loss(loss:Dynamic):Dynamic;
	/**
		Called in `apply_gradients` before gradient aggregation.
	**/
	public function _transform_unaggregated_gradients(grads_and_vars:Dynamic):Dynamic;
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
		Add a new slot variable for `var`.
		
		A slot variable is an additional variable associated with `var` to train.
		It is allocated and managed by optimizers, e.g. `Adam`.
		
		Args:
		  var: a `Variable` object.
		  slot_name: name of the slot variable.
		  initializer: initializer of the slot variable
		  shape: (Optional) shape of the slot variable. If not set, it will default
		  to the shape of `var`.
		
		Returns:
		  A slot variable.
	**/
	public function add_slot(_var:Dynamic, slot_name:Dynamic, ?initializer:Dynamic):Dynamic;
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?trainable:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Apply gradients to variables.
		
		This is the second part of `minimize()`. It returns an `Operation` that
		applies gradients.
		
		The method sums gradients from all replicas in the presence of
		`tf.distribute.Strategy` by default. You can aggregate gradients yourself by
		passing `experimental_aggregate_gradients=False`.
		
		Example:
		
		```python
		grads = tape.gradient(loss, vars)
		grads = tf.distribute.get_replica_context().all_reduce('sum', grads)
		# Processing aggregated gradients.
		optimizer.apply_gradients(zip(grads, vars),
		    experimental_aggregate_gradients=False)
		
		```
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs.
		  name: Optional name for the returned operation. Default to the name passed
		    to the `Optimizer` constructor.
		  experimental_aggregate_gradients: Whether to sum gradients from different
		    replicas in the presense of `tf.distribute.Strategy`. If False, it's
		    user responsibility to aggregate the gradients. Default to True.
		
		Returns:
		  An `Operation` that applies the specified gradients. The `iterations`
		  will be automatically increased by 1.
		
		Raises:
		  TypeError: If `grads_and_vars` is malformed.
		  ValueError: If none of the variables have gradients.
		  RuntimeError: If called in a cross-replica context.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?name:Dynamic, ?experimental_aggregate_gradients:Dynamic):Dynamic;
	/**
		`float` or `None`. If set, clips gradients to a maximum norm.
	**/
	public var clipnorm : Dynamic;
	/**
		`float` or `None`. If set, clips gradients to a maximum value.
	**/
	public var clipvalue : Dynamic;
	/**
		Bool indicating whether dynamic loss scaling is used.
	**/
	@:native("dynamic")
	public var _dynamic : Dynamic;
	/**
		The number of steps since the loss scale was last increased or decreased.
		
		This is None if `LossScaleOptimizer.dynamic` is False.
		
		The counter is incremented every step. Once it reaches
		`LossScaleOptimizer.dynamic_growth_steps`, the loss scale will be doubled
		and the counter will be reset back to zero. If nonfinite gradients are
		encountered, the loss scale will be halved and the counter will be reset
		back to zero.
	**/
	public var dynamic_counter : Dynamic;
	/**
		The number of steps it takes to increase the loss scale.
		
		This is None if `LossScaleOptimizer.dynamic` is False.
		
		Every `dynamic_growth_steps` consecutive steps with finite gradients, the
		loss scale is increased.
	**/
	public var dynamic_growth_steps : Dynamic;
	/**
		Creates an optimizer from its config.
		
		This method is the reverse of `get_config`,
		capable of instantiating the same optimizer from the config
		dictionary.
		
		Args:
		    config: A Python dictionary, typically the output of get_config.
		    custom_objects: A Python dictionary mapping names to additional Python
		      objects used to create this optimizer, such as a function used for a
		      hyperparameter.
		
		Returns:
		    An optimizer instance.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the config of the optimizer.
		
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
		
		Should be used only in legacy v1 graph mode.
		
		Args:
		  loss: Loss tensor.
		  params: List of variables.
		
		Returns:
		  List of gradient tensors.
		
		Raises:
		  ValueError: In case any gradient cannot be computed (e.g. if gradient
		    function not implemented).
	**/
	public function get_gradients(loss:Dynamic, params:Dynamic):Dynamic;
	/**
		Scales the loss by the loss scale.
		
		This method is only needed if you compute gradients manually, e.g. with
		`tf.GradientTape`. In that case, call this method to scale the loss before
		passing the loss to `tf.GradientTape`. If you use
		`LossScaleOptimizer.minimize` or `LossScaleOptimizer.get_gradients`, loss
		scaling is automatically applied and this method is unneeded.
		
		If this method is called, `get_unscaled_gradients` should also be called.
		See the `tf.keras.mixed_precision.LossScaleOptimizer` doc for
		an example.
		
		Args:
		  loss: The loss, which will be multiplied by the loss scale. Can either be
		    a tensor or a callable returning a tensor.
		
		Returns:
		  `loss` multiplied by `LossScaleOptimizer.loss_scale`.
	**/
	public function get_scaled_loss(loss:Dynamic):Dynamic;
	public function get_slot(_var:Dynamic, slot_name:Dynamic):Dynamic;
	/**
		A list of names for this optimizer's slots.
	**/
	public function get_slot_names():Dynamic;
	/**
		Unscales the gradients by the loss scale.
		
		This method is only needed if you compute gradients manually, e.g. with
		`tf.GradientTape`. In that case, call this method to unscale the gradients
		after computing them with `tf.GradientTape`. If you use
		`LossScaleOptimizer.minimize` or `LossScaleOptimizer.get_gradients`, loss
		scaling is automatically applied and this method is unneeded.
		
		If this method is called, `get_scaled_loss` should also be called. See
		the `tf.keras.mixed_precision.LossScaleOptimizer` doc for an
		example.
		
		Args:
		  grads: A list of tensors, each which will be divided by the loss scale.
		    Can have None values, which are ignored.
		
		Returns:
		  A new list the same size as `grads`, where every non-None value in `grads`
		  is divided by `LossScaleOptimizer.loss_scale`.
	**/
	public function get_unscaled_gradients(grads:Dynamic):Dynamic;
	public function get_updates(loss:Dynamic, params:Dynamic):Dynamic;
	/**
		Returns the current weights of the optimizer.
		
		The weights of an optimizer are its state (ie, variables).
		This function returns the weight values associated with this
		optimizer as a list of Numpy arrays. The first value is always the
		iterations count of the optimizer, followed by the optimizer's state
		variables in the order they were created. The returned list can in turn
		be used to load state into similarly parameterized optimizers.
		
		For example, the RMSprop optimizer for this simple model returns a list of
		three values-- the iteration count, followed by the root-mean-square value
		of the kernel and bias of the single Dense layer:
		
		>>> opt = tf.keras.optimizers.RMSprop()
		>>> m = tf.keras.models.Sequential([tf.keras.layers.Dense(10)])
		>>> m.compile(opt, loss='mse')
		>>> data = np.arange(100).reshape(5, 20)
		>>> labels = np.zeros(5)
		>>> print('Training'); results = m.fit(data, labels)
		Training ...
		>>> len(opt.get_weights())
		3
		
		Returns:
		    Weights values as a list of numpy arrays.
	**/
	public function get_weights():Dynamic;
	/**
		`float` or `None`. If set, clips gradients to a maximum norm.
	**/
	public var global_clipnorm : Dynamic;
	/**
		The initial loss scale.
		
		If `LossScaleOptimizer.dynamic` is False, this is the same number as
		`LossScaleOptimizer.loss_scale`, as the loss scale never changes.
	**/
	public var initial_scale : Dynamic;
	/**
		The optimizer that this LossScaleOptimizer is wrapping.
	**/
	public var inner_optimizer : Dynamic;
	/**
		Variable. The number of training steps this Optimizer has run.
	**/
	public var iterations : Dynamic;
	public var learning_rate : Dynamic;
	/**
		The current loss scale as a float32 scalar tensor.
	**/
	public var loss_scale : Dynamic;
	public var lr : Dynamic;
	/**
		Minimize `loss` by updating `var_list`.
		
		This method simply computes gradient using `tf.GradientTape` and calls
		`apply_gradients()`. If you want to process the gradient before applying
		then call `tf.GradientTape` and `apply_gradients()` explicitly instead
		of using this function.
		
		Args:
		  loss: `Tensor` or callable. If a callable, `loss` should take no arguments
		    and return the value to minimize. If a `Tensor`, the `tape` argument
		    must be passed.
		  var_list: list or tuple of `Variable` objects to update to minimize
		    `loss`, or a callable returning the list or tuple of `Variable` objects.
		    Use callable when the variable list would otherwise be incomplete before
		    `minimize` since the variables are created at the first time `loss` is
		    called.
		  grad_loss: (Optional). A `Tensor` holding the gradient computed for
		    `loss`.
		  name: (Optional) str. Name for the returned operation.
		  tape: (Optional) `tf.GradientTape`. If `loss` is provided as a `Tensor`,
		    the tape that computed the `loss` must be provided.
		
		Returns:
		  An `Operation` that updates the variables in `var_list`. The `iterations`
		  will be automatically increased by 1.
		
		Raises:
		  ValueError: If some of the variables are not `Variable` objects.
	**/
	public function minimize(loss:Dynamic, var_list:Dynamic, ?grad_loss:Dynamic, ?name:Dynamic, ?tape:Dynamic):Dynamic;
	/**
		Set the weights of the optimizer.
		
		The weights of an optimizer are its state (ie, variables).
		This function takes the weight values associated with this
		optimizer as a list of Numpy arrays. The first value is always the
		iterations count of the optimizer, followed by the optimizer's state
		variables in the order they are created. The passed values are used to set
		the new state of the optimizer.
		
		For example, the RMSprop optimizer for this simple model takes a list of
		three values-- the iteration count, followed by the root-mean-square value
		of the kernel and bias of the single Dense layer:
		
		>>> opt = tf.keras.optimizers.RMSprop()
		>>> m = tf.keras.models.Sequential([tf.keras.layers.Dense(10)])
		>>> m.compile(opt, loss='mse')
		>>> data = np.arange(100).reshape(5, 20)
		>>> labels = np.zeros(5)
		>>> print('Training'); results = m.fit(data, labels)
		Training ...
		>>> new_weights = [np.array(10), np.ones([20, 10]), np.zeros([10])]
		>>> opt.set_weights(new_weights)
		>>> opt.iterations
		<tf.Variable 'RMSprop/iter:0' shape=() dtype=int64, numpy=10>
		
		Args:
		    weights: weight values as a list of numpy arrays.
	**/
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