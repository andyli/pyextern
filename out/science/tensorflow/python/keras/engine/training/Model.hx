/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training;
@:pythonImport("tensorflow.python.keras.engine.training", "Model") extern class Model {
	static public var _TF_MODULE_IGNORED_PROPERTIES : Dynamic;
	/**
		Wraps `call`, applying pre- and post-processing steps.
		
		Args:
		  *args: Positional arguments to be passed to `self.call`.
		  **kwargs: Keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
		
		Note:
		  - The following optional keyword arguments are reserved for specific uses:
		    * `training`: Boolean scalar tensor of Python boolean indicating
		      whether the `call` is meant for training or inference.
		    * `mask`: Boolean input mask.
		  - If the layer's `call` method takes a `mask` argument (as some Keras
		    layers do), its default value will be set to the mask generated
		    for `inputs` by the previous layer (if `input` did come from
		    a layer that generated a corresponding mask, i.e. if it came from
		    a Keras layer with masking support.
		  - If the layer is not built, the method will call `build`.
		
		Raises:
		  ValueError: if the layer's `call` method returns None (an invalid value).
		  RuntimeError: if `super().__init__()` was not called in the constructor.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Support self.foo = trackable syntax.
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
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
		Adds a Trackable object to this layer's state.
		
		Args:
		  trackable_object: The tf.tracking.Trackable object to add.
		  trainable: Boolean, whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases) or
		    "non_trainable_variables" (e.g. BatchNorm mean and variance).
		
		Returns:
		  The TrackableWeightHandler used to track this object.
	**/
	public function _add_trackable(trackable_object:Dynamic, trainable:Dynamic):Dynamic;
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
	public function _assert_compile_was_called():Dynamic;
	/**
		Asserts that all the weights for the model have been created.
		
		For a non-dynamic model, the weights must already be created after the
		layer has been called. For a dynamic model, the exact list of weights can
		never be known for certain since it may change at any time during execution.
		
		We run this check right before accessing weights or getting the Numpy value
		for the current weights. Otherwise, if the layer has never been called,
		the user would just get an empty list, which is misleading.
		
		Raises:
		  ValueError: if the weights of the network has not yet been created.
	**/
	public function _assert_weights_created():Dynamic;
	public function _autographed_call():Dynamic;
	public var _call_accepts_kwargs : Dynamic;
	public function _call_arg_was_passed(arg_name:Dynamic, args:Dynamic, kwargs:Dynamic, ?inputs_in_args:Dynamic):Dynamic;
	public var _call_fn_arg_defaults : Dynamic;
	public var _call_fn_arg_positions : Dynamic;
	public var _call_fn_args : Dynamic;
	public var _call_full_argspec : Dynamic;
	/**
		Cast a single Tensor or TensorSpec to the compute dtype.
	**/
	public function _cast_single_input(x:Dynamic):Dynamic;
	/**
		Check that `call` has only one positional arg.
	**/
	public function _check_call_args(method_name:Dynamic):Dynamic;
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
		Used every step in eager to reset losses.
	**/
	public function _clear_losses():Dynamic;
	public var _compile_was_called : Dynamic;
	/**
		Deprecated alias of `compute_dtype`.
	**/
	public var _compute_dtype : Dynamic;
	public function _configure_steps_per_execution(steps_per_execution:Dynamic):Dynamic;
	/**
		Dedupe weights while maintaining order as much as possible.
	**/
	public function _dedup_weights(weights:Dynamic):Dynamic;
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
		Removes the tracking of name.
	**/
	public function _delete_tracking(name:Dynamic):Dynamic;
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
	public var _dtype : Dynamic;
	public var _eager_losses : Dynamic;
	/**
		Flattened attribute values in sorted order by attribute name.
		
		Modules are flattened by first walking their attributes in name order.
		Each attribute value is then flattened to find leaf values. If flatten is
		applied `recursive`ly and if the leaf is a `Module` it will also be
		flattened to find leaves. Finally every leaf value is optionally tested
		against the given `predicate` and finally yielded.
		
		```
		class Foo(tf.Module):
		  def __init__(self):
		    super(Foo, self).__init__()
		    self.x = [tf.constant('a'), tf.constant('b')]
		    self.y = {'i': tf.constant('c'), 'j': tf.constant('d')}
		    self.z = tf.constant('e')
		
		  @property
		  def tensors(self):
		    return tuple(self._flatten(predicate=is_tensor, with_path=True))
		
		foo = Foo()
		foo.tensors
		# ==> ((('x', 0),   <tf.Tensor: ...'a'>),
		#     (('x', 1),   <tf.Tensor: ...'b'>),
		#     (('y', 'i'), <tf.Tensor: ...'c'>),
		#     (('y', 'j'), <tf.Tensor: ...'d'>),
		#     (('z',),     <tf.Tensor: ...'e'>))
		```
		
		`attribute_traversal_key` controls the order object properties are visited.
		If not set objects are visited in ascending order by name.
		
		Args:
		  recursive: Whether to recurse into child modules or not.
		  predicate: (Optional) If set then only values matching predicate are
		    yielded. A value of `None` (the default) means no items will be
		    filtered.
		  attribute_traversal_key: (Optional) Method to rekey object attributes
		    before they are sorted. Contract is the same as `key` argument to
		    builtin `sorted` and only applies to object properties.
		  with_path: (Optional) Whether to include the path to the object as well
		    as the object itself. If `with_path` is `True` then leaves will not be
		    de-duplicated (e.g. if the same leaf instance is reachable via multiple
		    modules then it will be yielded multiple times with different paths).
		  expand_composites: If true, then composite tensors are expanded into their
		    component tensors.
		
		Returns:
		  Flat generator for leaves of the current module and optionally all
		  submodules.
	**/
	public function _flatten(?recursive:Dynamic, ?predicate:Dynamic, ?attribute_traversal_key:Dynamic, ?with_path:Dynamic, ?expand_composites:Dynamic):Dynamic;
	public function _flatten_layers(?recursive:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Flattens `tf.Module` instances (excluding `Metrics`).
		
		Args:
		  recursive: Whether to recursively flatten through submodules.
		  include_self: Whether to include this `Layer` instance.
		
		Yields:
		  `tf.Module` instance tracked by this `Layer`.
	**/
	public function _flatten_modules(?recursive:Dynamic, ?include_self:Dynamic):Dynamic;
	public function _functional_construction_call(inputs:Dynamic, args:Dynamic, kwargs:Dynamic, input_list:Dynamic):Dynamic;
	public function _gather_children_attribute(attribute:Dynamic):Dynamic;
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
	public function _get_call_arg_value(arg_name:Dynamic, args:Dynamic, kwargs:Dynamic, ?inputs_in_args:Dynamic):Dynamic;
	public function _get_callback_model():Dynamic;
	public function _get_cell_name():Dynamic;
	/**
		Used for saving or cloning a Model.
		
		Args:
		  user_metrics: Whether to return user-supplied metrics or `Metric` objects.
		    Defaults to returning the user-supplied metrics.
		
		Returns:
		  Dictionary of arguments that were used when compiling the model.
	**/
	public function _get_compile_args(?user_metrics:Dynamic):Dynamic;
	public function _get_existing_metric(?name:Dynamic):Dynamic;
	public function _get_input_masks(inputs:Dynamic, input_list:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Private utility to retrieves an attribute (e.g. inputs) from a node.
		
		This is used to implement the methods:
		    - get_input_shape_at
		    - get_output_shape_at
		    - get_input_at
		    etc...
		
		Args:
		    node_index: Integer index of the node from which
		        to retrieve the attribute.
		    attr: Exact node attribute name.
		    attr_name: Human-readable attribute name, for error messages.
		
		Returns:
		    The layer's attribute `attr` at the node of index `node_index`.
		
		Raises:
		    RuntimeError: If the layer has no inbound nodes, or if called in Eager
		    mode.
		    ValueError: If the index provided does not match any node.
	**/
	public function _get_node_attribute_at_index(node_index:Dynamic, attr:Dynamic, attr_name:Dynamic):Dynamic;
	/**
		Wraps `optimizer` in `LossScaleOptimizer` if necessary.
	**/
	public function _get_optimizer(optimizer:Dynamic):Dynamic;
	public function _get_save_spec(?dynamic_batch:Dynamic):Dynamic;
	/**
		Get the `trainable` state of each sublayer.
		
		Returns:
		  A dict mapping all sublayers to their `trainable` value.
	**/
	public function _get_trainable_state():Dynamic;
	public function _handle_activity_regularization(inputs:Dynamic, outputs:Dynamic):Dynamic;
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
		Create lambdas which compute regularization losses.
	**/
	public function _handle_weight_regularization(name:Dynamic, variable:Dynamic, regularizer:Dynamic):Dynamic;
	public function _in_multi_worker_mode():Dynamic;
	public var _inbound_nodes : Dynamic;
	/**
		TODO(kaftan): Docstring.
	**/
	public function _infer_output_signature(inputs:Dynamic, args:Dynamic, kwargs:Dynamic, input_masks:Dynamic):Dynamic;
	public function _init_batch_counters():Dynamic;
	public function _init_call_fn_args(?expects_training_arg:Dynamic):Dynamic;
	public function _init_set_name(name:Dynamic, ?zero_based:Dynamic):Dynamic;
	public function _instrument_layer_creation():Dynamic;
	public function _is_layer():Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	public function _keras_tensor_symbolic_call(inputs:Dynamic, input_masks:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Return a dict of `Function`s of a trackable.
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
	public function _maybe_build(inputs:Dynamic):Dynamic;
	/**
		Maybe casts the inputs to the compute dtype.
		
		If self._compute_dtype is floating-point, and self_autocast is True,
		floating-point inputs are casted to self._compute_dtype.
		
		Args:
		  inputs: Input tensor, or structure of input tensors.
		  input_list: Flat list of input tensors.
		
		Returns:
		  `inputs`, but tensors may have been casted to self._compute_dtype
	**/
	public function _maybe_cast_inputs(inputs:Dynamic, ?input_list:Dynamic):Dynamic;
	/**
		Create the attribute with the default value if it hasn't been created.
		
		This is useful for fields that is used for tracking purpose,
		_trainable_weights, or _layers. Note that user could create a layer subclass
		and assign an internal field before invoking the Layer.__init__(), the
		__setattr__() need to create the tracking fields and __init__() need to not
		override them.
		
		Args:
		  name: String, the name of the attribute.
		  default_value: Object, the default value of the attribute.
	**/
	public function _maybe_create_attribute(name:Dynamic, default_value:Dynamic):Dynamic;
	/**
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_trackable():Dynamic;
	/**
		Maybe load initial epoch from ckpt considering possible worker recovery.
		
		Refer to tensorflow/python/keras/distribute/worker_training_state.py
		for more information.
		
		Args:
		  initial_epoch: The original initial_epoch user passes in in `fit()`.
		
		Returns:
		  If the training is recovering from previous failure under multi-worker
		  training setting, return the epoch the training is supposed to continue
		  at. Otherwise, return the `initial_epoch` the user passes in.
	**/
	public function _maybe_load_initial_epoch_from_ckpt(initial_epoch:Dynamic):Dynamic;
	static public var _must_restore_from_config : Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	public var _name_based_restores : Dynamic;
	public function _name_scope():Dynamic;
	/**
		Override to allow TrackableBase to disable dependency tracking.
	**/
	public function _no_dependency(value:Dynamic):Dynamic;
	/**
		A dictionary counting the number of attributes referencing an object.
	**/
	public var _obj_reference_counts : Dynamic;
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
	public var _outbound_nodes : Dynamic;
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
	public function _reset_compile_cache():Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
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
	public function _set_call_arg_value(arg_name:Dynamic, new_value:Dynamic, args:Dynamic, kwargs:Dynamic, ?inputs_in_args:Dynamic, ?pop_kwarg_if_none:Dynamic):Dynamic;
	public function _set_connectivity_metadata(args:Dynamic, kwargs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Sets self._dtype_policy.
	**/
	public function _set_dtype_policy(dtype:Dynamic):Dynamic;
	/**
		This method is for compat with Modelv1. Only inputs are needed here.
	**/
	public function _set_inputs(inputs:Dynamic, ?outputs:Dynamic, ?training:Dynamic):Dynamic;
	public function _set_mask_keras_history_checked(flat_outputs:Dynamic):Dynamic;
	public function _set_mask_metadata(inputs:Dynamic, outputs:Dynamic, previous_mask:Dynamic, build_graph:Dynamic):Dynamic;
	public function _set_save_spec(inputs:Dynamic):Dynamic;
	/**
		Set `trainable` state for each sublayer.
	**/
	public function _set_trainable_state(trainable_state:Dynamic):Dynamic;
	public function _set_training_mode(args:Dynamic, kwargs:Dynamic, call_context:Dynamic):Dynamic;
	public var _setattr_tracking : Dynamic;
	public function _should_cast_single_input(x:Dynamic):Dynamic;
	public var _should_compute_mask : Dynamic;
	public function _should_eval(epoch:Dynamic, validation_freq:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	public function _split_out_first_arg(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _symbolic_call(inputs:Dynamic):Dynamic;
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
	public var _trackable_saved_model_saver : Dynamic;
	/**
		Info about this layer to be saved into the SavedModel.
	**/
	public var _tracking_metadata : Dynamic;
	public var _unconditional_checkpoint_dependencies : Dynamic;
	public var _unconditional_dependency_names : Dynamic;
	/**
		Returns the undeduplicated list of all layer variables/weights.
	**/
	public var _undeduplicated_weights : Dynamic;
	public var _update_uid : Dynamic;
	/**
		Util shared between different serialization methods.
		
		Returns:
		    Model config with Keras version information added.
	**/
	public function _updated_config():Dynamic;
	public var _use_input_spec_as_call_signature : Dynamic;
	/**
		Performs validation checks for the default `compile`.
	**/
	public function _validate_compile(optimizer:Dynamic, metrics:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Optional regularizer function for the output of this layer.
	**/
	public var activity_regularizer : Dynamic;
	/**
		Add loss tensor(s), potentially dependent on layer inputs.
		
		Some losses (for instance, activity regularization losses) may be dependent
		on the inputs passed when calling a layer. Hence, when reusing the same
		layer on different inputs `a` and `b`, some entries in `layer.losses` may
		be dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		This method can be used inside a subclassed layer or model's `call`
		function, in which case `losses` should be a Tensor or list of Tensors.
		
		Example:
		
		```python
		class MyLayer(tf.keras.layers.Layer):
		  def call(self, inputs):
		    self.add_loss(tf.abs(tf.reduce_mean(inputs)))
		    return inputs
		```
		
		This method can also be called directly on a Functional Model during
		construction. In this case, any loss Tensors passed to this Model must
		be symbolic and be able to be traced back to the model's `Input`s. These
		losses become part of the model's topology and are tracked in `get_config`.
		
		Example:
		
		```python
		inputs = tf.keras.Input(shape=(10,))
		x = tf.keras.layers.Dense(10)(inputs)
		outputs = tf.keras.layers.Dense(1)(x)
		model = tf.keras.Model(inputs, outputs)
		# Activity regularization.
		model.add_loss(tf.abs(tf.reduce_mean(x)))
		```
		
		If this is not the case for your loss (if, for example, your loss references
		a `Variable` of one of the model's layers), you can wrap your loss in a
		zero-argument lambda. These losses are not tracked as part of the model's
		topology since they can't be serialized.
		
		Example:
		
		```python
		inputs = tf.keras.Input(shape=(10,))
		d = tf.keras.layers.Dense(10)
		x = d(inputs)
		outputs = tf.keras.layers.Dense(1)(x)
		model = tf.keras.Model(inputs, outputs)
		# Weight regularization.
		model.add_loss(lambda: tf.reduce_mean(d.kernel))
		```
		
		Args:
		  losses: Loss tensor, or list/tuple of tensors. Rather than tensors, losses
		    may also be zero-argument callables which create a loss tensor.
		  **kwargs: Additional keyword arguments for backward compatibility.
		    Accepted values:
		      inputs - Deprecated, will be automatically inferred.
	**/
	public function add_loss(losses:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds metric tensor to the layer.
		
		This method can be used inside the `call()` method of a subclassed layer
		or model.
		
		```python
		class MyMetricLayer(tf.keras.layers.Layer):
		  def __init__(self):
		    super(MyMetricLayer, self).__init__(name='my_metric_layer')
		    self.mean = tf.keras.metrics.Mean(name='metric_1')
		
		  def call(self, inputs):
		    self.add_metric(self.mean(inputs))
		    self.add_metric(tf.reduce_sum(inputs), name='metric_2')
		    return inputs
		```
		
		This method can also be called directly on a Functional Model during
		construction. In this case, any tensor passed to this Model must
		be symbolic and be able to be traced back to the model's `Input`s. These
		metrics become part of the model's topology and are tracked when you
		save the model via `save()`.
		
		```python
		inputs = tf.keras.Input(shape=(10,))
		x = tf.keras.layers.Dense(10)(inputs)
		outputs = tf.keras.layers.Dense(1)(x)
		model = tf.keras.Model(inputs, outputs)
		model.add_metric(math_ops.reduce_sum(x), name='metric_1')
		```
		
		Note: Calling `add_metric()` with the result of a metric object on a
		Functional Model, as shown in the example below, is not supported. This is
		because we cannot trace the metric result tensor back to the model's inputs.
		
		```python
		inputs = tf.keras.Input(shape=(10,))
		x = tf.keras.layers.Dense(10)(inputs)
		outputs = tf.keras.layers.Dense(1)(x)
		model = tf.keras.Model(inputs, outputs)
		model.add_metric(tf.keras.metrics.Mean()(x), name='metric_1')
		```
		
		Args:
		  value: Metric tensor.
		  name: String metric name.
		  **kwargs: Additional keyword arguments for backward compatibility.
		    Accepted values:
		    `aggregation` - When the `value` tensor provided is not the result of
		    calling a `keras.Metric` instance, it will be aggregated by default
		    using a `keras.Metric.Mean`.
	**/
	public function add_metric(value:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add update op(s), potentially dependent on layer inputs.
		
		Weight updates (for instance, the updates of the moving mean and variance
		in a BatchNormalization layer) may be dependent on the inputs passed
		when calling a layer. Hence, when reusing the same layer on
		different inputs `a` and `b`, some entries in `layer.updates` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		This call is ignored when eager execution is enabled (in that case, variable
		updates are run on the fly and thus do not need to be tracked for later
		execution).
		
		Args:
		  updates: Update op, or list/tuple of update ops, or zero-arg callable
		    that returns an update op. A zero-arg callable should be passed in
		    order to disable running the updates by setting `trainable=False`
		    on this Layer, when executing in Eager mode.
		  inputs: Deprecated, will be automatically inferred.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Deprecated, do NOT use! Alias for `add_weight`.
	**/
	public function add_variable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds a new variable to the layer.
		
		Args:
		  name: Variable name.
		  shape: Variable shape. Defaults to scalar if unspecified.
		  dtype: The type of the variable. Defaults to `self.dtype`.
		  initializer: Initializer instance (callable).
		  regularizer: Regularizer instance (callable).
		  trainable: Boolean, whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean and variance).
		    Note that `trainable` cannot be `True` if `synchronization`
		    is set to `ON_READ`.
		  constraint: Constraint instance (callable).
		  use_resource: Whether to use `ResourceVariable`.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		  **kwargs: Additional keyword arguments. Accepted values are `getter`,
		    `collections`, `experimental_autocast` and `caching_device`.
		
		Returns:
		  The variable created.
		
		Raises:
		  ValueError: When giving unsupported dtype and no initializer or when
		    trainable has been set to True with synchronization set as `ON_READ`.
	**/
	public function add_weight(?name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Deprecated, do NOT use!
		
		This is an alias of `self.__call__`.
		
		Args:
		  inputs: Input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
	**/
	public function apply(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Builds the model based on input shapes received.
		
		This is to be used for subclassed models, which do not know at instantiation
		time what their inputs look like.
		
		This method only exists for users who want to call `model.build()` in a
		standalone way (as a substitute for calling the model on real data to
		build it). It will never be called by the framework (and thus it will
		never throw unexpected errors in an unrelated workflow).
		
		Args:
		 input_shape: Single tuple, TensorShape, or list/dict of shapes, where
		     shapes are tuples, integers, or TensorShapes.
		
		Raises:
		  ValueError:
		    1. In case of invalid user-provided data (not of type tuple,
		       list, TensorShape, or dict).
		    2. If the model requires call arguments that are agnostic
		       to the input shapes (positional or kwarg in call signature).
		    3. If not all layers were properly built.
		    4. If float type inputs are not supported within the layers.
		
		  In each of these cases, the user should build their model by calling it
		  on real tensor data.
	**/
	public function build(input_shape:Dynamic):Dynamic;
	/**
		Calls the model on new inputs.
		
		In this case `call` just reapplies
		all ops in the graph to the new inputs
		(e.g. build a new computational graph from the provided inputs).
		
		Note: This method should not be called directly. It is only meant to be
		overridden when subclassing `tf.keras.Model`.
		To call a model on an input, always use the `__call__` method,
		i.e. `model(inputs)`, which relies on the underlying `call` method.
		
		Args:
		    inputs: Input tensor, or dict/list/tuple of input tensors.
		    training: Boolean or boolean scalar tensor, indicating whether to run
		      the `Network` in training mode or inference mode.
		    mask: A mask or list of masks. A mask can be
		        either a tensor or None (no mask).
		
		Returns:
		    A tensor if there is a single output, or
		    a list of tensors if there are more than one outputs.
	**/
	public function call(inputs:Dynamic, ?training:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Configures the model for training.
		
		Args:
		    optimizer: String (name of optimizer) or optimizer instance. See
		      `tf.keras.optimizers`.
		    loss: String (name of objective function), objective function or
		      `tf.keras.losses.Loss` instance. See `tf.keras.losses`. An objective
		      function is any callable with the signature `loss = fn(y_true,
		      y_pred)`, where y_true = ground truth values with shape =
		      `[batch_size, d0, .. dN]`, except sparse loss functions such as sparse
		      categorical crossentropy where shape = `[batch_size, d0, .. dN-1]`.
		      y_pred = predicted values with shape = `[batch_size, d0, .. dN]`. It
		      returns a weighted loss float tensor. If a custom `Loss` instance is
		      used and reduction is set to `None`, return value has the shape
		      `[batch_size, d0, .. dN-1]` i.e. per-sample or per-timestep loss
		      values; otherwise, it is a scalar. If the model has multiple outputs,
		      you can use a different loss on each output by passing a dictionary
		      or a list of losses. The loss value that will be minimized by the
		      model will then be the sum of all individual losses, unless
		      `loss_weights` is specified.
		    metrics: List of metrics to be evaluated by the model during training
		      and testing. Each of this can be a string (name of a built-in
		      function), function or a `tf.keras.metrics.Metric` instance. See
		      `tf.keras.metrics`. Typically you will use `metrics=['accuracy']`. A
		      function is any callable with the signature `result = fn(y_true,
		      y_pred)`. To specify different metrics for different outputs of a
		      multi-output model, you could also pass a dictionary, such as
		      `metrics={'output_a': 'accuracy', 'output_b': ['accuracy', 'mse']}`.
		      You can also pass a list to specify a metric or a list of metrics
		      for each output, such as `metrics=[['accuracy'], ['accuracy', 'mse']]`
		      or `metrics=['accuracy', ['accuracy', 'mse']]`. When you pass the
		      strings 'accuracy' or 'acc', we convert this to one of
		      `tf.keras.metrics.BinaryAccuracy`,
		      `tf.keras.metrics.CategoricalAccuracy`,
		      `tf.keras.metrics.SparseCategoricalAccuracy` based on the loss
		      function used and the model output shape. We do a similar
		      conversion for the strings 'crossentropy' and 'ce' as well.
		    loss_weights: Optional list or dictionary specifying scalar coefficients
		      (Python floats) to weight the loss contributions of different model
		      outputs. The loss value that will be minimized by the model will then
		      be the *weighted sum* of all individual losses, weighted by the
		      `loss_weights` coefficients.
		        If a list, it is expected to have a 1:1 mapping to the model's
		          outputs. If a dict, it is expected to map output names (strings)
		          to scalar coefficients.
		    weighted_metrics: List of metrics to be evaluated and weighted by
		      `sample_weight` or `class_weight` during training and testing.
		    run_eagerly: Bool. Defaults to `False`. If `True`, this `Model`'s
		      logic will not be wrapped in a `tf.function`. Recommended to leave
		      this as `None` unless your `Model` cannot be run inside a
		      `tf.function`. `run_eagerly=True` is not supported when using
		      `tf.distribute.experimental.ParameterServerStrategy`.
		    steps_per_execution: Int. Defaults to 1. The number of batches to
		      run during each `tf.function` call. Running multiple batches
		      inside a single `tf.function` call can greatly improve performance
		      on TPUs or small models with a large Python overhead.
		      At most, one full epoch will be run each
		      execution. If a number larger than the size of the epoch is passed,
		      the execution will be truncated to the size of the epoch.
		      Note that if `steps_per_execution` is set to `N`,
		      `Callback.on_batch_begin` and `Callback.on_batch_end` methods
		      will only be called every `N` batches
		      (i.e. before/after each `tf.function` execution).
		    **kwargs: Arguments supported for backwards compatibility only.
		
		Raises:
		    ValueError: In case of invalid arguments for
		        `optimizer`, `loss` or `metrics`.
	**/
	public function compile(?optimizer:Dynamic, ?loss:Dynamic, ?metrics:Dynamic, ?loss_weights:Dynamic, ?weighted_metrics:Dynamic, ?run_eagerly:Dynamic, ?steps_per_execution:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The dtype of the layer's computations.
		
		This is equivalent to `Layer.dtype_policy.compute_dtype`. Unless
		mixed precision is used, this is the same as `Layer.dtype`, the dtype of
		the weights.
		
		Layers automatically cast their inputs to the compute dtype, which causes
		computations and the output to be in the compute dtype as well. This is done
		by the base Layer class in `Layer.__call__`, so you do not have to insert
		these casts if implementing your own layer.
		
		Layers often perform certain internal computations in higher precision when
		`compute_dtype` is float16 or bfloat16 for numeric stability. The output
		will still typically be float16 or bfloat16 in such cases.
		
		Returns:
		  The layer's compute dtype.
	**/
	public var compute_dtype : Dynamic;
	/**
		Computes an output mask tensor.
		
		Args:
		    inputs: Tensor or list of tensors.
		    mask: Tensor or list of tensors.
		
		Returns:
		    None or a tensor (or list of tensors,
		        one per output tensor of the layer).
	**/
	public function compute_mask(inputs:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Computes the output shape of the layer.
		
		If the layer has not been built, this method will call `build` on the
		layer. This assumes that the layer will later be used with inputs that
		match the input shape provided here.
		
		Args:
		    input_shape: Shape tuple (tuple of integers)
		        or list of shape tuples (one per output tensor of the layer).
		        Shape tuples can include None for free dimensions,
		        instead of an integer.
		
		Returns:
		    An input shape tuple.
	**/
	public function compute_output_shape(input_shape:Dynamic):Dynamic;
	/**
		Compute the output tensor signature of the layer based on the inputs.
		
		Unlike a TensorShape object, a TensorSpec object contains both shape
		and dtype information for a tensor. This method allows layers to provide
		output dtype information if it is different from the input dtype.
		For any layer that doesn't implement this function,
		the framework will fall back to use `compute_output_shape`, and will
		assume that the output dtype matches the input dtype.
		
		Args:
		  input_signature: Single TensorSpec or nested structure of TensorSpec
		    objects, describing a candidate input for the layer.
		
		Returns:
		  Single TensorSpec or nested structure of TensorSpec objects, describing
		    how the layer would transform the provided input.
		
		Raises:
		  TypeError: If input_signature contains a non-TensorSpec object.
	**/
	public function compute_output_signature(input_signature:Dynamic):Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		Returns:
		    An integer count.
		
		Raises:
		    ValueError: if the layer isn't yet built
		      (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	/**
		The `tf.distribute.Strategy` this model was created under.
	**/
	public var distribute_strategy : Dynamic;
	/**
		The dtype of the layer weights.
		
		This is equivalent to `Layer.dtype_policy.variable_dtype`. Unless
		mixed precision is used, this is the same as `Layer.compute_dtype`, the
		dtype of the layer's computations.
	**/
	public var dtype : Dynamic;
	/**
		The dtype policy associated with this layer.
		
		This is an instance of a `tf.keras.mixed_precision.Policy`.
	**/
	public var dtype_policy : Dynamic;
	/**
		Whether the layer is dynamic (eager-only); set in the constructor.
	**/
	@:native("dynamic")
	public var _dynamic : Dynamic;
	/**
		Returns the loss value & metrics values for the model in test mode.
		
		Computation is done in batches (see the `batch_size` arg.)
		
		Args:
		    x: Input data. It could be:
		      - A Numpy array (or array-like), or a list of arrays
		        (in case the model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors
		        (in case the model has multiple inputs).
		      - A dict mapping input names to the corresponding array/tensors,
		        if the model has named inputs.
		      - A `tf.data` dataset. Should return a tuple
		        of either `(inputs, targets)` or
		        `(inputs, targets, sample_weights)`.
		      - A generator or `keras.utils.Sequence` returning `(inputs, targets)`
		        or `(inputs, targets, sample_weights)`.
		      A more detailed description of unpacking behavior for iterator types
		      (Dataset, generator, Sequence) is given in the `Unpacking behavior
		      for iterator-like inputs` section of `Model.fit`.
		    y: Target data. Like the input data `x`, it could be either Numpy
		      array(s) or TensorFlow tensor(s). It should be consistent with `x`
		      (you cannot have Numpy inputs and tensor targets, or inversely). If
		      `x` is a dataset, generator or `keras.utils.Sequence` instance, `y`
		      should not be specified (since targets will be obtained from the
		      iterator/dataset).
		    batch_size: Integer or `None`. Number of samples per batch of
		      computation. If unspecified, `batch_size` will default to 32. Do not
		      specify the `batch_size` if your data is in the form of a dataset,
		      generators, or `keras.utils.Sequence` instances (since they generate
		      batches).
		    verbose: 0 or 1. Verbosity mode. 0 = silent, 1 = progress bar.
		    sample_weight: Optional Numpy array of weights for the test samples,
		      used for weighting the loss function. You can either pass a flat (1D)
		      Numpy array with the same length as the input samples
		        (1:1 mapping between weights and samples), or in the case of
		          temporal data, you can pass a 2D array with shape `(samples,
		          sequence_length)`, to apply a different weight to every timestep
		          of every sample. This argument is not supported when `x` is a
		          dataset, instead pass sample weights as the third element of `x`.
		    steps: Integer or `None`. Total number of steps (batches of samples)
		      before declaring the evaluation round finished. Ignored with the
		      default value of `None`. If x is a `tf.data` dataset and `steps` is
		      None, 'evaluate' will run until the dataset is exhausted. This
		      argument is not supported with array inputs.
		    callbacks: List of `keras.callbacks.Callback` instances. List of
		      callbacks to apply during evaluation. See
		      [callbacks](/api_docs/python/tf/keras/callbacks).
		    max_queue_size: Integer. Used for generator or `keras.utils.Sequence`
		      input only. Maximum size for the generator queue. If unspecified,
		      `max_queue_size` will default to 10.
		    workers: Integer. Used for generator or `keras.utils.Sequence` input
		      only. Maximum number of processes to spin up when using process-based
		      threading. If unspecified, `workers` will default to 1.
		    use_multiprocessing: Boolean. Used for generator or
		      `keras.utils.Sequence` input only. If `True`, use process-based
		      threading. If unspecified, `use_multiprocessing` will default to
		      `False`. Note that because this implementation relies on
		      multiprocessing, you should not pass non-picklable arguments to the
		      generator as they can't be passed easily to children processes.
		    return_dict: If `True`, loss and metric results are returned as a dict,
		      with each key being the name of the metric. If `False`, they are
		      returned as a list.
		    **kwargs: Unused at this time.
		
		See the discussion of `Unpacking behavior for iterator-like inputs` for
		`Model.fit`.
		
		`Model.evaluate` is not yet supported with
		`tf.distribute.experimental.ParameterServerStrategy`.
		
		Returns:
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		Raises:
		    RuntimeError: If `model.evaluate` is wrapped in `tf.function`.
		    ValueError: in case of invalid arguments.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?sample_weight:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?return_dict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Evaluates the model on a data generator.
		
		DEPRECATED:
		  `Model.evaluate` now supports generators, so there is no longer any need
		  to use this endpoint.
	**/
	public function evaluate_generator(generator:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Finalizes the layers state after updating layer weights.
		
		This function can be subclassed in a layer and will be called after updating
		a layer weights. It can be overridden to finalize any additional layer state
		after a weight update.
	**/
	public function finalize_state():Dynamic;
	/**
		Trains the model for a fixed number of epochs (iterations on a dataset).
		
		Args:
		    x: Input data. It could be:
		      - A Numpy array (or array-like), or a list of arrays
		        (in case the model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors
		        (in case the model has multiple inputs).
		      - A dict mapping input names to the corresponding array/tensors,
		        if the model has named inputs.
		      - A `tf.data` dataset. Should return a tuple
		        of either `(inputs, targets)` or
		        `(inputs, targets, sample_weights)`.
		      - A generator or `keras.utils.Sequence` returning `(inputs, targets)`
		        or `(inputs, targets, sample_weights)`.
		      - A `tf.keras.utils.experimental.DatasetCreator`, which wraps a
		        callable that takes a single argument of type
		        `tf.distribute.InputContext`, and returns a `tf.data.Dataset`.
		        `DatasetCreator` should be used when users prefer to specify the
		        per-replica batching and sharding logic for the `Dataset`.
		        See `tf.keras.utils.experimental.DatasetCreator` doc for more
		        information.
		      A more detailed description of unpacking behavior for iterator types
		      (Dataset, generator, Sequence) is given below. If using
		      `tf.distribute.experimental.ParameterServerStrategy`, only
		      `DatasetCreator` type is supported for `x`.
		    y: Target data. Like the input data `x`,
		      it could be either Numpy array(s) or TensorFlow tensor(s).
		      It should be consistent with `x` (you cannot have Numpy inputs and
		      tensor targets, or inversely). If `x` is a dataset, generator,
		      or `keras.utils.Sequence` instance, `y` should
		      not be specified (since targets will be obtained from `x`).
		    batch_size: Integer or `None`.
		        Number of samples per gradient update.
		        If unspecified, `batch_size` will default to 32.
		        Do not specify the `batch_size` if your data is in the
		        form of datasets, generators, or `keras.utils.Sequence` instances
		        (since they generate batches).
		    epochs: Integer. Number of epochs to train the model.
		        An epoch is an iteration over the entire `x` and `y`
		        data provided.
		        Note that in conjunction with `initial_epoch`,
		        `epochs` is to be understood as "final epoch".
		        The model is not trained for a number of iterations
		        given by `epochs`, but merely until the epoch
		        of index `epochs` is reached.
		    verbose: 'auto', 0, 1, or 2. Verbosity mode.
		        0 = silent, 1 = progress bar, 2 = one line per epoch.
		        'auto' defaults to 1 for most cases, but 2 when used with
		        `ParameterServerStrategy`. Note that the progress bar is not
		        particularly useful when logged to a file, so verbose=2 is
		        recommended when not running interactively (eg, in a production
		        environment).
		    callbacks: List of `keras.callbacks.Callback` instances.
		        List of callbacks to apply during training.
		        See `tf.keras.callbacks`. Note `tf.keras.callbacks.ProgbarLogger`
		        and `tf.keras.callbacks.History` callbacks are created automatically
		        and need not be passed into `model.fit`.
		        `tf.keras.callbacks.ProgbarLogger` is created or not based on
		        `verbose` argument to `model.fit`.
		        Callbacks with batch-level calls are currently unsupported with
		        `tf.distribute.experimental.ParameterServerStrategy`, and users are
		        advised to implement epoch-level calls instead with an appropriate
		        `steps_per_epoch` value.
		    validation_split: Float between 0 and 1.
		        Fraction of the training data to be used as validation data.
		        The model will set apart this fraction of the training data,
		        will not train on it, and will evaluate
		        the loss and any model metrics
		        on this data at the end of each epoch.
		        The validation data is selected from the last samples
		        in the `x` and `y` data provided, before shuffling. This argument is
		        not supported when `x` is a dataset, generator or
		       `keras.utils.Sequence` instance.
		        `validation_split` is not yet supported with
		        `tf.distribute.experimental.ParameterServerStrategy`.
		    validation_data: Data on which to evaluate
		        the loss and any model metrics at the end of each epoch.
		        The model will not be trained on this data. Thus, note the fact
		        that the validation loss of data provided using `validation_split`
		        or `validation_data` is not affected by regularization layers like
		        noise and dropout.
		        `validation_data` will override `validation_split`.
		        `validation_data` could be:
		          - A tuple `(x_val, y_val)` of Numpy arrays or tensors.
		          - A tuple `(x_val, y_val, val_sample_weights)` of NumPy arrays.
		          - A `tf.data.Dataset`.
		          - A Python generator or `keras.utils.Sequence` returning
		          `(inputs, targets)` or `(inputs, targets, sample_weights)`.
		        `validation_data` is not yet supported with
		        `tf.distribute.experimental.ParameterServerStrategy`.
		    shuffle: Boolean (whether to shuffle the training data
		        before each epoch) or str (for 'batch'). This argument is ignored
		        when `x` is a generator or an object of tf.data.Dataset.
		        'batch' is a special option for dealing
		        with the limitations of HDF5 data; it shuffles in batch-sized
		        chunks. Has no effect when `steps_per_epoch` is not `None`.
		    class_weight: Optional dictionary mapping class indices (integers)
		        to a weight (float) value, used for weighting the loss function
		        (during training only).
		        This can be useful to tell the model to
		        "pay more attention" to samples from
		        an under-represented class.
		    sample_weight: Optional Numpy array of weights for
		        the training samples, used for weighting the loss function
		        (during training only). You can either pass a flat (1D)
		        Numpy array with the same length as the input samples
		        (1:1 mapping between weights and samples),
		        or in the case of temporal data,
		        you can pass a 2D array with shape
		        `(samples, sequence_length)`,
		        to apply a different weight to every timestep of every sample. This
		        argument is not supported when `x` is a dataset, generator, or
		       `keras.utils.Sequence` instance, instead provide the sample_weights
		        as the third element of `x`.
		    initial_epoch: Integer.
		        Epoch at which to start training
		        (useful for resuming a previous training run).
		    steps_per_epoch: Integer or `None`.
		        Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. When training with input tensors such as
		        TensorFlow data tensors, the default `None` is equal to
		        the number of samples in your dataset divided by
		        the batch size, or 1 if that cannot be determined. If x is a
		        `tf.data` dataset, and 'steps_per_epoch'
		        is None, the epoch will run until the input dataset is exhausted.
		        When passing an infinitely repeating dataset, you must specify the
		        `steps_per_epoch` argument. If `steps_per_epoch=-1` the training
		        will run indefinitely with an infinitely repeating dataset.
		        This argument is not supported with array inputs.
		        When using `tf.distribute.experimental.ParameterServerStrategy`:
		          * `steps_per_epoch=None` is not supported.
		    validation_steps: Only relevant if `validation_data` is provided and
		        is a `tf.data` dataset. Total number of steps (batches of
		        samples) to draw before stopping when performing validation
		        at the end of every epoch. If 'validation_steps' is None, validation
		        will run until the `validation_data` dataset is exhausted. In the
		        case of an infinitely repeated dataset, it will run into an
		        infinite loop. If 'validation_steps' is specified and only part of
		        the dataset will be consumed, the evaluation will start from the
		        beginning of the dataset at each epoch. This ensures that the same
		        validation samples are used every time.
		    validation_batch_size: Integer or `None`.
		        Number of samples per validation batch.
		        If unspecified, will default to `batch_size`.
		        Do not specify the `validation_batch_size` if your data is in the
		        form of datasets, generators, or `keras.utils.Sequence` instances
		        (since they generate batches).
		    validation_freq: Only relevant if validation data is provided. Integer
		        or `collections.abc.Container` instance (e.g. list, tuple, etc.).
		        If an integer, specifies how many training epochs to run before a
		        new validation run is performed, e.g. `validation_freq=2` runs
		        validation every 2 epochs. If a Container, specifies the epochs on
		        which to run validation, e.g. `validation_freq=[1, 2, 10]` runs
		        validation at the end of the 1st, 2nd, and 10th epochs.
		    max_queue_size: Integer. Used for generator or `keras.utils.Sequence`
		        input only. Maximum size for the generator queue.
		        If unspecified, `max_queue_size` will default to 10.
		    workers: Integer. Used for generator or `keras.utils.Sequence` input
		        only. Maximum number of processes to spin up
		        when using process-based threading. If unspecified, `workers`
		        will default to 1.
		    use_multiprocessing: Boolean. Used for generator or
		        `keras.utils.Sequence` input only. If `True`, use process-based
		        threading. If unspecified, `use_multiprocessing` will default to
		        `False`. Note that because this implementation relies on
		        multiprocessing, you should not pass non-picklable arguments to
		        the generator as they can't be passed easily to children processes.
		
		Unpacking behavior for iterator-like inputs:
		    A common pattern is to pass a tf.data.Dataset, generator, or
		  tf.keras.utils.Sequence to the `x` argument of fit, which will in fact
		  yield not only features (x) but optionally targets (y) and sample weights.
		  Keras requires that the output of such iterator-likes be unambiguous. The
		  iterator should return a tuple of length 1, 2, or 3, where the optional
		  second and third elements will be used for y and sample_weight
		  respectively. Any other type provided will be wrapped in a length one
		  tuple, effectively treating everything as 'x'. When yielding dicts, they
		  should still adhere to the top-level tuple structure.
		  e.g. `({"x0": x0, "x1": x1}, y)`. Keras will not attempt to separate
		  features, targets, and weights from the keys of a single dict.
		    A notable unsupported data type is the namedtuple. The reason is that
		  it behaves like both an ordered datatype (tuple) and a mapping
		  datatype (dict). So given a namedtuple of the form:
		      `namedtuple("example_tuple", ["y", "x"])`
		  it is ambiguous whether to reverse the order of the elements when
		  interpreting the value. Even worse is a tuple of the form:
		      `namedtuple("other_tuple", ["x", "y", "z"])`
		  where it is unclear if the tuple was intended to be unpacked into x, y,
		  and sample_weight or passed through as a single element to `x`. As a
		  result the data processing code will simply raise a ValueError if it
		  encounters a namedtuple. (Along with instructions to remedy the issue.)
		
		Returns:
		    A `History` object. Its `History.history` attribute is
		    a record of training loss values and metrics values
		    at successive epochs, as well as validation loss values
		    and validation metrics values (if applicable).
		
		Raises:
		    RuntimeError: 1. If the model was never compiled or,
		    2. If `model.fit` is  wrapped in `tf.function`.
		
		    ValueError: In case of mismatch between the provided input data
		        and what the model expects or when the input data is empty.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_split:Dynamic, ?validation_data:Dynamic, ?shuffle:Dynamic, ?class_weight:Dynamic, ?sample_weight:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?validation_batch_size:Dynamic, ?validation_freq:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic):Dynamic;
	/**
		Fits the model on data yielded batch-by-batch by a Python generator.
		
		DEPRECATED:
		  `Model.fit` now supports generators, so there is no longer any need to use
		  this endpoint.
	**/
	public function fit_generator(generator:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic):Dynamic;
	/**
		Creates a layer from its config.
		
		This method is the reverse of `get_config`,
		capable of instantiating the same layer from the config
		dictionary. It does not handle layer connectivity
		(handled by Network), nor weights (handled by `set_weights`).
		
		Args:
		    config: A Python dictionary, typically the
		        output of get_config.
		
		Returns:
		    A layer instance.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the config of the layer.
		
		A layer config is a Python dictionary (serializable)
		containing the configuration of a layer.
		The same layer can be reinstantiated later
		(without its trained weights) from this configuration.
		
		The config of a layer does not include connectivity
		information, nor the layer class name. These are handled
		by `Network` (one layer of abstraction above).
		
		Note that `get_config()` does not guarantee to return a fresh copy of dict
		every time it is called. The callers should make a copy of the returned dict
		if they want to modify it.
		
		Returns:
		    Python dictionary.
	**/
	public function get_config():Dynamic;
	/**
		Retrieves the input tensor(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first input node of the layer.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple inputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_input_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input shape(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple inputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_input_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves a layer based on either its name (unique) or index.
		
		If `name` and `index` are both provided, `index` will take precedence.
		Indices are based on order of horizontal graph traversal (bottom-up).
		
		Args:
		    name: String, name of layer.
		    index: Integer, index of layer.
		
		Returns:
		    A layer instance.
		
		Raises:
		    ValueError: In case of invalid layer name or index.
	**/
	public function get_layer(?name:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Deprecated, do NOT use!
		
		Retrieves losses relevant to a specific set of inputs.
		
		Args:
		  inputs: Input tensor or list/tuple of input tensors.
		
		Returns:
		  List of loss tensors of the layer that depend on `inputs`.
	**/
	public function get_losses_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the output tensor(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first output node of the layer.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple outputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_output_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output shape(s) of a layer at a given node.
		
		Args:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple outputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_output_shape_at(node_index:Dynamic):Dynamic;
	/**
		Deprecated, do NOT use!
		
		Retrieves updates relevant to a specific set of inputs.
		
		Args:
		  inputs: Input tensor or list/tuple of input tensors.
		
		Returns:
		  List of update ops of the layer that depend on `inputs`.
	**/
	public function get_updates_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the weights of the model.
		
		Returns:
		    A flat list of Numpy arrays.
	**/
	public function get_weights():Dynamic;
	/**
		Deprecated, do NOT use! Only for compatibility with external Keras.
	**/
	public var inbound_nodes : Dynamic;
	/**
		Retrieves the input tensor(s) of a layer.
		
		Only applicable if the layer has exactly one input,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input tensor or list of input tensors.
		
		Raises:
		  RuntimeError: If called in Eager mode.
		  AttributeError: If no inbound nodes are found.
	**/
	public var input : Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input mask tensor (potentially None) or list of input
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_mask : Dynamic;
	/**
		Retrieves the input shape(s) of a layer.
		
		Only applicable if the layer has exactly one input,
		i.e. if it is connected to one incoming layer, or if all inputs
		have the same shape.
		
		Returns:
		    Input shape, as an integer shape tuple
		    (or list of shape tuples, one tuple per input tensor).
		
		Raises:
		    AttributeError: if the layer has no defined input_shape.
		    RuntimeError: if called in Eager mode.
	**/
	public var input_shape : Dynamic;
	/**
		`InputSpec` instance(s) describing the input format for this layer.
		
		When you create a layer subclass, you can set `self.input_spec` to enable
		the layer to run input compatibility checks when it is called.
		Consider a `Conv2D` layer: it can only be called on a single input tensor
		of rank 4. As such, you can set, in `__init__()`:
		
		```python
		self.input_spec = tf.keras.layers.InputSpec(ndim=4)
		```
		
		Now, if you try to call the layer on an input that isn't rank 4
		(for instance, an input of shape `(2,)`, it will raise a nicely-formatted
		error:
		
		```
		ValueError: Input 0 of layer conv2d is incompatible with the layer:
		expected ndim=4, found ndim=1. Full shape received: [2]
		```
		
		Input checks that can be specified via `input_spec` include:
		- Structure (e.g. a single input, a list of 2 inputs, etc)
		- Shape
		- Rank (ndim)
		- Dtype
		
		For more information, see `tf.keras.layers.InputSpec`.
		
		Returns:
		  A `tf.keras.layers.InputSpec` instance, or nested structure thereof.
	**/
	public var input_spec : Dynamic;
	public var layers : Dynamic;
	/**
		Loads all layer weights, either from a TensorFlow or an HDF5 weight file.
		
		If `by_name` is False weights are loaded based on the network's
		topology. This means the architecture should be the same as when the weights
		were saved.  Note that layers that don't have weights are not taken into
		account in the topological ordering, so adding or removing layers is fine as
		long as they don't have weights.
		
		If `by_name` is True, weights are loaded into layers only if they share the
		same name. This is useful for fine-tuning or transfer-learning models where
		some of the layers have changed.
		
		Only topological loading (`by_name=False`) is supported when loading weights
		from the TensorFlow format. Note that topological loading differs slightly
		between TensorFlow and HDF5 formats for user-defined classes inheriting from
		`tf.keras.Model`: HDF5 loads based on a flattened list of weights, while the
		TensorFlow format loads based on the object-local names of attributes to
		which layers are assigned in the `Model`'s constructor.
		
		Args:
		    filepath: String, path to the weights file to load. For weight files in
		        TensorFlow format, this is the file prefix (the same as was passed
		        to `save_weights`). This can also be a path to a SavedModel
		        saved from `model.save`.
		    by_name: Boolean, whether to load weights by name or by topological
		        order. Only topological loading is supported for weight files in
		        TensorFlow format.
		    skip_mismatch: Boolean, whether to skip loading of layers where there is
		        a mismatch in the number of weights, or a mismatch in the shape of
		        the weight (only valid when `by_name=True`).
		    options: Optional `tf.train.CheckpointOptions` object that specifies
		        options for loading weights.
		
		Returns:
		    When loading a weight file in TensorFlow format, returns the same status
		    object as `tf.train.Checkpoint.restore`. When graph building, restore
		    ops are run automatically as soon as the network is built (on first call
		    for user-defined classes inheriting from `Model`, immediately if it is
		    already built).
		
		    When loading weights in HDF5 format, returns `None`.
		
		Raises:
		    ImportError: If h5py is not available and the weight file is in HDF5
		        format.
		    ValueError: If `skip_mismatch` is set to `True` when `by_name` is
		      `False`.
	**/
	public function load_weights(filepath:Dynamic, ?by_name:Dynamic, ?skip_mismatch:Dynamic, ?options:Dynamic):Dynamic;
	/**
		List of losses added using the `add_loss()` API.
		
		Variable regularization tensors are created when this property is accessed,
		so it is eager safe: accessing `losses` under a `tf.GradientTape` will
		propagate gradients back to the corresponding variables.
		
		Examples:
		
		>>> class MyLayer(tf.keras.layers.Layer):
		...   def call(self, inputs):
		...     self.add_loss(tf.abs(tf.reduce_mean(inputs)))
		...     return inputs
		>>> l = MyLayer()
		>>> l(np.ones((10, 1)))
		>>> l.losses
		[1.0]
		
		>>> inputs = tf.keras.Input(shape=(10,))
		>>> x = tf.keras.layers.Dense(10)(inputs)
		>>> outputs = tf.keras.layers.Dense(1)(x)
		>>> model = tf.keras.Model(inputs, outputs)
		>>> # Activity regularization.
		>>> len(model.losses)
		0
		>>> model.add_loss(tf.abs(tf.reduce_mean(x)))
		>>> len(model.losses)
		1
		
		>>> inputs = tf.keras.Input(shape=(10,))
		>>> d = tf.keras.layers.Dense(10, kernel_initializer='ones')
		>>> x = d(inputs)
		>>> outputs = tf.keras.layers.Dense(1)(x)
		>>> model = tf.keras.Model(inputs, outputs)
		>>> # Weight regularization.
		>>> model.add_loss(lambda: tf.reduce_mean(d.kernel))
		>>> model.losses
		[<tf.Tensor: shape=(), dtype=float32, numpy=1.0>]
		
		Returns:
		  A list of tensors.
	**/
	public var losses : Dynamic;
	/**
		Creates a function that executes one step of inference.
		
		This method can be overridden to support custom inference logic.
		This method is called by `Model.predict` and `Model.predict_on_batch`.
		
		Typically, this method directly controls `tf.function` and
		`tf.distribute.Strategy` settings, and delegates the actual evaluation
		logic to `Model.predict_step`.
		
		This function is cached the first time `Model.predict` or
		`Model.predict_on_batch` is called. The cache is cleared whenever
		`Model.compile` is called.
		
		Returns:
		  Function. The function created by this method should accept a
		  `tf.data.Iterator`, and return the outputs of the `Model`.
	**/
	public function make_predict_function():Dynamic;
	/**
		Creates a function that executes one step of evaluation.
		
		This method can be overridden to support custom evaluation logic.
		This method is called by `Model.evaluate` and `Model.test_on_batch`.
		
		Typically, this method directly controls `tf.function` and
		`tf.distribute.Strategy` settings, and delegates the actual evaluation
		logic to `Model.test_step`.
		
		This function is cached the first time `Model.evaluate` or
		`Model.test_on_batch` is called. The cache is cleared whenever
		`Model.compile` is called.
		
		Returns:
		  Function. The function created by this method should accept a
		  `tf.data.Iterator`, and return a `dict` containing values that will
		  be passed to `tf.keras.Callbacks.on_test_batch_end`.
	**/
	public function make_test_function():Dynamic;
	/**
		Creates a function that executes one step of training.
		
		This method can be overridden to support custom training logic.
		This method is called by `Model.fit` and `Model.train_on_batch`.
		
		Typically, this method directly controls `tf.function` and
		`tf.distribute.Strategy` settings, and delegates the actual training
		logic to `Model.train_step`.
		
		This function is cached the first time `Model.fit` or
		`Model.train_on_batch` is called. The cache is cleared whenever
		`Model.compile` is called.
		
		Returns:
		  Function. The function created by this method should accept a
		  `tf.data.Iterator`, and return a `dict` containing values that will
		  be passed to `tf.keras.Callbacks.on_train_batch_end`, such as
		  `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function make_train_function():Dynamic;
	/**
		Returns the model's metrics added using `compile`, `add_metric` APIs.
		
		Note: Metrics passed to `compile()` are available only after a `keras.Model`
		has been trained/evaluated on actual data.
		
		Examples:
		
		>>> inputs = tf.keras.layers.Input(shape=(3,))
		>>> outputs = tf.keras.layers.Dense(2)(inputs)
		>>> model = tf.keras.models.Model(inputs=inputs, outputs=outputs)
		>>> model.compile(optimizer="Adam", loss="mse", metrics=["mae"])
		>>> [m.name for m in model.metrics]
		[]
		
		>>> x = np.random.random((2, 3))
		>>> y = np.random.randint(0, 2, (2, 2))
		>>> model.fit(x, y)
		>>> [m.name for m in model.metrics]
		['loss', 'mae']
		
		>>> inputs = tf.keras.layers.Input(shape=(3,))
		>>> d = tf.keras.layers.Dense(2, name='out')
		>>> output_1 = d(inputs)
		>>> output_2 = d(inputs)
		>>> model = tf.keras.models.Model(
		...    inputs=inputs, outputs=[output_1, output_2])
		>>> model.add_metric(
		...    tf.reduce_sum(output_2), name='mean', aggregation='mean')
		>>> model.compile(optimizer="Adam", loss="mse", metrics=["mae", "acc"])
		>>> model.fit(x, (y, y))
		>>> [m.name for m in model.metrics]
		['loss', 'out_loss', 'out_1_loss', 'out_mae', 'out_acc', 'out_1_mae',
		'out_1_acc', 'mean']
	**/
	public var metrics : Dynamic;
	/**
		Returns the model's display labels for all outputs.
		
		Note: `metrics_names` are available only after a `keras.Model` has been
		trained/evaluated on actual data.
		
		Examples:
		
		>>> inputs = tf.keras.layers.Input(shape=(3,))
		>>> outputs = tf.keras.layers.Dense(2)(inputs)
		>>> model = tf.keras.models.Model(inputs=inputs, outputs=outputs)
		>>> model.compile(optimizer="Adam", loss="mse", metrics=["mae"])
		>>> model.metrics_names
		[]
		
		>>> x = np.random.random((2, 3))
		>>> y = np.random.randint(0, 2, (2, 2))
		>>> model.fit(x, y)
		>>> model.metrics_names
		['loss', 'mae']
		
		>>> inputs = tf.keras.layers.Input(shape=(3,))
		>>> d = tf.keras.layers.Dense(2, name='out')
		>>> output_1 = d(inputs)
		>>> output_2 = d(inputs)
		>>> model = tf.keras.models.Model(
		...    inputs=inputs, outputs=[output_1, output_2])
		>>> model.compile(optimizer="Adam", loss="mse", metrics=["mae", "acc"])
		>>> model.fit(x, (y, y))
		>>> model.metrics_names
		['loss', 'out_loss', 'out_1_loss', 'out_mae', 'out_acc', 'out_1_mae',
		'out_1_acc']
	**/
	public var metrics_names : Dynamic;
	/**
		Name of the layer (string), set in the constructor.
	**/
	public var name : Dynamic;
	/**
		Returns a `tf.name_scope` instance for this class.
	**/
	public var name_scope : Dynamic;
	/**
		Sequence of non-trainable variables owned by this module and its submodules.
		
		Note: this method uses reflection to find variables on the current instance
		and submodules. For performance reasons you may wish to cache the result
		of calling this method if you don't expect the return value to change.
		
		Returns:
		  A sequence of variables for the current module (sorted by attribute
		  name) followed by variables from all submodules recursively (breadth
		  first).
	**/
	public var non_trainable_variables : Dynamic;
	/**
		List of all non-trainable weights tracked by this layer.
		
		Non-trainable weights are *not* updated during training. They are expected
		to be updated manually in `call()`.
		
		Returns:
		  A list of non-trainable variables.
	**/
	public var non_trainable_weights : Dynamic;
	/**
		Deprecated, do NOT use! Only for compatibility with external Keras.
	**/
	public var outbound_nodes : Dynamic;
	/**
		Retrieves the output tensor(s) of a layer.
		
		Only applicable if the layer has exactly one output,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		  Output tensor or list of output tensors.
		
		Raises:
		  AttributeError: if the layer is connected to more than one incoming
		    layers.
		  RuntimeError: if called in Eager mode.
	**/
	public var output : Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Output mask tensor (potentially None) or list of output
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_mask : Dynamic;
	/**
		Retrieves the output shape(s) of a layer.
		
		Only applicable if the layer has one output,
		or if all outputs have the same shape.
		
		Returns:
		    Output shape, as an integer shape tuple
		    (or list of shape tuples, one tuple per output tensor).
		
		Raises:
		    AttributeError: if the layer has no defined output shape.
		    RuntimeError: if called in Eager mode.
	**/
	public var output_shape : Dynamic;
	/**
		Generates output predictions for the input samples.
		
		Computation is done in batches. This method is designed for performance in
		large scale inputs. For small amount of inputs that fit in one batch,
		directly using `__call__` is recommended for faster execution, e.g.,
		`model(x)`, or `model(x, training=False)` if you have layers such as
		`tf.keras.layers.BatchNormalization` that behaves differently during
		inference. Also, note the fact that test loss is not affected by
		regularization layers like noise and dropout.
		
		Args:
		    x: Input samples. It could be:
		      - A Numpy array (or array-like), or a list of arrays
		        (in case the model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors
		        (in case the model has multiple inputs).
		      - A `tf.data` dataset.
		      - A generator or `keras.utils.Sequence` instance.
		      A more detailed description of unpacking behavior for iterator types
		      (Dataset, generator, Sequence) is given in the `Unpacking behavior
		      for iterator-like inputs` section of `Model.fit`.
		    batch_size: Integer or `None`.
		        Number of samples per batch.
		        If unspecified, `batch_size` will default to 32.
		        Do not specify the `batch_size` if your data is in the
		        form of dataset, generators, or `keras.utils.Sequence` instances
		        (since they generate batches).
		    verbose: Verbosity mode, 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring the prediction round finished.
		        Ignored with the default value of `None`. If x is a `tf.data`
		        dataset and `steps` is None, `predict` will
		        run until the input dataset is exhausted.
		    callbacks: List of `keras.callbacks.Callback` instances.
		        List of callbacks to apply during prediction.
		        See [callbacks](/api_docs/python/tf/keras/callbacks).
		    max_queue_size: Integer. Used for generator or `keras.utils.Sequence`
		        input only. Maximum size for the generator queue.
		        If unspecified, `max_queue_size` will default to 10.
		    workers: Integer. Used for generator or `keras.utils.Sequence` input
		        only. Maximum number of processes to spin up when using
		        process-based threading. If unspecified, `workers` will default
		        to 1.
		    use_multiprocessing: Boolean. Used for generator or
		        `keras.utils.Sequence` input only. If `True`, use process-based
		        threading. If unspecified, `use_multiprocessing` will default to
		        `False`. Note that because this implementation relies on
		        multiprocessing, you should not pass non-picklable arguments to
		        the generator as they can't be passed easily to children processes.
		
		See the discussion of `Unpacking behavior for iterator-like inputs` for
		`Model.fit`. Note that Model.predict uses the same interpretation rules as
		`Model.fit` and `Model.evaluate`, so inputs must be unambiguous for all
		three methods.
		
		Returns:
		    Numpy array(s) of predictions.
		
		Raises:
		    RuntimeError: If `model.predict` is wrapped in `tf.function`.
		    ValueError: In case of mismatch between the provided
		        input data and the model's expectations,
		        or in case a stateful model receives a number of samples
		        that is not a multiple of the batch size.
	**/
	public function predict(x:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic):Dynamic;
	/**
		Generates predictions for the input samples from a data generator.
		
		DEPRECATED:
		  `Model.predict` now supports generators, so there is no longer any need
		  to use this endpoint.
	**/
	public function predict_generator(generator:Dynamic, ?steps:Dynamic, ?callbacks:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Returns predictions for a single batch of samples.
		
		Args:
		    x: Input data. It could be:
		      - A Numpy array (or array-like), or a list of arrays (in case the
		          model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors (in case the model has
		          multiple inputs).
		
		Returns:
		    Numpy array(s) of predictions.
		
		Raises:
		    RuntimeError: If `model.predict_on_batch` is wrapped in `tf.function`.
		    ValueError: In case of mismatch between given number of inputs and
		      expectations of the model.
	**/
	public function predict_on_batch(x:Dynamic):Dynamic;
	/**
		The logic for one inference step.
		
		This method can be overridden to support custom inference logic.
		This method is called by `Model.make_predict_function`.
		
		This method should contain the mathematical logic for one step of inference.
		This typically includes the forward pass.
		
		Configuration details for *how* this logic is run (e.g. `tf.function` and
		`tf.distribute.Strategy` settings), should be left to
		`Model.make_predict_function`, which can also be overridden.
		
		Args:
		  data: A nested structure of `Tensor`s.
		
		Returns:
		  The result of one inference step, typically the output of calling the
		  `Model` on data.
	**/
	public function predict_step(data:Dynamic):Dynamic;
	/**
		Resets the state of all the metrics in the model.
		
		Examples:
		
		>>> inputs = tf.keras.layers.Input(shape=(3,))
		>>> outputs = tf.keras.layers.Dense(2)(inputs)
		>>> model = tf.keras.models.Model(inputs=inputs, outputs=outputs)
		>>> model.compile(optimizer="Adam", loss="mse", metrics=["mae"])
		
		>>> x = np.random.random((2, 3))
		>>> y = np.random.randint(0, 2, (2, 2))
		>>> _ = model.fit(x, y, verbose=0)
		>>> assert all(float(m.result()) for m in model.metrics)
		
		>>> model.reset_metrics()
		>>> assert all(float(m.result()) == 0 for m in model.metrics)
	**/
	public function reset_metrics():Dynamic;
	public function reset_states():Dynamic;
	/**
		Settable attribute indicating whether the model should run eagerly.
		
		Running eagerly means that your model will be run step by step,
		like Python code. Your model might run slower, but it should become easier
		for you to debug it by stepping into individual layer calls.
		
		By default, we will attempt to compile your model to a static graph to
		deliver the best execution performance.
		
		Returns:
		  Boolean, whether the model should run eagerly.
	**/
	public var run_eagerly : Dynamic;
	/**
		Saves the model to Tensorflow SavedModel or a single HDF5 file.
		
		Please see `tf.keras.models.save_model` or the
		[Serialization and Saving guide](https://keras.io/guides/serialization_and_saving/)
		for details.
		
		Args:
		    filepath: String, PathLike, path to SavedModel or H5 file to save the
		        model.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		    save_format: Either `'tf'` or `'h5'`, indicating whether to save the
		        model to Tensorflow SavedModel or HDF5. Defaults to 'tf' in TF 2.X,
		        and 'h5' in TF 1.X.
		    signatures: Signatures to save with the SavedModel. Applicable to the
		        'tf' format only. Please see the `signatures` argument in
		        `tf.saved_model.save` for details.
		    options: (only applies to SavedModel format)
		        `tf.saved_model.SaveOptions` object that specifies options for
		        saving to SavedModel.
		    save_traces: (only applies to SavedModel format) When enabled, the
		        SavedModel will store the function traces for each layer. This
		        can be disabled, so that only the configs of each layer are stored.
		        Defaults to `True`. Disabling this will decrease serialization time
		        and reduce file size, but it requires that all custom layers/models
		        implement a `get_config()` method.
		
		Example:
		
		```python
		from keras.models import load_model
		
		model.save('my_model.h5')  # creates a HDF5 file 'my_model.h5'
		del model  # deletes the existing model
		
		# returns a compiled model
		# identical to the previous one
		model = load_model('my_model.h5')
		```
	**/
	public function save(filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic, ?save_format:Dynamic, ?signatures:Dynamic, ?options:Dynamic, ?save_traces:Dynamic):Dynamic;
	/**
		Saves all layer weights.
		
		Either saves in HDF5 or in TensorFlow format based on the `save_format`
		argument.
		
		When saving in HDF5 format, the weight file has:
		  - `layer_names` (attribute), a list of strings
		      (ordered names of model layers).
		  - For every layer, a `group` named `layer.name`
		      - For every such layer group, a group attribute `weight_names`,
		          a list of strings
		          (ordered names of weights tensor of the layer).
		      - For every weight in the layer, a dataset
		          storing the weight value, named after the weight tensor.
		
		When saving in TensorFlow format, all objects referenced by the network are
		saved in the same format as `tf.train.Checkpoint`, including any `Layer`
		instances or `Optimizer` instances assigned to object attributes. For
		networks constructed from inputs and outputs using `tf.keras.Model(inputs,
		outputs)`, `Layer` instances used by the network are tracked/saved
		automatically. For user-defined classes which inherit from `tf.keras.Model`,
		`Layer` instances must be assigned to object attributes, typically in the
		constructor. See the documentation of `tf.train.Checkpoint` and
		`tf.keras.Model` for details.
		
		While the formats are the same, do not mix `save_weights` and
		`tf.train.Checkpoint`. Checkpoints saved by `Model.save_weights` should be
		loaded using `Model.load_weights`. Checkpoints saved using
		`tf.train.Checkpoint.save` should be restored using the corresponding
		`tf.train.Checkpoint.restore`. Prefer `tf.train.Checkpoint` over
		`save_weights` for training checkpoints.
		
		The TensorFlow format matches objects and variables by starting at a root
		object, `self` for `save_weights`, and greedily matching attribute
		names. For `Model.save` this is the `Model`, and for `Checkpoint.save` this
		is the `Checkpoint` even if the `Checkpoint` has a model attached. This
		means saving a `tf.keras.Model` using `save_weights` and loading into a
		`tf.train.Checkpoint` with a `Model` attached (or vice versa) will not match
		the `Model`'s variables. See the [guide to training
		checkpoints](https://www.tensorflow.org/guide/checkpoint) for details
		on the TensorFlow format.
		
		Args:
		    filepath: String or PathLike, path to the file to save the weights to.
		        When saving in TensorFlow format, this is the prefix used for
		        checkpoint files (multiple files are generated). Note that the '.h5'
		        suffix causes weights to be saved in HDF5 format.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    save_format: Either 'tf' or 'h5'. A `filepath` ending in '.h5' or
		        '.keras' will default to HDF5 if `save_format` is `None`. Otherwise
		        `None` defaults to 'tf'.
		    options: Optional `tf.train.CheckpointOptions` object that specifies
		        options for saving weights.
		
		Raises:
		    ImportError: If h5py is not available when attempting to save in HDF5
		        format.
		    ValueError: For invalid/unknown format arguments.
	**/
	public function save_weights(filepath:Dynamic, ?overwrite:Dynamic, ?save_format:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Sets the weights of the layer, from NumPy arrays.
		
		The weights of a layer represent the state of the layer. This function
		sets the weight values from numpy arrays. The weight values should be
		passed in the order they are created by the layer. Note that the layer's
		weights must be instantiated before calling this function, by calling
		the layer.
		
		For example, a `Dense` layer returns a list of two values: the kernel matrix
		and the bias vector. These can be used to set the weights of another
		`Dense` layer:
		
		>>> layer_a = tf.keras.layers.Dense(1,
		...   kernel_initializer=tf.constant_initializer(1.))
		>>> a_out = layer_a(tf.convert_to_tensor([[1., 2., 3.]]))
		>>> layer_a.get_weights()
		[array([[1.],
		       [1.],
		       [1.]], dtype=float32), array([0.], dtype=float32)]
		>>> layer_b = tf.keras.layers.Dense(1,
		...   kernel_initializer=tf.constant_initializer(2.))
		>>> b_out = layer_b(tf.convert_to_tensor([[10., 20., 30.]]))
		>>> layer_b.get_weights()
		[array([[2.],
		       [2.],
		       [2.]], dtype=float32), array([0.], dtype=float32)]
		>>> layer_b.set_weights(layer_a.get_weights())
		>>> layer_b.get_weights()
		[array([[1.],
		       [1.],
		       [1.]], dtype=float32), array([0.], dtype=float32)]
		
		Args:
		  weights: a list of NumPy arrays. The number
		    of arrays and their shape must match
		    number of the dimensions of the weights
		    of the layer (i.e. it should match the
		    output of `get_weights`).
		
		Raises:
		  ValueError: If the provided weights list does not match the
		    layer's specifications.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		Deprecated, do NOT use!
		
		Returns the `updates` from all layers that are stateful.
		
		This is useful for separating training updates and
		state updates, e.g. when we need to update a layer's internal state
		during prediction.
		
		Returns:
		    A list of update ops.
	**/
	public var state_updates : Dynamic;
	public var stateful : Dynamic;
	/**
		Sequence of all sub-modules.
		
		Submodules are modules which are properties of this module, or found as
		properties of modules which are properties of this module (and so on).
		
		>>> a = tf.Module()
		>>> b = tf.Module()
		>>> c = tf.Module()
		>>> a.b = b
		>>> b.c = c
		>>> list(a.submodules) == [b, c]
		True
		>>> list(b.submodules) == [c]
		True
		>>> list(c.submodules) == []
		True
		
		Returns:
		  A sequence of all submodules.
	**/
	public var submodules : Dynamic;
	/**
		Prints a string summary of the network.
		
		Args:
		    line_length: Total length of printed lines
		        (e.g. set this to adapt the display to different
		        terminal window sizes).
		    positions: Relative or absolute positions of log elements
		        in each line. If not provided,
		        defaults to `[.33, .55, .67, 1.]`.
		    print_fn: Print function to use. Defaults to `print`.
		        It will be called on each line of the summary.
		        You can set it to a custom function
		        in order to capture the string summary.
		
		Raises:
		    ValueError: if `summary()` is called before the model is built.
	**/
	public function summary(?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Whether this layer supports computing a mask using `compute_mask`.
	**/
	public var supports_masking : Dynamic;
	/**
		Test the model on a single batch of samples.
		
		Args:
		    x: Input data. It could be:
		      - A Numpy array (or array-like), or a list of arrays (in case the
		          model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors (in case the model has
		          multiple inputs).
		      - A dict mapping input names to the corresponding array/tensors, if
		          the model has named inputs.
		    y: Target data. Like the input data `x`, it could be either Numpy
		      array(s) or TensorFlow tensor(s). It should be consistent with `x`
		      (you cannot have Numpy inputs and tensor targets, or inversely).
		    sample_weight: Optional array of the same length as x, containing
		      weights to apply to the model's loss for each sample. In the case of
		      temporal data, you can pass a 2D array with shape (samples,
		      sequence_length), to apply a different weight to every timestep of
		      every sample.
		    reset_metrics: If `True`, the metrics returned will be only for this
		      batch. If `False`, the metrics will be statefully accumulated across
		      batches.
		    return_dict: If `True`, loss and metric results are returned as a dict,
		      with each key being the name of the metric. If `False`, they are
		      returned as a list.
		
		Returns:
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		Raises:
		    RuntimeError: If `model.test_on_batch` is wrapped in `tf.function`.
		    ValueError: In case of invalid user-provided arguments.
	**/
	public function test_on_batch(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?reset_metrics:Dynamic, ?return_dict:Dynamic):Dynamic;
	/**
		The logic for one evaluation step.
		
		This method can be overridden to support custom evaluation logic.
		This method is called by `Model.make_test_function`.
		
		This function should contain the mathematical logic for one step of
		evaluation.
		This typically includes the forward pass, loss calculation, and metrics
		updates.
		
		Configuration details for *how* this logic is run (e.g. `tf.function` and
		`tf.distribute.Strategy` settings), should be left to
		`Model.make_test_function`, which can also be overridden.
		
		Args:
		  data: A nested structure of `Tensor`s.
		
		Returns:
		  A `dict` containing values that will be passed to
		  `tf.keras.callbacks.CallbackList.on_train_batch_end`. Typically, the
		  values of the `Model`'s metrics are returned.
	**/
	public function test_step(data:Dynamic):Dynamic;
	/**
		Returns a JSON string containing the network configuration.
		
		To load a network from a JSON save file, use
		`keras.models.model_from_json(json_string, custom_objects={})`.
		
		Args:
		    **kwargs: Additional keyword arguments
		        to be passed to `json.dumps()`.
		
		Returns:
		    A JSON string.
	**/
	public function to_json(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a yaml string containing the network configuration.
		
		Note: Since TF 2.6, this method is no longer supported and will raise a
		RuntimeError.
		
		To load a network from a yaml save file, use
		`keras.models.model_from_yaml(yaml_string, custom_objects={})`.
		
		`custom_objects` should be a dictionary mapping
		the names of custom losses / layers / etc to the corresponding
		functions / classes.
		
		Args:
		    **kwargs: Additional keyword arguments
		        to be passed to `yaml.dump()`.
		
		Returns:
		    A YAML string.
		
		Raises:
		    RuntimeError: announces that the method poses a security risk
	**/
	public function to_yaml(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Runs a single gradient update on a single batch of data.
		
		Args:
		    x: Input data. It could be:
		      - A Numpy array (or array-like), or a list of arrays
		          (in case the model has multiple inputs).
		      - A TensorFlow tensor, or a list of tensors
		          (in case the model has multiple inputs).
		      - A dict mapping input names to the corresponding array/tensors,
		          if the model has named inputs.
		    y: Target data. Like the input data `x`, it could be either Numpy
		      array(s) or TensorFlow tensor(s). It should be consistent with `x`
		      (you cannot have Numpy inputs and tensor targets, or inversely).
		    sample_weight: Optional array of the same length as x, containing
		      weights to apply to the model's loss for each sample. In the case of
		      temporal data, you can pass a 2D array with shape (samples,
		      sequence_length), to apply a different weight to every timestep of
		      every sample.
		    class_weight: Optional dictionary mapping class indices (integers) to a
		      weight (float) to apply to the model's loss for the samples from this
		      class during training. This can be useful to tell the model to "pay
		      more attention" to samples from an under-represented class.
		    reset_metrics: If `True`, the metrics returned will be only for this
		      batch. If `False`, the metrics will be statefully accumulated across
		      batches.
		    return_dict: If `True`, loss and metric results are returned as a dict,
		      with each key being the name of the metric. If `False`, they are
		      returned as a list.
		
		Returns:
		    Scalar training loss
		    (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		Raises:
		  RuntimeError: If `model.train_on_batch` is wrapped in `tf.function`.
		  ValueError: In case of invalid user-provided arguments.
	**/
	public function train_on_batch(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?reset_metrics:Dynamic, ?return_dict:Dynamic):Dynamic;
	/**
		The logic for one training step.
		
		This method can be overridden to support custom training logic.
		For concrete examples of how to override this method see
		[Customizing what happends in fit](https://www.tensorflow.org/guide/keras/customizing_what_happens_in_fit).
		This method is called by `Model.make_train_function`.
		
		This method should contain the mathematical logic for one step of training.
		This typically includes the forward pass, loss calculation, backpropagation,
		and metric updates.
		
		Configuration details for *how* this logic is run (e.g. `tf.function` and
		`tf.distribute.Strategy` settings), should be left to
		`Model.make_train_function`, which can also be overridden.
		
		Args:
		  data: A nested structure of `Tensor`s.
		
		Returns:
		  A `dict` containing values that will be passed to
		  `tf.keras.callbacks.CallbackList.on_train_batch_end`. Typically, the
		  values of the `Model`'s metrics are returned. Example:
		  `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function train_step(data:Dynamic):Dynamic;
	public var trainable : Dynamic;
	/**
		Sequence of trainable variables owned by this module and its submodules.
		
		Note: this method uses reflection to find variables on the current instance
		and submodules. For performance reasons you may wish to cache the result
		of calling this method if you don't expect the return value to change.
		
		Returns:
		  A sequence of variables for the current module (sorted by attribute
		  name) followed by variables from all submodules recursively (breadth
		  first).
	**/
	public var trainable_variables : Dynamic;
	/**
		List of all trainable weights tracked by this layer.
		
		Trainable weights are updated via gradient descent during training.
		
		Returns:
		  A list of trainable variables.
	**/
	public var trainable_weights : Dynamic;
	public var updates : Dynamic;
	/**
		Alias of `Layer.dtype`, the dtype of the weights.
	**/
	public var variable_dtype : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Alias of `self.weights`.
		
		Note: This will not track the weights of nested `tf.Modules` that are not
		themselves Keras layers.
		
		Returns:
		  A list of variables.
	**/
	public var variables : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Note: This will not track the weights of nested `tf.Modules` that are not
		themselves Keras layers.
		
		Returns:
		  A list of variables.
	**/
	public var weights : Dynamic;
	/**
		Decorator to automatically enter the module name scope.
		
		>>> class MyModule(tf.Module):
		...   @tf.Module.with_name_scope
		...   def __call__(self, x):
		...     if not hasattr(self, 'w'):
		...       self.w = tf.Variable(tf.random.normal([x.shape[1], 3]))
		...     return tf.matmul(x, self.w)
		
		Using the above module would produce `tf.Variable`s and `tf.Tensor`s whose
		names included the module name:
		
		>>> mod = MyModule()
		>>> mod(tf.ones([1, 2]))
		<tf.Tensor: shape=(1, 3), dtype=float32, numpy=..., dtype=float32)>
		>>> mod.w
		<tf.Variable 'my_module/Variable:0' shape=(2, 3) dtype=float32,
		numpy=..., dtype=float32)>
		
		Args:
		  method: The method to wrap.
		
		Returns:
		  The original method wrapped such that it enters the module's name scope.
	**/
	static public function with_name_scope(method:Dynamic):Dynamic;
}