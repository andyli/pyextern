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
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this iterator.
		  output_classes: A nested structure of Python `type` objects corresponding
		    to each component of an element of this iterator.
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
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this iterator.
		  output_classes: A nested structure of Python `type` objects corresponding
		    to each component of an element of this iterator.
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Restore-on-create for a variable be saved with this `Checkpointable`.
		
		If the user has requested that this object or another `Checkpointable` which
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
		  A list of `CheckpointableReference` objects indicating named
		  `Checkpointable` dependencies which should be saved along with this
		  object.
	**/
	public var _checkpoint_dependencies : Dynamic;
	/**
		A dictionary with deferred dependencies.
		
		Stores restorations for other Checkpointable objects on which this object
		may eventually depend. May be overridden by sub-classes (e.g. Optimizers use
		conditional dependencies based the current graph, and so need separate
		management of deferred dependencies too).
		
		Returns:
		  A dictionary mapping from local name to a list of _CheckpointPosition
		  objects.
	**/
	public var _deferred_dependencies : Dynamic;
	/**
		The structure of an element of this iterator.
		
		Returns:
		  A `Structure` object representing the structure of the components of this
		    optional.
	**/
	public var _element_structure : Dynamic;
	/**
		Returns a dictionary of values to checkpoint with this object.
		
		Keys in the returned dictionary are local to this object and in a separate
		namespace from dependencies. Values may either be `SaveableObject` factories
		or variables easily converted to `SaveableObject`s (as in `tf.train.Saver`'s
		`var_list` constructor argument).
		
		`SaveableObjects` have a name set, which Checkpointable needs to generate
		itself. So rather than returning `SaveableObjects` directly, this method
		should return a dictionary of callables which take `name` arguments and
		return `SaveableObjects` with that name.
		
		If this object may also be passed to the global-name-based `tf.train.Saver`,
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
		Pop and load any deferred checkpoint restores into `checkpointable`.
		
		This method does not add a new dependency on `checkpointable`, but it does
		check if any outstanding/deferred dependencies have been queued waiting for
		this dependency to be added (matched based on `name`). If so,
		`checkpointable` and its dependencies are restored. The restorations are
		considered fulfilled and so are deleted.
		
		`_track_checkpointable` is more appropriate for adding a
		normal/unconditional dependency, and includes handling for deferred
		restorations. This method allows objects such as `Optimizer` to use the same
		restoration logic while managing conditional dependencies themselves, by
		overriding `_checkpoint_dependencies` and `_lookup_dependency` to change the
		object's dependencies based on the context it is saved/restored in (a single
		optimizer instance can have state associated with multiple graphs).
		
		Args:
		  name: The name of the dependency within this object (`self`), used to
		    match `checkpointable` with values saved in a checkpoint.
		  checkpointable: The Checkpointable object to restore (inheriting from
		    `CheckpointableBase`).
	**/
	public function _handle_deferred_dependencies(name:Dynamic, checkpointable:Dynamic):Dynamic;
	/**
		Look up a dependency by name.
		
		May be overridden to include conditional dependencies.
		
		Args:
		  name: The local name of the dependency.
		Returns:
		  A `Checkpointable` object, or `None` if no dependency by this name was
		  found.
	**/
	public function _lookup_dependency(name:Dynamic):Dynamic;
	/**
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_checkpointable():Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	/**
		If automatic dependency tracking is enabled, ignores `value`.
	**/
	public function _no_dependency(value:Dynamic):Dynamic;
	/**
		Return a dependency's value for restore-on-create.
		
		Note the restoration is not deleted; if for some reason preload is called
		and then not assigned to the variable (for example because a custom getter
		overrides the initializer), the assignment will still happen once the
		variable is tracked (determined based on checkpoint.restore_uid).
		
		Args:
		  name: The object-local name of the dependency holding the variable's
		    value.
		  shape: The shape of the variable being loaded into.
		Returns:
		  An callable for use as a variable's initializer/initial_value, or None if
		  one should not be set (either because there was no variable with this name
		  in the checkpoint or because it needs more complex deserialization). Any
		  non-trivial deserialization will happen when the variable object is
		  tracked.
	**/
	public function _preload_simple_restoration(name:Dynamic, shape:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Declare a dependency on another `Checkpointable` object.
		
		Indicates that checkpoints for this object should include variables from
		`checkpointable`.
		
		Variables in a checkpoint are mapped to `Checkpointable`s based on the names
		provided when the checkpoint was written. To avoid breaking existing
		checkpoints when modifying a class, neither variable names nor dependency
		names (the names passed to `_track_checkpointable`) may change.
		
		Args:
		  checkpointable: A `Checkpointable` which this object depends on.
		  name: A local name for `checkpointable`, used for loading checkpoints into
		    the correct objects.
		  overwrite: Boolean, whether silently replacing dependencies is OK. Used
		    for __setattr__, where throwing an error on attribute reassignment would
		    be inappropriate.
		
		Returns:
		  `checkpointable`, for convenience when declaring a dependency and
		  assigning to a member variable in one statement.
		
		Raises:
		  TypeError: If `checkpointable` does not inherit from `Checkpointable`.
		  ValueError: If another object is already tracked by this name.
	**/
	public function _track_checkpointable(checkpointable:Dynamic, name:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Creates a new, uninitialized `Iterator` based on the given handle.
		
		This method allows you to define a "feedable" iterator where you can choose
		between concrete iterators by feeding a value in a `tf.Session.run` call.
		In that case, `string_handle` would be a `tf.placeholder`, and you would
		feed it with the value of `tf.data.Iterator.string_handle` in each step.
		
		For example, if you had two iterators that marked the current position in
		a training dataset and a test dataset, you could choose which to use in
		each step as follows:
		
		```python
		train_iterator = tf.data.Dataset(...).make_one_shot_iterator()
		train_iterator_handle = sess.run(train_iterator.string_handle())
		
		test_iterator = tf.data.Dataset(...).make_one_shot_iterator()
		test_iterator_handle = sess.run(test_iterator.string_handle())
		
		handle = tf.placeholder(tf.string, shape=[])
		iterator = tf.data.Iterator.from_string_handle(
		    handle, train_iterator.output_types)
		
		next_element = iterator.get_next()
		loss = f(next_element)
		
		train_loss = sess.run(loss, feed_dict={handle: train_iterator_handle})
		test_loss = sess.run(loss, feed_dict={handle: test_iterator_handle})
		```
		
		Args:
		  string_handle: A scalar `tf.Tensor` of type `tf.string` that evaluates
		    to a handle produced by the `Iterator.string_handle()` method.
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this dataset.
		  output_shapes: (Optional.) A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this dataset. If
		    omitted, each component will have an unconstrainted shape.
		  output_classes: (Optional.) A nested structure of Python `type` objects
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
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this dataset.
		  output_shapes: (Optional.) A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this dataset. If
		    omitted, each component will have an unconstrainted shape.
		  shared_name: (Optional.) If non-empty, this iterator will be shared under
		    the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		  output_classes: (Optional.) A nested structure of Python `type` objects
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
		Returns a nested structure of `tf.Tensor`s representing the next element.
		
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
		optimizer = ...  # A `tf.train.Optimizer` object.
		train_op = optimizer.minimize(loss)
		
		with tf.Session() as sess:
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
		  A nested structure of `tf.Tensor` objects.
	**/
	public function get_next(?name:Dynamic):Dynamic;
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
		  dataset: A `Dataset` with compatible structure to this iterator.
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A `tf.Operation` that can be run to initialize this iterator on the given
		  `dataset`.
		
		Raises:
		  TypeError: If `dataset` and this iterator do not have a compatible
		    element structure.
	**/
	public function make_initializer(dataset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the class of each component of an element of this iterator.
		
		The expected values are `tf.Tensor` and `tf.SparseTensor`.
		
		Returns:
		  A nested structure of Python `type` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_classes : Dynamic;
	/**
		Returns the shape of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.TensorShape` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns the type of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.DType` objects corresponding to each component
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