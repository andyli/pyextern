/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.dataset_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.dataset_ops", "Iterator") extern class Iterator {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		NOTE(mrry): Most users will not call this initializer directly, and will
		instead use `Iterator.from_dataset()` or `Dataset.make_one_shot_iterator()`.
		
		Args:
		  iterator_resource: A `tf.resource` scalar `tf.Tensor` representing the
		    iterator.
		  initializer: A `tf.Operation` that should be run to initialize this
		    iterator.
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this dataset.
	**/
	@:native("__init__")
	public function ___init__(iterator_resource:Dynamic, initializer:Dynamic, output_types:Dynamic, output_shapes:Dynamic):Dynamic;
	/**
		Creates a new iterator from the given iterator resource.
		
		NOTE(mrry): Most users will not call this initializer directly, and will
		instead use `Iterator.from_dataset()` or `Dataset.make_one_shot_iterator()`.
		
		Args:
		  iterator_resource: A `tf.resource` scalar `tf.Tensor` representing the
		    iterator.
		  initializer: A `tf.Operation` that should be run to initialize this
		    iterator.
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element of this iterator.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this dataset.
	**/
	public function new(iterator_resource:Dynamic, initializer:Dynamic, output_types:Dynamic, output_shapes:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns a `tf.Operation` that destroys this iterator.
		
		The returned operation may be used to release any resources consumed by
		this iterator without closing the session.
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A `tf.Operation`.
	**/
	public function dispose_op(?name:Dynamic):Dynamic;
	/**
		Creates a new, uninitialized `Iterator` from the given `Dataset`.
		
		To initialize this iterator, you must run its `initializer`:
		
		```python
		dataset = ...
		iterator = Iterator.from_dataset(dataset)
		# ...
		sess.run(iterator.initializer)
		```
		
		Args:
		  dataset: A `Dataset` object.
		  shared_name: (Optional.) If non-empty, this iterator will be shared under
		    the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		
		Returns:
		  An `Iterator`.
	**/
	static public function from_dataset(dataset:Dynamic, ?shared_name:Dynamic):Dynamic;
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
		    each component of an element of this iterator.
		  output_shapes: (Optional.) A nested structure of `tf.TensorShape` objects
		    corresponding to each component of an element of this dataset. If
		    omitted, each component will have an unconstrainted shape.
		  shared_name: (Optional.) If non-empty, this iterator will be shared under
		    the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		
		Returns:
		  An `Iterator`.
		
		Raises:
		  TypeError: If the structures of `output_shapes` and `output_types` are
		    not the same.
	**/
	static public function from_structure(output_types:Dynamic, ?output_shapes:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Returns a nested structure of `tf.Tensor`s containing the next element.
		
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
		
		Returns:
		  A `tf.Operation` that can be run to initialize this iterator on the given
		  `dataset`.
		
		Raises:
		  TypeError: If `dataset` and this iterator do not have a compatible
		    element structure.
	**/
	public function make_initializer(dataset:Dynamic):Dynamic;
	/**
		Returns the shape of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.TensorShape` objects corresponding to each
		  component of an element of this iterator.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns the type of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.DType` objects corresponding to each component
		  of an element of this iterator.
	**/
	public var output_types : Dynamic;
}