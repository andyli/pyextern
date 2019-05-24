/* This file is generated, do not edit! */
package tensorflow.python.data.ops.readers;
@:pythonImport("tensorflow.python.data.ops.readers", "_TFRecordDataset") extern class _TFRecordDataset {
	/**
		Stores outstanding iterators created from a Python generator.
		
		This class keeps track of potentially multiple iterators that may have
		been created from a generator, e.g. in the case that the dataset is
		repeated, or nested within a parallel computation.
	**/
	static public function _GeneratorState(generator:Dynamic):Dynamic;
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
		Creates a `TFRecordDataset`.
		
		Args:
		  filenames: A `tf.string` tensor containing one or more filenames.
		  compression_type: (Optional.) A `tf.string` scalar evaluating to one of
		    `""` (no compression), `"ZLIB"`, or `"GZIP"`.
		  buffer_size: (Optional.) A `tf.int64` scalar representing the number of
		    bytes in the read buffer. 0 means no buffering.
	**/
	@:native("__init__")
	public function ___init__(filenames:Dynamic, ?compression_type:Dynamic, ?buffer_size:Dynamic):Dynamic;
	/**
		Creates a `TFRecordDataset`.
		
		Args:
		  filenames: A `tf.string` tensor containing one or more filenames.
		  compression_type: (Optional.) A `tf.string` scalar evaluating to one of
		    `""` (no compression), `"ZLIB"`, or `"GZIP"`.
		  buffer_size: (Optional.) A `tf.int64` scalar representing the number of
		    bytes in the read buffer. 0 means no buffering.
	**/
	public function new(filenames:Dynamic, ?compression_type:Dynamic, ?buffer_size:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an `Iterator` for enumerating the elements of this dataset.
		
		The returned iterator implements the Python iterator protocol and therefore
		can only be used in eager mode.
		
		Returns:
		  An `Iterator` over the elements of this dataset.
		
		Raises:
		  RuntimeError: If eager execution is not enabled.
	**/
	public function __iter__():Dynamic;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Apply options, such as optimization configuration, to the dataset.
	**/
	public function _apply_options():Dynamic;
	/**
		Produces serialized graph representation of the dataset.
		
		Returns:
		  A scalar `tf.Tensor` of `tf.string` type, representing this dataset as a
		  serialized graph.
	**/
	public function _as_serialized_graph():Dynamic;
	/**
		Creates a scalar `tf.Tensor` of `tf.variant` representing this dataset.
		
		Returns:
		  A scalar `tf.Tensor` of `tf.variant` type, which represents this dataset.
	**/
	public function _as_variant_tensor():Dynamic;
	/**
		The structure of an element of this dataset.
		
		Returns:
		  A `Structure` object representing the structure of an element of this
		  dataset.
	**/
	public var _element_structure : Dynamic;
	public function _enumerate(?start:Dynamic):Dynamic;
	/**
		Returns a list of functions associated with this dataset.
		
		Returns:
		  A list of `StructuredFunctionWrapper` objects.
	**/
	public function _functions():Dynamic;
	public var _graph : Dynamic;
	/**
		Whether this dataset uses a function that captures ref variables.
		
		Returns:
		  A boolean, which if true indicates that the dataset or one of its inputs
		  uses a function that captures ref variables.
	**/
	public function _has_captured_ref():Dynamic;
	/**
		Returns a list of the input datasets of the dataset.
	**/
	public function _inputs():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Applies a transformation function to this dataset.
		
		`apply` enables chaining of custom `Dataset` transformations, which are
		represented as functions that take one `Dataset` argument and return a
		transformed `Dataset`.
		
		For example:
		
		```
		dataset = (dataset.map(lambda x: x ** 2)
		           .apply(group_by_window(key_func, reduce_func, window_size))
		           .map(lambda x: x ** 3))
		```
		
		Args:
		  transformation_func: A function that takes one `Dataset` argument and
		    returns a `Dataset`.
		
		Returns:
		  Dataset: The `Dataset` returned by applying `transformation_func` to this
		      dataset.
	**/
	public function apply(transformation_func:Dynamic):Dynamic;
	/**
		Combines consecutive elements of this dataset into batches.
		
		The tensors in the resulting element will have an additional outer
		dimension, which will be `batch_size` (or `N % batch_size` for the last
		element if `batch_size` does not divide the number of input elements `N`
		evenly and `drop_remainder` is `False`). If your program depends on the
		batches having the same outer dimension, you should set the `drop_remainder`
		argument to `True` to prevent the smaller batch from being produced.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function batch(batch_size:Dynamic, ?drop_remainder:Dynamic):Dynamic;
	/**
		Caches the elements in this dataset.
		
		Args:
		  filename: A `tf.string` scalar `tf.Tensor`, representing the name of a
		    directory on the filesystem to use for caching tensors in this Dataset.
		    If a filename is not provided, the dataset will be cached in memory.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function cache(?filename:Dynamic):Dynamic;
	/**
		Creates a `Dataset` by concatenating given dataset with this dataset.
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { 4, 5, 6, 7 }
		
		# Input dataset and dataset to be concatenated should have same
		# nested structures and output types.
		# c = { (8, 9), (10, 11), (12, 13) }
		# d = { 14.0, 15.0, 16.0 }
		# a.concatenate(c) and a.concatenate(d) would result in error.
		
		a.concatenate(b) == { 1, 2, 3, 4, 5, 6, 7 }
		```
		
		Args:
		  dataset: `Dataset` to be concatenated.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function concatenate(dataset:Dynamic):Dynamic;
	/**
		Filters this dataset according to `predicate`.
		
		Args:
		  predicate: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    scalar `tf.bool` tensor.
		
		Returns:
		  Dataset: The `Dataset` containing the elements of this dataset for which
		      `predicate` is `True`.
	**/
	public function filter(predicate:Dynamic):Dynamic;
	/**
		Maps `map_func` across this dataset and flattens the result.
		
		Use `flat_map` if you want to make sure that the order of your dataset
		stays the same. For example, to flatten a dataset of batches into a
		dataset of their elements:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset. '[...]' represents a tensor.
		a = {[1,2,3,4,5], [6,7,8,9], [10]}
		
		a.flat_map(lambda x: Dataset.from_tensor_slices(x)) ==
		  {[1,2,3,4,5,6,7,8,9,10]}
		```
		
		`tf.data.Dataset.interleave()` is a generalization of `flat_map`, since
		`flat_map` produces the same output as
		`tf.data.Dataset.interleave(cycle_length=1)`
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    `Dataset`.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function flat_map(map_func:Dynamic):Dynamic;
	/**
		Creates a `Dataset` whose elements are generated by `generator`.
		
		The `generator` argument must be a callable object that returns
		an object that support the `iter()` protocol (e.g. a generator function).
		The elements generated by `generator` must be compatible with the given
		`output_types` and (optional) `output_shapes` arguments.
		
		For example:
		
		```python
		import itertools
		tf.enable_eager_execution()
		
		def gen():
		  for i in itertools.count(1):
		    yield (i, [1] * i)
		
		ds = tf.data.Dataset.from_generator(
		    gen, (tf.int64, tf.int64), (tf.TensorShape([]), tf.TensorShape([None])))
		
		for value in ds.take(2):
		  print value
		# (1, array([1]))
		# (2, array([1, 1]))
		```
		
		NOTE: The current implementation of `Dataset.from_generator()` uses
		`tf.py_func` and inherits the same constraints. In particular, it
		requires the `Dataset`- and `Iterator`-related operations to be placed
		on a device in the same process as the Python program that called
		`Dataset.from_generator()`. The body of `generator` will not be
		serialized in a `GraphDef`, and you should not use this method if you
		need to serialize your model and restore it in a different environment.
		
		NOTE: If `generator` depends on mutable global variables or other external
		state, be aware that the runtime may invoke `generator` multiple times
		(in order to support repeating the `Dataset`) and at any time
		between the call to `Dataset.from_generator()` and the production of the
		first element from the generator. Mutating global variables or external
		state can cause undefined behavior, and we recommend that you explicitly
		cache any external state in `generator` before calling
		`Dataset.from_generator()`.
		
		Args:
		  generator: A callable object that returns an object that supports the
		    `iter()` protocol. If `args` is not specified, `generator` must take
		    no arguments; otherwise it must take as many arguments as there are
		    values in `args`.
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of an element yielded by `generator`.
		  output_shapes: (Optional.) A nested structure of `tf.TensorShape`
		    objects corresponding to each component of an element yielded by
		    `generator`.
		  args: (Optional.) A tuple of `tf.Tensor` objects that will be evaluated
		    and passed to `generator` as NumPy-array arguments.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_generator(generator:Dynamic, output_types:Dynamic, ?output_shapes:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Creates a `Dataset` whose elements are slices of the given tensors.
		
		Note that if `tensors` contains a NumPy array, and eager execution is not
		enabled, the values will be embedded in the graph as one or more
		`tf.constant` operations. For large datasets (> 1 GB), this can waste
		memory and run into byte limits of graph serialization. If `tensors`
		contains one or more large NumPy arrays, consider the alternative described
		in [this guide](
		https://tensorflow.org/guide/datasets#consuming_numpy_arrays).
		
		Args:
		  tensors: A nested structure of tensors, each having the same size in the
		    0th dimension.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_tensor_slices(tensors:Dynamic):Dynamic;
	/**
		Creates a `Dataset` with a single element, comprising the given tensors.
		
		Note that if `tensors` contains a NumPy array, and eager execution is not
		enabled, the values will be embedded in the graph as one or more
		`tf.constant` operations. For large datasets (> 1 GB), this can waste
		memory and run into byte limits of graph serialization. If `tensors`
		contains one or more large NumPy arrays, consider the alternative described
		in [this
		guide](https://tensorflow.org/guide/datasets#consuming_numpy_arrays).
		
		Args:
		  tensors: A nested structure of tensors.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function from_tensors(tensors:Dynamic):Dynamic;
	/**
		Maps `map_func` across this dataset, and interleaves the results.
		
		For example, you can use `Dataset.interleave()` to process many input files
		concurrently:
		
		```python
		# Preprocess 4 files concurrently, and interleave blocks of 16 records from
		# each file.
		filenames = ["/var/data/file1.txt", "/var/data/file2.txt", ...]
		dataset = (Dataset.from_tensor_slices(filenames)
		           .interleave(lambda x:
		               TextLineDataset(x).map(parse_fn, num_parallel_calls=1),
		               cycle_length=4, block_length=16))
		```
		
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
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3, 4, 5 }
		
		# NOTE: New lines indicate "block" boundaries.
		a.interleave(lambda x: Dataset.from_tensors(x).repeat(6),
		             cycle_length=2, block_length=4) == {
		    1, 1, 1, 1,
		    2, 2, 2, 2,
		    1, 1,
		    2, 2,
		    3, 3, 3, 3,
		    4, 4, 4, 4,
		    3, 3,
		    4, 4,
		    5, 5, 5, 5,
		    5, 5,
		}
		```
		
		NOTE: The order of elements yielded by this transformation is
		deterministic, as long as `map_func` is a pure function. If
		`map_func` contains any stateful operations, the order in which
		that state is accessed is undefined.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to a
		    `Dataset`.
		  cycle_length: The number of elements from this dataset that will be
		    processed concurrently.
		  block_length: The number of consecutive elements to produce from each
		    input element before cycling to another input element.
		  num_parallel_calls: (Optional.) If specified, the implementation creates
		    a threadpool, which is used to fetch inputs from cycle elements
		    asynchronously and in parallel. The default behavior is to fetch inputs
		    from cycle elements synchronously with no parallelism. If the value
		    `tf.data.experimental.AUTOTUNE` is used, then the number of parallel
		    calls is set dynamically based on available CPU.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function interleave(map_func:Dynamic, cycle_length:Dynamic, ?block_length:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		A dataset of all files matching one or more glob patterns.
		
		NOTE: The default behavior of this method is to return filenames in
		a non-deterministic random shuffled order. Pass a `seed` or `shuffle=False`
		to get results in a deterministic order.
		
		Example:
		  If we had the following files on our filesystem:
		    - /path/to/dir/a.txt
		    - /path/to/dir/b.py
		    - /path/to/dir/c.py
		  If we pass "/path/to/dir/*.py" as the directory, the dataset would
		  produce:
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
		    `tf.set_random_seed` for behavior.
		
		Returns:
		 Dataset: A `Dataset` of strings corresponding to file names.
	**/
	static public function list_files(file_pattern:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Maps `map_func` across the elements of this dataset.
		
		This transformation applies `map_func` to each element of this dataset, and
		returns a new dataset containing the transformed elements, in the same
		order as they appeared in the input.
		
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3, 4, 5 }
		
		a.map(lambda x: x + 1) = { 2, 3, 4, 5, 6 }
		```
		
		The input signature of `map_func` is determined by the structure of each
		element in this dataset. For example:
		
		```python
		# Each element is a `tf.Tensor` object.
		a = { 1, 2, 3, 4, 5 }
		# `map_func` takes a single argument of type `tf.Tensor` with the same
		# shape and dtype.
		result = a.map(lambda x: ...)
		
		# Each element is a tuple containing two `tf.Tensor` objects.
		b = { (1, "foo"), (2, "bar"), (3, "baz") }
		# `map_func` takes two arguments of type `tf.Tensor`.
		result = b.map(lambda x_int, y_str: ...)
		
		# Each element is a dictionary mapping strings to `tf.Tensor` objects.
		c = { {"a": 1, "b": "foo"}, {"a": 2, "b": "bar"}, {"a": 3, "b": "baz"} }
		# `map_func` takes a single argument of type `dict` with the same keys as
		# the elements.
		result = c.map(lambda d: ...)
		```
		
		The value or values returned by `map_func` determine the structure of each
		element in the returned dataset.
		
		```python
		# `map_func` returns a scalar `tf.Tensor` of type `tf.float32`.
		def f(...):
		  return tf.constant(37.0)
		result = dataset.map(f)
		result.output_classes == tf.Tensor
		result.output_types == tf.float32
		result.output_shapes == []  # scalar
		
		# `map_func` returns two `tf.Tensor` objects.
		def g(...):
		  return tf.constant(37.0), tf.constant(["Foo", "Bar", "Baz"])
		result = dataset.map(g)
		result.output_classes == (tf.Tensor, tf.Tensor)
		result.output_types == (tf.float32, tf.string)
		result.output_shapes == ([], [3])
		
		# Python primitives, lists, and NumPy arrays are implicitly converted to
		# `tf.Tensor`.
		def h(...):
		  return 37.0, ["Foo", "Bar", "Baz"], np.array([1.0, 2.0] dtype=np.float64)
		result = dataset.map(h)
		result.output_classes == (tf.Tensor, tf.Tensor, tf.Tensor)
		result.output_types == (tf.float32, tf.string, tf.float64)
		result.output_shapes == ([], [3], [2])
		
		# `map_func` can return nested structures.
		def i(...):
		  return {"a": 37.0, "b": [42, 16]}, "foo"
		result.output_classes == ({"a": tf.Tensor, "b": tf.Tensor}, tf.Tensor)
		result.output_types == ({"a": tf.float32, "b": tf.int32}, tf.string)
		result.output_shapes == ({"a": [], "b": [2]}, [])
		```
		
		In addition to `tf.Tensor` objects, `map_func` can accept as arguments and
		return `tf.SparseTensor` objects.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having
		    shapes and types defined by `self.output_shapes` and
		   `self.output_types`) to another nested structure of tensors.
		  num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number elements to process in parallel. If not
		    specified, elements will be processed sequentially. If the value
		    `tf.data.experimental.AUTOTUNE` is used, then the number of parallel
		    calls is set dynamically based on available CPU.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function map(map_func:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		Returns the options for this dataset and its inputs.
		
		Returns:
		  A `tf.data.Options` object representing the dataset options.
	**/
	public function options():Dynamic;
	/**
		Returns the class of each component of an element of this dataset.
		
		The expected values are `tf.Tensor` and `tf.SparseTensor`.
		
		Returns:
		  A nested structure of Python `type` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_classes : Dynamic;
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
		
		This transformation combines multiple consecutive elements of the input
		dataset into a single element.
		
		Like `tf.data.Dataset.batch`, the tensors in the resulting element will
		have an additional outer dimension, which will be `batch_size` (or
		`N % batch_size` for the last element if `batch_size` does not divide the
		number of input elements `N` evenly and `drop_remainder` is `False`). If
		your program depends on the batches having the same outer dimension, you
		should set the `drop_remainder` argument to `True` to prevent the smaller
		batch from being produced.
		
		Unlike `tf.data.Dataset.batch`, the input elements to be batched may have
		different shapes, and this transformation will pad each component to the
		respective shape in `padding_shapes`. The `padding_shapes` argument
		determines the resulting shape for each dimension of each component in an
		output element:
		
		* If the dimension is a constant (e.g. `tf.Dimension(37)`), the component
		  will be padded out to that length in that dimension.
		* If the dimension is unknown (e.g. `tf.Dimension(None)`), the component
		  will be padded out to the maximum length of all elements in that
		  dimension.
		
		See also `tf.data.experimental.dense_to_sparse_batch`, which combines
		elements that may have different shapes into a `tf.SparseTensor`.
		
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
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function padded_batch(batch_size:Dynamic, padded_shapes:Dynamic, ?padding_values:Dynamic, ?drop_remainder:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that prefetches elements from this dataset.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    maximum number of elements that will be buffered when prefetching.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function prefetch(buffer_size:Dynamic):Dynamic;
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
		  *args: follows the same semantics as python's xrange.
		    len(args) == 1 -> start = 0, stop = args[0], step = 1
		    len(args) == 2 -> start = args[0], stop = args[1], step = 1
		    len(args) == 3 -> start = args[0], stop = args[1, stop = args[2]
		
		Returns:
		  Dataset: A `RangeDataset`.
		
		Raises:
		  ValueError: if len(args) == 0.
	**/
	static public function range(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reduces the input dataset to a single element.
		
		The transformation calls `reduce_func` successively on every element of
		the input dataset until the dataset is exhausted, aggregating information in
		its internal state. The `initial_state` argument is used for the initial
		state and the final state is returned as the result.
		
		For example:
		- `tf.data.Dataset.range(5).reduce(np.int64(0), lambda x, _: x + 1)`
		  produces `5`
		- `tf.data.Dataset.range(5).reduce(np.int64(0), lambda x, y: x + y)`
		  produces `10`
		
		Args:
		  initial_state: A nested structure of tensors, representing the initial
		    state of the transformation.
		  reduce_func: A function that maps `(old_state, input_element)` to
		    `new_state`. It must take two arguments and return a nested structure
		    of tensors. The structure of `new_state` must match the structure of
		    `initial_state`.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the final
		  state of the transformation.
	**/
	public function reduce(initial_state:Dynamic, reduce_func:Dynamic):Dynamic;
	/**
		Repeats this dataset `count` times.
		
		NOTE: If this dataset is a function of global state (e.g. a random number
		generator), then different repetitions may produce different elements.
		
		Args:
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of times the dataset should be repeated. The default behavior
		    (if `count` is `None` or `-1`) is for the dataset be repeated
		    indefinitely.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function repeat(?count:Dynamic):Dynamic;
	/**
		Randomly shuffles the elements of this dataset.
		
		This dataset fills a buffer with `buffer_size` elements, then randomly
		samples elements from this buffer, replacing the selected elements with new
		elements. For perfect shuffling, a buffer size greater than or equal to the
		full size of the dataset is required.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    number of elements from this dataset from which the new
		    dataset will sample.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		  reshuffle_each_iteration: (Optional.) A boolean, which if true indicates
		    that the dataset should be pseudorandomly reshuffled each time it is
		    iterated over. (Defaults to `True`.)
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	public function shuffle(buffer_size:Dynamic, ?seed:Dynamic, ?reshuffle_each_iteration:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that skips `count` elements from this dataset.
		
		Args:
		  count: A `tf.int64` scalar `tf.Tensor`, representing the number
		    of elements of this dataset that should be skipped to form the
		    new dataset.  If `count` is greater than the size of this
		    dataset, the new dataset will contain no elements.  If `count`
		    is -1, skips the entire dataset.
		
		Returns:
		  Dataset: A `Dataset`.
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
		  Dataset: A `Dataset`.
	**/
	public function take(count:Dynamic):Dynamic;
	/**
		Combines input elements into a dataset of windows.
		
		Each window is a dataset itself and contains `size` elements (or
		possibly fewer if there are not enough input elements to fill the window
		and `drop_remainder` evaluates to false).
		
		The `stride` argument determines the stride of the input elements,
		and the `shift` argument determines the shift of the window.
		
		For example:
		- `tf.data.Dataset.range(7).window(2)` produces
		  `{{0, 1}, {2, 3}, {4, 5}, {6}}`
		- `tf.data.Dataset.range(7).window(3, 2, 1, True)` produces
		  `{{0, 1, 2}, {2, 3, 4}, {4, 5, 6}}`
		- `tf.data.Dataset.range(7).window(3, 1, 2, True)` produces
		  `{{0, 2, 4}, {1, 3, 5}, {2, 4, 6}}`
		
		Args:
		  size: A `tf.int64` scalar `tf.Tensor`, representing the number of elements
		    of the input dataset to combine into a window.
		  shift: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    forward shift of the sliding window in each iteration. Defaults to
		    `size`.
		  stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    stride of the input elements in the sliding window.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether a window should be dropped in case its size is smaller than
		    `window_size`.
		
		Returns:
		  Dataset: A `Dataset` of windows, each of which is a nested `Dataset` with
		    the same structure as this dataset, but a finite subsequence of its
		    elements.
	**/
	public function window(size:Dynamic, ?shift:Dynamic, ?stride:Dynamic, ?drop_remainder:Dynamic):Dynamic;
	/**
		Returns a new `tf.data.Dataset` with the given options set.
		
		The options are "global" in the sense they apply to the entire dataset.
		If options are set multiple times, they are merged as long as different
		options do not use different non-default values.
		
		Args:
		  options: A `tf.data.Options` that identifies the options the use.
		
		Returns:
		  Dataset: A `Dataset` with the given options.
		
		Raises:
		  ValueError: when an option is set more than once to a non-default value
	**/
	public function with_options(options:Dynamic):Dynamic;
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
		Dataset.zip((a, b, c)) == { (1, 4, (7, 8)),
		                            (2, 5, (9, 10)),
		                            (3, 6, (11, 12)) }
		
		# The number of elements in the resulting dataset is the same as
		# the size of the smallest dataset in `datasets`.
		Dataset.zip((a, d)) == { (1, 13), (2, 14) }
		```
		
		Args:
		  datasets: A nested structure of datasets.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function zip(datasets:Dynamic):Dynamic;
}