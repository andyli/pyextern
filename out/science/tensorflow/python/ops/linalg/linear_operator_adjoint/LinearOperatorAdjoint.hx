/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_adjoint;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_adjoint", "LinearOperatorAdjoint") extern class LinearOperatorAdjoint {
	/**
		Returns the adjoint of the current `LinearOperator`.
		
		Given `A` representing this `LinearOperator`, return `A*`.
		Note that calling `self.adjoint()` and `self.H` are equivalent.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `LinearOperator` which represents the adjoint of this `LinearOperator`.
	**/
	public var H : Dynamic;
	static public var _TF_MODULE_IGNORED_PROPERTIES : Dynamic;
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
		Initialize a `LinearOperatorAdjoint`.
		
		`LinearOperatorAdjoint` is initialized with an operator `A`.  The `solve`
		and `matmul` methods  effectively flip the `adjoint` argument.  E.g.
		
		```
		A = MyLinearOperator(...)
		B = LinearOperatorAdjoint(A)
		x = [....]  # a vector
		
		assert A.matvec(x, adjoint=True) == B.matvec(x, adjoint=False)
		```
		
		Args:
		  operator: `LinearOperator` object.
		  is_non_singular:  Expect that this operator is non-singular.
		  is_self_adjoint:  Expect that this operator is equal to its hermitian
		    transpose.
		  is_positive_definite:  Expect that this operator is positive definite,
		    meaning the quadratic form `x^H A x` has positive real part for all
		    nonzero `x`.  Note that we do not require the operator to be
		    self-adjoint to be positive-definite.  See:
		    https://en.wikipedia.org/wiki/Positive-definite_matrix#Extension_for_non-symmetric_matrices
		  is_square:  Expect that this operator acts like square [batch] matrices.
		  name: A name for this `LinearOperator`. Default is `operator.name +
		    "_adjoint"`.
		
		Raises:
		  ValueError:  If `operator.is_non_singular` is False.
	**/
	@:native("__init__")
	public function ___init__(_operator:Dynamic, ?is_non_singular:Dynamic, ?is_self_adjoint:Dynamic, ?is_positive_definite:Dynamic, ?is_square:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize a `LinearOperatorAdjoint`.
		
		`LinearOperatorAdjoint` is initialized with an operator `A`.  The `solve`
		and `matmul` methods  effectively flip the `adjoint` argument.  E.g.
		
		```
		A = MyLinearOperator(...)
		B = LinearOperatorAdjoint(A)
		x = [....]  # a vector
		
		assert A.matvec(x, adjoint=True) == B.matvec(x, adjoint=False)
		```
		
		Args:
		  operator: `LinearOperator` object.
		  is_non_singular:  Expect that this operator is non-singular.
		  is_self_adjoint:  Expect that this operator is equal to its hermitian
		    transpose.
		  is_positive_definite:  Expect that this operator is positive definite,
		    meaning the quadratic form `x^H A x` has positive real part for all
		    nonzero `x`.  Note that we do not require the operator to be
		    self-adjoint to be positive-definite.  See:
		    https://en.wikipedia.org/wiki/Positive-definite_matrix#Extension_for_non-symmetric_matrices
		  is_square:  Expect that this operator acts like square [batch] matrices.
		  name: A name for this `LinearOperator`. Default is `operator.name +
		    "_adjoint"`.
		
		Raises:
		  ValueError:  If `operator.is_non_singular` is False.
	**/
	public function new(_operator:Dynamic, ?is_non_singular:Dynamic, ?is_self_adjoint:Dynamic, ?is_positive_definite:Dynamic, ?is_square:Dynamic, ?name:Dynamic):Void;
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
	public function __matmul__(other:Dynamic):Dynamic;
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
	static public var _abc_impl : Dynamic;
	public function _add_to_tensor(x:Dynamic):Dynamic;
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
		Private default implementation of _assert_non_singular.
	**/
	public function _assert_non_singular():Dynamic;
	/**
		Default implementation of _assert_positive_definite.
	**/
	public function _assert_positive_definite():Dynamic;
	public function _assert_self_adjoint():Dynamic;
	public function _batch_shape_tensor(?shape:Dynamic):Dynamic;
	public function _can_use_cholesky():Dynamic;
	/**
		Check that arg.dtype == self.dtype.
	**/
	public function _check_input_dtype(arg:Dynamic):Dynamic;
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
		A tuple of parameter names to rebuild the `LinearOperator`.
		
		The tuple contains the names of kwargs to the `LinearOperator`'s constructor
		that the `TypeSpec` needs to rebuild the `LinearOperator` instance.
		
		"is_non_singular", "is_self_adjoint", "is_positive_definite", and
		"is_square" are common to all `LinearOperator` subclasses and may be
		omitted.
	**/
	public var _composite_tensor_fields : Dynamic;
	/**
		A tuple of names referring to parameters that may be treated statically.
		
		This is a subset of `_composite_tensor_fields`, and contains the names of
		of `Tensor`-like args to the `LinearOperator`s constructor that may be
		stored as static values, if they are statically known. These are typically
		shapes or axis values.
	**/
	public var _composite_tensor_prefer_static_fields : Dynamic;
	public function _cond():Dynamic;
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
		Removes the tracking of name.
	**/
	public function _delete_tracking(name:Dynamic):Dynamic;
	/**
		Solve by conversion to a dense matrix.
	**/
	public function _dense_solve(rhs:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic):Dynamic;
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
	public function _determinant():Dynamic;
	/**
		Generic and often inefficient implementation.  Override often.
	**/
	public function _diag_part():Dynamic;
	public function _domain_dimension_tensor(?shape:Dynamic):Dynamic;
	public function _eigvals():Dynamic;
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
	public function _log_abs_determinant():Dynamic;
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
	public function _matmul(x:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic):Dynamic;
	public function _matvec(x:Dynamic, ?adjoint:Dynamic):Dynamic;
	/**
		Return the maximum condition number that we consider nonsingular.
	**/
	public function _max_condition_number_to_be_non_singular():Dynamic;
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
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic):Dynamic;
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
	public function _range_dimension_tensor(?shape:Dynamic):Dynamic;
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
	/**
		Set self._graph_parents.  Called during derived class init.
		
		This method allows derived classes to set graph_parents, without triggering
		a deprecation warning (which is invoked if `graph_parents` is passed during
		`__init__`.
		
		Args:
		  graph_parents: Iterable over Tensors.
	**/
	public function _set_graph_parents(graph_parents:Dynamic):Dynamic;
	public var _setattr_tracking : Dynamic;
	public function _shape():Dynamic;
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
	public function _shape_tensor():Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	/**
		Default implementation of _solve.
	**/
	public function _solve(rhs:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic):Dynamic;
	/**
		Default implementation of _solvevec.
	**/
	public function _solvevec(rhs:Dynamic, ?adjoint:Dynamic):Dynamic;
	public function _tensor_rank_tensor(?shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Generic and often inefficient implementation.  Override often.
	**/
	public function _to_dense():Dynamic;
	public function _trace():Dynamic;
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
		Builds a `_LinearOperatorSpec` from a `LinearOperator` instance.
		
		Args:
		  operator: An instance of `LinearOperator`.
		
		Returns:
		  linear_operator_spec: An instance of `_LinearOperatorSpec` to be used as
		    the `TypeSpec` of `operator`.
	**/
	public var _type_spec : Dynamic;
	public var _unconditional_checkpoint_dependencies : Dynamic;
	public var _unconditional_dependency_names : Dynamic;
	public var _update_uid : Dynamic;
	/**
		Add matrix represented by this operator to `x`.  Equivalent to `A + x`.
		
		Args:
		  x:  `Tensor` with same `dtype` and shape broadcastable to `self.shape`.
		  name:  A name to give this `Op`.
		
		Returns:
		  A `Tensor` with broadcast shape and same `dtype` as `self`.
	**/
	public function add_to_tensor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the adjoint of the current `LinearOperator`.
		
		Given `A` representing this `LinearOperator`, return `A*`.
		Note that calling `self.adjoint()` and `self.H` are equivalent.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `LinearOperator` which represents the adjoint of this `LinearOperator`.
	**/
	public function adjoint(?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is non singular.
		
		This operator is considered non-singular if
		
		```
		ConditionNumber < max{100, range_dimension, domain_dimension} * eps,
		eps := np.finfo(self.dtype.as_numpy_dtype).eps
		```
		
		Args:
		  name:  A string name to prepend to created ops.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is singular.
	**/
	public function assert_non_singular(?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is positive definite.
		
		Here, positive definite means that the quadratic form `x^H A x` has positive
		real part for all nonzero `x`.  Note that we do not require the operator to
		be self-adjoint to be positive definite.
		
		Args:
		  name:  A name to give this `Op`.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is not positive definite.
	**/
	public function assert_positive_definite(?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is self-adjoint.
		
		Here we check that this operator is *exactly* equal to its hermitian
		transpose.
		
		Args:
		  name:  A string name to prepend to created ops.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is not self-adjoint.
	**/
	public function assert_self_adjoint(?name:Dynamic):Dynamic;
	/**
		`TensorShape` of batch dimensions of this `LinearOperator`.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns
		`TensorShape([B1,...,Bb])`, equivalent to `A.shape[:-2]`
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public var batch_shape : Dynamic;
	/**
		Shape of batch dimensions of this operator, determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns a `Tensor` holding
		`[B1,...,Bb]`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function batch_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Returns a Cholesky factor as a `LinearOperator`.
		
		Given `A` representing this `LinearOperator`, if `A` is positive definite
		self-adjoint, return `L`, where `A = L L^T`, i.e. the cholesky
		decomposition.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `LinearOperator` which represents the lower triangular matrix
		  in the Cholesky decomposition.
		
		Raises:
		  ValueError: When the `LinearOperator` is not hinted to be positive
		    definite and self adjoint.
	**/
	public function cholesky(?name:Dynamic):Dynamic;
	/**
		Returns the condition number of this linear operator.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Shape `[B1,...,Bb]` `Tensor` of same `dtype` as `self`.
	**/
	public function cond(?name:Dynamic):Dynamic;
	/**
		Determinant for every batch member.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `Tensor` with shape `self.batch_shape` and same `dtype` as `self`.
		
		Raises:
		  NotImplementedError:  If `self.is_square` is `False`.
	**/
	public function determinant(?name:Dynamic):Dynamic;
	/**
		Efficiently get the [batch] diagonal part of this operator.
		
		If this operator has shape `[B1,...,Bb, M, N]`, this returns a
		`Tensor` `diagonal`, of shape `[B1,...,Bb, min(M, N)]`, where
		`diagonal[b1,...,bb, i] = self.to_dense()[b1,...,bb, i, i]`.
		
		```
		my_operator = LinearOperatorDiag([1., 2.])
		
		# Efficiently get the diagonal
		my_operator.diag_part()
		==> [1., 2.]
		
		# Equivalent, but inefficient method
		tf.linalg.diag_part(my_operator.to_dense())
		==> [1., 2.]
		```
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  diag_part:  A `Tensor` of same `dtype` as self.
	**/
	public function diag_part(?name:Dynamic):Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the domain of this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `N`.
		
		Returns:
		  `Dimension` object.
	**/
	public var domain_dimension : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the domain of this operator.
		
		Determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `N`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function domain_dimension_tensor(?name:Dynamic):Dynamic;
	/**
		The `DType` of `Tensor`s handled by this `LinearOperator`.
	**/
	public var dtype : Dynamic;
	/**
		Returns the eigenvalues of this linear operator.
		
		If the operator is marked as self-adjoint (via `is_self_adjoint`)
		this computation can be more efficient.
		
		Note: This currently only supports self-adjoint operators.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Shape `[B1,...,Bb, N]` `Tensor` of same `dtype` as `self`.
	**/
	public function eigvals(?name:Dynamic):Dynamic;
	/**
		List of graph dependencies of this `LinearOperator`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Do not call `graph_parents`.
	**/
	public var graph_parents : Dynamic;
	/**
		Returns the Inverse of this `LinearOperator`.
		
		Given `A` representing this `LinearOperator`, return a `LinearOperator`
		representing `A^-1`.
		
		Args:
		  name: A name scope to use for ops added by this method.
		
		Returns:
		  `LinearOperator` representing inverse of this matrix.
		
		Raises:
		  ValueError: When the `LinearOperator` is not hinted to be `non_singular`.
	**/
	public function inverse(?name:Dynamic):Dynamic;
	public var is_non_singular : Dynamic;
	public var is_positive_definite : Dynamic;
	public var is_self_adjoint : Dynamic;
	/**
		Return `True/False` depending on if this operator is square.
	**/
	public var is_square : Dynamic;
	/**
		Log absolute value of determinant for every batch member.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `Tensor` with shape `self.batch_shape` and same `dtype` as `self`.
		
		Raises:
		  NotImplementedError:  If `self.is_square` is `False`.
	**/
	public function log_abs_determinant(?name:Dynamic):Dynamic;
	/**
		Transform [batch] matrix `x` with left multiplication:  `x --> Ax`.
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		X = ... # shape [..., N, R], batch matrix, R > 0.
		
		Y = operator.matmul(X)
		Y.shape
		==> [..., M, R]
		
		Y[..., :, r] = sum_j A[..., :, j] X[j, r]
		```
		
		Args:
		  x: `LinearOperator` or `Tensor` with compatible shape and same `dtype` as
		    `self`. See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, left multiply by the adjoint: `A^H x`.
		  adjoint_arg:  Python `bool`.  If `True`, compute `A x^H` where `x^H` is
		    the hermitian transpose (transposition and complex conjugation).
		  name:  A name for this `Op`.
		
		Returns:
		  A `LinearOperator` or `Tensor` with shape `[..., M, R]` and same `dtype`
		    as `self`.
	**/
	public function matmul(x:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transform [batch] vector `x` with left multiplication:  `x --> Ax`.
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		
		X = ... # shape [..., N], batch vector
		
		Y = operator.matvec(X)
		Y.shape
		==> [..., M]
		
		Y[..., :] = sum_j A[..., :, j] X[..., j]
		```
		
		Args:
		  x: `Tensor` with compatible shape and same `dtype` as `self`.
		    `x` is treated as a [batch] vector meaning for every set of leading
		    dimensions, the last dimension defines a vector.
		    See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, left multiply by the adjoint: `A^H x`.
		  name:  A name for this `Op`.
		
		Returns:
		  A `Tensor` with shape `[..., M]` and same `dtype` as `self`.
	**/
	public function matvec(x:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Name prepended to all ops created by this `LinearOperator`.
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
		The operator before taking the adjoint.
	**/
	@:native("operator")
	public var _operator : Dynamic;
	/**
		Dictionary of parameters used to instantiate this `LinearOperator`.
	**/
	public var parameters : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the range of this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `M`.
		
		Returns:
		  `Dimension` object.
	**/
	public var range_dimension : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the range of this operator.
		
		Determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `M`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function range_dimension_tensor(?name:Dynamic):Dynamic;
	/**
		`TensorShape` of this `LinearOperator`.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns
		`TensorShape([B1,...,Bb, M, N])`, equivalent to `A.shape`.
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public var shape : Dynamic;
	/**
		Shape of this `LinearOperator`, determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns a `Tensor` holding
		`[B1,...,Bb, M, N]`, equivalent to `tf.shape(A)`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function shape_tensor(?name:Dynamic):Dynamic;
	/**
		Solve (exact or approx) `R` (batch) systems of equations: `A X = rhs`.
		
		The returned `Tensor` will be close to an exact solution if `A` is well
		conditioned. Otherwise closeness will vary. See class docstring for details.
		
		Examples:
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		# Solve R > 0 linear systems for every member of the batch.
		RHS = ... # shape [..., M, R]
		
		X = operator.solve(RHS)
		# X[..., :, r] is the solution to the r'th linear system
		# sum_j A[..., :, j] X[..., j, r] = RHS[..., :, r]
		
		operator.matmul(X)
		==> RHS
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator and compatible shape.
		    `rhs` is treated like a [batch] matrix meaning for every set of leading
		    dimensions, the last two dimensions defines a matrix.
		    See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, solve the system involving the adjoint
		    of this `LinearOperator`:  `A^H X = rhs`.
		  adjoint_arg:  Python `bool`.  If `True`, solve `A X = rhs^H` where `rhs^H`
		    is the hermitian transpose (transposition and complex conjugation).
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with shape `[...,N, R]` and same `dtype` as `rhs`.
		
		Raises:
		  NotImplementedError:  If `self.is_non_singular` or `is_square` is False.
	**/
	public function solve(rhs:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve single equation with best effort: `A X = rhs`.
		
		The returned `Tensor` will be close to an exact solution if `A` is well
		conditioned. Otherwise closeness will vary. See class docstring for details.
		
		Examples:
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		# Solve one linear system for every member of the batch.
		RHS = ... # shape [..., M]
		
		X = operator.solvevec(RHS)
		# X is the solution to the linear system
		# sum_j A[..., :, j] X[..., j] = RHS[..., :]
		
		operator.matvec(X)
		==> RHS
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator.
		    `rhs` is treated like a [batch] vector meaning for every set of leading
		    dimensions, the last dimension defines a vector.  See class docstring
		    for definition of compatibility regarding batch dimensions.
		  adjoint: Python `bool`.  If `True`, solve the system involving the adjoint
		    of this `LinearOperator`:  `A^H X = rhs`.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with shape `[...,N]` and same `dtype` as `rhs`.
		
		Raises:
		  NotImplementedError:  If `self.is_non_singular` or `is_square` is False.
	**/
	public function solvevec(rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
		Rank (in the sense of tensors) of matrix corresponding to this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `b + 2`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Python integer, or None if the tensor rank is undefined.
	**/
	public var tensor_rank : Dynamic;
	/**
		Rank (in the sense of tensors) of matrix corresponding to this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `b + 2`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`, determined at runtime.
	**/
	public function tensor_rank_tensor(?name:Dynamic):Dynamic;
	/**
		Return a dense (batch) matrix representing this operator.
	**/
	public function to_dense(?name:Dynamic):Dynamic;
	/**
		Trace of the linear operator, equal to sum of `self.diag_part()`.
		
		If the operator is square, this is also the sum of the eigenvalues.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Shape `[B1,...,Bb]` `Tensor` of same `dtype` as `self`.
	**/
	public function trace(?name:Dynamic):Dynamic;
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
		Sequence of variables owned by this module and its submodules.
		
		Note: this method uses reflection to find variables on the current instance
		and submodules. For performance reasons you may wish to cache the result
		of calling this method if you don't expect the return value to change.
		
		Returns:
		  A sequence of variables for the current module (sorted by attribute
		  name) followed by variables from all submodules recursively (breadth
		  first).
	**/
	public var variables : Dynamic;
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