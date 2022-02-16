/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.legacy_rnn.rnn_cell_impl;
@:pythonImport("tensorflow.python.keras.layers.legacy_rnn.rnn_cell_impl", "BasicLSTMCell") extern class BasicLSTMCell {
	static public var _TF_MODULE_IGNORED_PROPERTIES : Dynamic;
	/**
		Run this RNN cell on inputs, starting from the given state.
		
		Args:
		  inputs: `2-D` tensor with shape `[batch_size, input_size]`.
		  state: if `self.state_size` is an integer, this should be a `2-D Tensor`
		    with shape `[batch_size, self.state_size]`.  Otherwise, if
		    `self.state_size` is a tuple of integers, this should be a tuple with
		    shapes `[batch_size, s] for s in self.state_size`.
		  scope: optional cell scope.
		  *args: Additional positional arguments.
		  **kwargs: Additional keyword arguments.
		
		Returns:
		  A pair containing:
		
		  - Output: A `2-D` tensor with shape `[batch_size, self.output_size]`.
		  - New state: Either a single `2-D` tensor, or a tuple of tensors matching
		    the arity and shapes of `state`.
	**/
	public function __call__(inputs:Dynamic, state:Dynamic, ?scope:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Initialize the basic LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell.
		  forget_bias: float, The bias added to forget gates (see above). Must set
		    to `0.0` manually when restoring from CudnnLSTM-trained checkpoints.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of the
		    `c_state` and `m_state`.  If False, they are concatenated along the
		    column axis.  The latter behavior will soon be deprecated.
		  activation: Activation function of the inner states.  Default: `tanh`. It
		    could also be string that is within Keras activation function names.
		  reuse: (optional) Python boolean describing whether to reuse variables in
		    an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
		  name: String, the name of the layer. Layers with the same name will share
		    weights, but to avoid mistakes we require reuse=True in such cases.
		  dtype: Default dtype of the layer (default of `None` means use the type of
		    the first input). Required when `build` is called before `call`.
		  **kwargs: Dict, keyword named properties for common layer attributes, like
		    `trainable` etc when constructing the cell from configs of get_config().
		    When restoring from CudnnLSTM-trained checkpoints, must use
		    `CudnnCompatibleLSTMCell` instead.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic, ?reuse:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize the basic LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell.
		  forget_bias: float, The bias added to forget gates (see above). Must set
		    to `0.0` manually when restoring from CudnnLSTM-trained checkpoints.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of the
		    `c_state` and `m_state`.  If False, they are concatenated along the
		    column axis.  The latter behavior will soon be deprecated.
		  activation: Activation function of the inner states.  Default: `tanh`. It
		    could also be string that is within Keras activation function names.
		  reuse: (optional) Python boolean describing whether to reuse variables in
		    an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
		  name: String, the name of the layer. Layers with the same name will share
		    weights, but to avoid mistakes we require reuse=True in such cases.
		  dtype: Default dtype of the layer (default of `None` means use the type of
		    the first input). Required when `build` is called before `call`.
		  **kwargs: Dict, keyword named properties for common layer attributes, like
		    `trainable` etc when constructing the cell from configs of get_config().
		    When restoring from CudnnLSTM-trained checkpoints, must use
		    `CudnnCompatibleLSTMCell` instead.
	**/
	public function new(num_units:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic, ?reuse:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __setattr__(value:Dynamic, name:Dynamic):Dynamic;
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
	/**
		Deprecated alias of `compute_dtype`.
	**/
	public var _compute_dtype : Dynamic;
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
	public function _get_cell_name():Dynamic;
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
	public var _inbound_nodes : Dynamic;
	/**
		TODO(kaftan): Docstring.
	**/
	public function _infer_output_signature(inputs:Dynamic, args:Dynamic, kwargs:Dynamic, input_masks:Dynamic):Dynamic;
	public function _init_call_fn_args(?expects_training_arg:Dynamic):Dynamic;
	public function _init_set_name(name:Dynamic):Dynamic;
	public function _instrument_layer_creation():Dynamic;
	public function _is_layer():Dynamic;
	/**
		Used by keras to check compatibility. This should not be overridden.
	**/
	public var _is_legacy_layer : Dynamic;
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
	public function _make_unique_name(?name_uid_map:Dynamic, ?avoid_names:Dynamic, ?namespace:Dynamic, ?zero_based:Dynamic):Dynamic;
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
	static public var _must_restore_from_config : Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	public var _name_based_restores : Dynamic;
	/**
		Determines op naming for the Layer.
	**/
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
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	public function _rnn_get_variable(getter:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _set_mask_keras_history_checked(flat_outputs:Dynamic):Dynamic;
	public function _set_mask_metadata(inputs:Dynamic, outputs:Dynamic, previous_mask:Dynamic, build_graph:Dynamic):Dynamic;
	public function _set_save_spec(inputs:Dynamic):Dynamic;
	public function _set_scope(?scope:Dynamic):Dynamic;
	/**
		Set `trainable` state for each sublayer.
	**/
	public function _set_trainable_state(trainable_state:Dynamic):Dynamic;
	public function _set_training_mode(args:Dynamic, kwargs:Dynamic, call_context:Dynamic):Dynamic;
	public var _setattr_tracking : Dynamic;
	public function _should_cast_single_input(x:Dynamic):Dynamic;
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
	public var _update_uid : Dynamic;
	public var _use_input_spec_as_call_signature : Dynamic;
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
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
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
		Adds a new variable to the layer, or gets an existing one; returns it.
		
		Args:
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype` or `float32`.
		  initializer: initializer instance (callable).
		  regularizer: regularizer instance (callable).
		  trainable: whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		    Note, if the current variable scope is marked as non-trainable
		    then this parameter is ignored and any added variables are also
		    marked as non-trainable. `trainable` defaults to `True` unless
		    `synchronization` is set to `ON_READ`.
		  constraint: constraint instance (callable).
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
		  partitioner: (optional) partitioner instance (callable).  If
		    provided, when the requested variable is created it will be split
		    into multiple partitions according to `partitioner`.  In this case,
		    an instance of `PartitionedVariable` is returned.  Available
		    partitioners include `tf.compat.v1.fixed_size_partitioner` and
		    `tf.compat.v1.variable_axis_size_partitioner`.  For more details, see
		    the documentation of `tf.compat.v1.get_variable` and the  "Variable
		    Partitioners and Sharding" section of the API guide.
		  **kwargs: Additional keyword arguments.
		
		Returns:
		  The created variable.  Usually either a `Variable` or `ResourceVariable`
		  instance.  If `partitioner` is not `None`, a `PartitionedVariable`
		  instance is returned.
		
		Raises:
		  RuntimeError: If called with partitioned variable regularization and
		    eager execution is enabled.
		  ValueError: When trainable has been set to True with synchronization
		    set as `ON_READ`.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?partitioner:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function build(instance:Dynamic, input_shape:Dynamic):Dynamic;
	/**
		Long short-term memory cell (LSTM).
		
		Args:
		  inputs: `2-D` tensor with shape `[batch_size, input_size]`.
		  state: An `LSTMStateTuple` of state tensors, each shaped `[batch_size,
		    num_units]`, if `state_is_tuple` has been set to `True`.  Otherwise, a
		    `Tensor` shaped `[batch_size, 2 * num_units]`.
		
		Returns:
		  A pair containing the new hidden state, and the new state (either a
		    `LSTMStateTuple` or a concatenated state, depending on
		    `state_is_tuple`).
	**/
	public function call(inputs:Dynamic, state:Dynamic):Dynamic;
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
		Finalizes the layers state after updating layer weights.
		
		This function can be subclassed in a layer and will be called after updating
		a layer weights. It can be overridden to finalize any additional layer state
		after a weight update.
	**/
	public function finalize_state():Dynamic;
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
	static public function from_config(config:Dynamic):Dynamic;
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
	public function get_initial_state(?inputs:Dynamic, ?batch_size:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Returns the current weights of the layer, as NumPy arrays.
		
		The weights of a layer represent the state of the layer. This function
		returns both trainable and non-trainable weight values associated with this
		layer as a list of NumPy arrays, which can in turn be used to load state
		into similarly parameterized layers.
		
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
		
		Returns:
		    Weights values as a list of NumPy arrays.
	**/
	public function get_weights():Dynamic;
	public var graph : Dynamic;
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
		List of metrics added using the `add_metric()` API.
		
		Example:
		
		>>> input = tf.keras.layers.Input(shape=(3,))
		>>> d = tf.keras.layers.Dense(2)
		>>> output = d(input)
		>>> d.add_metric(tf.reduce_max(output), name='max')
		>>> d.add_metric(tf.reduce_min(output), name='min')
		>>> [m.name for m in d.metrics]
		['max', 'min']
		
		Returns:
		  A list of `Metric` objects.
	**/
	public var metrics : Dynamic;
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
		Integer or TensorShape: size of outputs produced by this cell.
	**/
	public var output_size : Dynamic;
	public var scope_name : Dynamic;
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
		size(s) of state(s) used by this cell.
		
		It can be represented by an Integer, a TensorShape or a tuple of Integers
		or TensorShapes.
	**/
	public var state_size : Dynamic;
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
		Whether this layer supports computing a mask using `compute_mask`.
	**/
	public var supports_masking : Dynamic;
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
	/**
		Return zero-filled state tensor(s).
		
		Args:
		  batch_size: int, float, or unit Tensor representing the batch size.
		  dtype: the data type to use for the state.
		
		Returns:
		  If `state_size` is an int or TensorShape, then the return value is a
		  `N-D` tensor of shape `[batch_size, state_size]` filled with zeros.
		
		  If `state_size` is a nested list or tuple, then the return value is
		  a nested list or tuple (of the same structure) of `2-D` tensors with
		  the shapes `[batch_size, s]` for each s in `state_size`.
	**/
	public function zero_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
}