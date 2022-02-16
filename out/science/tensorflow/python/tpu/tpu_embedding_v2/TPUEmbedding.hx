/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_v2;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_v2", "TPUEmbedding") extern class TPUEmbedding {
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
		Creates the TPUEmbedding mid level API object.
		
		```python
		strategy = tf.distribute.TPUStrategy(...)
		with strategy.scope():
		  embedding = tf.tpu.experimental.embedding.TPUEmbedding(
		      feature_config=tf.tpu.experimental.embedding.FeatureConfig(
		          table=tf.tpu.experimental.embedding.TableConfig(
		              dim=...,
		              vocabulary_size=...)))
		```
		
		Args:
		  feature_config: A nested structure of
		    `tf.tpu.experimental.embedding.FeatureConfig` configs.
		  optimizer: An instance of one of `tf.tpu.experimental.embedding.SGD`,
		    `tf.tpu.experimental.embedding.Adagrad` or
		    `tf.tpu.experimental.embedding.Adam`. When not created under
		    TPUStrategy may be set to None to avoid the creation of the optimizer
		    slot variables, useful for optimizing memory consumption when exporting
		    the model for serving where slot variables aren't needed.
		  pipeline_execution_with_tensor_core: If True, the TPU embedding
		    computations will overlap with the TensorCore computations (and hence
		    will be one step old). Set to True for improved performance.
		
		Raises:
		  ValueError: If optimizer is not one of tf.tpu.experimental.embedding.(SGD,
		  Adam or Adagrad) or None when created under a TPUStrategy.
	**/
	@:native("__init__")
	public function ___init__(feature_config:Dynamic, optimizer:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic):Dynamic;
	/**
		Creates the TPUEmbedding mid level API object.
		
		```python
		strategy = tf.distribute.TPUStrategy(...)
		with strategy.scope():
		  embedding = tf.tpu.experimental.embedding.TPUEmbedding(
		      feature_config=tf.tpu.experimental.embedding.FeatureConfig(
		          table=tf.tpu.experimental.embedding.TableConfig(
		              dim=...,
		              vocabulary_size=...)))
		```
		
		Args:
		  feature_config: A nested structure of
		    `tf.tpu.experimental.embedding.FeatureConfig` configs.
		  optimizer: An instance of one of `tf.tpu.experimental.embedding.SGD`,
		    `tf.tpu.experimental.embedding.Adagrad` or
		    `tf.tpu.experimental.embedding.Adam`. When not created under
		    TPUStrategy may be set to None to avoid the creation of the optimizer
		    slot variables, useful for optimizing memory consumption when exporting
		    the model for serving where slot variables aren't needed.
		  pipeline_execution_with_tensor_core: If True, the TPU embedding
		    computations will overlap with the TensorCore computations (and hence
		    will be one step old). Set to True for improved performance.
		
		Raises:
		  ValueError: If optimizer is not one of tf.tpu.experimental.embedding.(SGD,
		  Adam or Adagrad) or None when created under a TPUStrategy.
	**/
	public function new(feature_config:Dynamic, optimizer:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic):Void;
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
		Support self.foo = trackable syntax.
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
	public function _add_data_for_ragged_tensor(tensor:Dynamic, weight:Dynamic, indices:Dynamic, values:Dynamic, weights:Dynamic, int_zeros:Dynamic, float_zeros:Dynamic, path:Dynamic):Dynamic;
	public function _add_data_for_sparse_tensor(tensor:Dynamic, weight:Dynamic, indices:Dynamic, values:Dynamic, weights:Dynamic, int_zeros:Dynamic, float_zeros:Dynamic, path:Dynamic):Dynamic;
	public function _add_data_for_tensor(tensor:Dynamic, weight:Dynamic, indices:Dynamic, values:Dynamic, weights:Dynamic, int_zeros:Dynamic, float_zeros:Dynamic, path:Dynamic):Dynamic;
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
		Computes a dict of lists of gradients, keyed by table name.
		
		Args:
		  gradients: A nested structure of Tensors (and Nones) with the same
		    structure as the feature config.
		
		Returns:
		  A dict of lists of tensors, keyed by the table names, containing the
		gradients in the correct order with None gradients replaced by zeros.
	**/
	public function _compute_per_table_gradients(gradients:Dynamic):Dynamic;
	/**
		Creates the TPUEmbeddingConfiguration proto.
		
		This proto is used to initialize the TPU embedding engine.
		
		Returns:
		  A TPUEmbeddingConfiguration proto.
	**/
	public function _create_config_proto():Dynamic;
	/**
		Create variables for TPU embeddings.
		
		Note under TPUStrategy this will ensure that all creations happen within a
		variable creation scope of the sharded variable creator.
		
		Returns:
		  A dict of dicts. The outer dict is keyed by the table names and the inner
		  dicts are keyed by 'parameters' and the slot variable names.
	**/
	public function _create_variables_and_slots():Dynamic;
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
	/**
		Overrides default Trackable implementation to add load/retrieve hook.
	**/
	public function _gather_saveables_for_checkpoint():Dynamic;
	/**
		Outputs a the enqueue op given the inputs and weights.
		
		Args:
		  flat_inputs: A list of input tensors.
		  flat_weights: A list of input weights (or None) of the same length as
		    flat_inputs.
		  flat_features: A list of FeatureConfigs of the same length as flat_inputs.
		  device_ordinal: The device to create the enqueue op for.
		  mode_override: A tensor containing the string "train" or "inference".
		
		Returns:
		  The enqueue op.
	**/
	public function _generate_enqueue_op(flat_inputs:Dynamic, flat_weights:Dynamic, flat_features:Dynamic, device_ordinal:Dynamic, mode_override:Dynamic):Dynamic;
	/**
		Gets the batch size from a nested structure of features.
	**/
	public function _get_batch_size(tensors:Dynamic, in_tpu_context:Dynamic):Dynamic;
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
		Return a dict of `Function`s of a trackable.
	**/
	public function _list_functions_for_serialization(unused_serialization_cache:Dynamic):Dynamic;
	public function _load_variables():Dynamic;
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
	public function _maybe_build(batch_size:Dynamic):Dynamic;
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
		Override to allow TrackableBase to disable dependency tracking.
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
		Raises an error if we are not in the TPUReplicateContext.
	**/
	public function _raise_error_for_incorrect_control_flow_context():Dynamic;
	/**
		Checks all tensors in features to see are placed on the CPU.
	**/
	public function _raise_error_for_inputs_not_on_cpu(flat_inputs:Dynamic, flat_paths:Dynamic):Dynamic;
	/**
		Checks all tensors in features to see if they are a direct input.
	**/
	public function _raise_error_for_non_direct_inputs(features:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	public function _retrieve_variables():Dynamic;
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
		Applies the gradient update to the embedding tables.
		
		If a gradient of `None` is passed in any position of the nested structure,
		then an gradient update with a zero gradient is applied for that feature.
		For optimizers like SGD or Adagrad, this is the same as applying no update
		at all. For lazy Adam and other sparsely applied optimizers with decay,
		ensure you understand the effect of applying a zero gradient.
		
		```python
		strategy = tf.distribute.TPUStrategy(...)
		with strategy.scope():
		  embedding = tf.tpu.experimental.embedding.TPUEmbedding(...)
		
		distributed_dataset = (
		    strategy.distribute_datasets_from_function(
		        dataset_fn=...,
		        options=tf.distribute.InputOptions(
		            experimental_fetch_to_device=False))
		dataset_iterator = iter(distributed_dataset)
		
		@tf.function
		def training_step():
		  def tpu_step(tpu_features):
		    with tf.GradientTape() as tape:
		      activations = embedding.dequeue()
		      tape.watch(activations)
		
		      loss = ... #  some computation involving activations
		
		    embedding_gradients = tape.gradient(loss, activations)
		    embedding.apply_gradients(embedding_gradients)
		
		  embedding_features, tpu_features = next(dataset_iterator)
		  embedding.enqueue(embedding_features, training=True)
		  strategy.run(tpu_step, args=(tpu_features, ))
		
		training_step()
		```
		
		Args:
		  gradients: A nested structure of gradients, with structure matching the
		    `feature_config` passed to this object.
		  name: A name for the underlying op.
		
		Raises:
		  RuntimeError: If called when object wasn't created under a `TPUStrategy`
		    or if not built (either by manually calling build or calling enqueue).
		  ValueError: If a non-`tf.Tensor` non-`None` gradient is passed in, or a
		    `tf.Tensor` of the incorrect shape is passed in. Also if
		    the size of any sequence in `gradients` does not match corresponding
		    sequence in `feature_config`.
		  TypeError: If the type of any sequence in `gradients` does not match
		    corresponding sequence in `feature_config`.
	**/
	public function apply_gradients(gradients:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create the underlying variables and initializes the TPU for embeddings.
		
		This method creates the underlying variables (including slot variables). If
		created under a TPUStrategy, this will also initialize the TPU for
		embeddings.
		
		This function will automatically get called by enqueue, which will try to
		determine your batch size automatically. If this fails, you must manually
		call this method before you call enqueue.
		
		Args:
		  per_replica_batch_size: The per replica batch size that you intend to use.
		    Note that is fixed and the same batch size must be used for both
		    training and evaluation. If you want to calculate this from the global
		    batch size, you can use `num_replicas_in_sync` property of your strategy
		    object. May be set to None if not created under a TPUStrategy.
		
		Raises:
		  ValueError: If per_replica_batch_size is None and object was created in a
		    TPUStrategy scope.
		  RuntimeError: If tpu embedding is already initialized on TPU.
	**/
	public function build(?per_replica_batch_size:Dynamic):Dynamic;
	/**
		Get the embedding results.
		
		Returns a nested structure of `tf.Tensor` objects, matching the structure of
		the `feature_config` argument to the `TPUEmbedding` class. The output shape
		of the tensors is `(batch_size, dim)`, where `batch_size` is the per core
		batch size, `dim` is the dimension of the corresponding `TableConfig`. If
		the feature's corresponding `FeatureConfig` has `max_sequence_length`
		greater than 0, the output will be a sequence of shape
		`(batch_size, max_sequence_length, dim)` instead.
		
		```python
		strategy = tf.distribute.TPUStrategy(...)
		with strategy.scope():
		  embedding = tf.tpu.experimental.embedding.TPUEmbedding(...)
		
		distributed_dataset = (
		    strategy.distribute_datasets_from_function(
		        dataset_fn=...,
		        options=tf.distribute.InputOptions(
		            experimental_fetch_to_device=False))
		dataset_iterator = iter(distributed_dataset)
		
		@tf.function
		def training_step():
		  def tpu_step(tpu_features):
		    with tf.GradientTape() as tape:
		      activations = embedding.dequeue()
		      tape.watch(activations)
		
		      loss = ... #  some computation involving activations
		
		    embedding_gradients = tape.gradient(loss, activations)
		    embedding.apply_gradients(embedding_gradients)
		
		  embedding_features, tpu_features = next(dataset_iterator)
		  embedding.enqueue(embedding_features, training=True)
		  strategy.run(tpu_step, args=(tpu_features, ))
		
		training_step()
		```
		
		Args:
		  name: A name for the underlying op.
		
		Returns:
		  A nested structure of tensors, with the same structure as `feature_config`
		passed to this instance of the `TPUEmbedding` object.
		
		Raises:
		  RuntimeError: If called when object wasn't created under a `TPUStrategy`
		    or if not built (either by manually calling build or calling enqueue).
	**/
	public function dequeue(?name:Dynamic):Dynamic;
	/**
		Returns a dict of embedding tables, keyed by `TableConfig`.
		
		This property only works when the `TPUEmbedding` object is created under a
		non-TPU strategy. This is intended to be used to for CPU based lookup when
		creating a serving checkpoint.
		
		Returns:
		  A dict of embedding tables, keyed by `TableConfig`.
		
		Raises:
		  RuntimeError: If object was created under a `TPUStrategy`.
	**/
	public var embedding_tables : Dynamic;
	/**
		Enqueues id tensors for embedding lookup.
		
		This function enqueues a structure of features to be looked up in the
		embedding tables. We expect that the batch size of each of the tensors in
		features matches the per core batch size. This will automatically happen if
		your input dataset is batched to the global batch size and you use
		`tf.distribute.TPUStrategy`'s `experimental_distribute_dataset`
		or if you use `distribute_datasets_from_function` and batch
		to the per core batch size computed by the context passed to your input
		function.
		
		```python
		strategy = tf.distribute.TPUStrategy(...)
		with strategy.scope():
		  embedding = tf.tpu.experimental.embedding.TPUEmbedding(...)
		
		distributed_dataset = (
		    strategy.distribute_datasets_from_function(
		        dataset_fn=...,
		        options=tf.distribute.InputOptions(
		            experimental_fetch_to_device=False))
		dataset_iterator = iter(distributed_dataset)
		
		@tf.function
		def training_step():
		  def tpu_step(tpu_features):
		    with tf.GradientTape() as tape:
		      activations = embedding.dequeue()
		      tape.watch(activations)
		
		      loss = ... #  some computation involving activations
		
		    embedding_gradients = tape.gradient(loss, activations)
		    embedding.apply_gradients(embedding_gradients)
		
		  embedding_features, tpu_features = next(dataset_iterator)
		  embedding.enqueue(embedding_features, training=True)
		  strategy.run(tpu_step, args=(tpu_features,))
		
		training_step()
		```
		
		NOTE: You should specify `training=True` when using
		`embedding.apply_gradients` as above and `training=False` when not using
		`embedding.apply_gradients` (e.g. for frozen embeddings or when doing
		evaluation).
		
		For finer grained control, in the above example the line
		
		```
		  embedding.enqueue(embedding_features, training=True)
		```
		
		may be replaced with
		
		```
		  per_core_embedding_features = self.strategy.experimental_local_results(
		      embedding_features)
		
		  def per_core_enqueue(ctx):
		    core_id = ctx.replica_id_in_sync_group
		    device = strategy.extended.worker_devices[core_id]
		    embedding.enqueue(per_core_embedding_features[core_id],
		                      device=device)
		
		  strategy.experimental_distribute_values_from_function(
		      per_core_queue_inputs)
		```
		
		Args:
		  features: A nested structure of `tf.Tensor`s, `tf.SparseTensor`s or
		    `tf.RaggedTensor`s, with the same structure as `feature_config`. Inputs
		    will be downcast to `tf.int32`. Only one type out of `tf.SparseTensor`
		    or `tf.RaggedTensor` is supported per call.
		  weights: If not `None`, a nested structure of `tf.Tensor`s,
		    `tf.SparseTensor`s or `tf.RaggedTensor`s, matching the above, except
		    that the tensors should be of float type (and they will be downcast to
		    `tf.float32`). For `tf.SparseTensor`s we assume the `indices` are the
		    same for the parallel entries from `features` and similarly for
		    `tf.RaggedTensor`s we assume the row_splits are the same.
		  training: Defaults to `True`. If `False`, enqueue the batch as inference
		    batch (forward pass only). Do not call `apply_gradients` when this is
		    `False` as this may lead to a deadlock.
		   name: A name for the underlying op.
		   device: The device name (e.g. '/task:0/device:TPU:2') where this batch
		     should be enqueued. This should be set if and only if features is not a
		     `tf.distribute.DistributedValues` and enqueue is not being called
		     inside a TPU context (e.g. inside `TPUStrategy.run`).
		
		Raises:
		  ValueError: When called inside a strategy.run call and input is not
		    directly taken from the args of the `strategy.run` call. Also if
		    the size of any sequence in `features` does not match corresponding
		    sequence in `feature_config`. Similarly for `weights`, if not `None`.
		    If batch size of features is unequal or different from a previous call.
		  RuntimeError: When called inside a strategy.run call and inside XLA
		    control flow. If batch_size is not able to be determined and build was
		    not called.
		  TypeError: If the type of any sequence in `features` does not match
		    corresponding sequence in `feature_config`. Similarly for `weights`, if
		    not `None`.
	**/
	public function enqueue(features:Dynamic, ?weights:Dynamic, ?training:Dynamic, ?name:Dynamic, ?device:Dynamic):Dynamic;
}