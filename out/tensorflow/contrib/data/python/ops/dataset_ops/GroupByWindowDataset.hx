/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.dataset_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.dataset_ops", "GroupByWindowDataset") extern class GroupByWindowDataset {
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
		See `Dataset.group_by_window()` for details.
	**/
	@:native("__init__")
	public function ___init__(input_dataset:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size:Dynamic):Dynamic;
	/**
		See `Dataset.group_by_window()` for details.
	**/
	public function new(input_dataset:Dynamic, key_func:Dynamic, reduce_func:Dynamic, window_size:Dynamic):Void;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Combines consecutive elements of this dataset into batches.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		
		Returns:
		  A `Dataset`.
	**/
	public function batch(batch_size:Dynamic):Dynamic;
	/**
		Batches ragged elements of this dataset into `tf.SparseTensor`s.
		
		Like `Dataset.padded_batch()`, this method combines multiple
		consecutive elements of this dataset, which might have different
		shapes, into a single element. The resulting element has three
		components (`indices`, `values`, and `dense_shape`), which
		comprise a `tf.SparseTensor` that represents the same data. The
		`row_shape` represents the dense shape of each row in the
		resulting `tf.SparseTensor`, to which the effective batch size is
		prepended. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.dense_to_sparse_batch(batch_size=2, row_shape=[6]) == {
		    ([[0, 0], [0, 1], [0, 2], [1, 0], [1, 1]],  # indices
		     ['a', 'b', 'c', 'a', 'b'],                 # values
		     [2, 6]),                                   # dense_shape
		    ([[2, 0], [2, 1], [2, 2], [2, 3]],
		     ['a', 'b', 'c', 'd'],
		     [1, 6])
		}
		```
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    number of consecutive elements of this dataset to combine in a
		    single batch.
		  row_shape: A `tf.TensorShape` or `tf.int64` vector tensor-like
		    object representing the equivalent dense shape of a row in the
		    resulting `tf.SparseTensor`. Each element of this dataset must
		    have the same rank as `row_shape`, and must have size less
		    than or equal to `row_shape` in each dimension.
		
		Returns:
		  A `Dataset`.
	**/
	public function dense_to_sparse_batch(batch_size:Dynamic, row_shape:Dynamic):Dynamic;
	/**
		Enumerate the elements of this dataset.  Similar to python's `enumerate`.
		
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { (7, 8), (9, 10), (11, 12) }
		
		# The nested structure of the `datasets` argument determines the
		# structure of elements in the resulting dataset.
		a.enumerate(start=5) == { (5, 1), (6, 2), (7, 3) }
		b.enumerate() == { (0, (7, 8)), (1, (9, 10)), (2, (11, 12)) }
		
		Args:
		  start: A `tf.int64` scalar `tf.Tensor`, representing the start
		    value for enumeration.
		
		Returns:
		  A `Dataset`.
	**/
	public function enumerate(?start:Dynamic):Dynamic;
	/**
		Filters this dataset according to `predicate`.
		
		Args:
		  predicate: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    scalar `tf.bool` tensor.
		
		Returns:
		  A `Dataset`.
	**/
	public function filter(predicate:Dynamic):Dynamic;
	/**
		Maps `map_func` across this dataset and flattens the result.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    `Dataset`.
		
		Returns:
		  A `Dataset`.
	**/
	public function flat_map(map_func:Dynamic):Dynamic;
	/**
		Splits each rank-N `tf.SparseTensor` in this dataset row-wise.
		
		Args:
		  sparse_tensor: A `tf.SparseTensor`.
		
		Returns:
		  A `Dataset` of rank-(N-1) sparse tensors.
	**/
	static public function from_sparse_tensor_slices(sparse_tensor:Dynamic):Dynamic;
	/**
		Creates a `Dataset` whose elements are slices of the given tensors.
		
		Args:
		  tensors: A nested structure of tensors, each having the same size in the
		    0th dimension.
		
		Returns:
		  A `Dataset`.
	**/
	static public function from_tensor_slices(tensors:Dynamic):Dynamic;
	/**
		Creates a `Dataset` with a single element, comprising the given tensors.
		
		Args:
		  tensors: A nested structure of tensors.
		
		Returns:
		  A `Dataset`.
	**/
	static public function from_tensors(tensors:Dynamic):Dynamic;
	/**
		Performs a windowed "group-by" operation on this dataset.
		
		This method maps each consecutive element in this dataset to a key
		using `key_func` and groups the elements by key. It then applies
		`reduce_func` to at most `window_size` elements matching the same
		key. All execpt the final window for each key will contain
		`window_size` elements; the final window may be smaller.
		
		Args:
		  key_func: A function mapping a nested structure of tensors
		    (having shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.int64` tensor.
		  reduce_func: A function mapping a key and a dataset of up to `batch_size`
		    consecutive elements matching that key to another dataset.
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements matching the same key to combine in a single
		    batch, which will be passed to `reduce_func`.
		
		Returns:
		  A `Dataset`.
	**/
	public function group_by_window(key_func:Dynamic, reduce_func:Dynamic, window_size:Dynamic):Dynamic;
	/**
		Creates a `tf.Tensor` of  `tf.resource` tensor representing this dataset.
		
		Returns:
		  A scalar `tf.Tensor` of `tf.resource` type, which represents this dataset.
	**/
	public function make_dataset_resource():Dynamic;
	/**
		Creates an `Iterator` for enumerating the elements of this dataset.
		
		**N.B.** The returned iterator will be in an uninitialized state,
		and you must run the `iterator.initializer` operation before using it.
		
		Args:
		  shared_name: (Optional.) If non-empty, this iterator will be shared under
		    the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		
		
		Returns:
		  An `Iterator` over the elements of this dataset.
	**/
	public function make_initializable_iterator(?shared_name:Dynamic):Dynamic;
	/**
		Creates an `Iterator` for enumerating the elements of this dataset.
		
		**N.B.** The returned iterator will be initialized automatically.
		A "one-shot" iterator does not currently support re-initialization.
		
		Returns:
		  An `Iterator` over the elements of this dataset.
	**/
	public function make_one_shot_iterator():Dynamic;
	/**
		Maps `map_func` across this datset.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having
		    shapes and types defined by `self.output_shapes` and
		   `self.output_types`) to another nested structure of tensors.
		  num_threads: (Optional.) A `tf.int32` scalar `tf.Tensor`, representing
		    the number of threads to use for processing elements in parallel. If
		    not specified, elements will be processed sequentially without
		    buffering.
		  output_buffer_size: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the maximum number of processed elements that will be
		    buffered when processing in parallel.
		
		Returns:
		  A `Dataset`.
	**/
	public function map(map_func:Dynamic, ?num_threads:Dynamic, ?output_buffer_size:Dynamic):Dynamic;
	/**
		Returns the shape of each component of an element of this dataset.
		
		Returns:
		  A nested structure of `tf.TensorShape` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns the type of each component of an element of this dataset.
		
		Returns:
		  A nested structure of `tf.DType` objects corresponding to each component
		  of an element of this dataset.
	**/
	public var output_types : Dynamic;
	/**
		Combines consecutive elements of this dataset into padded batches.
		
		Like `Dataset.dense_to_sparse_batch()`, this method combines
		multiple consecutive elements of this dataset, which might have
		different shapes, into a single element. The tensors in the
		resulting element have an additional outer dimension, and are
		padded to the respective shape in `padded_shapes`.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  padded_shapes: A nested structure of `tf.TensorShape` or
		    `tf.int64` vector tensor-like objects representing the shape
		    to which the respective component of each input element should
		    be padded prior to batching. Any unknown dimensions
		    (e.g. `tf.Dimension(None)` in a `tf.TensorShape` or `-1` in a
		    tensor-like object) will be padded to the maximum size of that
		    dimension in each batch.
		  padding_values: (Optional.) A nested structure of scalar-shaped
		    `tf.Tensor`, representing the padding values to use for the
		    respective components.  Defaults are `0` for numeric types and
		    the empty string for string types.
		
		Returns:
		  A `Dataset`.
	**/
	public function padded_batch(batch_size:Dynamic, padded_shapes:Dynamic, ?padding_values:Dynamic):Dynamic;
	/**
		Creates a `Dataset` of a step-separated range of values.
		
		For example:
		
		```python
		Dataset.range(5) == [0, 1, 2, 3, 4]
		Dataset.range(2, 5) == [2, 3, 4]
		Dataset.range(1, 5, 2) == [1, 3]
		Dataset.range(1, 5, -2) == []
		Dataset.range(5, 1) == []
		Dataset.range(5, 1, -2) == [5, 3]
		```
		
		Args:
		  *args: follow same semantics as python's xrange.
		    len(args) == 1 -> start = 0, stop = args[0], step = 1
		    len(args) == 2 -> start = args[0], stop = args[1], step = 1
		    len(args) == 3 -> start = args[0], stop = args[1, stop = args[2]
		
		Returns:
		  A `RangeDataset`.
		
		Raises:
		  ValueError: if len(args) == 0.
	**/
	static public function range(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reads batches of Examples.
		
		Args:
		  file_pattern: A string pattern or a placeholder with list of filenames.
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. See `tf.parse_example`.
		  reader: A function or class that can be called with a `filenames` tensor
		    and (optional) `reader_args` and returns a `Dataset` of serialized
		    Examples.
		  reader_args: Additional arguments to pass to the reader class.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever.
		  capacity: Capacity of the ShuffleDataset.
		
		Returns:
		  A `Dataset`.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?reader_args:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?capacity:Dynamic):Dynamic;
	/**
		Repeats this dataset `count` times.
		
		Args:
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of times the elements of this dataset should be repeated. The
		    default behavior (if `count` is `None` or `-1`) is for the elements to
		    be repeated indefinitely.
		
		Returns:
		  A `Dataset`.
	**/
	public function repeat(?count:Dynamic):Dynamic;
	/**
		Randomly shuffles the elements of this dataset.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    number of elements from this dataset from which the new
		    dataset will sample.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    @{tf.set_random_seed} for behavior.
		
		Returns:
		  A `Dataset`.
	**/
	public function shuffle(buffer_size:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that skips `count` elements from this dataset.
		
		Args:
		  count: A `tf.int64` scalar `tf.Tensor`, representing the number
		    of elements of this dataset that should be skipped to form the
		    new dataset.  If `count` is greater than the size of this
		    dataset, the new dataset will contain no elements.  If `count`
		    is -1, skips the entire dataset.
		
		Returns:
		  A `Dataset`.
	**/
	public function skip(count:Dynamic):Dynamic;
	/**
		Creates a `Dataset` with at most `count` elements from this dataset.
		
		Args:
		  count: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements of this dataset that should be taken to form the new dataset.
		    If `count` is -1, or if `count` is greater than the size of this
		    dataset, the new dataset will contain all elements of this dataset.
		
		Returns:
		  A `Dataset`.
	**/
	public function take(count:Dynamic):Dynamic;
	/**
		Splits elements of this dataset into sequences of consecutive elements.
		
		For example, if elements of this dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary from element to element, then for each element in
		this dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		Returns:
		  A `Dataset`.
	**/
	public function unbatch():Dynamic;
	/**
		Creates a `Dataset` by zipping together the given datasets.
		
		This method has similar semantics to the built-in `zip()` function
		in Python, with the main difference being that the `datasets`
		argument can be an arbitrary nested structure of `Dataset` objects.
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { 4, 5, 6 }
		c = { (7, 8), (9, 10), (11, 12) }
		d = { 13, 14 }
		
		# The nested structure of the `datasets` argument determines the
		# structure of elements in the resulting dataset.
		Dataset.zip((a, b)) == { (1, 4), (2, 5), (3, 6) }
		Dataset.zip((b, a)) == { (4, 1), (5, 2), (6, 3) }
		
		# The `datasets` argument may contain an arbitrary number of
		# datasets.
		Dataset.zip((a, b, c) == { (1, 4, (7, 8)),
		                           (2, 5, (9, 10)),
		                           (3, 6, (11, 12)) }
		
		# The number of elements in the resulting dataset is the same as
		# the size of the smallest dataset in `datasets`.
		Dataset.zip((a, d)) == { (1, 13), (2, 14) }
		```
		
		Args:
		  datasets: A nested structure of datasets.
		
		Returns:
		  A `Dataset`.
	**/
	static public function zip(datasets:Dynamic):Dynamic;
}