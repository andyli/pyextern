/* This file is generated, do not edit! */
package tensorflow.python.util.nest;
@:pythonImport("tensorflow.python.util.nest") extern class Nest_Module {
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
	static public function _recursive_assert_same_structure(nest1:Dynamic, nest2:Dynamic):Dynamic;
	/**
		Converts the sequence `args` to the same type as `instance`.
		
		Args:
		  instance: an instance of `tuple`, `list`, or a `namedtuple` class.
		  args: elements to be converted to a sequence.
		
		Returns:
		  `args` with the type of `instance`.
	**/
	static public function _sequence_like(instance:Dynamic, args:Dynamic):Dynamic;
	static public function _yield_flat_nest(nest:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Asserts that two structures are nested in the same way.
		
		Args:
		  nest1: an arbitrarily nested structure.
		  nest2: an arbitrarily nested structure.
		
		Raises:
		  ValueError: If the two structures do not have the same number of elements or
		    if the two structures are not nested in the same way.
		  TypeError: If the two structures differ in the type of sequence in any of
		    their substructures.
	**/
	static public function assert_same_structure(nest1:Dynamic, nest2:Dynamic):Dynamic;
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
	static public function flatten(nest:Dynamic):Dynamic;
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
		  ValueError: If any key and value have not the same structure, or if keys are
		    not unique.
	**/
	static public function flatten_dict_items(dictionary:Dynamic):Dynamic;
	/**
		Returns a true if its input is a collections.Sequence (except strings).
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.Sequence.
	**/
	static public function is_sequence(seq:Dynamic):Dynamic;
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