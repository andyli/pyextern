/* This file is generated, do not edit! */
package tensorflow.python.ops.stateful_random_ops;
@:pythonImport("tensorflow.python.ops.stateful_random_ops", "Generator") extern class Generator {
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
		Creates a generator.
		
		The new generator will be initialized by one of the following ways, with
		decreasing precedence:
		(1) If `copy_from` is not None, the new generator is initialized by copying
		    information from another generator.
		(2) If `state` and `alg` are not None (they must be set together), the new
		    generator is initialized by a state.
		
		Args:
		  copy_from: a generator to be copied from.
		  state: a vector of dtype STATE_TYPE representing the initial state of the
		    RNG, whose length and semantics are algorithm-specific. If it's a
		    variable, the generator will reuse it instead of creating a new
		    variable.
		  alg: the RNG algorithm. Possible values are
		    `tf.random.Algorithm.PHILOX` for the Philox algorithm and
		    `tf.random.Algorithm.THREEFRY` for the ThreeFry algorithm
		    (see paper 'Parallel Random Numbers: As Easy as 1, 2, 3'
		    [https://www.thesalmons.org/john/random123/papers/random123sc11.pdf]).
		    The string names `"philox"` and `"threefry"` can also be used.
		    Note `PHILOX` guarantees the same numbers are produced (given
		    the same random state) across all architectures (CPU, GPU, XLA etc).
	**/
	@:native("__init__")
	public function ___init__(?copy_from:Dynamic, ?state:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Creates a generator.
		
		The new generator will be initialized by one of the following ways, with
		decreasing precedence:
		(1) If `copy_from` is not None, the new generator is initialized by copying
		    information from another generator.
		(2) If `state` and `alg` are not None (they must be set together), the new
		    generator is initialized by a state.
		
		Args:
		  copy_from: a generator to be copied from.
		  state: a vector of dtype STATE_TYPE representing the initial state of the
		    RNG, whose length and semantics are algorithm-specific. If it's a
		    variable, the generator will reuse it instead of creating a new
		    variable.
		  alg: the RNG algorithm. Possible values are
		    `tf.random.Algorithm.PHILOX` for the Philox algorithm and
		    `tf.random.Algorithm.THREEFRY` for the ThreeFry algorithm
		    (see paper 'Parallel Random Numbers: As Easy as 1, 2, 3'
		    [https://www.thesalmons.org/john/random123/papers/random123sc11.pdf]).
		    The string names `"philox"` and `"threefry"` can also be used.
		    Note `PHILOX` guarantees the same numbers are produced (given
		    the same random state) across all architectures (CPU, GPU, XLA etc).
	**/
	public function new(?copy_from:Dynamic, ?state:Dynamic, ?alg:Dynamic):Void;
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
		Creates a variable.
		
		Args:
		  *args: positional arguments passed along to `variables.Variable.
		  **kwargs: keyword arguments passed along to `variables.Variable.
		
		Returns:
		  The created variable.
	**/
	public function _create_variable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a dict of `Function`s of a trackable.
	**/
	public function _list_functions_for_serialization(unused_serialization_cache:Dynamic):Dynamic;
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
	public function _make_int64_keys(?shape:Dynamic):Dynamic;
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
	public function _prepare_key_counter(shape:Dynamic):Dynamic;
	public function _preprocess_key(key:Dynamic):Dynamic;
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
	public function _skip_single_var(_var:Dynamic, delta:Dynamic):Dynamic;
	public function _standard_normal(shape:Dynamic, dtype:Dynamic):Dynamic;
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
	public function _truncated_normal(shape:Dynamic, dtype:Dynamic):Dynamic;
	public var _unconditional_checkpoint_dependencies : Dynamic;
	public var _unconditional_dependency_names : Dynamic;
	public function _uniform(shape:Dynamic, dtype:Dynamic):Dynamic;
	public function _uniform_full_int(shape:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	public var _update_uid : Dynamic;
	/**
		The RNG algorithm id (a Python integer or scalar integer Tensor).
	**/
	public var algorithm : Dynamic;
	/**
		Outputs random values from a binomial distribution.
		
		The generated values follow a binomial distribution with specified count and
		probability of success parameters.
		
		Example:
		
		```python
		counts = [10., 20.]
		# Probability of success.
		probs = [0.8]
		
		rng = tf.random.Generator.from_seed(seed=234)
		binomial_samples = rng.binomial(shape=[2], counts=counts, probs=probs)
		
		
		counts = ... # Shape [3, 1, 2]
		probs = ...  # Shape [1, 4, 2]
		shape = [3, 4, 3, 4, 2]
		rng = tf.random.Generator.from_seed(seed=1717)
		# Sample shape will be [3, 4, 3, 4, 2]
		binomial_samples = rng.binomial(shape=shape, counts=counts, probs=probs)
		```
		
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output
		    tensor.
		  counts: Tensor. The counts of the binomial distribution. Must be
		    broadcastable with `probs`, and broadcastable with the rightmost
		    dimensions of `shape`.
		  probs: Tensor. The probability of success for the
		    binomial distribution. Must be broadcastable with `counts` and
		    broadcastable with the rightmost dimensions of `shape`.
		  dtype: The type of the output. Default: tf.int32
		  name: A name for the operation (optional).
		
		Returns:
		  samples: A Tensor of the specified shape filled with random binomial
		    values.  For each i, each samples[i, ...] is an independent draw from
		    the binomial distribution on counts[i] trials with probability of
		    success probs[i].
	**/
	public function binomial(shape:Dynamic, counts:Dynamic, probs:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a generator from a key and a counter.
		
		This constructor only applies if the algorithm is a counter-based algorithm.
		See method `key` for the meaning of "key" and "counter".
		
		Args:
		  key: the key for the RNG, a scalar of type STATE_TYPE.
		  counter: a vector of dtype STATE_TYPE representing the initial counter for
		    the RNG, whose length is algorithm-specific.,
		  alg: the RNG algorithm. If None, it will be auto-selected. See
		    `__init__` for its possible values.
		
		Returns:
		  The new generator.
	**/
	static public function from_key_counter(key:Dynamic, counter:Dynamic, alg:Dynamic):Dynamic;
	/**
		Creates a generator by non-deterministically initializing its state.
		
		The source of the non-determinism will be platform- and time-dependent.
		
		Args:
		  alg: (optional) the RNG algorithm. If None, it will be auto-selected. See
		    `__init__` for its possible values.
		
		Returns:
		  The new generator.
	**/
	static public function from_non_deterministic_state(?alg:Dynamic):Dynamic;
	/**
		Creates a generator from a seed.
		
		A seed is a 1024-bit unsigned integer represented either as a Python
		integer or a vector of integers. Seeds shorter than 1024-bit will be
		padded. The padding, the internal structure of a seed and the way a seed
		is converted to a state are all opaque (unspecified). The only semantics
		specification of seeds is that two different seeds are likely to produce
		two independent generators (but no guarantee).
		
		Args:
		  seed: the seed for the RNG.
		  alg: (optional) the RNG algorithm. If None, it will be auto-selected. See
		    `__init__` for its possible values.
		
		Returns:
		  The new generator.
	**/
	static public function from_seed(seed:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Creates a generator from a state.
		
		See `__init__` for description of `state` and `alg`.
		
		Args:
		  state: the new state.
		  alg: the RNG algorithm.
		
		Returns:
		  The new generator.
	**/
	static public function from_state(state:Dynamic, alg:Dynamic):Dynamic;
	/**
		The 'key' part of the state of a counter-based RNG.
		
		For a counter-base RNG algorithm such as Philox and ThreeFry (as
		described in paper 'Parallel Random Numbers: As Easy as 1, 2, 3'
		[https://www.thesalmons.org/john/random123/papers/random123sc11.pdf]),
		the RNG state consists of two parts: counter and key. The output is
		generated via the formula: output=hash(key, counter), i.e. a hashing of
		the counter parametrized by the key. Two RNGs with two different keys can
		be thought as generating two independent random-number streams (a stream
		is formed by increasing the counter).
		
		Returns:
		  A scalar which is the 'key' part of the state, if the RNG algorithm is
		    counter-based; otherwise it raises a ValueError.
	**/
	public var key : Dynamic;
	/**
		Generates seeds for stateless random ops.
		
		For example:
		
		```python
		seeds = get_global_generator().make_seeds(count=10)
		for i in range(10):
		  seed = seeds[:, i]
		  numbers = stateless_random_normal(shape=[2, 3], seed=seed)
		  ...
		```
		
		Args:
		  count: the number of seed pairs (note that stateless random ops need a
		    pair of seeds to invoke).
		
		Returns:
		  A tensor of shape [2, count] and dtype int64.
	**/
	public function make_seeds(?count:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output
		    tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard
		    deviation of the normal distribution.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	public function normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resets the generator by a new state.
		
		See `__init__` for the meaning of "state".
		
		Args:
		  state: the new state.
	**/
	public function reset(state:Dynamic):Dynamic;
	/**
		Resets the generator by a new key-counter pair.
		
		See `from_key_counter` for the meaning of "key" and "counter".
		
		Args:
		  key: the new key.
		  counter: the new counter.
	**/
	public function reset_from_key_counter(key:Dynamic, counter:Dynamic):Dynamic;
	/**
		Resets the generator by a new seed.
		
		See `from_seed` for the meaning of "seed".
		
		Args:
		  seed: the new seed.
	**/
	public function reset_from_seed(seed:Dynamic):Dynamic;
	/**
		Advance the counter of a counter-based RNG.
		
		Args:
		  delta: the amount of advancement. The state of the RNG after
		    `skip(n)` will be the same as that after `normal([n])`
		    (or any other distribution). The actual increment added to the
		    counter is an unspecified implementation detail.
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	public function skip(delta:Dynamic):Dynamic;
	/**
		Returns a list of independent `Generator` objects.
		
		Two generators are independent of each other in the sense that the
		random-number streams they generate don't have statistically detectable
		correlations. The new generators are also independent of the old one.
		The old generator's state will be changed (like other random-number
		generating methods), so two calls of `split` will return different
		new generators.
		
		For example:
		
		```python
		gens = get_global_generator().split(count=10)
		for gen in gens:
		  numbers = gen.normal(shape=[2, 3])
		  # ...
		gens2 = get_global_generator().split(count=10)
		# gens2 will be different from gens
		```
		
		The new generators will be put on the current device (possible different
		from the old generator's), for example:
		
		```python
		with tf.device("/device:CPU:0"):
		  gen = Generator(seed=1234)  # gen is on CPU
		with tf.device("/device:GPU:0"):
		  gens = gen.split(count=10)  # gens are on GPU
		```
		
		Args:
		  count: the number of generators to return.
		
		Returns:
		  A list (length `count`) of `Generator` objects independent of each other.
		  The new generators have the same RNG algorithm as the old one.
	**/
	public function split(?count:Dynamic):Dynamic;
	/**
		The internal state of the RNG.
	**/
	public var state : Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than
		2 standard deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output
		    tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard
		    deviation of the normal distribution, before truncation.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal
		    values.
	**/
	public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range
		`[minval, maxval)`. The lower bound `minval` is included in the range, while
		the upper bound `maxval` is excluded. (For float numbers especially
		low-precision types like bfloat16, because of
		rounding, the result may sometimes include `maxval`.)
		
		For floats, the default range is `[0, 1)`.  For ints, at least `maxval` must
		be specified explicitly.
		
		In the integer case, the random integers are slightly biased unless
		`maxval - minval` is an exact power of two.  The bias is small for values of
		`maxval - minval` significantly smaller than the range of the output (either
		`2**32` or `2**64`).
		
		For full-range random integers, pass `minval=None` and `maxval=None` with an
		integer `dtype` (for integer dtypes, `minval` and `maxval` must be both
		`None` or both not `None`).
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output
		    tensor.
		  minval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs
		    to be a scalar). The lower bound (included) on the range of random
		    values to generate. Pass `None` for full-range integers. Defaults to 0.
		  maxval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs
		    to be a scalar). The upper bound (excluded) on the range of random
		    values to generate. Pass `None` for full-range integers. Defaults to 1
		    if `dtype` is floating point.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	public function uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Uniform distribution on an integer type's entire range.
		
		This method is the same as setting `minval` and `maxval` to `None` in the
		`uniform` method.
		
		Args:
		  shape: the shape of the output.
		  dtype: (optional) the integer type, default to uint64.
		  name: (optional) the name of the node.
		
		Returns:
		  A tensor of random numbers of the required shape.
	**/
	public function uniform_full_int(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}