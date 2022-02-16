/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.row_partition;
@:pythonImport("tensorflow.python.ops.ragged.row_partition", "RowPartition") extern class RowPartition {
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
		Creates a `RowPartition` from the specified encoding tensor(s).
		
		This constructor is private -- please use one of the following ops to
		build `RowPartition`s:
		
		  * `RowPartition.from_row_lengths`
		  * `RowPartition.from_value_rowids`
		  * `RowPartition.from_row_splits`
		  * `RowPartition.from_row_starts`
		  * `RowPartition.from_row_limits`
		
		Args:
		  row_splits: A 1-D integer tensor with shape `[nrows+1]`.
		  row_lengths: A 1-D integer tensor with shape `[nrows]`
		  value_rowids: A 1-D integer tensor with shape `[nvals]`.
		  nrows: A 1-D integer scalar tensor.
		  uniform_row_length: A scalar tensor.
		  internal: Private key value, required to ensure that this private
		    constructor is *only* called from the factory methods.
		
		Raises:
		  TypeError: If a row partitioning tensor has an inappropriate dtype.
		  TypeError: If exactly one row partitioning argument was not specified.
		  ValueError: If a row partitioning tensor has an inappropriate shape.
		  ValueError: If multiple partitioning arguments are specified.
		  ValueError: If nrows is specified but value_rowids is not None.
	**/
	@:native("__init__")
	public function ___init__(row_splits:Dynamic, ?row_lengths:Dynamic, ?value_rowids:Dynamic, ?nrows:Dynamic, ?uniform_row_length:Dynamic, ?internal:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` from the specified encoding tensor(s).
		
		This constructor is private -- please use one of the following ops to
		build `RowPartition`s:
		
		  * `RowPartition.from_row_lengths`
		  * `RowPartition.from_value_rowids`
		  * `RowPartition.from_row_splits`
		  * `RowPartition.from_row_starts`
		  * `RowPartition.from_row_limits`
		
		Args:
		  row_splits: A 1-D integer tensor with shape `[nrows+1]`.
		  row_lengths: A 1-D integer tensor with shape `[nrows]`
		  value_rowids: A 1-D integer tensor with shape `[nvals]`.
		  nrows: A 1-D integer scalar tensor.
		  uniform_row_length: A scalar tensor.
		  internal: Private key value, required to ensure that this private
		    constructor is *only* called from the factory methods.
		
		Raises:
		  TypeError: If a row partitioning tensor has an inappropriate dtype.
		  TypeError: If exactly one row partitioning argument was not specified.
		  ValueError: If a row partitioning tensor has an inappropriate shape.
		  ValueError: If multiple partitioning arguments are specified.
		  ValueError: If nrows is specified but value_rowids is not None.
	**/
	public function new(row_splits:Dynamic, ?row_lengths:Dynamic, ?value_rowids:Dynamic, ?nrows:Dynamic, ?uniform_row_length:Dynamic, ?internal:Dynamic):Void;
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
		Converts `partition` to Tensors.
		
		Args:
		  partition: A row-partitioning tensor for the `RowPartition` being
		    constructed.  I.e., one of: row_splits, row_lengths, row_starts,
		    row_limits, value_rowids, uniform_row_length.
		  name: The name of the row-partitioning tensor.
		  preferred_dtype: If partition has no dtype, give it this one. If
		    no dtype is specified, use dtypes.int64.
		
		Returns:
		  A tensor equivalent to partition.
		
		Raises:
		  ValueError: if dtype is not int32 or int64.
	**/
	static public function _convert_row_partition(partition:Dynamic, name:Dynamic, preferred_dtype:Dynamic):Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	/**
		The `DType` used to encode the row partition (either int32 or int64).
	**/
	public var dtype : Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `row_lengths`.
		
		This `RowPartition` divides a sequence `values` into rows by indicating
		the length of each row:
		
		```python
		partitioned_rows = [[values.pop(0) for _ in range(length)]
		                    for length in row_lengths]
		```
		
		Args:
		  row_lengths: A 1-D integer tensor with shape `[nrows]`.  Must be
		    nonnegative.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: If row_lengths has an unspecified type, use this one. If
		    preferred_dtype is None, defaults to dtypes.int64.
		
		Returns:
		  A `RowPartition`.
	**/
	static public function from_row_lengths(row_lengths:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `row_limits`.
		
		Equivalent to: `from_row_splits(values, concat([0, row_limits], axis=0))`.
		
		Args:
		  row_limits: A 1-D integer tensor with shape `[nrows]`.  Must be sorted in
		    ascending order.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: If row_limits has an unspecified type, use this one. If
		    preferred_dtype is None, defaults to dtypes.int64.
		
		Returns:
		  A `RowPartition`.
	**/
	static public function from_row_limits(row_limits:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `row_splits`.
		
		This `RowPartition` divides a sequence `values` into rows by indicating
		where each row begins and ends:
		
		```python
		partitioned_rows = []
		for i in range(len(row_splits) - 1):
		  row_start = row_splits[i]
		  row_end = row_splits[i + 1]
		  partitioned_rows.append(values[row_start:row_end])
		```
		
		Args:
		  row_splits: A 1-D integer tensor with shape `[nrows+1]`.  Must not be
		    empty, and must be sorted in ascending order.  `row_splits[0]` must be
		    zero.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: If row_splits has an unspecified type, use this one. If
		    preferred_dtype is None, defaults to dtypes.int64.
		
		Returns:
		  A `RowPartition`.
		
		Raises:
		  ValueError: If `row_splits` is an empty list.
	**/
	static public function from_row_splits(row_splits:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `row_starts`.
		
		Equivalent to: `from_row_splits(concat([row_starts, nvals], axis=0))`.
		
		Args:
		  row_starts: A 1-D integer tensor with shape `[nrows]`.  Must be
		    nonnegative and sorted in ascending order.  If `nrows>0`, then
		    `row_starts[0]` must be zero.
		  nvals: A scalar tensor indicating the number of values.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: If row_limits has an unspecified type, use this one. If
		    preferred_dtype is None, defaults to dtypes.int64.
		
		Returns:
		  A `RowPartition`.
	**/
	static public function from_row_starts(row_starts:Dynamic, nvals:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `uniform_row_length`.
		
		This `RowPartition` divides a sequence `values` into rows that all have
		the same length:
		
		```python
		partitioned_rows = [[values.pop(0) for _ in range(uniform_row_length)]
		         for _ in range(nrows)]
		```
		
		Args:
		  uniform_row_length: A scalar integer tensor.  Must be nonnegative. The
		    size of the outer axis of `values` must be evenly divisible by
		    `uniform_row_length`.
		  nvals: a non-negative scalar integer tensor for the number of values.
		  nrows: The number of rows in the constructed RowPartition.  If not
		    specified, then it defaults to `nvals/uniform_row_length` (or `0` if
		    `uniform_row_length==0`).  `nrows` only needs to be specified if
		    `uniform_row_length` might be zero.  `uniform_row_length*nrows` must be
		    `nvals`.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: if uniform_row_length has no dtype, use this one.
		
		Returns:
		  A `RowPartition`.
	**/
	static public function from_uniform_row_length(uniform_row_length:Dynamic, nvals:Dynamic, ?nrows:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Creates a `RowPartition` with rows partitioned by `value_rowids`.
		
		This `RowPartition` divides a sequence `values` into rows by specifying
		which row each value should be added to:
		
		```python
		partitioned_rows = [[] for _ in nrows]
		for (value, rowid) in zip(values, value_rowids):
		  partitioned_rows[rowid].append(value)
		``
		
		Args:
		  value_rowids: A 1-D integer tensor with shape `[nvals]`, which corresponds
		    one-to-one with `values`, and specifies each value's row index.  Must be
		    nonnegative, and must be sorted in ascending order.
		  nrows: An integer scalar specifying the number of rows.  This should be
		    specified if the `RowPartition` may containing empty training rows. Must
		    be greater than `value_rowids[-1]` (or greater than or equal to zero if
		    `value_rowids` is empty). Defaults to `value_rowids[-1] + 1` (or zero if
		    `value_rowids` is empty).
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RowPartition`.
		  preferred_dtype: The dtype to encode value_rowids if it doesn't already
		    have one. The default is tf.int64.
		
		Returns:
		  A `RowPartition`.
		
		Raises:
		  ValueError: If `nrows` is incompatible with `value_rowids`.
		
		#### Example:
		
		>>> print(RowPartition.from_value_rowids(
		...     value_rowids=[0, 0, 0, 0, 2, 2, 2, 3],
		...     nrows=4))
		tf.RowPartition(row_splits=[0 4 4 7 8])
	**/
	static public function from_value_rowids(value_rowids:Dynamic, ?nrows:Dynamic, ?validate:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Returns true if `nrows` has already been computed.
		
		If true, then `self.nrows()` will return its value without calling
		any TensorFlow ops.
	**/
	public function has_precomputed_nrows():Dynamic;
	/**
		Returns true if `row_lengths` has already been computed.
		
		If true, then `self.row_lengths()` will return its value without calling
		any TensorFlow ops.
	**/
	public function has_precomputed_row_lengths():Dynamic;
	/**
		Returns true if `row_splits` has already been computed.
		
		If true, then `self.row_splits()` will return its value without calling
		any TensorFlow ops.
	**/
	public function has_precomputed_row_splits():Dynamic;
	/**
		Returns true if `value_rowids` has already been computed.
		
		If true, then `self.value_rowids()` will return its value without calling
		any TensorFlow ops.
	**/
	public function has_precomputed_value_rowids():Dynamic;
	/**
		Returns true if the partition is known to be uniform statically.
		
		This is based upon the existence of self._uniform_row_length. For example:
		RowPartition.from_row_lengths([3,3,3]).is_uniform()==false
		RowPartition.from_uniform_row_length(5, nvals=20).is_uniform()==true
		RowPartition.from_row_lengths([2,0,2]).is_uniform()==false
		
		Returns:
		  Whether a RowPartition is known to be uniform statically.
	**/
	public function is_uniform():Dynamic;
	/**
		Returns a RowPartition that merges encodings from `self` and `other`.
		
		Requires that `self` and `other` describe the same partition.
		
		Args:
		  other: A `RowPartition` that encodes the same partition as `self`.
		  validate: If true, then add runtime checks to verify that `self` and
		    `other` encode the same row partition.
		
		Returns:
		  A `RowPartition`.
	**/
	public function merge_precomputed_encodings(other:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Returns the number of rows created by this `RowPartition`.
		
		Args:
		  out_type: `dtype` for the returned tensor.  Defaults to `self.dtype`.
		
		Returns:
		  scalar integer Tensor
	**/
	public function nrows(?out_type:Dynamic):Dynamic;
	/**
		Returns the number of values partitioned by this `RowPartition`.
		
		If the sequence partitioned by this `RowPartition` is a tensor, then
		`nvals` is the size of that tensor's outermost dimension -- i.e.,
		`nvals == values.shape[0]`.
		
		Args:
		  out_type: `dtype` for the returned tensor.  Defaults to `self.dtype`.
		
		Returns:
		  scalar integer Tensor
	**/
	public function nvals(?out_type:Dynamic):Dynamic;
	/**
		Return the offset of each value.
		
		RowPartition takes an array x and converts it into sublists.
		offsets[i] is the index of x[i] in its sublist.
		Given a shape, such as:
		[*,*,*],[*,*],[],[*,*]
		This returns:
		0,1,2,0,1,0,1
		
		Returns:
		  an offset for every value.
	**/
	public function offsets_in_rows():Dynamic;
	/**
		Returns the lengths of rows in this `RowPartition`.
		
		Returns:
		  A 1-D integer Tensor with shape `[self.nrows]`.
		  The returned tensor is nonnegative.
		  `tf.reduce_sum(self.row_lengths) == self.nvals()`.
	**/
	public function row_lengths():Dynamic;
	/**
		Returns the limit indices for rows in this row partition.
		
		These indices specify where the values for each row end.
		`partition.row_limits()` is equal to `partition.row_splits()[:-1]`.
		
		Returns:
		  A 1-D integer Tensor with shape `[self.nrows]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
		  `self.row_limits()[-1] == self.nvals()`.
	**/
	public function row_limits():Dynamic;
	/**
		Returns the row-split indices for this row partition.
		
		`row_splits` specifies where the values for each row begin and end.
		In particular, the values for row `i` are stored in the slice
		`values[row_splits[i]:row_splits[i+1]]`.
		
		Returns:
		  A 1-D integer `Tensor` with shape `[self.nrows+1]`.
		  The returned tensor is non-empty, and is sorted in ascending order.
		  `self.row_splits()[0] == 0`.
		  `self.row_splits()[-1] == self.nvals()`.
	**/
	public function row_splits():Dynamic;
	/**
		Returns the start indices for rows in this row partition.
		
		These indices specify where the values for each row begin.
		`partition.row_starts()` is equal to `partition.row_splits()[:-1]`.
		
		Returns:
		  A 1-D integer Tensor with shape `[self.nrows()]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
		  `self.row_starts()[0] == 0`.
		  `self.row_starts()[-1] <= self.nvals()`.
	**/
	public function row_starts():Dynamic;
	/**
		The number of rows in this partition, if statically known.
		
		```python
		self.row_lengths().shape == [self.static_nrows]
		self.row_starts().shape == [self.static_nrows]
		self.row_limits().shape == [self.static_nrows]
		self.row_splits().shape == [self.static_nrows + 1]
		```
		
		Returns:
		  The number of rows in this partition as an `int` (if statically known);
		  or `None` (otherwise).
	**/
	public var static_nrows : Dynamic;
	/**
		The number of values in this partition, if statically known.
		
		```python
		self.value_rowids().shape == [self.static_vals]
		```
		
		Returns:
		  The number of values in this partition as an `int` (if statically known);
		  or `None` (otherwise).
	**/
	public var static_nvals : Dynamic;
	/**
		The number of values in each row of this partition, if statically known.
		
		Returns:
		  The number of values in each row of this partition as an `int` (if
		  statically known); or `None` (otherwise).
	**/
	public var static_uniform_row_length : Dynamic;
	/**
		Returns the length of each row in this partition, if rows are uniform.
		
		If all rows in this `RowPartition` have the same length, then this returns
		that length as a scalar integer `Tensor`.  Otherwise, it returns `None`.
		
		Returns:
		  scalar Tensor with `type=self.dtype`, or `None`.
	**/
	public function uniform_row_length():Dynamic;
	/**
		Returns the row indices for this row partition.
		
		`value_rowids` specifies the row index fo reach value.  In particular,
		`value_rowids[i]` is the row index for `values[i]`.
		
		Returns:
		  A 1-D integer `Tensor` with shape `[self.nvals()]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
	**/
	public function value_rowids():Dynamic;
	/**
		Returns a new RowPartition equal to self with control dependencies.
		
		Specifically, self._row_splits is gated by the given control dependencies.
		Used to add sanity checks to the constructors.
		
		Args:
		  dependencies: a list of tensors to use as dependencies.
		
		Returns:
		  A new RowPartition object.
	**/
	public function with_dependencies(dependencies:Dynamic):Dynamic;
	/**
		Returns a copy of `self` with `nrows` precomputed.
	**/
	public function with_precomputed_nrows():Dynamic;
	/**
		Returns a copy of `self` with `row_lengths` precomputed.
	**/
	public function with_precomputed_row_lengths():Dynamic;
	/**
		Returns a copy of `self` with `row_splits` precomputed.
	**/
	public function with_precomputed_row_splits():Dynamic;
	/**
		Returns a copy of `self` with `value_rowids` precomputed.
	**/
	public function with_precomputed_value_rowids():Dynamic;
	/**
		Returns a copy of this RowPartition with the given `row_splits` dtype.
		
		For RaggedTensors with multiple ragged dimensions, the `row_splits` for all
		nested `RaggedTensor` objects are cast to the given dtype.
		
		Args:
		  dtype: The dtype for `row_splits`.  One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A copy of this RaggedTensor, with the `row_splits` cast to the given
		  type.
	**/
	public function with_row_splits_dtype(dtype:Dynamic):Dynamic;
}