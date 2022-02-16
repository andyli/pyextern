/* This file is generated, do not edit! */
package tensorflow.python.util.nest;
@:pythonImport("tensorflow.python.util.nest") extern class Nest_Module {
	static public var _DOT : Dynamic;
	static public var _IF_SHALLOW_IS_SEQ_INPUT_MUST_BE_SEQ : Dynamic;
	static public var _INPUT_TREE_SMALLER_THAN_SHALLOW_TREE : Dynamic;
	static public var _SHALLOW_TREE_HAS_INVALID_KEYS : Dynamic;
	static public var _STRUCTURES_HAVE_MISMATCHING_LENGTHS : Dynamic;
	static public var _STRUCTURES_HAVE_MISMATCHING_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a list of (name, value) pairs from an attrs instance.
		
		The list will be sorted by name.
		
		Args:
		  obj: an object.
		
		Returns:
		  A list of (attr_name, attr_value) pairs, sorted by attr_name.
	**/
	static public function _get_attrs_items(obj:Dynamic):Dynamic;
	/**
		IsAttrs(arg0: handle) -> bool
		
		
		Returns True if `instance` is an instance of an `attr.s` decorated class.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is an instance of an `attr.s` decorated class.
	**/
	static public function _is_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IsCompositeTensor(arg0: handle) -> bool
		
		
		Returns true if its input is a `CompositeTensor`.
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a CompositeTensor.
	**/
	static public function _is_composite_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IsMapping(arg0: handle) -> bool
		
		
		Returns True if `instance` is a `collections.Mapping`.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is a `collections.Mapping`.
	**/
	static public function _is_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IsMappingView(arg0: handle) -> bool
		
		
		Returns True if considered a mapping view for the purposes of Flatten()`.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if considered a mapping view for the purposes of Flatten().
	**/
	static public function _is_mapping_view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IsMutableMapping(arg0: handle) -> bool
		
		
		Returns True if `instance` is a `collections.MutableMapping`.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is a `collections.MutableMapping`.
	**/
	static public function _is_mutable_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True iff `instance` is a `namedtuple`.
		
		Args:
		  instance: An instance of a Python object.
		  strict: If True, `instance` is considered to be a `namedtuple` only if
		      it is a "plain" namedtuple. For instance, a class inheriting
		      from a `namedtuple` will be considered to be a `namedtuple`
		      iff `strict=False`.
		
		Returns:
		  True if `instance` is a `namedtuple`.
	**/
	static public function _is_namedtuple(instance:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		IsTypeSpec(arg0: handle) -> bool
		
		
		Returns true if its input is a `TypeSpec`, but is not a `TensorSpec`.
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a `TypeSpec`, but is not a `TensorSpec`.
	**/
	static public function _is_type_spec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implements sequence packing, with the option to alter the structure.
	**/
	static public function _pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic, expand_composites:Dynamic, ?sequence_fn:Dynamic):Dynamic;
	/**
		Helper function for pack_sequence_as.
		
		Args:
		  structure: Substructure (list / tuple / dict) to mimic.
		  flat: Flattened values to output substructure for.
		  index: Index at which to start reading from flat.
		  is_seq: Function used to test if a value should be treated as a sequence.
		  sequence_fn: Function used to generate a new sequence instance.
		
		Returns:
		  The tuple (new_index, child), where:
		    * new_index - the updated index into `flat` having processed `structure`.
		    * packed - the subset of `flat` corresponding to `structure`,
		               having started at `index`, and packed into the same nested
		               format.
		
		Raises:
		  ValueError: if `structure` contains more elements than `flat`
		    (assuming indexing starts from `index`).
	**/
	static public function _packed_nest_with_indices(structure:Dynamic, flat:Dynamic, index:Dynamic, is_seq:Dynamic, ?sequence_fn:Dynamic):Dynamic;
	/**
		SameNamedtuples(arg0: handle, arg1: handle) -> object
		
		
		Returns True if the two namedtuples have the same name and fields.
	**/
	static public function _same_namedtuples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts the sequence `args` to the same type as `instance`.
		
		Args:
		  instance: an instance of `tuple`, `list`, `namedtuple`, `dict`,
		      `collections.OrderedDict`, or `composite_tensor.Composite_Tensor`
		      or `type_spec.TypeSpec`.
		  args: elements to be converted to the `instance` type.
		
		Returns:
		  `args` with the type of `instance`.
	**/
	static public function _sequence_like(instance:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a sorted list of the dict keys, with error if keys not sortable.
	**/
	static public function _sorted(dict_:Dynamic):Dynamic;
	/**
		Yields (path, value) pairs of input_tree flattened up to shallow_tree.
		
		Args:
		  shallow_tree: Nested structure. Traverse no further than its leaf nodes.
		  input_tree: Nested structure. Return the paths and values from this tree.
		    Must have the same upper structure as shallow_tree.
		  is_seq: Function used to test if a value should be treated as a sequence.
		  path: Tuple. Optional argument, only used when recursing. The path from the
		    root of the original shallow_tree, down to the root of the shallow_tree
		    arg of this recursive call.
		
		Yields:
		  Pairs of (path, value), where path the tuple path of a leaf node in
		  shallow_tree, and value is the value of the corresponding node in
		  input_tree.
	**/
	static public function _yield_flat_up_to(shallow_tree:Dynamic, input_tree:Dynamic, is_seq:Dynamic, ?path:Dynamic):Dynamic;
	/**
		Yield (key, value) pairs for `iterable` in a deterministic order.
		
		For Sequences, the key will be an int, the array index of a value.
		For Mappings, the key will be the dictionary key.
		For objects (e.g. namedtuples), the key will be the attribute name.
		
		In all cases, the keys will be iterated in sorted order.
		
		Args:
		  iterable: an iterable.
		
		Yields:
		  The iterable's (key, value) pairs, in order of sorted keys.
	**/
	static public function _yield_sorted_items(iterable:Dynamic):Dynamic;
	static public function _yield_value(iterable:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		Asserts that `shallow_tree` is a shallow structure of `input_tree`.
		
		That is, this function tests if the `input_tree` structure can be created from
		the `shallow_tree` structure by replacing its leaf nodes with deeper
		tree structures.
		
		Examples:
		
		The following code will raise an exception:
		```python
		  shallow_tree = {"a": "A", "b": "B"}
		  input_tree = {"a": 1, "c": 2}
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		The following code will raise an exception:
		```python
		  shallow_tree = ["a", "b"]
		  input_tree = ["c", ["d", "e"], "f"]
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		Args:
		  shallow_tree: an arbitrarily nested structure.
		  input_tree: an arbitrarily nested structure.
		  check_types: if `True` (default) the sequence types of `shallow_tree` and
		    `input_tree` have to be the same. Note that even with check_types==True,
		    this function will consider two different namedtuple classes with the same
		    name and _fields attribute to be the same class.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`. Only raised if `check_types` is `True`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function assert_shallow_structure(shallow_tree:Dynamic, input_tree:Dynamic, ?check_types:Dynamic, ?expand_composites:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		Returns a dictionary with flattened keys and values.
		
		This function flattens the keys and values of a dictionary, which can be
		arbitrarily nested structures, and returns the flattened version of such
		structures:
		
		```python
		example_dictionary = {(4, 5, (6, 8)): ("a", "b", ("c", "d"))}
		result = {4: "a", 5: "b", 6: "c", 8: "d"}
		flatten_dict_items(example_dictionary) == result
		```
		
		The input dictionary must satisfy two properties:
		
		1. Its keys and values should have the same exact nested structure.
		2. The set of all flattened keys of the dictionary must not contain repeated
		   keys.
		
		Args:
		  dictionary: the dictionary to zip
		
		Returns:
		  The zipped dictionary.
		
		Raises:
		  TypeError: If the input is not a dictionary.
		  ValueError: If any key and value do not have the same structure layout, or
		  if keys are not unique.
	**/
	static public function flatten_dict_items(dictionary:Dynamic):Dynamic;
	/**
		Flattens `input_tree` up to `shallow_tree`.
		
		Any further depth in structure in `input_tree` is retained as elements in the
		partially flatten output.
		
		If `shallow_tree` and `input_tree` are not sequences, this returns a
		single-element list: `[input_tree]`.
		
		Use Case:
		
		Sometimes we may wish to partially flatten a nested sequence, retaining some
		of the nested structure. We achieve this by specifying a shallow structure,
		`shallow_tree`, we wish to flatten up to.
		
		The input, `input_tree`, can be thought of as having the same structure layout
		as `shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		Examples:
		
		```python
		input_tree = [[[2, 2], [3, 3]], [[4, 9], [5, 5]]]
		shallow_tree = [[True, True], [False, True]]
		
		flattened_input_tree = flatten_up_to(shallow_tree, input_tree)
		flattened_shallow_tree = flatten_up_to(shallow_tree, shallow_tree)
		
		# Output is:
		# [[2, 2], [3, 3], [4, 9], [5, 5]]
		# [True, True, False, True]
		```
		
		```python
		input_tree = [[('a', 1), [('b', 2), [('c', 3), [('d', 4)]]]]]
		shallow_tree = [['level_1', ['level_2', ['level_3', ['level_4']]]]]
		
		input_tree_flattened_as_shallow_tree = flatten_up_to(shallow_tree, input_tree)
		input_tree_flattened = flatten(input_tree)
		
		# Output is:
		# [('a', 1), ('b', 2), ('c', 3), ('d', 4)]
		# ['a', 1, 'b', 2, 'c', 3, 'd', 4]
		```
		
		Non-Sequence Edge Cases:
		
		```python
		flatten_up_to(0, 0)  # Output: [0]
		flatten_up_to(0, [0, 1, 2])  # Output: [[0, 1, 2]]
		flatten_up_to([0, 1, 2], 0)  # Output: TypeError
		flatten_up_to([0, 1, 2], [0, 1, 2])  # Output: [0, 1, 2]
		```
		
		Args:
		  shallow_tree: a possibly pruned structure of input_tree.
		  input_tree: an arbitrarily nested structure or a scalar object.
		    Note, numpy arrays are considered scalars.
		  check_types: bool. If True, check that each node in shallow_tree has the
		    same type as the corresponding node in input_tree.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A Python list, the partially flattened version of `input_tree` according to
		  the structure of `shallow_tree`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function flatten_up_to(shallow_tree:Dynamic, input_tree:Dynamic, ?check_types:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Returns a list of (string path, data element) tuples.
		
		The order of tuples produced matches that of `nest.flatten`. This allows you
		to flatten a nested structure while keeping information about where in the
		structure each data element was located. See `nest.yield_flat_paths`
		for more information.
		
		Args:
		  structure: the nested structure to flatten.
		  separator: string to separate levels of hierarchy in the results, defaults
		    to '/'.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A list of (string, data element) tuples.
	**/
	static public function flatten_with_joined_string_paths(structure:Dynamic, ?separator:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Returns a list of `(tuple_path, leaf_element)` tuples.
		
		The order of pairs produced matches that of `nest.flatten`. This allows you
		to flatten a nested structure while keeping information about where in the
		structure each data element was located. See `nest.yield_flat_paths`
		for more information about tuple paths.
		
		Args:
		  structure: the nested structure to flatten.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A list of `(tuple_path, leaf_element)` tuples. Each `tuple_path` is a tuple
		  of indices and/or dictionary keys that uniquely specify the path to
		  `leaf_element` within `structure`.
	**/
	static public function flatten_with_tuple_paths(structure:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Flattens `input_tree` up to `shallow_tree`.
		
		Any further depth in structure in `input_tree` is retained as elements in the
		partially flattened output.
		
		Returns a list of (path, value) pairs, where value a leaf node in the
		flattened tree, and path is the tuple path of that leaf in input_tree.
		
		If `shallow_tree` and `input_tree` are not sequences, this returns a
		single-element list: `[((), input_tree)]`.
		
		Use Case:
		
		Sometimes we may wish to partially flatten a nested sequence, retaining some
		of the nested structure. We achieve this by specifying a shallow structure,
		`shallow_tree`, we wish to flatten up to.
		
		The input, `input_tree`, can be thought of as having the same structure layout
		as `shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		Examples:
		
		```python
		input_tree = [[[2, 2], [3, 3]], [[4, 9], [5, 5]]]
		shallow_tree = [[True, True], [False, True]]
		
		flattened_input_tree = flatten_with_tuple_paths_up_to(shallow_tree,
		                                                      input_tree)
		flattened_shallow_tree = flatten_with_tuple_paths_up_to(shallow_tree,
		                                                        shallow_tree)
		
		# Output is:
		# [((0, 0), [2, 2]),
		#  ((0, 1), [3, 3]),
		#  ((1, 0), [4, 9]),
		#  ((1, 1), [5, 5])]
		#
		# [((0, 0), True),
		#  ((0, 1), True),
		#  ((1, 0), False),
		#  ((1, 1), True)]
		```
		
		```python
		input_tree = [[('a', 1), [('b', 2), [('c', 3), [('d', 4)]]]]]
		shallow_tree = [['level_1', ['level_2', ['level_3', ['level_4']]]]]
		
		input_tree_flattened_as_shallow_tree = flatten_up_to(shallow_tree, input_tree)
		input_tree_flattened = flatten(input_tree)
		
		# Output is:
		# [((0, 0), ('a', 1)),
		#  ((0, 1, 0), ('b', 2)),
		#  ((0, 1, 1, 0), ('c', 3)),
		#  ((0, 1, 1, 1), ('d', 4))]
		# ['a', 1, 'b', 2, 'c', 3, 'd', 4]
		```
		
		Non-Sequence Edge Cases:
		
		```python
		flatten_with_tuple_paths_up_to(0, 0)  # Output: [(), 0]
		
		flatten_with_tuple_paths_up_to(0, [0, 1, 2])  # Output: [(), [0, 1, 2]]
		
		flatten_with_tuple_paths_up_to([0, 1, 2], 0)  # Output: TypeError
		
		flatten_with_tuple_paths_up_to([0, 1, 2], [0, 1, 2])
		# Output: [((0,) 0), ((1,), 1), ((2,), 2)]
		```
		
		Args:
		  shallow_tree: a possibly pruned structure of input_tree.
		  input_tree: an arbitrarily nested structure or a scalar object.
		    Note, numpy arrays are considered scalars.
		  check_types: bool. If True, check that each node in shallow_tree has the
		    same type as the corresponding node in input_tree.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A Python list, the partially flattened version of `input_tree` according to
		  the structure of `shallow_tree`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function flatten_with_tuple_paths_up_to(shallow_tree:Dynamic, input_tree:Dynamic, ?check_types:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Generates a shallow structure from a `traverse_fn` and `structure`.
		
		`traverse_fn` must accept any possible subtree of `structure` and return
		a depth=1 structure containing `True` or `False` values, describing which
		of the top-level subtrees may be traversed.  It may also
		return scalar `True` or `False` "traversal is OK / not OK for all subtrees."
		
		Examples are available in the unit tests (nest_test.py).
		
		Args:
		  traverse_fn: Function taking a substructure and returning either a scalar
		    `bool` (whether to traverse that substructure or not) or a depth=1
		    shallow structure of the same type, describing which parts of the
		    substructure to traverse.
		  structure: The structure to traverse.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Returns:
		  A shallow structure containing python bools, which can be passed to
		  `map_structure_up_to` and `flatten_up_to`.
		
		Raises:
		  TypeError: if `traverse_fn` returns a sequence for a non-sequence input,
		    or a structure with depth higher than 1 for a sequence input,
		    or if any leaf values in the returned structure or scalar are not type
		    `bool`.
	**/
	static public function get_traverse_shallow_structure(traverse_fn:Dynamic, structure:Dynamic, ?expand_composites:Dynamic):Dynamic;
	/**
		Returns a true if its input is an instance of an attr.s decorated class.
	**/
	static public function is_attrs(obj:Dynamic):Dynamic;
	/**
		Returns a true if its input is a collections.Mapping.
	**/
	static public function is_mapping(obj:Dynamic):Dynamic;
	/**
		Returns True iff `instance` is a `namedtuple`.
		
		Args:
		  instance: An instance of a Python object.
		  strict: If True, `instance` is considered to be a `namedtuple` only if
		      it is a "plain" namedtuple. For instance, a class inheriting
		      from a `namedtuple` will be considered to be a `namedtuple`
		      iff `strict=False`.
		
		Returns:
		  True if `instance` is a `namedtuple`.
	**/
	static public function is_namedtuple(instance:Dynamic, ?strict:Dynamic):Dynamic;
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
		IsSequence(arg0: handle) -> bool
		
		
		Returns true if its input is a collections.Sequence (except strings).
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.Sequence or a
		  dict.
	**/
	static public function is_sequence(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IsSequenceOrComposite(arg0: handle) -> bool
		
		
		Returns true if its input is a sequence or a `CompositeTensor`.
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.Sequence or a
		  dict or a CompositeTensor or a TypeSpec (except string and TensorSpec).
	**/
	static public function is_sequence_or_composite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Replace all lists with tuples.
		
		The fork of nest that tf.data uses treats lists as single elements, while
		tf.nest treats them as structures to recurse into. Keras has chosen to adopt
		the latter convention, and must therefore deeply replace all lists with tuples
		before passing structures to Dataset.from_generator.
		
		Args:
		  structure: A nested structure to be remapped.
		
		Returns:
		  structure mapped to replace all lists with tuples.
	**/
	static public function list_to_tuple(structure:Dynamic):Dynamic;
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
		Applies a function or op to a number of partially flattened inputs.
		
		The `inputs` are flattened up to `shallow_tree` before being mapped.
		
		Use Case:
		
		Sometimes we wish to apply a function to a partially flattened
		sequence (for example when the function itself takes sequence inputs). We
		achieve this by specifying a shallow structure, `shallow_tree` we wish to
		flatten up to.
		
		The `inputs`, can be thought of as having the same structure layout as
		`shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		This function therefore will return something with the same base structure as
		`shallow_tree`.
		
		Examples:
		
		```python
		shallow_tree = [None, None]
		inp_val = [1, 2, 3]
		out = map_structure_up_to(shallow_tree, lambda x: 2 * x, inp_val)
		
		# Output is: [2, 4]
		```
		
		```python
		ab_tuple = collections.namedtuple("ab_tuple", "a, b")
		op_tuple = collections.namedtuple("op_tuple", "add, mul")
		inp_val = ab_tuple(a=2, b=3)
		inp_ops = ab_tuple(a=op_tuple(add=1, mul=2), b=op_tuple(add=2, mul=3))
		out = map_structure_up_to(inp_val, lambda val, ops: (val + ops.add) * ops.mul,
		                          inp_val, inp_ops)
		
		# Output is: ab_tuple(a=6, b=15)
		```
		
		```python
		data_list = [[2, 4, 6, 8], [[1, 3, 5, 7, 9], [3, 5, 7]]]
		name_list = ['evens', ['odds', 'primes']]
		out = map_structure_up_to(
		    name_list,
		    lambda name, sec: "first_{}_{}".format(len(sec), name),
		    name_list, data_list)
		
		# Output is: ['first_4_evens', ['first_5_odds', 'first_3_primes']]
		```
		
		Args:
		  shallow_tree: a shallow tree, common to all the inputs.
		  func: callable which will be applied to each input individually.
		  *inputs: arbitrarily nested combination of objects that are compatible with
		      shallow_tree. The function `func` is applied to corresponding
		      partially flattened elements of each input, so the function must support
		      arity of `len(inputs)`.
		  **kwargs: kwargs to feed to func(). Special kwarg
		    `check_types` is not passed to func, but instead determines whether the
		    types of iterables within the structures have to be same (e.g.
		    `map_structure(func, [1], (1,))` raises a `TypeError` exception). To allow
		    this set this argument to `False`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
		
		Returns:
		  result of repeatedly applying `func`, with the same structure layout as
		  `shallow_tree`.
	**/
	static public function map_structure_up_to(shallow_tree:Dynamic, func:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(path, x[0], x[1], ..., **kwargs)` where x[i] is an entry in
		`structure[i]` and `path` is the common path to x[i] in the structures.  All
		structures in `structure` must have the same arity, and the return value will
		contain the results with the same structure layout. Special kwarg
		`check_types` determines whether the types of iterables within the structure
		must be the same-- see **kwargs definition below.
		
		Args:
		  func: A callable with the signature func(path, *values, **kwargs) that is
		    evaluated on the leaves of the structure.
		  *structure: A variable number of compatible structures to process.
		  **kwargs: Optional kwargs to be passed through to func. Special kwarg
		    `check_types` is not passed to func, but instead determines whether the
		    types of iterables within the structures have to be same (e.g.,
		    `map_structure(func, [1], (1,))` raises a `TypeError` exception). By
		    default, the types must match. To allow iteration over structures of
		    different types (but common arity), set this kwarg to `False`.
		
		Returns:
		  A structure of the same form as the input structures whose leaves are the
		  result of evaluating func on corresponding leaves of the input structures.
		
		Raises:
		  TypeError: If `func` is not callable or if the structures do not match
		    each other by depth tree.
		  TypeError: If `check_types` is not `False` and the two structures differ in
		    the type of sequence in any of their substructures.
		  ValueError: If no structures are provided.
	**/
	static public function map_structure_with_paths(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(tuple_path, x[0], x[1], ..., **kwargs)` where `x[i]` is an entry
		in `structure[i]` and `tuple_path` is a tuple of indices and/or dictionary
		keys (as returned by `nest.yield_flat_paths`), which uniquely specifies the
		common path to x[i] in the structures. All structures in `structure` must have
		the same arity, and the return value will contain the results in the same
		structure. Special kwarg `check_types` determines whether the types of
		iterables within the structure must be the same-- see **kwargs definition
		below.
		
		Args:
		  func: A callable with the signature `func(tuple_path, *values, **kwargs)`
		    that is evaluated on the leaves of the structure.
		  *structure: A variable number of compatible structures to process.
		  **kwargs: Optional kwargs to be passed through to func. Special kwarg
		    `check_types` is not passed to func, but instead determines whether the
		    types of iterables within the structures have to be same (e.g.
		    `map_structure(func, [1], (1,))` raises a `TypeError` exception). To allow
		    this set this argument to `False`.
		
		Returns:
		  A structure of the same form as the input structures whose leaves are the
		  result of evaluating func on corresponding leaves of the input structures.
		
		Raises:
		  TypeError: If `func` is not callable or if the structures do not match
		    each other by depth tree.
		  TypeError: If `check_types` is not `False` and the two structures differ in
		    the type of sequence in any of their substructures.
		  ValueError: If no structures are provided.
	**/
	static public function map_structure_with_tuple_paths(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a function or op to a number of partially flattened inputs.
		
		Like map_structure_up_to(), except that the 'func' argument takes a path
		tuple as its first argument, followed by the corresponding values from
		*inputs.
		
		Example:
		
		```python
		lowercase = {'a': 'a', 'b': ('b0', 'b1')}
		uppercase = {'a': 'A', 'b': ('B0', 'B1')}
		
		def print_path_and_values(path, *values):
		  print("path: {}, values: {}".format(path, values))
		
		shallow_tree = {'a': None}
		map_structure_with_tuple_paths_up_to(shallow_tree,
		                                     print_path_and_values,
		                                     lowercase,
		                                     uppercase)
		path: ('a',), values: ('a', 'A')
		path: ('b', 0), values: ('b0', 'B0')
		path: ('b', 1), values: ('b1', 'B1')
		
		shallow_tree = {'b': None}
		map_structure_with_tuple_paths_up_to(shallow_tree,
		                                     print_path_and_values,
		                                     lowercase,
		                                     uppercase,
		                                     check_types=False)
		path: ('b', 1), values: (('bo', 'b1'), ('B0', 'B1'))
		
		shallow_tree = {'a': None, 'b': {1: None}}
		map_structure_with_tuple_paths_up_to(shallow_tree,
		                                     print_path_and_values,
		                                     lowercase,
		                                     uppercase,
		                                     check_types=False)
		path: ('a',), values: ('a', 'A')
		path: ('b', 1), values: ('b1', B1')
		```
		
		Args:
		  shallow_tree: a shallow tree, common to all the inputs.
		  func: callable that takes args (path, inputs_0_value, ... , inputs_N_value),
		    where path is a tuple path to a leaf node in shallow_tree, and
		    inputs_i_value is the corresponding value from inputs[i].
		  *inputs: nested structures that are all structurally compatible with
		      shallow_tree.
		  **kwargs: kwargs to feed to func(). Special kwarg
		    `check_types` is not passed to func, but instead determines whether the
		    types of iterables within the structures have to be same (e.g.
		    `map_structure(func, [1], (1,))` raises a `TypeError` exception). To allow
		    this set this argument to `False`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but one of `*inputs` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
		
		Returns:
		  Result of repeatedly applying `func`. Has the same structure layout as
		  `shallow_tree`.
	**/
	static public function map_structure_with_tuple_paths_up_to(shallow_tree:Dynamic, func:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		SameNamedtuples(arg0: handle, arg1: handle) -> object
		
		
		Returns True if the two namedtuples have the same name and fields.
	**/
	static public function same_namedtuples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Yields paths for some nested structure.
		
		Paths are lists of objects which can be str-converted, which may include
		integers or other types which are used as indices in a dict.
		
		The flat list will be in the corresponding order as if you called
		`nest.flatten` on the structure. This is handy for naming Tensors such
		the TF scope structure matches the tuple structure.
		
		E.g. if we have a tuple `value = Foo(a=3, b=Bar(c=23, d=42))`
		
		```shell
		nest.flatten(value)
		[3, 23, 42]
		list(nest.yield_flat_paths(value))
		[('a',), ('b', 'c'), ('b', 'd')]
		```
		
		```shell
		list(nest.yield_flat_paths({'a': [3]}))
		[('a', 0)]
		list(nest.yield_flat_paths({'a': 3}))
		[('a',)]
		```
		
		Args:
		  nest: the value to produce a flattened paths list for.
		  expand_composites: If true, then composite tensors such as
		    `tf.sparse.SparseTensor` and `tf.RaggedTensor` are expanded into their
		    component tensors.
		
		Yields:
		  Tuples containing index or key values which form the path to a specific
		  leaf value in the nested structure.
	**/
	static public function yield_flat_paths(nest:Dynamic, ?expand_composites:Dynamic):Dynamic;
}