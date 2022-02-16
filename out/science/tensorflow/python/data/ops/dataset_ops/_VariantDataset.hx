/* This file is generated, do not edit! */
package tensorflow.python.data.ops.dataset_ops;
@:pythonImport("tensorflow.python.data.ops.dataset_ops", "_VariantDataset") extern class _VariantDataset {
	/**
		Stores outstanding iterators created from a Python generator.
		
		This class keeps track of potentially multiple iterators that may have
		been created from a generator, e.g. in the case that the dataset is
		repeated, or nested within a parallel computation.
	**/
	static public function _GeneratorState(generator:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
	public function __bool__():Dynamic;
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
		Returns a string showing the type of the dataset and its inputs.
		
		This string is intended only for debugging purposes, and may change without
		warning.
	**/
	public function __debug_string__():Dynamic;
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
		Creates a DatasetV2 object.
		
		This is a difference between DatasetV1 and DatasetV2. DatasetV1 does not
		take anything in its constructor whereas in the DatasetV2, we expect
		subclasses to create a variant_tensor and pass it in to the super() call.
		
		Args:
		  variant_tensor: A DT_VARIANT tensor that represents the dataset.
	**/
	@:native("__init__")
	public function ___init__(dataset_variant:Dynamic, structure:Dynamic):Dynamic;
	/**
		Creates a DatasetV2 object.
		
		This is a difference between DatasetV1 and DatasetV2. DatasetV1 does not
		take anything in its constructor whereas in the DatasetV2, we expect
		subclasses to create a variant_tensor and pass it in to the super() call.
		
		Args:
		  variant_tensor: A DT_VARIANT tensor that represents the dataset.
	**/
	public function new(dataset_variant:Dynamic, structure:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an iterator for elements of this dataset.
		
		The returned iterator implements the Python Iterator protocol.
		
		Returns:
		  An `tf.data.Iterator` for the elements of this dataset.
		
		Raises:
		  RuntimeError: If not inside of tf.function and not executing eagerly.
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Returns the length of the dataset if it is known and finite.
		
		This method requires that you are running in eager mode, and that the
		length of the dataset is known and non-infinite. When the length may be
		unknown or infinite, or if you are running in graph mode, use
		`tf.data.Dataset.cardinality` instead.
		
		Returns:
		  An integer representing the length of the dataset.
		
		Raises:
		  RuntimeError: If the dataset length is unknown or infinite, or if eager
		    execution is not enabled.
	**/
	public function __len__():Dynamic;
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
	public function __nonzero__():Dynamic;
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
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
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
	public function _apply_debug_options():Dynamic;
	/**
		Produces serialized graph representation of the dataset. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(allow_stateful)`. They will be removed in a future version.
		Instructions for updating:
		Use external_state_policy instead
		
		Args:
		  allow_stateful: If true, we allow stateful ops to be present in the graph
		    def. In that case, the state in these ops would be thrown away.
		  strip_device_assignment: If true, non-local (i.e. job and task) device
		    assignment is stripped from ops in the serialized graph.
		  external_state_policy: The ExternalStatePolicy enum that determines how we
		    handle input pipelines that depend on external state. By default, its
		    set to WARN.
		
		Returns:
		  A scalar `tf.Tensor` of `tf.string` type, representing this dataset as a
		  serialized graph.
	**/
	public function _as_serialized_graph(?allow_stateful:Dynamic, ?strip_device_assignment:Dynamic, ?external_state_policy:Dynamic):Dynamic;
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
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
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
		Returns a list `tf.TensorShapes`s for the element tensor representation.
		
		Returns:
		  A list `tf.TensorShapes`s for the element tensor representation.
	**/
	public var _flat_shapes : Dynamic;
	/**
		Helper for setting `output_shapes` and `output_types` attrs of an op.
		
		Most dataset op constructors expect `output_shapes` and `output_types`
		arguments that represent the flattened structure of an element. This helper
		function generates these attrs as a keyword argument dictionary, allowing
		`Dataset._variant_tensor` implementations to pass `**self._flat_structure`
		to the op constructor.
		
		Returns:
		  A dictionary of keyword arguments that can be passed to a dataset op
		  constructor.
	**/
	public var _flat_structure : Dynamic;
	/**
		Returns a list `tf.DType`s for the element tensor representation.
		
		Returns:
		  A list `tf.DType`s for the element tensor representation.
	**/
	public var _flat_types : Dynamic;
	/**
		Returns a list of functions associated with this dataset.
		
		Returns:
		  A list of `StructuredFunctionWrapper` objects.
	**/
	public function _functions():Dynamic;
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
	public var _graph : Dynamic;
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
		Returns a list of the input datasets of the dataset.
	**/
	public function _inputs():Dynamic;
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
		Finds and tracks nodes in `graph_def` that refer to asset files.
		
		Args:
		  graph_def: Serialized graph representation of this dataset.
		
		Returns:
		  A dictionary mapping the node name of an asset constant to a tracked
		  `tracking.Asset` object.
	**/
	public function _maybe_track_assets(graph_def:Dynamic):Dynamic;
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
	/**
		Returns the options tensor for this dataset.
	**/
	public function _options():Dynamic;
	/**
		Converts options tensor to tf.data.Options object.
	**/
	static public function _options_tensor_to_options(serialized_options:Dynamic):Dynamic;
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
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Traces a function which outputs a variant `tf.Tensor` for this dataset.
		
		Note that creating this function involves evaluating an op, and is currently
		only supported when executing eagerly.
		
		Returns:
		  A zero-argument `ConcreteFunction` which outputs a variant `tf.Tensor`.
	**/
	public function _trace_variant_creation():Dynamic;
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
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	public var _unconditional_checkpoint_dependencies : Dynamic;
	public var _unconditional_dependency_names : Dynamic;
	public var _update_uid : Dynamic;
	public var _variant_tensor : Dynamic;
	/**
		Applies a transformation function to this dataset.
		
		`apply` enables chaining of custom `Dataset` transformations, which are
		represented as functions that take one `Dataset` argument and return a
		transformed `Dataset`.
		
		>>> dataset = tf.data.Dataset.range(100)
		>>> def dataset_fn(ds):
		...   return ds.filter(lambda x: x < 5)
		>>> dataset = dataset.apply(dataset_fn)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		
		Args:
		  transformation_func: A function that takes one `Dataset` argument and
		    returns a `Dataset`.
		
		Returns:
		  Dataset: The `Dataset` returned by applying `transformation_func` to this
		      dataset.
	**/
	public function apply(transformation_func:Dynamic):Dynamic;
	/**
		Returns an iterator which converts all elements of the dataset to numpy.
		
		Use `as_numpy_iterator` to inspect the content of your dataset. To see
		element shapes and types, print dataset elements directly instead of using
		`as_numpy_iterator`.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> for element in dataset:
		...   print(element)
		tf.Tensor(1, shape=(), dtype=int32)
		tf.Tensor(2, shape=(), dtype=int32)
		tf.Tensor(3, shape=(), dtype=int32)
		
		This method requires that you are running in eager mode and the dataset's
		element_spec contains only `TensorSpec` components.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> for element in dataset.as_numpy_iterator():
		...   print(element)
		1
		2
		3
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> print(list(dataset.as_numpy_iterator()))
		[1, 2, 3]
		
		`as_numpy_iterator()` will preserve the nested structure of dataset
		elements.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices({'a': ([1, 2], [3, 4]),
		...                                               'b': [5, 6]})
		>>> list(dataset.as_numpy_iterator()) == [{'a': (1, 3), 'b': 5},
		...                                       {'a': (2, 4), 'b': 6}]
		True
		
		Returns:
		  An iterable over the elements of the dataset, with their tensors converted
		  to numpy arrays.
		
		Raises:
		  TypeError: if an element contains a non-`Tensor` value.
		  RuntimeError: if eager execution is not enabled.
	**/
	public function as_numpy_iterator():Dynamic;
	/**
		Combines consecutive elements of this dataset into batches.
		
		>>> dataset = tf.data.Dataset.range(8)
		>>> dataset = dataset.batch(3)
		>>> list(dataset.as_numpy_iterator())
		[array([0, 1, 2]), array([3, 4, 5]), array([6, 7])]
		
		>>> dataset = tf.data.Dataset.range(8)
		>>> dataset = dataset.batch(3, drop_remainder=True)
		>>> list(dataset.as_numpy_iterator())
		[array([0, 1, 2]), array([3, 4, 5])]
		
		The components of the resulting element will have an additional outer
		dimension, which will be `batch_size` (or `N % batch_size` for the last
		element if `batch_size` does not divide the number of input elements `N`
		evenly and `drop_remainder` is `False`). If your program depends on the
		batches having the same outer dimension, you should set the `drop_remainder`
		argument to `True` to prevent the smaller batch from being produced.
		
		Note: If your program requires data to have a statically known shape (e.g.,
		when using XLA), you should use `drop_remainder=True`. Without
		`drop_remainder=True` the shape of the output dataset will have an unknown
		leading dimension due to the possibility of a smaller final batch.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		  num_parallel_calls: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the number of batches to compute asynchronously in
		    parallel.
		    If not specified, batches will be computed sequentially. If the value
		    `tf.data.AUTOTUNE` is used, then the number of parallel
		    calls is set dynamically based on available resources.
		  deterministic: (Optional.) When `num_parallel_calls` is specified, if this
		    boolean is specified (`True` or `False`), it controls the order in which
		    the transformation produces elements. If set to `False`, the
		    transformation is allowed to yield elements out of order to trade
		    determinism for performance. If not specified, the
		    `tf.data.Options.deterministic` option (`True` by default) controls the
		    behavior.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function batch(batch_size:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic, ?deterministic:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A transformation that buckets elements in a `Dataset` by length.
		
		Elements of the `Dataset` are grouped together by length and then are padded
		and batched.
		
		This is useful for sequence tasks in which the elements have variable
		length. Grouping together elements that have similar lengths reduces the
		total fraction of padding in a batch which increases training step
		efficiency.
		
		Below is an example to bucketize the input data to the 3 buckets
		"[0, 3), [3, 5), [5, inf)" based on sequence length, with batch size 2.
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: elements, tf.int64, output_shapes=[None])
		>>> dataset = dataset.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[3, 5],
		...         bucket_batch_sizes=[2, 2, 2])
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[1 2 3 4]
		[5 6 7 0]]
		[[ 7  8  9 10 11  0]
		[13 14 15 16 19 20]]
		[[ 0  0]
		[21 22]]
		
		Args:
		  element_length_func: function from element in `Dataset` to `tf.int32`,
		    determines the length of the element, which will determine the bucket it
		    goes into.
		  bucket_boundaries: `list<int>`, upper length boundaries of the buckets.
		  bucket_batch_sizes: `list<int>`, batch size per bucket. Length should be
		    `len(bucket_boundaries) + 1`.
		  padded_shapes: Nested structure of `tf.TensorShape` to pass to
		    `tf.data.Dataset.padded_batch`. If not provided, will use
		    `dataset.output_shapes`, which will result in variable length dimensions
		    being padded out to the maximum length in each batch.
		  padding_values: Values to pad with, passed to
		    `tf.data.Dataset.padded_batch`. Defaults to padding with 0.
		  pad_to_bucket_boundary: bool, if `False`, will pad dimensions with unknown
		    size to maximum length in batch. If `True`, will pad dimensions with
		    unknown size to bucket boundary minus 1 (i.e., the maximum length in
		    each bucket), and caller must ensure that the source `Dataset` does not
		    contain any elements with length longer than `max(bucket_boundaries)`.
		  no_padding: `bool`, indicates whether to pad the batch features (features
		    need to be either of type `tf.sparse.SparseTensor` or of same shape).
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
		
		Raises:
		  ValueError: if `len(bucket_batch_sizes) != len(bucket_boundaries) + 1`.
	**/
	public function bucket_by_sequence_length(element_length_func:Dynamic, bucket_boundaries:Dynamic, bucket_batch_sizes:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?pad_to_bucket_boundary:Dynamic, ?no_padding:Dynamic, ?drop_remainder:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Caches the elements in this dataset.
		
		The first time the dataset is iterated over, its elements will be cached
		either in the specified file or in memory. Subsequent iterations will
		use the cached data.
		
		Note: For the cache to be finalized, the input dataset must be iterated
		through in its entirety. Otherwise, subsequent iterations will not use
		cached data.
		
		>>> dataset = tf.data.Dataset.range(5)
		>>> dataset = dataset.map(lambda x: x**2)
		>>> dataset = dataset.cache()
		>>> # The first time reading through the data will generate the data using
		>>> # `range` and `map`.
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 4, 9, 16]
		>>> # Subsequent iterations read from the cache.
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 4, 9, 16]
		
		When caching to a file, the cached data will persist across runs. Even the
		first iteration through the data will read from the cache file. Changing
		the input pipeline before the call to `.cache()` will have no effect until
		the cache file is removed or the filename is changed.
		
		```python
		dataset = tf.data.Dataset.range(5)
		dataset = dataset.cache("/path/to/file")
		list(dataset.as_numpy_iterator())
		# [0, 1, 2, 3, 4]
		dataset = tf.data.Dataset.range(10)
		dataset = dataset.cache("/path/to/file")  # Same file!
		list(dataset.as_numpy_iterator())
		# [0, 1, 2, 3, 4]
		```
		
		Note: `cache` will produce exactly the same elements during each iteration
		through the dataset. If you wish to randomize the iteration order, make sure
		to call `shuffle` *after* calling `cache`.
		
		Args:
		  filename: A `tf.string` scalar `tf.Tensor`, representing the name of a
		    directory on the filesystem to use for caching elements in this Dataset.
		    If a filename is not provided, the dataset will be cached in memory.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function cache(?filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the cardinality of the dataset, if known.
		
		`cardinality` may return `tf.data.INFINITE_CARDINALITY` if the dataset
		contains an infinite number of elements or `tf.data.UNKNOWN_CARDINALITY` if
		the analysis fails to determine the number of elements in the dataset
		(e.g. when the dataset source is a file).
		
		>>> dataset = tf.data.Dataset.range(42)
		>>> print(dataset.cardinality().numpy())
		42
		>>> dataset = dataset.repeat()
		>>> cardinality = dataset.cardinality()
		>>> print((cardinality == tf.data.INFINITE_CARDINALITY).numpy())
		True
		>>> dataset = dataset.filter(lambda x: True)
		>>> cardinality = dataset.cardinality()
		>>> print((cardinality == tf.data.UNKNOWN_CARDINALITY).numpy())
		True
		
		Returns:
		  A scalar `tf.int64` `Tensor` representing the cardinality of the dataset.
		  If the cardinality is infinite or unknown, `cardinality` returns the
		  named constants `tf.data.INFINITE_CARDINALITY` and
		  `tf.data.UNKNOWN_CARDINALITY` respectively.
	**/
	public function cardinality():Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.data.Dataset.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between
		    `0` and `len(datasets) - 1`.
		  stop_on_empty_dataset: If `True`, selection stops if it encounters an
		    empty dataset. If `False`, it skips empty datasets. It is recommended to
		    set it to `True`. Otherwise, the selected elements start off as the user
		    intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct.
		    Defaults to `True`.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the
		  values of `choice_dataset`.
		
		Raises:
		  TypeError: If `datasets` or `choice_dataset` has the wrong type.
		  ValueError: If `datasets` is empty.
	**/
	static public function choose_from_datasets(datasets:Dynamic, choice_dataset:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		Creates a `Dataset` by concatenating the given dataset with this dataset.
		
		>>> a = tf.data.Dataset.range(1, 4)  # ==> [ 1, 2, 3 ]
		>>> b = tf.data.Dataset.range(4, 8)  # ==> [ 4, 5, 6, 7 ]
		>>> ds = a.concatenate(b)
		>>> list(ds.as_numpy_iterator())
		[1, 2, 3, 4, 5, 6, 7]
		>>> # The input dataset and dataset to be concatenated should have
		>>> # compatible element specs.
		>>> c = tf.data.Dataset.zip((a, b))
		>>> a.concatenate(c)
		Traceback (most recent call last):
		TypeError: Two datasets to concatenate have different types
		<dtype: 'int64'> and (tf.int64, tf.int64)
		>>> d = tf.data.Dataset.from_tensor_slices(["a", "b", "c"])
		>>> a.concatenate(d)
		Traceback (most recent call last):
		TypeError: Two datasets to concatenate have different types
		<dtype: 'int64'> and <dtype: 'string'>
		
		Args:
		  dataset: `Dataset` to be concatenated.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function concatenate(dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The type specification of an element of this dataset.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int32, name=None)
		
		For more information,
		read [this guide](https://www.tensorflow.org/guide/data#dataset_structure).
		
		Returns:
		  A (nested) structure of `tf.TypeSpec` objects matching the structure of an
		  element of this dataset and specifying the type of individual components.
	**/
	public var element_spec : Dynamic;
	/**
		Enumerates the elements of this dataset.
		
		It is similar to python's `enumerate`.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset = dataset.enumerate(start=5)
		>>> for element in dataset.as_numpy_iterator():
		...   print(element)
		(5, 1)
		(6, 2)
		(7, 3)
		
		>>> # The (nested) structure of the input dataset determines the
		>>> # structure of elements in the resulting dataset.
		>>> dataset = tf.data.Dataset.from_tensor_slices([(7, 8), (9, 10)])
		>>> dataset = dataset.enumerate()
		>>> for element in dataset.as_numpy_iterator():
		...   print(element)
		(0, array([7, 8], dtype=int32))
		(1, array([ 9, 10], dtype=int32))
		
		Args:
		  start: A `tf.int64` scalar `tf.Tensor`, representing the start value for
		    enumeration.
		  name: Optional. A name for the tf.data operations used by `enumerate`.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function enumerate(?start:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Filters this dataset according to `predicate`.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset = dataset.filter(lambda x: x < 3)
		>>> list(dataset.as_numpy_iterator())
		[1, 2]
		>>> # `tf.math.equal(x, y)` is required for equality comparison
		>>> def filter_fn(x):
		...   return tf.math.equal(x, 1)
		>>> dataset = dataset.filter(filter_fn)
		>>> list(dataset.as_numpy_iterator())
		[1]
		
		Args:
		  predicate: A function mapping a dataset element to a boolean.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: The `Dataset` containing the elements of this dataset for which
		      `predicate` is `True`.
	**/
	public function filter(predicate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Maps `map_func` across this dataset and flattens the result.
		
		The type signature is:
		
		```
		def flat_map(
		  self: Dataset[T],
		  map_func: Callable[[T], Dataset[S]]
		) -> Dataset[S]
		```
		
		Use `flat_map` if you want to make sure that the order of your dataset
		stays the same. For example, to flatten a dataset of batches into a
		dataset of their elements:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices(
		...     [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> dataset = dataset.flat_map(
		...     lambda x: tf.data.Dataset.from_tensor_slices(x))
		>>> list(dataset.as_numpy_iterator())
		[1, 2, 3, 4, 5, 6, 7, 8, 9]
		
		`tf.data.Dataset.interleave()` is a generalization of `flat_map`, since
		`flat_map` produces the same output as
		`tf.data.Dataset.interleave(cycle_length=1)`
		
		Args:
		  map_func: A function mapping a dataset element to a dataset.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function flat_map(map_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` whose elements are generated by `generator`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(output_shapes, output_types)`. They will be removed in a future version.
		Instructions for updating:
		Use output_signature instead
		
		The `generator` argument must be a callable object that returns
		an object that supports the `iter()` protocol (e.g. a generator function).
		
		The elements generated by `generator` must be compatible with either the
		given `output_signature` argument or with the given `output_types` and
		(optionally) `output_shapes` arguments, whichever was specified.
		
		The recommended way to call `from_generator` is to use the
		`output_signature` argument. In this case the output will be assumed to
		consist of objects with the classes, shapes and types defined by
		`tf.TypeSpec` objects from `output_signature` argument:
		
		>>> def gen():
		...   ragged_tensor = tf.ragged.constant([[1, 2], [3]])
		...   yield 42, ragged_tensor
		>>>
		>>> dataset = tf.data.Dataset.from_generator(
		...      gen,
		...      output_signature=(
		...          tf.TensorSpec(shape=(), dtype=tf.int32),
		...          tf.RaggedTensorSpec(shape=(2, None), dtype=tf.int32)))
		>>>
		>>> list(dataset.take(1))
		[(<tf.Tensor: shape=(), dtype=int32, numpy=42>,
		<tf.RaggedTensor [[1, 2], [3]]>)]
		
		There is also a deprecated way to call `from_generator` by either with
		`output_types` argument alone or together with `output_shapes` argument.
		In this case the output of the function will be assumed to consist of
		`tf.Tensor` objects with the types defined by `output_types` and with the
		shapes which are either unknown or defined by `output_shapes`.
		
		Note: The current implementation of `Dataset.from_generator()` uses
		`tf.numpy_function` and inherits the same constraints. In particular, it
		requires the dataset and iterator related operations to be placed
		on a device in the same process as the Python program that called
		`Dataset.from_generator()`. The body of `generator` will not be
		serialized in a `GraphDef`, and you should not use this method if you
		need to serialize your model and restore it in a different environment.
		
		Note: If `generator` depends on mutable global variables or other external
		state, be aware that the runtime may invoke `generator` multiple times
		(in order to support repeating the `Dataset`) and at any time
		between the call to `Dataset.from_generator()` and the production of the
		first element from the generator. Mutating global variables or external
		state can cause undefined behavior, and we recommend that you explicitly
		cache any external state in `generator` before calling
		`Dataset.from_generator()`.
		
		Note: While the `output_signature` parameter makes it possible to yield
		`Dataset` elements, the scope of `Dataset.from_generator()` should be
		limited to logic that cannot be expressed through tf.data operations. Using
		tf.data operations within the generator function is an anti-pattern and may
		result in incremental memory growth.
		
		Args:
		  generator: A callable object that returns an object that supports the
		    `iter()` protocol. If `args` is not specified, `generator` must take no
		    arguments; otherwise it must take as many arguments as there are values
		    in `args`.
		  output_types: (Optional.) A (nested) structure of `tf.DType` objects
		    corresponding to each component of an element yielded by `generator`.
		  output_shapes: (Optional.) A (nested) structure of `tf.TensorShape`
		    objects corresponding to each component of an element yielded by
		    `generator`.
		  args: (Optional.) A tuple of `tf.Tensor` objects that will be evaluated
		    and passed to `generator` as NumPy-array arguments.
		  output_signature: (Optional.) A (nested) structure of `tf.TypeSpec`
		    objects corresponding to each component of an element yielded by
		    `generator`.
		  name: (Optional.) A name for the tf.data operations used by
		    `from_generator`.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_generator(generator:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?args:Dynamic, ?output_signature:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` whose elements are slices of the given tensors.
		
		The given tensors are sliced along their first dimension. This operation
		preserves the structure of the input tensors, removing the first dimension
		of each tensor and using it as the dataset dimension. All input tensors
		must have the same size in their first dimensions.
		
		>>> # Slicing a 1D tensor produces scalar tensor elements.
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> list(dataset.as_numpy_iterator())
		[1, 2, 3]
		
		>>> # Slicing a 2D tensor produces 1D tensor elements.
		>>> dataset = tf.data.Dataset.from_tensor_slices([[1, 2], [3, 4]])
		>>> list(dataset.as_numpy_iterator())
		[array([1, 2], dtype=int32), array([3, 4], dtype=int32)]
		
		>>> # Slicing a tuple of 1D tensors produces tuple elements containing
		>>> # scalar tensors.
		>>> dataset = tf.data.Dataset.from_tensor_slices(([1, 2], [3, 4], [5, 6]))
		>>> list(dataset.as_numpy_iterator())
		[(1, 3, 5), (2, 4, 6)]
		
		>>> # Dictionary structure is also preserved.
		>>> dataset = tf.data.Dataset.from_tensor_slices({"a": [1, 2], "b": [3, 4]})
		>>> list(dataset.as_numpy_iterator()) == [{'a': 1, 'b': 3},
		...                                       {'a': 2, 'b': 4}]
		True
		
		>>> # Two tensors can be combined into one Dataset object.
		>>> features = tf.constant([[1, 3], [2, 1], [3, 3]]) # ==> 3x2 tensor
		>>> labels = tf.constant(['A', 'B', 'A']) # ==> 3x1 tensor
		>>> dataset = Dataset.from_tensor_slices((features, labels))
		>>> # Both the features and the labels tensors can be converted
		>>> # to a Dataset object separately and combined after.
		>>> features_dataset = Dataset.from_tensor_slices(features)
		>>> labels_dataset = Dataset.from_tensor_slices(labels)
		>>> dataset = Dataset.zip((features_dataset, labels_dataset))
		>>> # A batched feature and label set can be converted to a Dataset
		>>> # in similar fashion.
		>>> batched_features = tf.constant([[[1, 3], [2, 3]],
		...                                 [[2, 1], [1, 2]],
		...                                 [[3, 3], [3, 2]]], shape=(3, 2, 2))
		>>> batched_labels = tf.constant([['A', 'A'],
		...                               ['B', 'B'],
		...                               ['A', 'B']], shape=(3, 2, 1))
		>>> dataset = Dataset.from_tensor_slices((batched_features, batched_labels))
		>>> for element in dataset.as_numpy_iterator():
		...   print(element)
		(array([[1, 3],
		       [2, 3]], dtype=int32), array([[b'A'],
		       [b'A']], dtype=object))
		(array([[2, 1],
		       [1, 2]], dtype=int32), array([[b'B'],
		       [b'B']], dtype=object))
		(array([[3, 3],
		       [3, 2]], dtype=int32), array([[b'A'],
		       [b'B']], dtype=object))
		
		Note that if `tensors` contains a NumPy array, and eager execution is not
		enabled, the values will be embedded in the graph as one or more
		`tf.constant` operations. For large datasets (> 1 GB), this can waste
		memory and run into byte limits of graph serialization. If `tensors`
		contains one or more large NumPy arrays, consider the alternative described
		in [this guide](
		https://tensorflow.org/guide/data#consuming_numpy_arrays).
		
		Args:
		  tensors: A dataset element, whose components have the same first
		    dimension. Supported values are documented
		    [here](https://www.tensorflow.org/guide/data#dataset_structure).
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_tensor_slices(tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` with a single element, comprising the given tensors.
		
		`from_tensors` produces a dataset containing only a single element. To slice
		the input tensor into multiple elements, use `from_tensor_slices` instead.
		
		>>> dataset = tf.data.Dataset.from_tensors([1, 2, 3])
		>>> list(dataset.as_numpy_iterator())
		[array([1, 2, 3], dtype=int32)]
		>>> dataset = tf.data.Dataset.from_tensors(([1, 2, 3], 'A'))
		>>> list(dataset.as_numpy_iterator())
		[(array([1, 2, 3], dtype=int32), b'A')]
		
		>>> # You can use `from_tensors` to produce a dataset which repeats
		>>> # the same example many times.
		>>> example = tf.constant([1,2,3])
		>>> dataset = tf.data.Dataset.from_tensors(example).repeat(2)
		>>> list(dataset.as_numpy_iterator())
		[array([1, 2, 3], dtype=int32), array([1, 2, 3], dtype=int32)]
		
		Note that if `tensors` contains a NumPy array, and eager execution is not
		enabled, the values will be embedded in the graph as one or more
		`tf.constant` operations. For large datasets (> 1 GB), this can waste
		memory and run into byte limits of graph serialization. If `tensors`
		contains one or more large NumPy arrays, consider the alternative described
		in [this
		guide](https://tensorflow.org/guide/data#consuming_numpy_arrays).
		
		Args:
		  tensors: A dataset "element". Supported values are documented
		    [here](https://www.tensorflow.org/guide/data#dataset_structure).
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_tensors(tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the single element of the `dataset`.
		
		The function enables you to use a `tf.data.Dataset` in a stateless
		"tensor-in tensor-out" expression, without creating an iterator.
		This facilitates the ease of data transformation on tensors using the
		optimized `tf.data.Dataset` abstraction on top of them.
		
		For example, lets consider a `preprocessing_fn` which would take as an
		input the raw features and returns the processed feature along with
		it's label.
		
		```python
		def preprocessing_fn(raw_feature):
		  # ... the raw_feature is preprocessed as per the use-case
		  return feature
		
		raw_features = ...  # input batch of BATCH_SIZE elements.
		dataset = (tf.data.Dataset.from_tensor_slices(raw_features)
		          .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		          .batch(BATCH_SIZE))
		
		processed_features = dataset.get_single_element()
		```
		
		In the above example, the `raw_features` tensor of length=BATCH_SIZE
		was converted to a `tf.data.Dataset`. Next, each of the `raw_feature` was
		mapped using the `preprocessing_fn` and the processed features were
		grouped into a single batch. The final `dataset` contains only one element
		which is a batch of all the processed features.
		
		NOTE: The `dataset` should contain only one element.
		
		Now, instead of creating an iterator for the `dataset` and retrieving the
		batch of features, the `tf.data.get_single_element()` function is used
		to skip the iterator creation process and directly output the batch of
		features.
		
		This can be particularly useful when your tensor transformations are
		expressed as `tf.data.Dataset` operations, and you want to use those
		transformations while serving your model.
		
		#### Keras
		
		```python
		
		model = ... # A pre-built or custom model
		
		class PreprocessingModel(tf.keras.Model):
		  def __init__(self, model):
		    super().__init__(self)
		    self.model = model
		
		  @tf.function(input_signature=[...])
		  def serving_fn(self, data):
		    ds = tf.data.Dataset.from_tensor_slices(data)
		    ds = ds.map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		    ds = ds.batch(batch_size=BATCH_SIZE)
		    return tf.argmax(self.model(ds.get_single_element()), axis=-1)
		
		preprocessing_model = PreprocessingModel(model)
		your_exported_model_dir = ... # save the model to this path.
		tf.saved_model.save(preprocessing_model, your_exported_model_dir,
		              signatures={'serving_default': preprocessing_model.serving_fn}
		              )
		```
		
		#### Estimator
		
		In the case of estimators, you need to generally define a `serving_input_fn`
		which would require the features to be processed by the model while
		inferencing.
		
		```python
		def serving_input_fn():
		
		  raw_feature_spec = ... # Spec for the raw_features
		  input_fn = tf.estimator.export.build_parsing_serving_input_receiver_fn(
		      raw_feature_spec, default_batch_size=None)
		  )
		  serving_input_receiver = input_fn()
		  raw_features = serving_input_receiver.features
		
		  def preprocessing_fn(raw_feature):
		    # ... the raw_feature is preprocessed as per the use-case
		    return feature
		
		  dataset = (tf.data.Dataset.from_tensor_slices(raw_features)
		            .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		            .batch(BATCH_SIZE))
		
		  processed_features = dataset.get_single_element()
		
		  # Please note that the value of `BATCH_SIZE` should be equal to
		  # the size of the leading dimension of `raw_features`. This ensures
		  # that `dataset` has only element, which is a pre-requisite for
		  # using `dataset.get_single_element()`.
		
		  return tf.estimator.export.ServingInputReceiver(
		      processed_features, serving_input_receiver.receiver_tensors)
		
		estimator = ... # A pre-built or custom estimator
		estimator.export_saved_model(your_exported_model_dir, serving_input_fn)
		```
		
		Args:
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the single
		  element of `dataset`.
		
		Raises:
		  InvalidArgumentError: (at runtime) if `dataset` does not contain exactly
		    one element.
	**/
	public function get_single_element(?name:Dynamic):Dynamic;
	/**
		Groups windows of elements by key and reduces them.
		
		This transformation maps each consecutive element in a dataset to a key
		using `key_func` and groups the elements by key. It then applies
		`reduce_func` to at most `window_size_func(key)` elements matching the same
		key. All except the final window for each key will contain
		`window_size_func(key)` elements; the final window may be smaller.
		
		You may provide either a constant `window_size` or a window size determined
		by the key through `window_size_func`.
		
		>>> dataset = tf.data.Dataset.range(10)
		>>> window_size = 5
		>>> key_func = lambda x: x%2
		>>> reduce_func = lambda key, dataset: dataset.batch(window_size)
		>>> dataset = dataset.group_by_window(
		...           key_func=key_func,
		...           reduce_func=reduce_func,
		...           window_size=window_size)
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[0 2 4 6 8]
		[1 3 5 7 9]
		
		Args:
		  key_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    scalar `tf.int64` tensor.
		  reduce_func: A function mapping a key and a dataset of up to `window_size`
		    consecutive elements matching that key to another dataset.
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements matching the same key to combine in a single batch,
		    which will be passed to `reduce_func`. Mutually exclusive with
		    `window_size_func`.
		  window_size_func: A function mapping a key to a `tf.int64` scalar
		    `tf.Tensor`, representing the number of consecutive elements matching
		    the same key to combine in a single batch, which will be passed to
		    `reduce_func`. Mutually exclusive with `window_size`.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
		
		Raises:
		  ValueError: if neither or both of {`window_size`, `window_size_func`} are
		    passed.
	**/
	public function group_by_window(key_func:Dynamic, reduce_func:Dynamic, ?window_size:Dynamic, ?window_size_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Maps `map_func` across this dataset, and interleaves the results.
		
		The type signature is:
		
		```
		def interleave(
		  self: Dataset[T],
		  map_func: Callable[[T], Dataset[S]]
		) -> Dataset[S]
		```
		
		For example, you can use `Dataset.interleave()` to process many input files
		concurrently:
		
		>>> # Preprocess 4 files concurrently, and interleave blocks of 16 records
		>>> # from each file.
		>>> filenames = ["/var/data/file1.txt", "/var/data/file2.txt",
		...              "/var/data/file3.txt", "/var/data/file4.txt"]
		>>> dataset = tf.data.Dataset.from_tensor_slices(filenames)
		>>> def parse_fn(filename):
		...   return tf.data.Dataset.range(10)
		>>> dataset = dataset.interleave(lambda x:
		...     tf.data.TextLineDataset(x).map(parse_fn, num_parallel_calls=1),
		...     cycle_length=4, block_length=16)
		
		The `cycle_length` and `block_length` arguments control the order in which
		elements are produced. `cycle_length` controls the number of input elements
		that are processed concurrently. If you set `cycle_length` to 1, this
		transformation will handle one input element at a time, and will produce
		identical results to `tf.data.Dataset.flat_map`. In general,
		this transformation will apply `map_func` to `cycle_length` input elements,
		open iterators on the returned `Dataset` objects, and cycle through them
		producing `block_length` consecutive elements from each iterator, and
		consuming the next input element each time it reaches the end of an
		iterator.
		
		For example:
		
		>>> dataset = Dataset.range(1, 6)  # ==> [ 1, 2, 3, 4, 5 ]
		>>> # NOTE: New lines indicate "block" boundaries.
		>>> dataset = dataset.interleave(
		...     lambda x: Dataset.from_tensors(x).repeat(6),
		...     cycle_length=2, block_length=4)
		>>> list(dataset.as_numpy_iterator())
		[1, 1, 1, 1,
		 2, 2, 2, 2,
		 1, 1,
		 2, 2,
		 3, 3, 3, 3,
		 4, 4, 4, 4,
		 3, 3,
		 4, 4,
		 5, 5, 5, 5,
		 5, 5]
		
		Note: The order of elements yielded by this transformation is
		deterministic, as long as `map_func` is a pure function and
		`deterministic=True`. If `map_func` contains any stateful operations, the
		order in which that state is accessed is undefined.
		
		Performance can often be improved by setting `num_parallel_calls` so that
		`interleave` will use multiple threads to fetch elements. If determinism
		isn't required, it can also improve performance to set
		`deterministic=False`.
		
		>>> filenames = ["/var/data/file1.txt", "/var/data/file2.txt",
		...              "/var/data/file3.txt", "/var/data/file4.txt"]
		>>> dataset = tf.data.Dataset.from_tensor_slices(filenames)
		>>> dataset = dataset.interleave(lambda x: tf.data.TFRecordDataset(x),
		...     cycle_length=4, num_parallel_calls=tf.data.AUTOTUNE,
		...     deterministic=False)
		
		Args:
		  map_func: A function that takes a dataset element and returns a
		    `tf.data.Dataset`.
		  cycle_length: (Optional.) The number of input elements that will be
		    processed concurrently. If not set, the tf.data runtime decides what it
		    should be based on available CPU. If `num_parallel_calls` is set to
		    `tf.data.AUTOTUNE`, the `cycle_length` argument identifies
		    the maximum degree of parallelism.
		  block_length: (Optional.) The number of consecutive elements to produce
		    from each input element before cycling to another input element. If not
		    set, defaults to 1.
		  num_parallel_calls: (Optional.) If specified, the implementation creates a
		    threadpool, which is used to fetch inputs from cycle elements
		    asynchronously and in parallel. The default behavior is to fetch inputs
		    from cycle elements synchronously with no parallelism. If the value
		    `tf.data.AUTOTUNE` is used, then the number of parallel
		    calls is set dynamically based on available CPU.
		  deterministic: (Optional.) When `num_parallel_calls` is specified, if this
		    boolean is specified (`True` or `False`), it controls the order in which
		    the transformation produces elements. If set to `False`, the
		    transformation is allowed to yield elements out of order to trade
		    determinism for performance. If not specified, the
		    `tf.data.Options.deterministic` option (`True` by default) controls the
		    behavior.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function interleave(map_func:Dynamic, ?cycle_length:Dynamic, ?block_length:Dynamic, ?num_parallel_calls:Dynamic, ?deterministic:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A dataset of all files matching one or more glob patterns.
		
		The `file_pattern` argument should be a small number of glob patterns.
		If your filenames have already been globbed, use
		`Dataset.from_tensor_slices(filenames)` instead, as re-globbing every
		filename with `list_files` may result in poor performance with remote
		storage systems.
		
		Note: The default behavior of this method is to return filenames in
		a non-deterministic random shuffled order. Pass a `seed` or `shuffle=False`
		to get results in a deterministic order.
		
		Example:
		  If we had the following files on our filesystem:
		
		    - /path/to/dir/a.txt
		    - /path/to/dir/b.py
		    - /path/to/dir/c.py
		
		  If we pass "/path/to/dir/*.py" as the directory, the dataset
		  would produce:
		
		    - /path/to/dir/b.py
		    - /path/to/dir/c.py
		
		Args:
		  file_pattern: A string, a list of strings, or a `tf.Tensor` of string type
		    (scalar or vector), representing the filename glob (i.e. shell wildcard)
		    pattern(s) that will be matched.
		  shuffle: (Optional.) If `True`, the file names will be shuffled randomly.
		    Defaults to `True`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  name: Optional. A name for the tf.data operations used by `list_files`.
		
		Returns:
		 Dataset: A `Dataset` of strings corresponding to file names.
	**/
	static public function list_files(file_pattern:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Maps `map_func` across the elements of this dataset.
		
		This transformation applies `map_func` to each element of this dataset, and
		returns a new dataset containing the transformed elements, in the same
		order as they appeared in the input. `map_func` can be used to change both
		the values and the structure of a dataset's elements. Supported structure
		constructs are documented
		[here](https://www.tensorflow.org/guide/data#dataset_structure).
		
		For example, `map` can be used for adding 1 to each element, or projecting a
		subset of element components.
		
		>>> dataset = Dataset.range(1, 6)  # ==> [ 1, 2, 3, 4, 5 ]
		>>> dataset = dataset.map(lambda x: x + 1)
		>>> list(dataset.as_numpy_iterator())
		[2, 3, 4, 5, 6]
		
		The input signature of `map_func` is determined by the structure of each
		element in this dataset.
		
		>>> dataset = Dataset.range(5)
		>>> # `map_func` takes a single argument of type `tf.Tensor` with the same
		>>> # shape and dtype.
		>>> result = dataset.map(lambda x: x + 1)
		
		>>> # Each element is a tuple containing two `tf.Tensor` objects.
		>>> elements = [(1, "foo"), (2, "bar"), (3, "baz")]
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: elements, (tf.int32, tf.string))
		>>> # `map_func` takes two arguments of type `tf.Tensor`. This function
		>>> # projects out just the first component.
		>>> result = dataset.map(lambda x_int, y_str: x_int)
		>>> list(result.as_numpy_iterator())
		[1, 2, 3]
		
		>>> # Each element is a dictionary mapping strings to `tf.Tensor` objects.
		>>> elements =  ([{"a": 1, "b": "foo"},
		...               {"a": 2, "b": "bar"},
		...               {"a": 3, "b": "baz"}])
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: elements, {"a": tf.int32, "b": tf.string})
		>>> # `map_func` takes a single argument of type `dict` with the same keys
		>>> # as the elements.
		>>> result = dataset.map(lambda d: str(d["a"]) + d["b"])
		
		The value or values returned by `map_func` determine the structure of each
		element in the returned dataset.
		
		>>> dataset = tf.data.Dataset.range(3)
		>>> # `map_func` returns two `tf.Tensor` objects.
		>>> def g(x):
		...   return tf.constant(37.0), tf.constant(["Foo", "Bar", "Baz"])
		>>> result = dataset.map(g)
		>>> result.element_spec
		(TensorSpec(shape=(), dtype=tf.float32, name=None), TensorSpec(shape=(3,), dtype=tf.string, name=None))
		>>> # Python primitives, lists, and NumPy arrays are implicitly converted to
		>>> # `tf.Tensor`.
		>>> def h(x):
		...   return 37.0, ["Foo", "Bar"], np.array([1.0, 2.0], dtype=np.float64)
		>>> result = dataset.map(h)
		>>> result.element_spec
		(TensorSpec(shape=(), dtype=tf.float32, name=None), TensorSpec(shape=(2,), dtype=tf.string, name=None), TensorSpec(shape=(2,), dtype=tf.float64, name=None))
		>>> # `map_func` can return nested structures.
		>>> def i(x):
		...   return (37.0, [42, 16]), "foo"
		>>> result = dataset.map(i)
		>>> result.element_spec
		((TensorSpec(shape=(), dtype=tf.float32, name=None),
		  TensorSpec(shape=(2,), dtype=tf.int32, name=None)),
		 TensorSpec(shape=(), dtype=tf.string, name=None))
		
		`map_func` can accept as arguments and return any type of dataset element.
		
		Note that irrespective of the context in which `map_func` is defined (eager
		vs. graph), tf.data traces the function and executes it as a graph. To use
		Python code inside of the function you have a few options:
		
		1) Rely on AutoGraph to convert Python code into an equivalent graph
		computation. The downside of this approach is that AutoGraph can convert
		some but not all Python code.
		
		2) Use `tf.py_function`, which allows you to write arbitrary Python code but
		will generally result in worse performance than 1). For example:
		
		>>> d = tf.data.Dataset.from_tensor_slices(['hello', 'world'])
		>>> # transform a string tensor to upper case string using a Python function
		>>> def upper_case_fn(t: tf.Tensor):
		...   return t.numpy().decode('utf-8').upper()
		>>> d = d.map(lambda x: tf.py_function(func=upper_case_fn,
		...           inp=[x], Tout=tf.string))
		>>> list(d.as_numpy_iterator())
		[b'HELLO', b'WORLD']
		
		3) Use `tf.numpy_function`, which also allows you to write arbitrary
		Python code. Note that `tf.py_function` accepts `tf.Tensor` whereas
		`tf.numpy_function` accepts numpy arrays and returns only numpy arrays.
		For example:
		
		>>> d = tf.data.Dataset.from_tensor_slices(['hello', 'world'])
		>>> def upper_case_fn(t: np.ndarray):
		...   return t.decode('utf-8').upper()
		>>> d = d.map(lambda x: tf.numpy_function(func=upper_case_fn,
		...           inp=[x], Tout=tf.string))
		>>> list(d.as_numpy_iterator())
		[b'HELLO', b'WORLD']
		
		Note that the use of `tf.numpy_function` and `tf.py_function`
		in general precludes the possibility of executing user-defined
		transformations in parallel (because of Python GIL).
		
		Performance can often be improved by setting `num_parallel_calls` so that
		`map` will use multiple threads to process elements. If deterministic order
		isn't required, it can also improve performance to set
		`deterministic=False`.
		
		>>> dataset = Dataset.range(1, 6)  # ==> [ 1, 2, 3, 4, 5 ]
		>>> dataset = dataset.map(lambda x: x + 1,
		...     num_parallel_calls=tf.data.AUTOTUNE,
		...     deterministic=False)
		
		The order of elements yielded by this transformation is deterministic if
		`deterministic=True`. If `map_func` contains stateful operations and
		`num_parallel_calls > 1`, the order in which that state is accessed is
		undefined, so the values of output elements may not be deterministic
		regardless of the `deterministic` flag value.
		
		Args:
		  map_func: A function mapping a dataset element to another dataset element.
		  num_parallel_calls: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the number elements to process asynchronously in parallel.
		    If not specified, elements will be processed sequentially. If the value
		    `tf.data.AUTOTUNE` is used, then the number of parallel
		    calls is set dynamically based on available CPU.
		  deterministic: (Optional.) When `num_parallel_calls` is specified, if this
		    boolean is specified (`True` or `False`), it controls the order in which
		    the transformation produces elements. If set to `False`, the
		    transformation is allowed to yield elements out of order to trade
		    determinism for performance. If not specified, the
		    `tf.data.Options.deterministic` option (`True` by default) controls the
		    behavior.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function map(map_func:Dynamic, ?num_parallel_calls:Dynamic, ?deterministic:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the options for this dataset and its inputs.
		
		Returns:
		  A `tf.data.Options` object representing the dataset options.
	**/
	public function options():Dynamic;
	/**
		Combines consecutive elements of this dataset into padded batches.
		
		This transformation combines multiple consecutive elements of the input
		dataset into a single element.
		
		Like `tf.data.Dataset.batch`, the components of the resulting element will
		have an additional outer dimension, which will be `batch_size` (or
		`N % batch_size` for the last element if `batch_size` does not divide the
		number of input elements `N` evenly and `drop_remainder` is `False`). If
		your program depends on the batches having the same outer dimension, you
		should set the `drop_remainder` argument to `True` to prevent the smaller
		batch from being produced.
		
		Unlike `tf.data.Dataset.batch`, the input elements to be batched may have
		different shapes, and this transformation will pad each component to the
		respective shape in `padded_shapes`. The `padded_shapes` argument
		determines the resulting shape for each dimension of each component in an
		output element:
		
		* If the dimension is a constant, the component will be padded out to that
		  length in that dimension.
		* If the dimension is unknown, the component will be padded out to the
		  maximum length of all elements in that dimension.
		
		>>> A = (tf.data.Dataset
		...      .range(1, 5, output_type=tf.int32)
		...      .map(lambda x: tf.fill([x], x)))
		>>> # Pad to the smallest per-batch size that fits all elements.
		>>> B = A.padded_batch(2)
		>>> for element in B.as_numpy_iterator():
		...   print(element)
		[[1 0]
		 [2 2]]
		[[3 3 3 0]
		 [4 4 4 4]]
		>>> # Pad to a fixed size.
		>>> C = A.padded_batch(2, padded_shapes=5)
		>>> for element in C.as_numpy_iterator():
		...   print(element)
		[[1 0 0 0 0]
		 [2 2 0 0 0]]
		[[3 3 3 0 0]
		 [4 4 4 4 0]]
		>>> # Pad with a custom value.
		>>> D = A.padded_batch(2, padded_shapes=5, padding_values=-1)
		>>> for element in D.as_numpy_iterator():
		...   print(element)
		[[ 1 -1 -1 -1 -1]
		 [ 2  2 -1 -1 -1]]
		[[ 3  3  3 -1 -1]
		 [ 4  4  4  4 -1]]
		>>> # Components of nested elements can be padded independently.
		>>> elements = [([1, 2, 3], [10]),
		...             ([4, 5], [11, 12])]
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: iter(elements), (tf.int32, tf.int32))
		>>> # Pad the first component of the tuple to length 4, and the second
		>>> # component to the smallest size that fits.
		>>> dataset = dataset.padded_batch(2,
		...     padded_shapes=([4], [None]),
		...     padding_values=(-1, 100))
		>>> list(dataset.as_numpy_iterator())
		[(array([[ 1,  2,  3, -1], [ 4,  5, -1, -1]], dtype=int32),
		  array([[ 10, 100], [ 11,  12]], dtype=int32))]
		>>> # Pad with a single value and multiple components.
		>>> E = tf.data.Dataset.zip((A, A)).padded_batch(2, padding_values=-1)
		>>> for element in E.as_numpy_iterator():
		...   print(element)
		(array([[ 1, -1],
		       [ 2,  2]], dtype=int32), array([[ 1, -1],
		       [ 2,  2]], dtype=int32))
		(array([[ 3,  3,  3, -1],
		       [ 4,  4,  4,  4]], dtype=int32), array([[ 3,  3,  3, -1],
		       [ 4,  4,  4,  4]], dtype=int32))
		
		See also `tf.data.experimental.dense_to_sparse_batch`, which combines
		elements that may have different shapes into a `tf.sparse.SparseTensor`.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  padded_shapes: (Optional.) A (nested) structure of `tf.TensorShape` or
		    `tf.int64` vector tensor-like objects representing the shape to which
		    the respective component of each input element should be padded prior
		    to batching. Any unknown dimensions will be padded to the maximum size
		    of that dimension in each batch. If unset, all dimensions of all
		    components are padded to the maximum size in the batch. `padded_shapes`
		    must be set if any component has an unknown rank.
		  padding_values: (Optional.) A (nested) structure of scalar-shaped
		    `tf.Tensor`, representing the padding values to use for the respective
		    components. None represents that the (nested) structure should be padded
		    with default values.  Defaults are `0` for numeric types and the empty
		    string for string types. The `padding_values` should have the same
		    (nested) structure as the input dataset. If `padding_values` is a single
		    element and the input dataset has multiple components, then the same
		    `padding_values` will be used to pad every component of the dataset.
		    If `padding_values` is a scalar, then its value will be broadcasted
		    to match the shape of each component.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
		
		Raises:
		  ValueError: If a component has an unknown rank, and the `padded_shapes`
		    argument is not set.
		  TypeError: If a component is of an unsupported type. The list of supported
		    types is documented in
		    https://www.tensorflow.org/guide/data#dataset_structure.
	**/
	public function padded_batch(batch_size:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?drop_remainder:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that prefetches elements from this dataset.
		
		Most dataset input pipelines should end with a call to `prefetch`. This
		allows later elements to be prepared while the current element is being
		processed. This often improves latency and throughput, at the cost of
		using additional memory to store prefetched elements.
		
		Note: Like other `Dataset` methods, prefetch operates on the
		elements of the input dataset. It has no concept of examples vs. batches.
		`examples.prefetch(2)` will prefetch two elements (2 examples),
		while `examples.batch(20).prefetch(2)` will prefetch 2 elements
		(2 batches, of 20 examples each).
		
		>>> dataset = tf.data.Dataset.range(3)
		>>> dataset = dataset.prefetch(2)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2]
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the maximum
		    number of elements that will be buffered when prefetching. If the value
		    `tf.data.AUTOTUNE` is used, then the buffer size is dynamically tuned.
		  name: Optional. A name for the tf.data transformation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function prefetch(buffer_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` of pseudorandom values.
		
		The dataset generates a sequence of uniformly distributed integer values.
		
		>>> ds1 = tf.data.Dataset.random(seed=4).take(10)
		>>> ds2 = tf.data.Dataset.random(seed=4).take(10)
		>>> print(list(ds2.as_numpy_iterator())==list(ds2.as_numpy_iterator()))
		True
		
		Args:
		  seed: (Optional) If specified, the dataset produces a deterministic
		    sequence of values.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function random(?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` of a step-separated range of values.
		
		>>> list(Dataset.range(5).as_numpy_iterator())
		[0, 1, 2, 3, 4]
		>>> list(Dataset.range(2, 5).as_numpy_iterator())
		[2, 3, 4]
		>>> list(Dataset.range(1, 5, 2).as_numpy_iterator())
		[1, 3]
		>>> list(Dataset.range(1, 5, -2).as_numpy_iterator())
		[]
		>>> list(Dataset.range(5, 1).as_numpy_iterator())
		[]
		>>> list(Dataset.range(5, 1, -2).as_numpy_iterator())
		[5, 3]
		>>> list(Dataset.range(2, 5, output_type=tf.int32).as_numpy_iterator())
		[2, 3, 4]
		>>> list(Dataset.range(1, 5, 2, output_type=tf.float32).as_numpy_iterator())
		[1.0, 3.0]
		
		Args:
		  *args: follows the same semantics as python's xrange.
		    len(args) == 1 -> start = 0, stop = args[0], step = 1.
		    len(args) == 2 -> start = args[0], stop = args[1], step = 1.
		    len(args) == 3 -> start = args[0], stop = args[1], step = args[2].
		  **kwargs:
		    - output_type: Its expected dtype. (Optional, default: `tf.int64`).
		    - name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `RangeDataset`.
		
		Raises:
		  ValueError: if len(args) == 0.
	**/
	static public function range(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reduces the input dataset to a single element.
		
		The transformation calls `reduce_func` successively on every element of
		the input dataset until the dataset is exhausted, aggregating information in
		its internal state. The `initial_state` argument is used for the initial
		state and the final state is returned as the result.
		
		>>> tf.data.Dataset.range(5).reduce(np.int64(0), lambda x, _: x + 1).numpy()
		5
		>>> tf.data.Dataset.range(5).reduce(np.int64(0), lambda x, y: x + y).numpy()
		10
		
		Args:
		  initial_state: An element representing the initial state of the
		    transformation.
		  reduce_func: A function that maps `(old_state, input_element)` to
		    `new_state`. It must take two arguments and return a new element
		    The structure of `new_state` must match the structure of
		    `initial_state`.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A dataset element corresponding to the final state of the transformation.
	**/
	public function reduce(initial_state:Dynamic, reduce_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A transformation that resamples a dataset to a target distribution.
		
		Lets consider the following example where a dataset with an initial data
		distribution of `init_dist` needs to be resampled into a dataset with
		`target_dist` distribution.
		
		>>> import collections
		>>> initial_dist = [0.5, 0.5]
		>>> target_dist = [0.6, 0.4]
		>>> num_classes = len(initial_dist)
		>>> num_samples = 100000
		>>> data_np = np.random.choice(num_classes, num_samples, p=initial_dist)
		>>> dataset = tf.data.Dataset.from_tensor_slices(data_np)
		>>> x = collections.defaultdict(int)
		>>> for i in dataset:
		...   x[i.numpy()] += 1
		
		The value of `x` will be close to `{0: 50000, 1: 50000}` as per the
		`initial_dist` distribution.
		
		>>> dataset = dataset.rejection_resample(
		...    class_func=lambda x: x % 2,
		...    target_dist=target_dist,
		...    initial_dist=initial_dist)
		
		>>> y = collections.defaultdict(int)
		>>> for i in dataset:
		...   cls, _ = i
		...   y[cls.numpy()] += 1
		
		The value of `y` will be now be close to `{0: 75000, 1: 50000}` thus
		satisfying the `target_dist` distribution.
		
		Args:
		  class_func: A function mapping an element of the input dataset to a scalar
		    `tf.int32` tensor. Values should be in `[0, num_classes)`.
		  target_dist: A floating point type tensor, shaped `[num_classes]`.
		  initial_dist: (Optional.)  A floating point type tensor, shaped
		    `[num_classes]`.  If not provided, the true class distribution is
		    estimated live in a streaming fashion.
		  seed: (Optional.) Python integer seed for the resampler.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`
	**/
	public function rejection_resample(class_func:Dynamic, target_dist:Dynamic, ?initial_dist:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Repeats this dataset so each original value is seen `count` times.
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset = dataset.repeat(3)
		>>> list(dataset.as_numpy_iterator())
		[1, 2, 3, 1, 2, 3, 1, 2, 3]
		
		Note: If this dataset is a function of global state (e.g. a random number
		generator), then different repetitions may produce different elements.
		
		Args:
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of times the dataset should be repeated. The default behavior (if
		    `count` is `None` or `-1`) is for the dataset be repeated indefinitely.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function repeat(?count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`.
		
		Creates a dataset by interleaving elements of `datasets` with `weight[i]`
		probability of picking an element from dataset `i`. Sampling is done without
		replacement. For example, suppose we have 2 datasets:
		
		```python
		dataset1 = tf.data.Dataset.range(0, 3)
		dataset2 = tf.data.Dataset.range(100, 103)
		```
		
		Suppose that we sample from these 2 datasets with the following weights:
		
		```python
		sample_dataset = tf.data.Dataset.sample_from_datasets(
		    [dataset1, dataset2], weights=[0.5, 0.5])
		```
		
		One possible outcome of elements in sample_dataset is:
		
		```
		print(list(sample_dataset.as_numpy_iterator()))
		# [100, 0, 1, 101, 2, 102]
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  weights: (Optional.) A list or Tensor of `len(datasets)` floating-point
		    values where `weights[i]` represents the probability to sample from
		    `datasets[i]`, or a `tf.data.Dataset` object where each element is such
		    a list. Defaults to a uniform distribution across `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  stop_on_empty_dataset: If `True`, sampling stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set
		    it to `True`. Otherwise, the distribution of samples starts off as the
		    user intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct.
		    Default to `False` for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according
		  to `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError:
		    - If `datasets` is empty, or
		    - If `weights` is specified and does not match the length of `datasets`.
	**/
	static public function sample_from_datasets(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		A transformation that scans a function across an input dataset.
		
		This transformation is a stateful relative of `tf.data.Dataset.map`.
		In addition to mapping `scan_func` across the elements of the input dataset,
		`scan()` accumulates one or more state tensors, whose initial values are
		`initial_state`.
		
		>>> dataset = tf.data.Dataset.range(10)
		>>> initial_state = tf.constant(0, dtype=tf.int64)
		>>> scan_func = lambda state, i: (state + i, state + i)
		>>> dataset = dataset.scan(initial_state=initial_state, scan_func=scan_func)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 3, 6, 10, 15, 21, 28, 36, 45]
		
		Args:
		  initial_state: A nested structure of tensors, representing the initial
		    state of the accumulator.
		  scan_func: A function that maps `(old_state, input_element)` to
		    `(new_state, output_element)`. It must take two arguments and return a
		    pair of nested structures of tensors. The `new_state` must match the
		    structure of `initial_state`.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
	**/
	public function scan(initial_state:Dynamic, scan_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that includes only 1/`num_shards` of this dataset.
		
		`shard` is deterministic. The Dataset produced by `A.shard(n, i)` will
		contain all elements of A whose index mod n = i.
		
		>>> A = tf.data.Dataset.range(10)
		>>> B = A.shard(num_shards=3, index=0)
		>>> list(B.as_numpy_iterator())
		[0, 3, 6, 9]
		>>> C = A.shard(num_shards=3, index=1)
		>>> list(C.as_numpy_iterator())
		[1, 4, 7]
		>>> D = A.shard(num_shards=3, index=2)
		>>> list(D.as_numpy_iterator())
		[2, 5, 8]
		
		This dataset operator is very useful when running distributed training, as
		it allows each worker to read a unique subset.
		
		When reading a single input file, you can shard elements as follows:
		
		```python
		d = tf.data.TFRecordDataset(input_file)
		d = d.shard(num_workers, worker_index)
		d = d.repeat(num_epochs)
		d = d.shuffle(shuffle_buffer_size)
		d = d.map(parser_fn, num_parallel_calls=num_map_threads)
		```
		
		Important caveats:
		
		- Be sure to shard before you use any randomizing operator (such as
		  shuffle).
		- Generally it is best if the shard operator is used early in the dataset
		  pipeline. For example, when reading from a set of TFRecord files, shard
		  before converting the dataset to input samples. This avoids reading every
		  file on every worker. The following is an example of an efficient
		  sharding strategy within a complete pipeline:
		
		```python
		d = Dataset.list_files(pattern)
		d = d.shard(num_workers, worker_index)
		d = d.repeat(num_epochs)
		d = d.shuffle(shuffle_buffer_size)
		d = d.interleave(tf.data.TFRecordDataset,
		                 cycle_length=num_readers, block_length=1)
		d = d.map(parser_fn, num_parallel_calls=num_map_threads)
		```
		
		Args:
		  num_shards: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    shards operating in parallel.
		  index: A `tf.int64` scalar `tf.Tensor`, representing the worker index.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
		
		Raises:
		  InvalidArgumentError: if `num_shards` or `index` are illegal values.
		
		    Note: error checking is done on a best-effort basis, and errors aren't
		    guaranteed to be caught upon dataset creation. (e.g. providing in a
		    placeholder tensor bypasses the early checking, and will instead result
		    in an error during a session.run call.)
	**/
	public function shard(num_shards:Dynamic, index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Randomly shuffles the elements of this dataset.
		
		This dataset fills a buffer with `buffer_size` elements, then randomly
		samples elements from this buffer, replacing the selected elements with new
		elements. For perfect shuffling, a buffer size greater than or equal to the
		full size of the dataset is required.
		
		For instance, if your dataset contains 10,000 elements but `buffer_size` is
		set to 1,000, then `shuffle` will initially select a random element from
		only the first 1,000 elements in the buffer. Once an element is selected,
		its space in the buffer is replaced by the next (i.e. 1,001-st) element,
		maintaining the 1,000 element buffer.
		
		`reshuffle_each_iteration` controls whether the shuffle order should be
		different for each epoch. In TF 1.X, the idiomatic way to create epochs
		was through the `repeat` transformation:
		
		```python
		dataset = tf.data.Dataset.range(3)
		dataset = dataset.shuffle(3, reshuffle_each_iteration=True)
		dataset = dataset.repeat(2)
		# [1, 0, 2, 1, 2, 0]
		
		dataset = tf.data.Dataset.range(3)
		dataset = dataset.shuffle(3, reshuffle_each_iteration=False)
		dataset = dataset.repeat(2)
		# [1, 0, 2, 1, 0, 2]
		```
		
		In TF 2.0, `tf.data.Dataset` objects are Python iterables which makes it
		possible to also create epochs through Python iteration:
		
		```python
		dataset = tf.data.Dataset.range(3)
		dataset = dataset.shuffle(3, reshuffle_each_iteration=True)
		list(dataset.as_numpy_iterator())
		# [1, 0, 2]
		list(dataset.as_numpy_iterator())
		# [1, 2, 0]
		```
		
		```python
		dataset = tf.data.Dataset.range(3)
		dataset = dataset.shuffle(3, reshuffle_each_iteration=False)
		list(dataset.as_numpy_iterator())
		# [1, 0, 2]
		list(dataset.as_numpy_iterator())
		# [1, 0, 2]
		```
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements from this dataset from which the new dataset will sample.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  reshuffle_each_iteration: (Optional.) A boolean, which if true indicates
		    that the dataset should be pseudorandomly reshuffled each time it is
		    iterated over. (Defaults to `True`.)
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function shuffle(buffer_size:Dynamic, ?seed:Dynamic, ?reshuffle_each_iteration:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that skips `count` elements from this dataset.
		
		>>> dataset = tf.data.Dataset.range(10)
		>>> dataset = dataset.skip(7)
		>>> list(dataset.as_numpy_iterator())
		[7, 8, 9]
		
		Args:
		  count: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements of this dataset that should be skipped to form the new dataset.
		    If `count` is greater than the size of this dataset, the new dataset
		    will contain no elements.  If `count` is -1, skips the entire dataset.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function skip(count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		API to persist the output of the input dataset.
		
		The snapshot API allows users to transparently persist the output of their
		preprocessing pipeline to disk, and materialize the pre-processed data on a
		different training run.
		
		This API enables repeated preprocessing steps to be consolidated, and allows
		re-use of already processed data, trading off disk storage and network
		bandwidth for freeing up more valuable CPU resources and accelerator compute
		time.
		
		https://github.com/tensorflow/community/blob/master/rfcs/20200107-tf-data-snapshot.md
		has detailed design documentation of this feature.
		
		Users can specify various options to control the behavior of snapshot,
		including how snapshots are read from and written to by passing in
		user-defined functions to the `reader_func` and `shard_func` parameters.
		
		`shard_func` is a user specified function that maps input elements to
		snapshot shards.
		
		Users may want to specify this function to control how snapshot files should
		be written to disk. Below is an example of how a potential `shard_func`
		could be written.
		
		```python
		dataset = ...
		dataset = dataset.enumerate()
		dataset = dataset.snapshot("/path/to/snapshot/dir",
		    shard_func=lambda x, y: x % NUM_SHARDS, ...)
		dataset = dataset.map(lambda x, y: y)
		```
		
		`reader_func` is a user specified function that accepts a single argument:
		(1) a Dataset of Datasets, each representing a "split" of elements of the
		original dataset. The cardinality of the input dataset matches the
		number of the shards specified in the `shard_func` (see above). The function
		should return a Dataset of elements of the original dataset.
		
		Users may want specify this function to control how snapshot files should be
		read from disk, including the amount of shuffling and parallelism.
		
		Here is an example of a standard reader function a user can define. This
		function enables both dataset shuffling and parallel reading of datasets:
		
		```python
		def user_reader_func(datasets):
		  # shuffle the datasets splits
		  datasets = datasets.shuffle(NUM_CORES)
		  # read datasets in parallel and interleave their elements
		  return datasets.interleave(lambda x: x, num_parallel_calls=AUTOTUNE)
		
		dataset = dataset.snapshot("/path/to/snapshot/dir",
		    reader_func=user_reader_func)
		```
		
		By default, snapshot parallelizes reads by the number of cores available on
		the system, but will not attempt to shuffle the data.
		
		Args:
		  path: Required. A directory to use for storing / loading the snapshot to /
		    from.
		  compression: Optional. The type of compression to apply to the snapshot
		    written to disk. Supported options are `GZIP`, `SNAPPY`, `AUTO` or None.
		    Defaults to `AUTO`, which attempts to pick an appropriate compression
		    algorithm for the dataset.
		  reader_func: Optional. A function to control how to read data from
		    snapshot shards.
		  shard_func: Optional. A function to control how to shard data when writing
		    a snapshot.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
	**/
	public function snapshot(path:Dynamic, ?compression:Dynamic, ?reader_func:Dynamic, ?shard_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` with at most `count` elements from this dataset.
		
		>>> dataset = tf.data.Dataset.range(10)
		>>> dataset = dataset.take(3)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2]
		
		Args:
		  count: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements of this dataset that should be taken to form the new dataset.
		    If `count` is -1, or if `count` is greater than the size of this
		    dataset, the new dataset will contain all elements of this dataset.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function take(count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A transformation that stops dataset iteration based on a `predicate`.
		
		>>> dataset = tf.data.Dataset.range(10)
		>>> dataset = dataset.take_while(lambda x: x < 5)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		
		Args:
		  predicate: A function that maps a nested structure of tensors (having
		    shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.bool` tensor.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
	**/
	public function take_while(predicate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits elements of a dataset into multiple elements.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		>>> elements = [ [1, 2, 3], [1, 2], [1, 2, 3, 4] ]
		>>> dataset = tf.data.Dataset.from_generator(lambda: elements, tf.int64)
		>>> dataset = dataset.unbatch()
		>>> list(dataset.as_numpy_iterator())
		[1, 2, 3, 1, 2, 1, 2, 3, 4]
		
		Note: `unbatch` requires a data copy to slice up the batched tensor into
		smaller, unbatched tensors. When optimizing performance, try to avoid
		unnecessary usage of `unbatch`.
		
		Args:
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
	**/
	public function unbatch(?name:Dynamic):Dynamic;
	/**
		A transformation that discards duplicate elements of a `Dataset`.
		
		Use this transformation to produce a dataset that contains one instance of
		each unique element in the input. For example:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 37, 2, 37, 2, 1])
		>>> dataset = dataset.unique()
		>>> sorted(list(dataset.as_numpy_iterator()))
		[1, 2, 37]
		
		Note: This transformation only supports datasets which fit into memory
		and have elements of either `tf.int32`, `tf.int64` or `tf.string` type.
		
		Args:
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset`.
	**/
	public function unique(?name:Dynamic):Dynamic;
	/**
		Returns a dataset of "windows".
		
		Each "window" is a dataset that contains a subset of elements of the
		input dataset. These are finite datasets of size `size` (or possibly fewer
		if there are not enough input elements to fill the window and
		`drop_remainder` evaluates to `False`).
		
		For example:
		
		>>> dataset = tf.data.Dataset.range(7).window(3)
		>>> for window in dataset:
		...   print(window)
		<...Dataset shapes: (), types: tf.int64>
		<...Dataset shapes: (), types: tf.int64>
		<...Dataset shapes: (), types: tf.int64>
		
		Since windows are datasets, they can be iterated over:
		
		>>> for window in dataset:
		...   print([item.numpy() for item in window])
		[0, 1, 2]
		[3, 4, 5]
		[6]
		
		#### Shift
		
		The `shift` argument determines the number of input elements to shift
		between the start of each window. If windows and elements are both numbered
		starting at 0, the first element in window `k` will be element `k * shift`
		of the input dataset. In particular, the first element of the first window
		will always be the first element of the input dataset.
		
		>>> dataset = tf.data.Dataset.range(7).window(3, shift=1,
		...                                           drop_remainder=True)
		>>> for window in dataset:
		...   print(list(window.as_numpy_iterator()))
		[0, 1, 2]
		[1, 2, 3]
		[2, 3, 4]
		[3, 4, 5]
		[4, 5, 6]
		
		#### Stride
		
		The `stride` argument determines the stride between input elements within a
		window.
		
		>>> dataset = tf.data.Dataset.range(7).window(3, shift=1, stride=2,
		...                                           drop_remainder=True)
		>>> for window in dataset:
		...   print(list(window.as_numpy_iterator()))
		[0, 2, 4]
		[1, 3, 5]
		[2, 4, 6]
		
		#### Nested elements
		
		When the `window` transformation is applied to a dataset whos elements are
		nested structures, it produces a dataset where the elements have the same
		nested structure but each leaf is replaced by a window. In other words,
		the nesting is applied outside of the windows as opposed inside of them.
		
		The type signature is:
		
		```
		def window(
		    self: Dataset[Nest[T]], ...
		) -> Dataset[Nest[Dataset[T]]]
		```
		
		Applying `window` to a `Dataset` of tuples gives a tuple of windows:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices(([1, 2, 3, 4, 5],
		...                                               [6, 7, 8, 9, 10]))
		>>> dataset = dataset.window(2)
		>>> windows = next(iter(dataset))
		>>> windows
		(<...Dataset shapes: (), types: tf.int32>,
		 <...Dataset shapes: (), types: tf.int32>)
		
		>>> def to_numpy(ds):
		...   return list(ds.as_numpy_iterator())
		>>>
		>>> for windows in dataset:
		...   print(to_numpy(windows[0]), to_numpy(windows[1]))
		[1, 2] [6, 7]
		[3, 4] [8, 9]
		[5] [10]
		
		Applying `window` to a `Dataset` of dictionaries gives a dictionary of
		`Datasets`:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices({'a': [1, 2, 3],
		...                                               'b': [4, 5, 6],
		...                                               'c': [7, 8, 9]})
		>>> dataset = dataset.window(2)
		>>> def to_numpy(ds):
		...   return list(ds.as_numpy_iterator())
		>>>
		>>> for windows in dataset:
		...   print(tf.nest.map_structure(to_numpy, windows))
		{'a': [1, 2], 'b': [4, 5], 'c': [7, 8]}
		{'a': [3], 'b': [6], 'c': [9]}
		
		#### Flatten a dataset of windows
		
		The `Dataset.flat_map` and `Dataset.interleave` methods can be used to
		flatten a dataset of windows into a single dataset.
		
		The argument to `flat_map` is a function that takes an element from the
		dataset and returns a `Dataset`. `flat_map` chains together the resulting
		datasets sequentially.
		
		For example, to turn each window into a dense tensor:
		
		>>> size = 3
		>>> dataset = tf.data.Dataset.range(7).window(size, shift=1,
		...                                           drop_remainder=True)
		>>> batched = dataset.flat_map(lambda x:x.batch(3))
		>>> for batch in batched:
		...   print(batch.numpy())
		[0 1 2]
		[1 2 3]
		[2 3 4]
		[3 4 5]
		[4 5 6]
		
		Args:
		  size: A `tf.int64` scalar `tf.Tensor`, representing the number of elements
		    of the input dataset to combine into a window. Must be positive.
		  shift: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of input elements by which the window moves in each iteration.
		    Defaults to `size`. Must be positive.
		  stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    stride of the input elements in the sliding window. Must be positive.
		    The default value of 1 means "retain every input element".
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last windows should be dropped if their size is smaller than
		    `size`.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset` of (nests of) windows. Each window is a finite
		    datasets of flat elements.
	**/
	public function window(size:Dynamic, ?shift:Dynamic, ?stride:Dynamic, ?drop_remainder:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a new `tf.data.Dataset` with the given options set.
		
		The options are "global" in the sense they apply to the entire dataset.
		If options are set multiple times, they are merged as long as different
		options do not use different non-default values.
		
		>>> ds = tf.data.Dataset.range(5)
		>>> ds = ds.interleave(lambda x: tf.data.Dataset.range(5),
		...                    cycle_length=3,
		...                    num_parallel_calls=3)
		>>> options = tf.data.Options()
		>>> # This will make the interleave order non-deterministic.
		>>> options.deterministic = False
		>>> ds = ds.with_options(options)
		
		Args:
		  options: A `tf.data.Options` that identifies the options the use.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset` with the given options.
		
		Raises:
		  ValueError: when an option is set more than once to a non-default value
	**/
	public function with_options(options:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Dataset` by zipping together the given datasets.
		
		This method has similar semantics to the built-in `zip()` function
		in Python, with the main difference being that the `datasets`
		argument can be a (nested) structure of `Dataset` objects. The supported
		nesting mechanisms are documented
		[here] (https://www.tensorflow.org/guide/data#dataset_structure).
		
		>>> # The nested structure of the `datasets` argument determines the
		>>> # structure of elements in the resulting dataset.
		>>> a = tf.data.Dataset.range(1, 4)  # ==> [ 1, 2, 3 ]
		>>> b = tf.data.Dataset.range(4, 7)  # ==> [ 4, 5, 6 ]
		>>> ds = tf.data.Dataset.zip((a, b))
		>>> list(ds.as_numpy_iterator())
		[(1, 4), (2, 5), (3, 6)]
		>>> ds = tf.data.Dataset.zip((b, a))
		>>> list(ds.as_numpy_iterator())
		[(4, 1), (5, 2), (6, 3)]
		>>>
		>>> # The `datasets` argument may contain an arbitrary number of datasets.
		>>> c = tf.data.Dataset.range(7, 13).batch(2)  # ==> [ [7, 8],
		...                                            #       [9, 10],
		...                                            #       [11, 12] ]
		>>> ds = tf.data.Dataset.zip((a, b, c))
		>>> for element in ds.as_numpy_iterator():
		...   print(element)
		(1, 4, array([7, 8]))
		(2, 5, array([ 9, 10]))
		(3, 6, array([11, 12]))
		>>>
		>>> # The number of elements in the resulting dataset is the same as
		>>> # the size of the smallest dataset in `datasets`.
		>>> d = tf.data.Dataset.range(13, 15)  # ==> [ 13, 14 ]
		>>> ds = tf.data.Dataset.zip((a, d))
		>>> list(ds.as_numpy_iterator())
		[(1, 13), (2, 14)]
		
		Args:
		  datasets: A (nested) structure of datasets.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function zip(datasets:Dynamic, ?name:Dynamic):Dynamic;
}