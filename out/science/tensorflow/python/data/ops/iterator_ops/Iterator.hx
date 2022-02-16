/* This file is generated, do not edit! */
package tensorflow.python.data.ops.iterator_ops;
@:pythonImport("tensorflow.python.data.ops.iterator_ops", "Iterator") extern class Iterator {
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
		Creates a new iterator from the given iterator resource.
		
		Note: Most users will not call this initializer directly, and will
		instead use `Dataset.make_initializable_iterator()` or
		`Dataset.make_one_shot_iterator()`.
		
		Args:
		  iterator_resource: A `tf.resource` scalar `tf.Tensor` representing the
		    iterator.
		  initializer: A `tf.Operation` that should be run to initialize this
		    iterator.
		  output_types: A (nested) structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A (nested) structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this iterator.
		  output_classes: A (nested) structure of Python `type` objects
		    corresponding to each component of an element of this iterator.
		
		Raises:
		  TypeError: If `output_types`, `output_shapes`, or `output_classes` is not
		    specified.
	**/
	@:native("__init__")
	public function ___init__(iterator_resource:Dynamic, initializer:Dynamic, output_types:Dynamic, output_shapes:Dynamic, output_classes:Dynamic):Dynamic;
	/**
		Creates a new iterator from the given iterator resource.
		
		Note: Most users will not call this initializer directly, and will
		instead use `Dataset.make_initializable_iterator()` or
		`Dataset.make_one_shot_iterator()`.
		
		Args:
		  iterator_resource: A `tf.resource` scalar `tf.Tensor` representing the
		    iterator.
		  initializer: A `tf.Operation` that should be run to initialize this
		    iterator.
		  output_types: A (nested) structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A (nested) structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this iterator.
		  output_classes: A (nested) structure of Python `type` objects
		    corresponding to each component of an element of this iterator.
		
		Raises:
		  TypeError: If `output_types`, `output_shapes`, or `output_classes` is not
		    specified.
	**/
	public function new(iterator_resource:Dynamic, initializer:Dynamic, output_types:Dynamic, output_shapes:Dynamic, output_classes:Dynamic):Void;
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
	public var _update_uid : Dynamic;
	/**
		The type specification of an element of this iterator.
		
		For more information,
		read [this guide](https://www.tensorflow.org/guide/data#dataset_structure).
		
		Returns:
		  A (nested) structure of `tf.TypeSpec` objects matching the structure of an
		  element of this iterator and specifying the type of individual components.
	**/
	public var element_spec : Dynamic;
	/**
		Creates a new, uninitialized `Iterator` based on the given handle.
		
		This method allows you to define a "feedable" iterator where you can choose
		between concrete iterators by feeding a value in a `tf.Session.run` call.
		In that case, `string_handle` would be a `tf.compat.v1.placeholder`, and you
		would
		feed it with the value of `tf.data.Iterator.string_handle` in each step.
		
		For example, if you had two iterators that marked the current position in
		a training dataset and a test dataset, you could choose which to use in
		each step as follows:
		
		```python
		train_iterator = tf.data.Dataset(...).make_one_shot_iterator()
		train_iterator_handle = sess.run(train_iterator.string_handle())
		
		test_iterator = tf.data.Dataset(...).make_one_shot_iterator()
		test_iterator_handle = sess.run(test_iterator.string_handle())
		
		handle = tf.compat.v1.placeholder(tf.string, shape=[])
		iterator = tf.data.Iterator.from_string_handle(
		    handle, train_iterator.output_types)
		
		next_element = iterator.get_next()
		loss = f(next_element)
		
		train_loss = sess.run(loss, feed_dict={handle: train_iterator_handle})
		test_loss = sess.run(loss, feed_dict={handle: test_iterator_handle})
		```
		
		Args:
		  string_handle: A scalar `tf.Tensor` of type `tf.string` that evaluates to
		    a handle produced by the `Iterator.string_handle()` method.
		  output_types: A (nested) structure of `tf.DType` objects corresponding to
		    each component of an element of this dataset.
		  output_shapes: (Optional.) A (nested) structure of `tf.TensorShape`
		    objects corresponding to each component of an element of this dataset.
		    If omitted, each component will have an unconstrainted shape.
		  output_classes: (Optional.) A (nested) structure of Python `type` objects
		    corresponding to each component of an element of this iterator. If
		    omitted, each component is assumed to be of type `tf.Tensor`.
		
		Returns:
		  An `Iterator`.
	**/
	static public function from_string_handle(string_handle:Dynamic, output_types:Dynamic, ?output_shapes:Dynamic, ?output_classes:Dynamic):Dynamic;
	/**
		Creates a new, uninitialized `Iterator` with the given structure.
		
		This iterator-constructing method can be used to create an iterator that
		is reusable with many different datasets.
		
		The returned iterator is not bound to a particular dataset, and it has
		no `initializer`. To initialize the iterator, run the operation returned by
		`Iterator.make_initializer(dataset)`.
		
		The following is an example
		
		```python
		iterator = Iterator.from_structure(tf.int64, tf.TensorShape([]))
		
		dataset_range = Dataset.range(10)
		range_initializer = iterator.make_initializer(dataset_range)
		
		dataset_evens = dataset_range.filter(lambda x: x % 2 == 0)
		evens_initializer = iterator.make_initializer(dataset_evens)
		
		# Define a model based on the iterator; in this example, the model_fn
		# is expected to take scalar tf.int64 Tensors as input (see
		# the definition of 'iterator' above).
		prediction, loss = model_fn(iterator.get_next())
		
		# Train for `num_epochs`, where for each epoch, we first iterate over
		# dataset_range, and then iterate over dataset_evens.
		for _ in range(num_epochs):
		  # Initialize the iterator to `dataset_range`
		  sess.run(range_initializer)
		  while True:
		    try:
		      pred, loss_val = sess.run([prediction, loss])
		    except tf.errors.OutOfRangeError:
		      break
		
		  # Initialize the iterator to `dataset_evens`
		  sess.run(evens_initializer)
		  while True:
		    try:
		      pred, loss_val = sess.run([prediction, loss])
		    except tf.errors.OutOfRangeError:
		      break
		```
		
		Args:
		  output_types: A (nested) structure of `tf.DType` objects corresponding to
		    each component of an element of this dataset.
		  output_shapes: (Optional.) A (nested) structure of `tf.TensorShape`
		    objects corresponding to each component of an element of this dataset.
		    If omitted, each component will have an unconstrainted shape.
		  shared_name: (Optional.) If non-empty, this iterator will be shared under
		    the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		  output_classes: (Optional.) A (nested) structure of Python `type` objects
		    corresponding to each component of an element of this iterator. If
		    omitted, each component is assumed to be of type `tf.Tensor`.
		
		Returns:
		  An `Iterator`.
		
		Raises:
		  TypeError: If the structures of `output_shapes` and `output_types` are
		    not the same.
	**/
	static public function from_structure(output_types:Dynamic, ?output_shapes:Dynamic, ?shared_name:Dynamic, ?output_classes:Dynamic):Dynamic;
	/**
		Returns the next element.
		
		In graph mode, you should typically call this method *once* and use its
		result as the input to another computation. A typical loop will then call
		`tf.Session.run` on the result of that computation. The loop will terminate
		when the `Iterator.get_next()` operation raises
		`tf.errors.OutOfRangeError`. The following skeleton shows how to use
		this method when building a training loop:
		
		```python
		dataset = ...  # A `tf.data.Dataset` object.
		iterator = dataset.make_initializable_iterator()
		next_element = iterator.get_next()
		
		# Build a TensorFlow graph that does something with each element.
		loss = model_function(next_element)
		optimizer = ...  # A `tf.compat.v1.train.Optimizer` object.
		train_op = optimizer.minimize(loss)
		
		with tf.compat.v1.Session() as sess:
		  try:
		    while True:
		      sess.run(train_op)
		  except tf.errors.OutOfRangeError:
		    pass
		```
		
		NOTE: It is legitimate to call `Iterator.get_next()` multiple times, e.g.
		when you are distributing different elements to multiple devices in a single
		step. However, a common pitfall arises when users call `Iterator.get_next()`
		in each iteration of their training loop. `Iterator.get_next()` adds ops to
		the graph, and executing each op allocates resources (including threads); as
		a consequence, invoking it in every iteration of a training loop causes
		slowdown and eventual resource exhaustion. To guard against this outcome, we
		log a warning when the number of uses crosses a fixed threshold of
		suspiciousness.
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A (nested) structure of values matching `tf.data.Iterator.element_spec`.
	**/
	public function get_next(?name:Dynamic):Dynamic;
	public function get_next_as_optional():Dynamic;
	/**
		A `tf.Operation` that should be run to initialize this iterator.
		
		Returns:
		  A `tf.Operation` that should be run to initialize this iterator
		
		Raises:
		  ValueError: If this iterator initializes itself automatically.
	**/
	public var initializer : Dynamic;
	/**
		Returns a `tf.Operation` that initializes this iterator on `dataset`.
		
		Args:
		  dataset: A `Dataset` whose `element_spec` if compatible with this
		    iterator.
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A `tf.Operation` that can be run to initialize this iterator on the given
		  `dataset`.
		
		Raises:
		  TypeError: If `dataset` and this iterator do not have a compatible
		    `element_spec`.
	**/
	public function make_initializer(dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the class of each component of an element of this iterator. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.data.get_output_classes(iterator)`.
		
		The expected values are `tf.Tensor` and `tf.sparse.SparseTensor`.
		
		Returns:
		  A (nested) structure of Python `type` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_classes : Dynamic;
	/**
		Returns the shape of each component of an element of this iterator. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.data.get_output_shapes(iterator)`.
		
		Returns:
		  A (nested) structure of `tf.TensorShape` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns the type of each component of an element of this iterator. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.data.get_output_types(iterator)`.
		
		Returns:
		  A (nested) structure of `tf.DType` objects corresponding to each component
		  of an element of this dataset.
	**/
	public var output_types : Dynamic;
	/**
		Returns a string-valued `tf.Tensor` that represents this iterator.
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A scalar `tf.Tensor` of type `tf.string`.
	**/
	public function string_handle(?name:Dynamic):Dynamic;
}