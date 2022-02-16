/* This file is generated, do not edit! */
package tensorflow.nest;
@:pythonImport("tensorflow.nest") extern class Nest_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts that two structures are nested in the same way.
		
		Note the method does not check the types of data inside the structures.
		
		Examples:
		
		* These scalar vs. scalar comparisons will pass:
		
		  >>> tf.nest.assert_same_structure(1.5, tf.Variable(1, tf.uint32))
		  >>> tf.nest.assert_same_structure("abc", np.array([1, 2]))
		
		* These sequence vs. sequence comparisons will pass:
		
		  >>> structure1 = (((1, 2), 3), 4, (5, 6))
		  >>> structure2 = ((("foo1", "foo2"), "foo3"), "foo4", ("foo5", "foo6"))
		  >>> structure3 = [(("a", "b"), "c"), "d", ["e", "f"]]
		  >>> tf.nest.assert_same_structure(structure1, structure2)
		  >>> tf.nest.assert_same_structure(structure1, structure3, check_types=False)
		
		  >>> import collections
		  >>> tf.nest.assert_same_structure(
		  ...     collections.namedtuple("bar", "a b")(1, 2),
		  ...     collections.namedtuple("foo", "a b")(2, 3),
		  ...     check_types=False)
		
		  >>> tf.nest.assert_same_structure(
		  ...     collections.namedtuple("bar", "a b")(1, 2),
		  ...     { "a": 1, "b": 2 },
		  ...     check_types=False)
		
		  >>> tf.nest.assert_same_structure(
		  ...     { "a": 1, "b": 2, "c": 3 },
		  ...     { "c": 6, "b": 5, "a": 4 })
		
		  >>> ragged_tensor1 = tf.RaggedTensor.from_row_splits(
		  ...       values=[3, 1, 4, 1, 5, 9, 2, 6],
		  ...       row_splits=[0, 4, 4, 7, 8, 8])
		  >>> ragged_tensor2 = tf.RaggedTensor.from_row_splits(
		  ...       values=[3, 1, 4],
		  ...       row_splits=[0, 3])
		  >>> tf.nest.assert_same_structure(
		  ...       ragged_tensor1,
		  ...       ragged_tensor2,
		  ...       expand_composites=True)
		
		* These examples will raise exceptions:
		
		  >>> tf.nest.assert_same_structure([0, 1], np.array([0, 1]))
		  Traceback (most recent call last):
		  ...
		  ValueError: The two structures don't have the same nested structure
		
		  >>> tf.nest.assert_same_structure(
		  ...       collections.namedtuple('bar', 'a b')(1, 2),
		  ...       collections.namedtuple('foo', 'a b')(2, 3))
		  Traceback (most recent call last):
		  ...
		  TypeError: The two structures don't have the same nested structure
		
		Args:
		  nest1: an arbitrarily nested structure.
		  nest2: an arbitrarily nested structure.
		  check_types: if `True` (default) types of sequences are checked as well,
		    including the keys of dictionaries. If set to `False`, for example a
		    list and a tuple of objects will look the same if they have the same
		    size. Note that namedtuples with identical name and fields are always
		    considered to have the same shallow structure. Two types will also be
		    considered the same if they are both list subtypes (which allows "list"
		    and "_ListWrapper" from trackable dependency tracking to compare
		    equal).
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Raises:
		  ValueError: If the two structures do not have the same number of elements or
		    if the two structures are not nested in the same way.
		  TypeError: If the two structures differ in the type of sequence in any of
		    their substructures. Only possible if `check_types` is `True`.
	**/
	static public function assert_same_structure(nest1:Dynamic, nest2:Dynamic, ?check_types:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Returns a flat list from a given nested structure.
		
		If nest is not a structure , tuple (or a namedtuple), dict, or an attrs class,
		then returns a single-element list:
		  [nest].
		
		This is the inverse of the `nest.pack_sequence_as` method that takes in a
		flattened list and re-packs it into the nested structure.
		
		In the case of dict instances, the sequence consists of the values, sorted by
		key to ensure deterministic behavior. This is true also for OrderedDict
		instances: their sequence order is ignored, the sorting order of keys is used
		instead. The same convention is followed in `nest.pack_sequence_as`. This
		correctly repacks dicts and OrderedDicts after they have been flattened, and
		also allows flattening an OrderedDict and then repacking it back using a
		corresponding plain dict, or vice-versa. Dictionaries with non-sortable keys
		cannot be flattened.
		
		Users must not modify any collections used in nest while this function is
		running.
		
		Examples:
		
		1. Python dict (ordered by key):
		
		  >>> dict = { "key3": "value3", "key1": "value1", "key2": "value2" }
		  >>> tf.nest.flatten(dict)
		  ['value1', 'value2', 'value3']
		
		2. For a nested python tuple:
		
		  >>> tuple = ((1.0, 2.0), (3.0, 4.0, 5.0), 6.0)
		  >>> tf.nest.flatten(tuple)
		      [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
		
		3. For a nested dictionary of dictionaries:
		
		  >>> dict = { "key3": {"c": (1.0, 2.0), "a": (3.0)},
		  ... "key1": {"m": "val1", "g": "val2"} }
		  >>> tf.nest.flatten(dict)
		  ['val2', 'val1', 3.0, 1.0, 2.0]
		
		4. Numpy array (will not flatten):
		
		  >>> array = np.array([[1, 2], [3, 4]])
		  >>> tf.nest.flatten(array)
		      [array([[1, 2],
		              [3, 4]])]
		
		5. `tf.Tensor` (will not flatten):
		
		  >>> tensor = tf.constant([[1., 2., 3.], [4., 5., 6.], [7., 8., 9.]])
		  >>> tf.nest.flatten(tensor)
		      [<tf.Tensor: shape=(3, 3), dtype=float32, numpy=
		        array([[1., 2., 3.],
		               [4., 5., 6.],
		               [7., 8., 9.]], dtype=float32)>]
		
		6. `tf.RaggedTensor`: This is a composite tensor thats representation consists
		of a flattened list of 'values' and a list of 'row_splits' which indicate how
		to chop up the flattened list into different rows. For more details on
		`tf.RaggedTensor`, please visit
		https://www.tensorflow.org/api_docs/python/tf/RaggedTensor.
		
		with `expand_composites=False`, we just return the RaggedTensor as is.
		
		  >>> tensor = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2]])
		  >>> tf.nest.flatten(tensor, expand_composites=False)
		  [<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2]]>]
		
		with `expand_composites=True`, we return the component Tensors that make up
		the RaggedTensor representation (the values and row_splits tensors)
		
		  >>> tensor = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2]])
		  >>> tf.nest.flatten(tensor, expand_composites=True)
		  [<tf.Tensor: shape=(7,), dtype=int32, numpy=array([3, 1, 4, 1, 5, 9, 2],
		                                                    dtype=int32)>,
		   <tf.Tensor: shape=(4,), dtype=int64, numpy=array([0, 4, 4, 7])>]
		
		Args:
		  structure: an arbitrarily nested structure. Note, numpy arrays are
		    considered atoms and are not flattened.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A Python list, the flattened version of the input.
		
		Raises:
		  TypeError: The nest is or contains a dict with non-sortable keys.
	**/
	static public function flatten(structure:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Returns true if its input is a collections.abc.Sequence (except strings).
		
		  >>> tf.nest.is_nested("1234")
		  False
		
		  >>> tf.nest.is_nested([1, 3, [4, 5]])
		  True
		
		  >>> tf.nest.is_nested(((7, 8), (5, 6)))
		  True
		
		  >>> tf.nest.is_nested([])
		  True
		
		  >>> tf.nest.is_nested({"a": 1, "b": 2})
		  True
		
		  >>> tf.nest.is_nested({"a": 1, "b": 2}.keys())
		  True
		
		  >>> tf.nest.is_nested({"a": 1, "b": 2}.values())
		  True
		
		  >>> tf.nest.is_nested({"a": 1, "b": 2}.items())
		  True
		
		  >>> tf.nest.is_nested(set([1, 2]))
		  False
		
		  >>> ones = tf.ones([2, 3])
		  >>> tf.nest.is_nested(ones)
		  False
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.abc.Sequence
		  or a dict.
	**/
	static public function is_nested(seq:Dynamic):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(x[0], x[1], ...)` where x[i] is an entry in
		`structure[i]`.  All structures in `structure` must have the same arity,
		and the return value will contain results with the same structure layout.
		
		Examples:
		
		* A single Python dict:
		
		>>> a = {"hello": 24, "world": 76}
		>>> tf.nest.map_structure(lambda p: p * 2, a)
		{'hello': 48, 'world': 152}
		
		* Multiple Python dictionaries:
		
		>>> d1 = {"hello": 24, "world": 76}
		>>> d2 = {"hello": 36, "world": 14}
		>>> tf.nest.map_structure(lambda p1, p2: p1 + p2, d1, d2)
		{'hello': 60, 'world': 90}
		
		* A single Python list:
		
		>>> a = [24, 76, "ab"]
		>>> tf.nest.map_structure(lambda p: p * 2, a)
		[48, 152, 'abab']
		
		* Scalars:
		
		>>> tf.nest.map_structure(lambda x, y: x + y, 3, 4)
		7
		
		* Empty structures:
		
		>>> tf.nest.map_structure(lambda x: x + 1, ())
		()
		
		* Check the types of iterables:
		
		>>> s1 = (((1, 2), 3), 4, (5, 6))
		>>> s1_list = [[[1, 2], 3], 4, [5, 6]]
		>>> tf.nest.map_structure(lambda x, y: None, s1, s1_list)
		Traceback (most recent call last):
		...
		TypeError: The two structures don't have the same nested structure
		
		* Type check is set to False:
		
		>>> s1 = (((1, 2), 3), 4, (5, 6))
		>>> s1_list = [[[1, 2], 3], 4, [5, 6]]
		>>> tf.nest.map_structure(lambda x, y: None, s1, s1_list, check_types=False)
		(((None, None), None), None, (None, None))
		
		Args:
		  func: A callable that accepts as many arguments as there are structures.
		  *structure: scalar, or tuple or dict or list of constructed scalars and/or
		    other tuples/lists, or scalars.  Note: numpy arrays are considered as
		    scalars.
		  **kwargs: Valid keyword args are:
		
		    * `check_types`: If set to `True` (default) the types of
		      iterables within the structures have to be same (e.g.
		      `map_structure(func, [1], (1,))` raises a `TypeError`
		      exception). To allow this set this argument to `False`.
		      Note that namedtuples with identical name and fields are always
		      considered to have the same shallow structure.
		    * `expand_composites`: If set to `True`, then composite tensors such
		      as `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into
		      their component tensors.  If `False` (the default), then composite
		      tensors are not expanded.
		
		Returns:
		  A new structure with the same arity as `structure`, whose values correspond
		  to `func(x[0], x[1], ...)` where `x[i]` is a value in the corresponding
		  location in `structure[i]`. If there are different sequence types and
		  `check_types` is `False` the sequence types of the first structure will be
		  used.
		
		Raises:
		  TypeError: If `func` is not callable or if the structures do not match
		    each other by depth tree.
		  ValueError: If no structure is provided or if the structures do not match
		    each other by type.
		  ValueError: If wrong keyword arguments are provided.
	**/
	static public function map_structure(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a given flattened sequence packed into a given structure.
		
		If `structure` is a scalar, `flat_sequence` must be a single-element list;
		in this case the return value is `flat_sequence[0]`.
		
		If `structure` is or contains a dict instance, the keys will be sorted to
		pack the flat sequence in deterministic order. This is true also for
		`OrderedDict` instances: their sequence order is ignored, the sorting order of
		keys is used instead. The same convention is followed in `flatten`.
		This correctly repacks dicts and `OrderedDict`s after they have been
		flattened, and also allows flattening an `OrderedDict` and then repacking it
		back using a corresponding plain dict, or vice-versa.
		Dictionaries with non-sortable keys cannot be flattened.
		
		Examples:
		
		1. Python dict:
		
		  >>> structure = { "key3": "", "key1": "", "key2": "" }
		  >>> flat_sequence = ["value1", "value2", "value3"]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence)
		  {'key3': 'value3', 'key1': 'value1', 'key2': 'value2'}
		
		2. For a nested python tuple:
		
		  >>> structure = (('a','b'), ('c','d','e'), 'f')
		  >>> flat_sequence = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence)
		  ((1.0, 2.0), (3.0, 4.0, 5.0), 6.0)
		
		3. For a nested dictionary of dictionaries:
		
		  >>> structure = { "key3": {"c": ('alpha', 'beta'), "a": ('gamma')},
		  ...               "key1": {"e": "val1", "d": "val2"} }
		  >>> flat_sequence = ['val2', 'val1', 3.0, 1.0, 2.0]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence)
		  {'key3': {'c': (1.0, 2.0), 'a': 3.0}, 'key1': {'e': 'val1', 'd': 'val2'}}
		
		4. Numpy array (considered a scalar):
		
		  >>> structure = ['a']
		  >>> flat_sequence = [np.array([[1, 2], [3, 4]])]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence)
		  [array([[1, 2],
		         [3, 4]])]
		
		5. tf.Tensor (considered a scalar):
		
		  >>> structure = ['a']
		  >>> flat_sequence = [tf.constant([[1., 2., 3.], [4., 5., 6.]])]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence)
		  [<tf.Tensor: shape=(2, 3), dtype=float32,
		   numpy= array([[1., 2., 3.], [4., 5., 6.]], dtype=float32)>]
		
		6. `tf.RaggedTensor`: This is a composite tensor thats representation consists
		of a flattened list of 'values' and a list of 'row_splits' which indicate how
		to chop up the flattened list into different rows. For more details on
		`tf.RaggedTensor`, please visit
		https://www.tensorflow.org/api_docs/python/tf/RaggedTensor.
		
		With `expand_composites=False`, we treat RaggedTensor as a scalar.
		
		  >>> structure = { "foo": tf.ragged.constant([[1, 2], [3]]),
		  ...               "bar": tf.constant([[5]]) }
		  >>> flat_sequence = [ "one", "two" ]
		  >>> tf.nest.pack_sequence_as(structure, flat_sequence,
		  ... expand_composites=False)
		  {'foo': 'two', 'bar': 'one'}
		
		With `expand_composites=True`, we expect that the flattened input contains
		the tensors making up the ragged tensor i.e. the values and row_splits
		tensors.
		
		  >>> structure = { "foo": tf.ragged.constant([[1., 2.], [3.]]),
		  ...               "bar": tf.constant([[5.]]) }
		  >>> tensors = tf.nest.flatten(structure, expand_composites=True)
		  >>> print(tensors)
		  [<tf.Tensor: shape=(1, 1), dtype=float32, numpy=array([[5.]],
		   dtype=float32)>,
		   <tf.Tensor: shape=(3,), dtype=float32, numpy=array([1., 2., 3.],
		   dtype=float32)>,
		   <tf.Tensor: shape=(3,), dtype=int64, numpy=array([0, 2, 3])>]
		  >>> verified_tensors = [tf.debugging.check_numerics(t, 'invalid tensor: ')
		  ...                     if t.dtype==tf.float32 else t
		  ...                     for t in tensors]
		  >>> tf.nest.pack_sequence_as(structure, verified_tensors,
		  ...                          expand_composites=True)
		  {'foo': <tf.RaggedTensor [[1.0, 2.0], [3.0]]>,
		   'bar': <tf.Tensor: shape=(1, 1), dtype=float32, numpy=array([[5.]],
		   dtype=float32)>}
		
		Args:
		  structure: Nested structure, whose structure is given by nested lists,
		    tuples, and dicts. Note: numpy arrays and strings are considered
		    scalars.
		  flat_sequence: flat sequence to pack.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  packed: `flat_sequence` converted to have the same recursive structure as
		    `structure`.
		
		Raises:
		  ValueError: If `flat_sequence` and `structure` have different
		    element counts.
		  TypeError: `structure` is or contains a dict with non-sortable keys.
	**/
	static public function pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic, ?expand_composites:Dynamic):Dynamic;
}