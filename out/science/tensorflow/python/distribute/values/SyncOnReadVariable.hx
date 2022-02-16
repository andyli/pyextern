/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "SyncOnReadVariable") extern class SyncOnReadVariable {
	/**
		Information on how to save this Variable as a slice.
		
		Provides internal support for saving variables as slices of a larger
		variable.  This API is not public and is subject to change.
		
		Available properties:
		
		* full_name
		* full_shape
		* var_offset
		* var_shape
	**/
	static public function SaveSliceInfo(?full_name:Dynamic, ?full_shape:Dynamic, ?var_offset:Dynamic, ?var_shape:Dynamic, ?save_slice_info_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Register overloads for all operators.
	**/
	static public function _OverloadAllOperators():Dynamic;
	/**
		Defer an operator overload to `ops.Tensor`.
		
		We pull the operator out of ops.Tensor dynamically to avoid ordering issues.
		
		Args:
		  operator: string. The operator name.
	**/
	static public function _OverloadOperator(_operator:Dynamic):Dynamic;
	/**
		Utility function for converting a Variable to a Tensor.
	**/
	static public function _TensorConversionFunction(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	public function __abs__():Dynamic;
	public function __add__(o:Dynamic):Dynamic;
	public function __and__(o:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Metaclass to allow construction of tf.Variable to be overridden.
	**/
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Perform a deepcopy of the `DistributedVariable`.
		
		Unlike the deepcopy of a regular tf.Variable, this keeps the original
		strategy and devices of the `DistributedVariable`.  To avoid confusion
		with the behavior of deepcopy on a regular `Variable` (which does
		copy into new devices), we only allow a deepcopy of a `DistributedVariable`
		within its originating strategy scope.
		
		Args:
		  memo: The memoization object for `deepcopy`.
		
		Returns:
		  A deep copy of the current `DistributedVariable`.
		
		Raises:
		  RuntimeError: If trying to deepcopy into a different strategy.
	**/
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __div__(o:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Compares two variables element-wise for equality.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(o:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(o:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(o:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(o:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Should only be called by subclass __init__.
	**/
	@:native("__init__")
	public function ___init__(strategy:Dynamic, values:Dynamic, aggregation:Dynamic, ?var_policy:Dynamic):Dynamic;
	/**
		Should only be called by subclass __init__.
	**/
	public function new(strategy:Dynamic, values:Dynamic, aggregation:Dynamic, ?var_policy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
	/**
		When executing eagerly, iterates over the value of the variable.
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(o:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(o:Dynamic):Dynamic;
	public function __matmul__(o:Dynamic):Dynamic;
	public function __mod__(o:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(o:Dynamic):Dynamic;
	/**
		Compares two variables element-wise for equality.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(o:Dynamic):Dynamic;
	public function __pow__(o:Dynamic, ?modulo:Dynamic):Dynamic;
	public function __radd__(o:Dynamic):Dynamic;
	public function __rand__(o:Dynamic):Dynamic;
	public function __rdiv__(o:Dynamic):Dynamic;
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
	public function __rfloordiv__(o:Dynamic):Dynamic;
	public function __rmatmul__(o:Dynamic):Dynamic;
	public function __rmod__(o:Dynamic):Dynamic;
	public function __rmul__(o:Dynamic):Dynamic;
	public function __ror__(o:Dynamic):Dynamic;
	public function __rpow__(o:Dynamic):Dynamic;
	public function __rsub__(o:Dynamic):Dynamic;
	public function __rtruediv__(o:Dynamic):Dynamic;
	public function __rxor__(o:Dynamic):Dynamic;
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
	public function __sub__(o:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(o:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(o:Dynamic):Dynamic;
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
	public function _as_graph_element():Dynamic;
	/**
		All dependencies of this object.
		
		May be overridden to include conditional dependencies.
		
		Returns:
		  A list of `TrackableReference` objects indicating named
		  `Trackable` dependencies which should be saved along with this
		  object.
	**/
	public var _checkpoint_dependencies : Dynamic;
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
		Converts a SyncOnReadVariable to a tensor.
	**/
	public function _dense_var_to_tensor(?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
	public var _devices : Dynamic;
	/**
		Overrides Trackable method.
		
		This allows both name-based and object-based save and restore of
		`SyncOnReadVariable`s.
		
		Returns:
		  A dictionary mapping attribute names to `SaveableObject` factories.
	**/
	public function _gather_saveables_for_checkpoint():Dynamic;
	/**
		Returns the value of SyncOnReadVariable based on surrounding context.
		
		If called under a non-default replica-context, returns the corresponding
		variable on that replica.
		If called under default replica-context or cross-replica context, returns
		the synced value.
	**/
	public function _get():Dynamic;
	/**
		Returns the value for operations for the current device.
		
		Some implementations, e.g. `TPUMirroredVariable`, are not able to return the
		value type within a replica context. They can, however, return a value that
		can be used by the operations below.
	**/
	public function _get_as_operand():Dynamic;
	public function _get_cross_replica():Dynamic;
	/**
		Returns value in same replica or device if possible, else the _primary.
	**/
	public function _get_on_device_or_primary():Dynamic;
	/**
		Returns the value on a device with the given replica_id.
	**/
	public function _get_replica(replica_id:Dynamic):Dynamic;
	public function _get_save_slice_info():Dynamic;
	/**
		Lets Optimizers know which graph this variable is from.
	**/
	public var _graph_key : Dynamic;
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
	public var _in_graph_mode : Dynamic;
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
		Look up a dependency by name.
		
		May be overridden to include conditional dependencies.
		
		Args:
		  name: The local name of the dependency.
		
		Returns:
		  A `Trackable` object, or `None` if no dependency by this name was
		  found.
	**/
	public function _lookup_dependency(name:Dynamic):Dynamic;
	/**
		For implementing `Trackable`.
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
		String used to identify this object in a SavedModel.
		
		THIS FIELD HAS BEEN DEPRECATED IN FAVOR OF THE NAME REGISTERED WITH
		`register_serializable`.
		
		Generally, the object identifier is constant across objects of the same
		class, while the metadata field is used for instance-specific data.
		
		Returns:
		  String object identifier.
	**/
	public var _object_identifier : Dynamic;
	public var _packed_variable : Dynamic;
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
		Returns a representative component.
	**/
	public var _primary : Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	public var _save_slice_info : Dynamic;
	public function _scatter_not_implemented(method:Dynamic):Dynamic;
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
		Sets the slice info for this `Variable`.
		
		Args:
		  save_slice_info: A `Variable.SaveSliceInfo` object.
	**/
	public function _set_save_slice_info(save_slice_info:Dynamic):Dynamic;
	public var _setattr_tracking : Dynamic;
	/**
		The shared name of the variable.
		
		  Unlike name(), shared_name doesn't have ":0" suffix. It is user-specified
		  name with name scope prefix.
		
		Returns:
		  variable name.
	**/
	public var _shared_name : Dynamic;
	/**
		Pass resource_variable_ops.is_resource_variable check.
	**/
	public function _should_act_as_resource_variable():Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
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
	public var _unique_id : Dynamic;
	/**
		Applies updates depending on the context.
		
		The method calls `_update_replica` in replica context,
		`_update_cross_replica` in cross replica context, and `update_fn` in update
		context.
		
		If `read_value` is True, the method returns the updated Variable. If
		`read_value` is False, the method returns the update `tf.Operation`.
		
		Args:
		  update_fn: A callable to pass to `strategy.extended.update` to update the
		    variable. It should have the same signature as `Variable.assign()`.
		  value: value to be passed to `update_fn`.
		  **kwargs: keyword arguments to `update_fn`.
		
		Returns:
		  Updated variable or `tf.Operation`.
	**/
	public function _update(update_fn:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies updates across replicas.
		
		Args:
		  update_fn: A callable to pass to `strategy.extended.update` to update the
		    variable. It should has the same signature as `Variable.assign()`.
		  value: value to be passed to `update_fn`.
		  **kwargs: remaining arguments to `update_fn`.
		
		Returns:
		  Updated variable or `tf.Operation`.
	**/
	public function _update_cross_replica(update_fn:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies updates in one replica.
		
		Args:
		  update_fn: A callable to update the variable. It should has the same
		    signature as `Variable.assign()`.
		  value: value to be passed to `update_fn`.
		  **kwargs: remaining arguments to `update_fn`.
		
		Returns:
		  Updated variable or `tf.Operation`.
	**/
	public function _update_replica(update_fn:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _update_uid : Dynamic;
	public function _use_packed_variable():Dynamic;
	/**
		Update a SavedObject proto for the caller.
		
		If a DistributedVariable object supports this method, it will be called when
		saving with a pre-built `SavedObject` proto representing the object, plus an
		instance of `SaveOptions`. This method is then free to modify that proto
		instance.
		
		`DistributedVariable` with `AUTO` or `ON_WRITE` synchronization optionally
		write out information about their components to the
		`experimental_distributed_variable_components` field of a
		`SavedVariable` (depending on the `SaveOptions` variable policy).
		
		Args:
		  proto: A pre-built `SavedObject` proto for this object. It is assumed this
		    will be a `SavedVariable` instance.
		  options: A `SaveOptions` instance.
	**/
	public function _write_object_proto(proto:Dynamic, options:Dynamic):Dynamic;
	public var aggregation : Dynamic;
	/**
		Assigns a new value to the variable.
		
		This is essentially a shortcut for `assign(self, value)`.
		
		Args:
		  value: A `Tensor`. The new value for this variable.
		  use_locking: If `True`, use locking during the assignment.
		  name: The name of the operation to be created
		  read_value: if True, will return something which evaluates to the new
		    value of the variable; if False will return the assign op.
		
		Returns:
		  The updated variable. If `read_value` is false, instead returns None in
		  Eager mode and the assign op in graph mode.
	**/
	public function assign(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	/**
		Adds a value to this variable.
		
		 This is essentially a shortcut for `assign_add(self, delta)`.
		
		Args:
		  delta: A `Tensor`. The value to add to this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: The name of the operation to be created
		  read_value: if True, will return something which evaluates to the new
		    value of the variable; if False will return the assign op.
		
		Returns:
		  The updated variable. If `read_value` is false, instead returns None in
		  Eager mode and the assign op in graph mode.
	**/
	public function assign_add(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	/**
		Subtracts a value from this variable.
		
		This is essentially a shortcut for `assign_sub(self, delta)`.
		
		Args:
		  delta: A `Tensor`. The value to subtract from this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: The name of the operation to be created
		  read_value: if True, will return something which evaluates to the new
		    value of the variable; if False will return the assign op.
		
		Returns:
		  The updated variable. If `read_value` is false, instead returns None in
		  Eager mode and the assign op in graph mode.
	**/
	public function assign_sub(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	/**
		Assigns `tf.IndexedSlices` to this variable batch-wise.
		
		Analogous to `batch_gather`. This assumes that this variable and the
		sparse_delta IndexedSlices have a series of leading dimensions that are the
		same for all of them, and the updates are performed on the last dimension of
		indices. In other words, the dimensions should be the following:
		
		`num_prefix_dims = sparse_delta.indices.ndims - 1`
		`batch_dim = num_prefix_dims + 1`
		`sparse_delta.updates.shape = sparse_delta.indices.shape + var.shape[
		     batch_dim:]`
		
		where
		
		`sparse_delta.updates.shape[:num_prefix_dims]`
		`== sparse_delta.indices.shape[:num_prefix_dims]`
		`== var.shape[:num_prefix_dims]`
		
		And the operation performed can be expressed as:
		
		`var[i_1, ..., i_n,
		     sparse_delta.indices[i_1, ..., i_n, j]] = sparse_delta.updates[
		        i_1, ..., i_n, j]`
		
		When sparse_delta.indices is a 1D tensor, this operation is equivalent to
		`scatter_update`.
		
		To avoid this operation one can looping over the first `ndims` of the
		variable and using `scatter_update` on the subtensors that result of slicing
		the first dimension. This is a valid option for `ndims = 1`, but less
		efficient than this implementation.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to be assigned to this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function batch_scatter_update(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the constraint function associated with this variable.
		
		Returns:
		  The constraint function that was passed to the variable constructor.
		  Can be `None` if no constraint was passed.
	**/
	public var constraint : Dynamic;
	/**
		Increments this variable until it reaches `limit`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Prefer Dataset.range instead.
		
		When that Op is run it tries to increment the variable by `1`. If
		incrementing the variable would bring it above `limit` then the Op raises
		the exception `OutOfRangeError`.
		
		If no error is raised, the Op outputs the value of the variable before
		the increment.
		
		This is essentially a shortcut for `count_up_to(self, limit)`.
		
		Args:
		  limit: value at which incrementing the variable raises an error.
		
		Returns:
		  A `Tensor` that will hold the variable value before the increment. If no
		  other Op modifies this variable, the values produced will all be
		  distinct.
	**/
	public function count_up_to(limit:Dynamic):Dynamic;
	/**
		The device of this variable.
	**/
	public var device : Dynamic;
	public var distribute_strategy : Dynamic;
	/**
		The `DType` of this variable.
	**/
	public var dtype : Dynamic;
	/**
		In a session, computes and returns the value of this variable.
		
		This is not a graph construction method, it does not add ops to the graph.
		
		This convenience method requires a session where the graph
		containing this variable has been launched. If no session is
		passed, the default session is used.  See `tf.compat.v1.Session` for more
		information on launching a graph and on sessions.
		
		```python
		v = tf.Variable([1, 2])
		init = tf.compat.v1.global_variables_initializer()
		
		with tf.compat.v1.Session() as sess:
		    sess.run(init)
		    # Usage passing the session explicitly.
		    print(v.eval(sess))
		    # Usage with the default session.  The 'with' block
		    # above makes 'sess' the default session.
		    print(v.eval())
		```
		
		Args:
		  session: The session to use to evaluate this variable. If none, the
		    default session is used.
		
		Returns:
		  A numpy `ndarray` with a copy of the value of this variable.
	**/
	public function eval(?session:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use ref() instead.
	**/
	public function experimental_ref():Dynamic;
	/**
		Returns a `Variable` object created from `variable_def`.
	**/
	static public function from_proto(variable_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		See tf.gather_nd for details.
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	public function gather_nd(indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Alias of `Variable.shape`.
	**/
	public function get_shape():Dynamic;
	/**
		The `Graph` of this variable.
	**/
	public var graph : Dynamic;
	public var handle : Dynamic;
	/**
		Returns the Tensor used as the initial value for the variable.
		
		Note that this is different from `initialized_value()` which runs
		the op that initializes the variable before returning its value.
		This method returns the tensor that is used by the op that initializes
		the variable.
		
		Returns:
		  A `Tensor`.
	**/
	public var initial_value : Dynamic;
	/**
		Returns the value of the initialized variable. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use Variable.read_value. Variables in 2.X are initialized automatically both in eager and graph (inside tf.defun) contexts.
		
		You should use this instead of the variable itself to initialize another
		variable with a value that depends on the value of this variable.
		
		```python
		# Initialize 'v' with a random tensor.
		v = tf.Variable(tf.random.truncated_normal([10, 40]))
		# Use `initialized_value` to guarantee that `v` has been
		# initialized before its value is used to initialize `w`.
		# The random values are picked only once.
		w = tf.Variable(v.initialized_value() * 2.0)
		```
		
		Returns:
		  A `Tensor` holding the value of this variable after its initializer
		  has run.
	**/
	public function initialized_value():Dynamic;
	/**
		The initializer operation for this variable.
	**/
	public var initializer : Dynamic;
	/**
		Identifies if all the component variables are initialized.
		
		Args:
		  name: Name of the final `logical_and` op.
		
		Returns:
		  The op that evaluates to True or False depending on if all the
		  component variables are initialized.
	**/
	public function is_initialized(?name:Dynamic):Dynamic;
	/**
		Load new value into this variable. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Prefer Variable.assign which has equivalent behavior in 2.X.
		
		Writes new value to variable's memory. Doesn't add ops to the graph.
		
		This convenience method requires a session where the graph
		containing this variable has been launched. If no session is
		passed, the default session is used.  See `tf.compat.v1.Session` for more
		information on launching a graph and on sessions.
		
		```python
		v = tf.Variable([1, 2])
		init = tf.compat.v1.global_variables_initializer()
		
		with tf.compat.v1.Session() as sess:
		    sess.run(init)
		    # Usage passing the session explicitly.
		    v.load([2, 3], sess)
		    print(v.eval(sess)) # prints [2 3]
		    # Usage with the default session.  The 'with' block
		    # above makes 'sess' the default session.
		    v.load([3, 4], sess)
		    print(v.eval()) # prints [3 4]
		```
		
		Args:
		    value: New variable value
		    session: The session to use to evaluate this variable. If none, the
		      default session is used.
		
		Raises:
		    ValueError: Session is not passed and no default session
	**/
	public function load(value:Dynamic, ?session:Dynamic):Dynamic;
	/**
		The name of this variable.
	**/
	public var name : Dynamic;
	public function numpy():Dynamic;
	/**
		The `Operation` of this variable.
	**/
	public var op : Dynamic;
	/**
		Returns the value of this variable, read in the current context.
		
		Can be different from value() if it's on another device, with control
		dependencies, etc.
		
		Returns:
		  A `Tensor` containing the value of the variable.
	**/
	public function read_value():Dynamic;
	/**
		Returns a hashable reference object to this Variable.
		
		The primary use case for this API is to put variables in a set/dictionary.
		We can't put variables in a set/dictionary as `variable.__hash__()` is no
		longer available starting Tensorflow 2.0.
		
		The following will raise an exception starting 2.0
		
		>>> x = tf.Variable(5)
		>>> y = tf.Variable(10)
		>>> z = tf.Variable(10)
		>>> variable_set = {x, y, z}
		Traceback (most recent call last):
		  ...
		TypeError: Variable is unhashable. Instead, use tensor.ref() as the key.
		>>> variable_dict = {x: 'five', y: 'ten'}
		Traceback (most recent call last):
		  ...
		TypeError: Variable is unhashable. Instead, use tensor.ref() as the key.
		
		Instead, we can use `variable.ref()`.
		
		>>> variable_set = {x.ref(), y.ref(), z.ref()}
		>>> x.ref() in variable_set
		True
		>>> variable_dict = {x.ref(): 'five', y.ref(): 'ten', z.ref(): 'ten'}
		>>> variable_dict[y.ref()]
		'ten'
		
		Also, the reference object provides `.deref()` function that returns the
		original Variable.
		
		>>> x = tf.Variable(5)
		>>> x.ref().deref()
		<tf.Variable 'Variable:0' shape=() dtype=int32, numpy=5>
	**/
	public function ref():Dynamic;
	/**
		Adds `tf.IndexedSlices` to this variable.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to be added to this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_add(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Divide this variable by `tf.IndexedSlices`.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to divide this variable by.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_div(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates this variable with the max of `tf.IndexedSlices` and itself.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to use as an argument of max with this
		    variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_max(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates this variable with the min of `tf.IndexedSlices` and itself.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to use as an argument of min with this
		    variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_min(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multiply this variable by `tf.IndexedSlices`.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to multiply this variable by.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_mul(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies sparse addition to individual values or slices in a Variable.
		
		The Variable has rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into self.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of self.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, self.shape[K], ..., self.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    v = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    v.scatter_nd_add(indices, updates)
		    print(v)
		```
		
		The resulting update to v would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  indices: The indices to be used in the operation.
		  updates: The values to be used in the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
	**/
	public function scatter_nd_add(indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse subtraction to individual values or slices in a Variable.
		
		Assuming the variable has rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into self.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of self.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, self.shape[K], ..., self.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    v = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    v.scatter_nd_sub(indices, updates)
		    print(v)
		```
		
		After the update `v` would look like this:
		
		    [1, -9, 3, -6, -4, 6, 7, -4]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  indices: The indices to be used in the operation.
		  updates: The values to be used in the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
	**/
	public function scatter_nd_sub(indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse assignment to individual values or slices in a Variable.
		
		The Variable has rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into self.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of self.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, self.shape[K], ..., self.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    v = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    v.scatter_nd_update(indices, updates)
		    print(v)
		```
		
		The resulting update to v would look like this:
		
		    [1, 11, 3, 10, 9, 6, 7, 12]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  indices: The indices to be used in the operation.
		  updates: The values to be used in the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
	**/
	public function scatter_nd_update(indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts `tf.IndexedSlices` from this variable.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to be subtracted from this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_sub(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Assigns `tf.IndexedSlices` to this variable.
		
		Args:
		  sparse_delta: `tf.IndexedSlices` to be assigned to this variable.
		  use_locking: If `True`, use locking during the operation.
		  name: the name of the operation.
		
		Returns:
		  The updated variable.
		
		Raises:
		  TypeError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_update(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Overrides the shape for this variable.
		
		Args:
		  shape: the `TensorShape` representing the overridden shape.
	**/
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		The `TensorShape` of this variable.
		
		Returns:
		  A `TensorShape`.
	**/
	public var shape : Dynamic;
	/**
		Gather slices from params axis axis according to indices.
		
		This function supports a subset of tf.gather, see tf.gather for details on
		usage.
		
		Args:
		  indices: The index `Tensor`.  Must be one of the following types: `int32`,
		    `int64`. Must be in range `[0, params.shape[axis])`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	public function sparse_read(indices:Dynamic, ?name:Dynamic):Dynamic;
	public var synchronization : Dynamic;
	/**
		Converts a `Variable` to a `VariableDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `VariableDef` protocol buffer, or `None` if the `Variable` is not
		  in the specified name scope.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
	public var trainable : Dynamic;
	/**
		Returns the last snapshot of this variable.
		
		You usually do not need to call this method as all ops that need the value
		of the variable call it automatically through a `convert_to_tensor()` call.
		
		Returns a `Tensor` which holds the value of the variable.  You can not
		assign a new value to this tensor as it is not a reference to the variable.
		
		To avoid copies, if the consumer of the returned value is on the same device
		as the variable, this actually returns the live value of the variable, not
		a copy.  Updates to the variable are seen by the consumer.  If the consumer
		is on a different device it will get a copy of the variable.
		
		Returns:
		  A `Tensor` containing the value of the variable.
	**/
	public function value():Dynamic;
	/**
		Returns the per replica values.
	**/
	public var values : Dynamic;
}