/* This file is generated, do not edit! */
package tensorflow.python.ops.structured.structured_tensor;
@:pythonImport("tensorflow.python.ops.structured.structured_tensor", "StructuredTensor") extern class StructuredTensor {
	static public function FieldFn(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FieldName(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FieldValue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Returns the specified piece of this StructuredTensor.
		
		* If `struct_tensor` is scalar (i.e., a single structure), then
		  `struct_tensor[f]` returns the value of field `f` (where `f` must be a
		  string).
		
		* If `struct_tensor` is non-scalar (i.e., a vector or higher-dimensional
		  tensor of structures), `struct_tensor[i]` selects an element or slice of
		  the tensor using standard Python semantics (e.g., negative values index
		  from the end).  `i` may have any of the following types:
		
		  * `int` constant
		  * `string` constant
		  * scalar integer `Tensor`
		  * `slice` containing integer constants and/or scalar integer
		    `Tensor`s
		
		#### Multidimensional indexing
		
		`StructuredTensor` supports multidimensional indexing.  I.e., `key` may be a
		`tuple` of values, indexing or slicing multiple dimensions at once.  For
		example, if `people` is a vector of structures, each of which has a vector-
		valued `names` field, then `people[3, 'names', 0]` is equivalent to
		`people[3]['names'][0]`; and `people[:, 'names', :]` will return a (possibly
		ragged) matrix of names, with shape `[num_people, num_names_per_person]`.
		
		Args:
		  key: Indicates which piece of the StructuredTensor to return.
		
		Returns:
		  A `Tensor`, `StructuredTensor`, or `RaggedTensor`.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Private constructor -- use factory methods to create StructuredTensors.
		
		This constructor builds a `StructuredTensor` from the given attributes,
		performing minimal validation.
		
		Args:
		  fields: A dictionary mapping from string to `Tensor`, `RaggedTensor`, or
		    `StructuredTensor`.  (This dict is not copied, so the caller must ensure
		    that it does not get mutated via leaked references.)
		  shape: `tf.TensorShape` with statically known rank.
		  nrows: scalar integer `tf.Tensor`, or `None` if `shape.rank==0`.
		  row_partitions: tuple of `RowPartition`s, with length `shape.rank-1`.
		  internal: Private key value, required to ensure that this private
		    constructor is *only* called from the factory methods.
	**/
	@:native("__init__")
	public function ___init__(fields:Dynamic, shape:Dynamic, nrows:Dynamic, row_partitions:Dynamic, ?internal:Dynamic):Dynamic;
	/**
		Private constructor -- use factory methods to create StructuredTensors.
		
		This constructor builds a `StructuredTensor` from the given attributes,
		performing minimal validation.
		
		Args:
		  fields: A dictionary mapping from string to `Tensor`, `RaggedTensor`, or
		    `StructuredTensor`.  (This dict is not copied, so the caller must ensure
		    that it does not get mutated via leaked references.)
		  shape: `tf.TensorShape` with statically known rank.
		  nrows: scalar integer `tf.Tensor`, or `None` if `shape.rank==0`.
		  row_partitions: tuple of `RowPartition`s, with length `shape.rank-1`.
		  internal: Private key value, required to ensure that this private
		    constructor is *only* called from the factory methods.
	**/
	public function new(fields:Dynamic, shape:Dynamic, nrows:Dynamic, row_partitions:Dynamic, ?internal:Dynamic):Void;
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
		Implement setattr(self, name, value).
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
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	/**
		Converts python dictionary `pyval` to a StructuredTensor with rank=0.
	**/
	static public function _from_pydict(pyval:Dynamic, typespec:Dynamic, path_so_far:Dynamic):Dynamic;
	/**
		Converts python list `pyval` to a StructuredTensor with rank>1.
	**/
	static public function _from_pylist_of_dict(pyval:Dynamic, keys:Dynamic, rank:Dynamic, typespec:Dynamic, path_so_far:Dynamic):Dynamic;
	/**
		Converts a pylist of empty dictionaries to StructuredTensors.
	**/
	static public function _from_pylist_of_empty_dict(pyval:Dynamic, rank:Dynamic):Dynamic;
	/**
		Converts python list `pyval` to a Tensor or RaggedTensor with rank>1.
	**/
	static public function _from_pylist_of_value(pyval:Dynamic, typespec:Dynamic, path_so_far:Dynamic):Dynamic;
	/**
		Converts python scalar value `pyval` to a Tensor.
	**/
	static public function _from_pyscalar(pyval:Dynamic, typespec:Dynamic, path_so_far:Dynamic):Dynamic;
	/**
		Helper function for from_pyval.
		
		
		Args:
		  pyval: The nested Python structure that should be used to create the new
		    `StructuredTensor`.
		  typespec: A `StructuredTensorSpec` specifying the expected type for each
		    field. If not specified, then all nested dictionaries are turned into
		    StructuredTensors, and all nested lists are turned into Tensors (if
		    rank<2) or RaggedTensors (if rank>=2).
		  path_so_far: the path of fields that led here (for error messages).
		
		Returns:
		  A `StructuredTensor`.
	**/
	static public function _from_pyval(pyval:Dynamic, typespec:Dynamic, path_so_far:Dynamic):Dynamic;
	/**
		True if all fields are composed of eager tensors.
	**/
	public function _is_eager():Dynamic;
	/**
		Creates a promoted field without adding it to the structure.
		
		Args:
		  source_path: the source path in the structured tensor.
		  new_parent_path: the new parent path. Must be a prefix of source_path.
		
		Returns:
		  a composite tensor of source_path promoted.
		Raises:
		  ValueError: if the shape of the field is unknown and the right strategy
		  cannot be determined.
	**/
	public function _promote_helper(source_path:Dynamic, new_parent_path:Dynamic):Dynamic;
	public function _scalar_getitem(key:Dynamic):Dynamic;
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
	public function _tensor_getitem(key:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	/**
		Recursive part of `with_updates` implementation.
	**/
	public function _with_updates_impl(error_prefix:Dynamic, updates:Dynamic, validate:Dynamic):Dynamic;
	/**
		Returns the string field names for this `StructuredTensor`.
	**/
	public function field_names():Dynamic;
	/**
		Returns the tensor value for the specified field or path.
		
		If `field_name` is a `string`, then it names a field directly owned by this
		`StructuredTensor`.  If this `StructuredTensor` has shape `[D1...DN]`, then
		the returned tensor will have shape `[D1...DN, V1...VM]`, where the slice
		`result[d1...dN]` contains the field value for the structure at
		`self[d1...dN]`.
		
		If `field_name` is a `tuple` of `string`, then it specifies a path to a
		field owned by nested `StructuredTensor`.  In particular,
		`struct.field_value((f1, f2, ..., fN))` is equivalent to
		`struct.field_value(f1).field_value(f2)....field_value(fN)`
		
		Args:
		  field_name: `string` or `tuple` of `string`: The field whose values should
		    be returned.
		
		Returns:
		  `Tensor`, `StructuredTensor`, or `RaggedTensor`.
		
		Raises:
		  KeyError: If the given field_name is not found.
	**/
	public function field_value(field_name:Dynamic):Dynamic;
	/**
		Creates a `StructuredTensor` from a dictionary of fields.
		
		Args:
		  fields: A dictionary mapping from string to `Tensor`, `RaggedTensor`, or
		    `StructuredTensor`, providing the values for individual fields in each
		    structure.  If `shape.rank > 0`, then every tensor in `fields` must have
		    the same shape in the first `shape.rank` dimensions; and that shape must
		    be compatible with `shape`; and `result[i1...iN][key] =
		    fields[key][i1...iN]` (where `N==shape.rank`).
		  shape: A `TensorShape`: static information about the shape of the
		    `StructuredTensor`.  Must have a known `rank`.  Defaults to scalar shape
		    (i.e. `rank=0`).
		  nrows: scalar integer tensor containing the number of rows in this
		    `StructuredTensor`.  Should only be specified if `shape.rank > 0`.
		    Default value is inferred from the `fields` values.  If `fields` is
		    empty, then this must be specified.
		  row_partitions: A list of `RowPartition`s describing the (possibly ragged)
		    shape of this `StructuredTensor`.  Should only be specified if
		    `shape.rank > 1`.  Default value is inferred from the `fields` values.
		    If `fields` is empty, then this must be specified.
		  validate: If true, then add runtime validation ops that check that the
		    field values all have compatible shapes in the outer `shape.rank`
		    dimensions.
		
		Returns:
		  A `StructuredTensor`.
		
		Examples:
		
		  >>> StructuredTensor.from_fields({'x': 1, 'y': [1, 2, 3]})
		  <StructuredTensor(
		    fields={
		      "x": tf.Tensor(1, shape=(), dtype=int32),
		      "y": tf.Tensor([1 2 3], shape=(3,), dtype=int32)},
		    shape=())>
		
		  >>> StructuredTensor.from_fields({'foo': [1, 2], 'bar': [3, 4]},
		  ...                              shape=[2])
		  <StructuredTensor(
		    fields={
		      "bar": tf.Tensor([3 4], shape=(2,), dtype=int32),
		      "foo": tf.Tensor([1 2], shape=(2,), dtype=int32)},
		    shape=(2,))>
	**/
	static public function from_fields(fields:Dynamic, ?shape:Dynamic, ?nrows:Dynamic, ?row_partitions:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Constructs a StructuredTensor from a nested Python structure.
		
		>>> StructuredTensor.from_pyval(
		...     {'a': [1, 2, 3], 'b': [[4, 5], [6, 7]]})
		<StructuredTensor(
		    fields={
		      "a": tf.Tensor([1 2 3], shape=(3,), dtype=int32),
		      "b": <tf.RaggedTensor [[4, 5], [6, 7]]>},
		    shape=())>
		
		Note that `StructuredTensor.from_pyval(pyval).to_pyval() == pyval`.
		
		Args:
		  pyval: The nested Python structure that should be used to create the new
		    `StructuredTensor`.
		  typespec: A `StructuredTensorSpec` specifying the expected type for each
		    field. If not specified, then all nested dictionaries are turned into
		    StructuredTensors, and all nested lists are turned into Tensors (if
		    rank<2) or RaggedTensors (if rank>=2).
		
		Returns:
		  A `StructuredTensor`.
	**/
	static public function from_pyval(pyval:Dynamic, ?typespec:Dynamic):Dynamic;
	/**
		Merges outer_axis...inner_axis into a single dimension.
		
		Returns a copy of this RaggedTensor with the specified range of dimensions
		flattened into a single dimension, with elements in row-major order.
		
		>>> st = StructuredTensor.from_pyval(
		...     [[{'foo': 12}, {'foo': 33}], [], [{'foo': 99}]])
		>>> st.merge_dims(0, 1)
		<StructuredTensor(
		  fields={
		    "foo": tf.Tensor([12 33 99], shape=(3,), dtype=int32)},
		  shape=(3,))>
		
		Args:
		  outer_axis: `int`: The first dimension in the range of dimensions to
		    merge. May be negative (to index from the last dimension).
		  inner_axis: `int`: The last dimension in the range of dimensions to merge.
		    May be negative (to index from the last dimension).
		
		Returns:
		  A copy of this tensor, with the specified dimensions merged into a
		  single dimension.  The shape of the returned tensor will be
		  `self.shape[:outer_axis] + [N] + self.shape[inner_axis + 1:]`, where `N`
		  is the total number of slices in the merged dimensions.
	**/
	public function merge_dims(outer_axis:Dynamic, inner_axis:Dynamic):Dynamic;
	/**
		The number of rows in this StructuredTensor (if rank>0).
		
		This means the length of the outer-most dimension of the StructuredTensor.
		
		Notice that if `self.rank > 1`, then this equals the number of rows
		of the first row partition. That is,
		`self.nrows() == self.row_partitions[0].nrows()`.
		
		Otherwise `self.nrows()` will be the first dimension of the field values.
		
		Returns:
		  A scalar integer `Tensor` (or `None` if `self.rank == 0`).
	**/
	public function nrows():Dynamic;
	/**
		Partitions the outer dimension of this StructuredTensor.
		
		Returns a new `StructuredTensor` with the same values as `self`, where
		the outer dimension is partitioned into two (possibly ragged) dimensions.
		Requires that this StructuredTensor have an outer dimension (i.e.,
		`self.shape.rank > 0`).
		
		>>> st = StructuredTensor.from_pyval(
		...     [{'foo': 12}, {'foo': 33}, {'foo': 99}])
		>>> partition = RowPartition.from_row_lengths([2, 0, 1])
		>>> st.partition_outer_dimension(partition)
		<StructuredTensor(
		  fields={
		    "foo": <tf.RaggedTensor [[12, 33], [], [99]]>},
		  shape=(3, None))>
		
		Args:
		  row_partition: A `RowPartition`.
		
		Returns:
		  A `StructuredTensor` with rank `values.rank + 1`.
	**/
	public function partition_outer_dimension(row_partition:Dynamic):Dynamic;
	/**
		Promotes a field, merging dimensions between grandparent and parent.
		
		>>> d = [
		...  {'docs': [{'tokens':[1, 2]}, {'tokens':[3]}]},
		...  {'docs': [{'tokens':[7]}]}]
		>>> st = StructuredTensor.from_pyval(d)
		>>> st2 =st.promote(('docs','tokens'), 'docs_tokens')
		>>> st2[0]['docs_tokens']
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 2, 3], dtype=int32)>
		>>> st2[1]['docs_tokens']
		<tf.Tensor: shape=(1,), dtype=int32, numpy=array([7], dtype=int32)>
		
		Args:
		  source_path: the path of the field or substructure to promote; must have
		    length at least 2.
		  new_name: the name of the new field (must be a string).
		
		Returns:
		  a modified structured tensor with the new field as a child of the
		  grandparent of the source_path.
		
		Raises:
		  ValueError: if source_path is not a list or a tuple or has a length
		    less than two, or new_name is not a string, or the rank
		    of source_path is unknown and it is needed.
	**/
	public function promote(source_path:Dynamic, new_name:Dynamic):Dynamic;
	/**
		The rank of this StructuredTensor.  Guaranteed not to be `None`.
	**/
	public var rank : Dynamic;
	/**
		A tuple of `RowPartition`s defining the shape of this `StructuredTensor`.
		
		When `self.rank <= 1`, this tuple will be empty.
		
		When `self.rank > 1`, these `RowPartitions` define the shape of the
		`StructuredTensor` by describing how a flat (1D) list of structures can be
		repeatedly partitioned to form a higher-dimensional object.  In particular,
		the flat list is first partitioned into sublists using `row_partitions[-1]`,
		and then those sublists are further partitioned using `row_partitions[-2]`,
		etc.  The following examples show the row partitions used to describe
		several different `StructuredTensor`, each of which contains 8 copies of
		the same structure (`x`):
		
		>>> x = {'a': 1, 'b': ['foo', 'bar', 'baz']}       # shape = [] (scalar)
		
		>>> s1 = [[x, x, x, x], [x, x, x, x]]              # shape = [2, 4]
		>>> StructuredTensor.from_pyval(s1).row_partitions
		(tf.RowPartition(row_splits=[0 4 8]),)
		
		>>> s2 = [[x, x], [x, x], [x, x], [x, x]]          # shape = [4, 2]
		>>> StructuredTensor.from_pyval(s2).row_partitions
		(tf.RowPartition(row_splits=[0 2 4 6 8]),)
		
		>>> s3 = [[x, x, x], [], [x, x, x, x], [x]]        # shape = [2, None]
		>>> StructuredTensor.from_pyval(s3).row_partitions
		(tf.RowPartition(row_splits=[0 3 3 7 8]),)
		
		>>> s4 = [[[x, x], [x, x]], [[x, x], [x, x]]]      # shape = [2, 2, 2]
		>>> StructuredTensor.from_pyval(s4).row_partitions
		(tf.RowPartition(row_splits=[0 2 4]),
		 tf.RowPartition(row_splits=[0 2 4 6 8]))
		
		
		>>> s5 = [[[x, x], [x]], [[x, x]], [[x, x], [x]]]  # shape = [3, None, None]
		>>> StructuredTensor.from_pyval(s5).row_partitions
		(tf.RowPartition(row_splits=[0 2 3 5]),
		 tf.RowPartition(row_splits=[0 2 3 5 7 8]))
		
		Note that shapes for nested fields (such as `x['b']` in the above example)
		are not considered part of the shape of a `StructuredTensor`, and are not
		included in `row_partitions`.
		
		If this `StructuredTensor` has a ragged shape (i.e., if any of the
		`row_partitions` is not uniform in size), then all fields will be encoded
		as either `RaggedTensor`s or `StructuredTensor`s with these `RowPartition`s
		used to define their outermost `self.rank` dimensions.
		
		Returns:
		  A `tuple` of `RowPartition` objects with length `self.rank - 1`
		  (or `0` if `self.rank < 2`)
	**/
	public var row_partitions : Dynamic;
	/**
		The static shape of this StructuredTensor.
		
		The returned `TensorShape` is guaranteed to have a known rank, but the
		individual dimension sizes may be unknown.
		
		Returns:
		  `tf.TensorShape`
	**/
	public var shape : Dynamic;
	/**
		Returns this StructuredTensor as a nested Python dict or list of dicts.
		
		Converts this `StructuredTensor` to a nested python value:
		
		* `StructTensors` with `rank=0` are converted into a dictionary, with an
		  entry for each field.  Field names are used as keys and field values are
		  converted to python values.  In particular:
		
		  * Scalar Tensor fields are converted to simple values (such as
		    `int` or `float` or `string`)
		  * Non-scalar Tensor fields and RaggedTensor fields are converted to
		    nested lists of simple values.
		  * StructuredTensor fields are converted recursively using `to_pyval`.
		
		* `StructTensors` with `rank>0` are converted to nested python `list`s,
		  containing one dictionary for each structure (where each structure's
		  dictionary is defined as described above).
		
		Requires that all fields are Eager tensors.
		
		>>> StructuredTensor.from_fields(
		...     {'a': [1, 2, 3]}, [3]).to_pyval()
		[{'a': 1}, {'a': 2}, {'a': 3}]
		
		Note that `StructuredTensor.from_pyval(pyval).to_pyval() == pyval`.
		
		Returns:
		  A nested Python dict or list of dicts.
	**/
	public function to_pyval():Dynamic;
	/**
		Creates a new `StructuredTensor` with the updated fields.
		
		If this `StructuredTensor` is a scalar, and `k` is the `FieldName` being
		updated and `v` the new value, then:
		
		```
		result[k] = v              # If (k, v) is in updates and v is a FieldValue
		result[k] = f(self[k])     # If (k, f) is in updates and f is a FieldFn
		result[k] = self[k]        # If k is in self.field_names but not in updates
		```
		
		If this `StructuredTensor` has rank `N` and shape `[D1...DN]`, then each
		FieldValue `v` in `updates` must have shape `[D1...DN, ...]`, that is,
		prefixed with the same shape as the `StructuredTensor`. Then the resulting
		`StructuredTensor` will have:
		
		```
		result[i1...iN][k] = v[i1...iN]                        # (k, v) in updates
		result[i1...iN][k] = f(self.field_value(k))[i1...iN]   # (k, f) in updates
		result[i1...iN][k] = self[i1...iN][k]                  # k not in updates
		```
		
		Note that `result.shape` is always equal to `self.shape` (but the shapes
		of nested StructuredTensors may be changed if they are updated with new
		values).
		
		Args:
		  updates: A dictionary mapping `FieldName` to either a `FieldValue` to be
		    used to update, or a `FieldFn` that will transform the value for the
		    given `FieldName`. `FieldName` can be a string for a direct field, or a
		    sequence of strings to refer to a nested sub-field. `FieldFn` is a
		    function that takes a `FieldValue` as input and should return a
		    `FieldValue`. All other fields are copied over to the new
		    `StructuredTensor`. New `FieldName` can be given (to add new fields),
		    but only to existing `StructuredTensor`, it won't automatically create
		    new nested structures -- but one can create a whole `StructureTensor`
		    sub-structure and set that into an existing structure. If the new value
		    is set to `None`, it is removed.
		  validate: If true, then add runtime validation ops that check that the
		    field values all have compatible shapes in the outer `shape.rank`
		    dimensions.
		
		Returns:
		  A `StructuredTensor`.
		
		Raises:
		  `ValueError`: If the any of the `FieldName` keys points to non-existent
		    sub-structures, if parent and child nodes are updated, if shapes
		    change, if a delete update is given for a non-existant field, or if a
		    `FieldFn` transforming function is given for a `FieldName` that doesn't
		    yet exist.
		
		Examples:
		
		>>> shoes_us = StructuredTensor.from_pyval([
		...    {"age": 12, "nicknames": ["Josaphine"],
		...       "shoes": {"sizes": [8.0, 7.5, 7.5]}},
		...    {"age": 82, "nicknames": ["Bob", "Bobby"],
		...        "shoes": {"sizes": [11.0, 11.5, 12.0]}},
		...    {"age": 42, "nicknames": ["Elmo"],
		...        "shoes": {"sizes": [9.0, 9.5, 10.0]}}])
		>>> def us_to_europe(t):
		...   return tf.round(t * 2.54 + 17.0)  # Rough approximation.
		>>> shoe_sizes_key = ("shoes", "sizes")
		>>> shoes_eu = shoes_us.with_updates({shoe_sizes_key: us_to_europe})
		>>> shoes_eu.field_value(shoe_sizes_key)
		<tf.RaggedTensor [[37.0, 36.0, 36.0], [45.0, 46.0, 47.0],
		[40.0, 41.0, 42.0]]>
	**/
	public function with_updates(updates:Dynamic, ?validate:Dynamic):Dynamic;
}