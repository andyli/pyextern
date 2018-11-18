/* This file is generated, do not edit! */
package tensorflow.python.data.util.nest;
@:pythonImport("tensorflow.python.data.util.nest") extern class Nest_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for pack_nest_as.
		
		Args:
		  structure: Substructure (tuple of elements and/or tuples) to mimic
		  flat: Flattened values to output substructure for.
		  index: Index at which to start reading from flat.
		
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
	static public function _packed_nest_with_indices(structure:Dynamic, flat:Dynamic, index:Dynamic):Dynamic;
	/**
		Converts the sequence `args` to the same type as `instance`.
		
		Args:
		  instance: an instance of `tuple`, `list`, or a `namedtuple` class.
		  args: elements to be converted to a sequence.
		
		Returns:
		  `args` with the type of `instance`.
	**/
	static public function _sequence_like(instance:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a sorted list of the dict keys, with error if keys not sortable.
	**/
	static public function _sorted(dict_:Dynamic):Dynamic;
	/**
		Yields elements `input_tree` partially flattened up to `shallow_tree`.
	**/
	static public function _yield_flat_up_to(shallow_tree:Dynamic, input_tree:Dynamic):Dynamic;
	static public function _yield_value(iterable:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Asserts that two structures are nested in the same way.
		
		Args:
		  nest1: an arbitrarily nested structure.
		  nest2: an arbitrarily nested structure.
		  check_types: if `True` (default) types of sequences should be same as
		    well. For dictionary, "type" of dictionary is considered to include its
		    keys. In other words, two dictionaries with different keys are considered
		    to have a different "type". If set to `False`, two iterables are
		    considered same as long as they yield the elements that have same
		    structures.
		
		Raises:
		  ValueError: If the two structures do not have the same number of elements or
		    if the two structures are not nested in the same way.
		  TypeError: If the two structures differ in the type of sequence in any of
		    their substructures. Only possible if `check_types` is `True`.
	**/
	static public function assert_same_structure(nest1:Dynamic, nest2:Dynamic, ?check_types:Dynamic):Dynamic;
	/**
		Asserts that `shallow_tree` is a shallow structure of `input_tree`.
		
		That is, this function tests if the `input_tree` structure can be created from
		the `shallow_tree` structure by replacing its leaf nodes with deeper
		tree structures.
		
		Examples:
		
		The following code will raise an exception:
		```python
		  shallow_tree = ["a", "b"]
		  input_tree = ["c", ["d", "e"], "f"]
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		The following code will not raise an exception:
		```python
		  shallow_tree = ["a", "b"]
		  input_tree = ["c", ["d", "e"]]
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		Args:
		  shallow_tree: an arbitrarily nested structure.
		  input_tree: an arbitrarily nested structure.
		  check_types: if `True` (default) the sequence types of `shallow_tree` and
		    `input_tree` have to be the same.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`. Only raised if `check_types` is `True`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function assert_shallow_structure(shallow_tree:Dynamic, input_tree:Dynamic, ?check_types:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a flat sequence from a given nested structure.
		
		If `nest` is not a sequence, this returns a single-element list: `[nest]`.
		
		Args:
		  nest: an arbitrarily nested structure or a scalar object.
		    Note, numpy arrays are considered scalars.
		
		Returns:
		  A Python list, the flattened version of the input.
	**/
	static public function flatten(nested:Dynamic):Dynamic;
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
		
		The input, `input_tree`, can be thought of as having the same structure as
		`shallow_tree`, but with leaf nodes that are themselves tree structures.
		
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
	static public function flatten_up_to(shallow_tree:Dynamic, input_tree:Dynamic):Dynamic;
	/**
		Returns a true if `seq` is a Sequence or dict (except strings/lists).
		
		NOTE(mrry): This differs from `tensorflow.python.util.nest.is_sequence()`,
		which *does* treat a Python list as a sequence. For ergonomic
		reasons, `tf.data` users would prefer to treat lists as
		implicit `tf.Tensor` objects, and dicts as (nested) sequences.
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string or list and is a
		  collections.Sequence.
	**/
	static public function is_sequence(o:Dynamic):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(x[0], x[1], ...)` where x[i] is an entry in
		`structure[i]`.  All structures in `structure` must have the same arity,
		and the return value will contain the results in the same structure.
		
		Args:
		  func: A callable that accepts as many arguments are there are structures.
		  *structure: scalar, or tuple or list of constructed scalars and/or other
		    tuples/lists, or scalars.  Note: numpy arrays are considered scalars.
		  **check_types_dict: only valid keyword argument is `check_types`. If set to
		    `True` (default) the types of iterables within the structures have to be
		    same (e.g. `map_structure(func, [1], (1,))` raises a `TypeError`
		    exception). To allow this set this argument to `False`.
		
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
	static public function map_structure(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?check_types_dict:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a function or op to a number of partially flattened inputs.
		
		The `inputs` are flattened up to `shallow_tree` before being mapped.
		
		Use Case:
		
		Sometimes we wish to apply a function to a partially flattened
		sequence (for example when the function itself takes sequence inputs). We
		achieve this by specifying a shallow structure, `shallow_tree` we wish to
		flatten up to.
		
		The `inputs`, can be thought of as having the same structure as
		`shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		This function, therefore, will return something with the same base structure
		as `shallow_tree`.
		
		Examples:
		
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
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
		
		Returns:
		  result of repeatedly applying `func`, with same structure as
		  `shallow_tree`.
	**/
	static public function map_structure_up_to(shallow_tree:Dynamic, func:Dynamic, ?inputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a given flattened sequence packed into a nest.
		
		If `structure` is a scalar, `flat_sequence` must be a single-element list;
		in this case the return value is `flat_sequence[0]`.
		
		Args:
		  structure: tuple or list constructed of scalars and/or other tuples/lists,
		    or a scalar.  Note: numpy arrays are considered scalars.
		  flat_sequence: flat sequence to pack.
		
		Returns:
		  packed: `flat_sequence` converted to have the same recursive structure as
		    `structure`.
		
		Raises:
		  ValueError: If nest and structure have different element counts.
	**/
	static public function pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}