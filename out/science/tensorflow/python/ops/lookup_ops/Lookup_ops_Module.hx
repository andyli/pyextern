/* This file is generated, do not edit! */
package tensorflow.python.ops.lookup_ops;
@:pythonImport("tensorflow.python.ops.lookup_ops") extern class Lookup_ops_Module {
	/**
		Creates a uninitialized anonymous hash table.
		
		This op creates a new anonymous hash table (as a resource) everytime
		it is executed, with the specified dtype of its keys and values,
		returning the resource handle.  Before using the table you will have
		to initialize it.  After initialization the table will be
		immutable. The table is anonymous in the sense that it can only be
		accessed by the returned resource handle (e.g. it cannot be looked up
		by a name in a resource manager). The table will be automatically
		deleted when all resource handles pointing to it are gone.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function AnonymousHashTable(key_dtype:Dynamic, value_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var FastHashSpec : Dynamic;
	/**
		Creates a non-initialized hash table.
		
		This op creates a hash table, specifying the type of its keys and values.
		Before using the table you will have to initialize it.  After initialization the
		table will be immutable.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function HashTableV2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Table initializer that takes two tensors for keys and values respectively.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`.
		    Handle to a table which will be initialized.
		  keys: A `Tensor`. Keys of type Tkey.
		  values: A `Tensor`. Values of type Tval.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InitializeTable(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes a table from a text file.
		
		It inserts one key-value pair into the table for each line of the file.
		The key and value is extracted from the whole line content, elements from the
		split line based on `delimiter` or the line number (starting from zero).
		Where to extract the key and value from a line is specified by `key_index` and
		`value_index`.
		
		- A value of -1 means use the line number(starting from zero), expects `int64`.
		- A value of -2 means use the whole line content, expects `string`.
		- A value >= 0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`.
		    Handle to a table which will be initialized.
		  filename: A `Tensor` of type `string`. Filename of a vocabulary text file.
		  key_index: An `int` that is `>= -2`.
		    Column index in a line to get the table `key` values from.
		  value_index: An `int` that is `>= -2`.
		    Column index that represents information of a line to get the table
		    `value` values from.
		  vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of elements of the file, use -1 if unknown.
		  delimiter: An optional `string`. Defaults to `"\t"`.
		    Delimiter to separate fields in a line.
		  offset: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InitializeTableFromTextFile(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?offset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes a table from a text file.
		
		It inserts one key-value pair into the table for each line of the file.
		The key and value is extracted from the whole line content, elements from the
		split line based on `delimiter` or the line number (starting from zero).
		Where to extract the key and value from a line is specified by `key_index` and
		`value_index`.
		
		- A value of -1 means use the line number(starting from zero), expects `int64`.
		- A value of -2 means use the whole line content, expects `string`.
		- A value >= 0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		    Handle to a table which will be initialized.
		  filename: A `Tensor` of type `string`. Filename of a vocabulary text file.
		  key_index: An `int` that is `>= -2`.
		    Column index in a line to get the table `key` values from.
		  value_index: An `int` that is `>= -2`.
		    Column index that represents information of a line to get the table
		    `value` values from.
		  vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of elements of the file, use -1 if unknown.
		  delimiter: An optional `string`. Defaults to `"\t"`.
		    Delimiter to separate fields in a line.
		  offset: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InitializeTableFromTextFileV2(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?offset:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Table initializer that takes two tensors for keys and values respectively.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		    Handle to a table which will be initialized.
		  keys: A `Tensor`. Keys of type Tkey.
		  values: A `Tensor`. Values of type Tval.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InitializeTableV2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs all keys and values in the table.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  Tkeys: A `tf.DType`.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `Tkeys`.
		  values: A `Tensor` of type `Tvalues`.
	**/
	static public function LookupTableExport(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs all keys and values in the table.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  Tkeys: A `tf.DType`.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `Tkeys`.
		  values: A `Tensor` of type `Tvalues`.
	**/
	static public function LookupTableExportV2(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up keys in a table, outputs the corresponding values.
		
		The tensor `keys` must of the same type as the keys of the table.
		The output `values` is of the type of the table values.
		
		The scalar `default_value` is the value output for keys not present in the
		table. It must also be of the same type as the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  default_value: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `default_value`.
	**/
	static public function LookupTableFind(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up keys in a table, outputs the corresponding values.
		
		The tensor `keys` must of the same type as the keys of the table.
		The output `values` is of the type of the table values.
		
		The scalar `default_value` is the value output for keys not present in the
		table. It must also be of the same type as the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  default_value: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `default_value`.
	**/
	static public function LookupTableFindV2(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Replaces the contents of the table with the specified keys and values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LookupTableImport(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Replaces the contents of the table with the specified keys and values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LookupTableImportV2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the table to associates keys with values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LookupTableInsert(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the table to associates keys with values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LookupTableInsertV2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes keys and its associated values from a table.
		
		The tensor `keys` must of the same type as the keys of the table. Keys not
		already in the table are silently ignored.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys of the elements to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LookupTableRemoveV2(table_handle:Dynamic, keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function LookupTableSize(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function LookupTableSizeV2(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an empty hash table that uses tensors as the backing store.
		
		It uses "open addressing" with quadratic reprobing to resolve
		collisions.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  empty_key: A `Tensor`.
		    The key used to represent empty key buckets internally. Must not
		    be used in insert or lookup operations.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of each value.
		  initial_num_buckets: An optional `int`. Defaults to `131072`.
		    The initial number of hash table buckets. Must be a power
		    to 2.
		  max_load_factor: An optional `float`. Defaults to `0.8`.
		    The maximum ratio between number of entries and number of
		    buckets before growing the table. Must be between 0 and 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function MutableDenseHashTable(empty_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an empty hash table that uses tensors as the backing store.
		
		It uses "open addressing" with quadratic reprobing to resolve
		collisions.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  empty_key: A `Tensor`.
		    The key used to represent empty key buckets internally. Must not
		    be used in insert or lookup operations.
		  deleted_key: A `Tensor`. Must have the same type as `empty_key`.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of each value.
		  initial_num_buckets: An optional `int`. Defaults to `131072`.
		    The initial number of hash table buckets. Must be a power
		    to 2.
		  max_load_factor: An optional `float`. Defaults to `0.8`.
		    The maximum ratio between number of entries and number of
		    buckets before growing the table. Must be between 0 and 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function MutableDenseHashTableV2(empty_key:Dynamic, deleted_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a vector. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function MutableHashTableOfTensors(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a vector. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function MutableHashTableOfTensorsV2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function MutableHashTableV2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_string(tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a uninitialized anonymous hash table.
		
		This op creates a new anonymous hash table (as a resource) everytime
		it is executed, with the specified dtype of its keys and values,
		returning the resource handle.  Before using the table you will have
		to initialize it.  After initialization the table will be
		immutable. The table is anonymous in the sense that it can only be
		accessed by the returned resource handle (e.g. it cannot be looked up
		by a name in a resource manager). The table will be automatically
		deleted when all resource handles pointing to it are gone.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function anonymous_hash_table(key_dtype:Dynamic, value_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function anonymous_hash_table_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Check that the given key_dtype and value_dtype matches the table dtypes.
		
		Args:
		  table: The table to check types against to.
		  key_dtype: The key data type to check.
		  value_dtype: The value data type to check.
		
		Raises:
		  TypeError: when 'key_dtype' or 'value_dtype' doesn't match the table data
		    types.
	**/
	static public function check_table_dtypes(table:Dynamic, key_dtype:Dynamic, value_dtype:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a non-initialized hash table.
		
		This op creates a hash table, specifying the type of its keys and values.
		Before using the table you will have to initialize it.  After initialization the
		table will be immutable.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function hash_table(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	static public function hash_table_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a non-initialized hash table.
		
		This op creates a hash table, specifying the type of its keys and values.
		Before using the table you will have to initialize it.  After initialization the
		table will be immutable.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function hash_table_v2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	static public function hash_table_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a lookup table that converts a string tensor into int64 IDs.
		
		This operation constructs a lookup table to convert tensor of strings into
		int64 IDs. The mapping can be initialized from a vocabulary file specified in
		`vocabulary_file`, where the whole line is the key and the zero-based line
		number is the ID.
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is
		`[vocabulary size, vocabulary size + num_oov_buckets - 1]`.
		
		The underlying table must be initialized by calling
		`session.run(tf.compat.v1.tables_initializer())` or
		`session.run(table.init())` once.
		
		To specify multi-column vocabulary files, use key_column_index and
		value_column_index and delimiter.
		
		- TextFileIndex.LINE_NUMBER means use the line number starting from zero,
		  expects data type int64.
		- TextFileIndex.WHOLE_LINE means use the whole line content, expects data
		  type string.
		- A value >=0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Sample Usages:
		
		If we have a vocabulary file "test.txt" with the following content:
		
		```
		emerson
		lake
		palmer
		```
		
		```python
		features = tf.constant(["emerson", "lake", "and", "palmer"])
		table = tf.lookup.index_table_from_file(
		    vocabulary_file="test.txt", num_oov_buckets=1)
		ids = table.lookup(features)
		...
		tf.compat.v1.tables_initializer().run()
		
		ids.eval()  ==> [0, 1, 3, 2]  # where 3 is the out-of-vocabulary bucket
		```
		
		Args:
		  vocabulary_file: The vocabulary filename, may be a constant scalar `Tensor`.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets.
		  key_dtype: The `key` data type.
		  name: A name for this op (optional).
		  key_column_index: The column index from the text file to get the `key`
		    values from. The default is to use the whole line content.
		  value_column_index: The column index from the text file to get the `value`
		    values from. The default is to use the line number, starting from zero.
		  delimiter: The delimiter to separate fields in a line.
		
		Returns:
		  The lookup table to map a `key_dtype` `Tensor` to index `int64` `Tensor`.
		
		Raises:
		  ValueError: If `vocabulary_file` is not set.
		  ValueError: If `num_oov_buckets` is negative or `vocab_size` is not greater
		    than zero.
	**/
	static public function index_table_from_file(?vocabulary_file:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?key_dtype:Dynamic, ?name:Dynamic, ?key_column_index:Dynamic, ?value_column_index:Dynamic, ?delimiter:Dynamic):Dynamic;
	/**
		Returns a lookup table that converts a string tensor into int64 IDs.
		
		This operation constructs a lookup table to convert tensor of strings into
		int64 IDs. The mapping can be initialized from a string `vocabulary_list` 1-D
		tensor where each element is a key and corresponding index within the tensor
		is the value.
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`. The bucket ID range is
		`[vocabulary list size, vocabulary list size + num_oov_buckets - 1]`.
		
		The underlying table must be initialized by calling
		`session.run(tf.compat.v1.tables_initializer())` or
		`session.run(table.init())` once.
		
		Elements in `vocabulary_list` cannot have duplicates, otherwise when executing
		the table initializer op, it will throw a `FailedPreconditionError`.
		
		Sample Usages:
		
		```python
		vocabulary_list = tf.constant(["emerson", "lake", "palmer"])
		table = tf.lookup.index_table_from_tensor(
		    vocabulary_list=vocabulary_list, num_oov_buckets=1, default_value=-1)
		features = tf.constant(["emerson", "lake", "and", "palmer"])
		ids = table.lookup(features)
		...
		tf.compat.v1.tables_initializer().run()
		
		ids.eval()  ==> [0, 1, 4, 2]
		```
		
		Args:
		  vocabulary_list: A 1-D `Tensor` that specifies the mapping of keys to
		    indices. The type of this object must be castable to `dtype`.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignment of out-of-vocabulary buckets.
		  dtype: The type of values passed to `lookup`. Only string and integers are
		    supported.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table to map an input `Tensor` to index `int64` `Tensor`.
		
		Raises:
		  ValueError: If `vocabulary_list` is invalid.
		  ValueError: If `num_oov_buckets` is negative.
	**/
	static public function index_table_from_tensor(vocabulary_list:Dynamic, ?num_oov_buckets:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a lookup table that maps a `Tensor` of indices into strings.
		
		This operation constructs a lookup table to map int64 indices into string
		values. The table is initialized from a vocabulary file specified in
		`vocabulary_file`, where the whole line is the value and the
		zero-based line number is the index.
		
		Any input which does not have a corresponding index in the vocabulary file
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`session.run(tf.compat.v1.tables_initializer())` or
		`session.run(table.init())` once.
		
		To specify multi-column vocabulary files, use key_column_index and
		value_column_index and delimiter.
		
		- TextFileIndex.LINE_NUMBER means use the line number starting from zero,
		  expects data type int64.
		- TextFileIndex.WHOLE_LINE means use the whole line content, expects data
		  type string.
		- A value >=0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Sample Usages:
		
		If we have a vocabulary file "test.txt" with the following content:
		
		```
		emerson
		lake
		palmer
		```
		
		```python
		indices = tf.constant([1, 5], tf.int64)
		table = tf.lookup.index_to_string_table_from_file(
		    vocabulary_file="test.txt", default_value="UNKNOWN")
		values = table.lookup(indices)
		...
		tf.compat.v1.tables_initializer().run()
		
		values.eval() ==> ["lake", "UNKNOWN"]
		```
		
		Args:
		  vocabulary_file: The vocabulary filename, may be a constant scalar `Tensor`.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary indices.
		  name: A name for this op (optional).
		  key_column_index: The column index from the text file to get the `key`
		    values from. The default is to use the line number, starting from zero.
		  value_column_index: The column index from the text file to get the `value`
		    values from. The default is to use the whole line content.
		  delimiter: The delimiter to separate fields in a line.
		
		Returns:
		  The lookup table to map a string values associated to a given index `int64`
		  `Tensors`.
		
		Raises:
		  ValueError: when `vocabulary_file` is empty.
		  ValueError: when `vocab_size` is invalid.
	**/
	static public function index_to_string_table_from_file(vocabulary_file:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?name:Dynamic, ?key_column_index:Dynamic, ?value_column_index:Dynamic, ?delimiter:Dynamic):Dynamic;
	/**
		Returns a lookup table that maps a `Tensor` of indices into strings.
		
		This operation constructs a lookup table to map int64 indices into string
		values. The mapping is initialized from a string `vocabulary_list` 1-D
		`Tensor` where each element is a value and the corresponding index within the
		tensor is the key.
		
		Any input which does not have a corresponding index in 'vocabulary_list'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`session.run(tf.compat.v1.tables_initializer())` or
		`session.run(table.init())` once.
		
		Elements in `vocabulary_list` cannot have duplicates, otherwise when executing
		the table initializer op, it will throw a `FailedPreconditionError`.
		
		Sample Usages:
		
		```python
		vocabulary_list = tf.constant(["emerson", "lake", "palmer"])
		indices = tf.constant([1, 5], tf.int64)
		table = tf.lookup.index_to_string_table_from_tensor(
		    vocabulary_list, default_value="UNKNOWN")
		values = table.lookup(indices)
		...
		tf.compat.v1.tables_initializer().run()
		
		values.eval() ==> ["lake", "UNKNOWN"]
		```
		
		Args:
		  vocabulary_list: A 1-D string `Tensor` that specifies the strings to map
		    from indices.
		  default_value: The value to use for out-of-vocabulary indices.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table to map a string values associated to a given index `int64`
		  `Tensors`.
		
		Raises:
		  ValueError: when `vocabulary_list` is not set.
	**/
	static public function index_to_string_table_from_tensor(vocabulary_list:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.tables_initializer` instead.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function initialize_all_tables(?name:Dynamic):Dynamic;
	/**
		Table initializer that takes two tensors for keys and values respectively.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`.
		    Handle to a table which will be initialized.
		  keys: A `Tensor`. Keys of type Tkey.
		  values: A `Tensor`. Values of type Tval.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function initialize_table_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Initializes a table from a text file.
		
		It inserts one key-value pair into the table for each line of the file.
		The key and value is extracted from the whole line content, elements from the
		split line based on `delimiter` or the line number (starting from zero).
		Where to extract the key and value from a line is specified by `key_index` and
		`value_index`.
		
		- A value of -1 means use the line number(starting from zero), expects `int64`.
		- A value of -2 means use the whole line content, expects `string`.
		- A value >= 0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`.
		    Handle to a table which will be initialized.
		  filename: A `Tensor` of type `string`. Filename of a vocabulary text file.
		  key_index: An `int` that is `>= -2`.
		    Column index in a line to get the table `key` values from.
		  value_index: An `int` that is `>= -2`.
		    Column index that represents information of a line to get the table
		    `value` values from.
		  vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of elements of the file, use -1 if unknown.
		  delimiter: An optional `string`. Defaults to `"\t"`.
		    Delimiter to separate fields in a line.
		  offset: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_from_text_file(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?offset:Dynamic, ?name:Dynamic):Dynamic;
	static public function initialize_table_from_text_file_eager_fallback(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, vocab_size:Dynamic, delimiter:Dynamic, offset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Initializes a table from a text file.
		
		It inserts one key-value pair into the table for each line of the file.
		The key and value is extracted from the whole line content, elements from the
		split line based on `delimiter` or the line number (starting from zero).
		Where to extract the key and value from a line is specified by `key_index` and
		`value_index`.
		
		- A value of -1 means use the line number(starting from zero), expects `int64`.
		- A value of -2 means use the whole line content, expects `string`.
		- A value >= 0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		    Handle to a table which will be initialized.
		  filename: A `Tensor` of type `string`. Filename of a vocabulary text file.
		  key_index: An `int` that is `>= -2`.
		    Column index in a line to get the table `key` values from.
		  value_index: An `int` that is `>= -2`.
		    Column index that represents information of a line to get the table
		    `value` values from.
		  vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of elements of the file, use -1 if unknown.
		  delimiter: An optional `string`. Defaults to `"\t"`.
		    Delimiter to separate fields in a line.
		  offset: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_from_text_file_v2(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?offset:Dynamic, ?name:Dynamic):Dynamic;
	static public function initialize_table_from_text_file_v2_eager_fallback(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, vocab_size:Dynamic, delimiter:Dynamic, offset:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Table initializer that takes two tensors for keys and values respectively.
		
		Args:
		  table_handle: A `Tensor` of type `resource`.
		    Handle to a table which will be initialized.
		  keys: A `Tensor`. Keys of type Tkey.
		  values: A `Tensor`. Values of type Tval.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_v2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function initialize_table_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs all keys and values in the table.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  Tkeys: A `tf.DType`.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `Tkeys`.
		  values: A `Tensor` of type `Tvalues`.
	**/
	static public function lookup_table_export(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_export_eager_fallback(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs all keys and values in the table.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  Tkeys: A `tf.DType`.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `Tkeys`.
		  values: A `Tensor` of type `Tvalues`.
	**/
	static public function lookup_table_export_v2(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_export_v2_eager_fallback(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Looks up keys in a table, outputs the corresponding values.
		
		The tensor `keys` must of the same type as the keys of the table.
		The output `values` is of the type of the table values.
		
		The scalar `default_value` is the value output for keys not present in the
		table. It must also be of the same type as the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  default_value: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `default_value`.
	**/
	static public function lookup_table_find(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_find_eager_fallback(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Looks up keys in a table, outputs the corresponding values.
		
		The tensor `keys` must of the same type as the keys of the table.
		The output `values` is of the type of the table values.
		
		The scalar `default_value` is the value output for keys not present in the
		table. It must also be of the same type as the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  default_value: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `default_value`.
	**/
	static public function lookup_table_find_v2(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_find_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Replaces the contents of the table with the specified keys and values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function lookup_table_import(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_import_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Replaces the contents of the table with the specified keys and values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function lookup_table_import_v2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_import_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Updates the table to associates keys with values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function lookup_table_insert(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_insert_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Updates the table to associates keys with values.
		
		The tensor `keys` must be of the same type as the keys of the table.
		The tensor `values` must be of the type of the table values.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys to look up.
		  values: A `Tensor`. Values to associate with keys.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function lookup_table_insert_v2(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_insert_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Removes keys and its associated values from a table.
		
		The tensor `keys` must of the same type as the keys of the table. Keys not
		already in the table are silently ignored.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  keys: A `Tensor`. Any shape.  Keys of the elements to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function lookup_table_remove_v2(table_handle:Dynamic, keys:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_remove_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function lookup_table_size(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_size_eager_fallback(table_handle:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function lookup_table_size_v2(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function lookup_table_size_v2_eager_fallback(table_handle:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table that uses tensors as the backing store.
		
		It uses "open addressing" with quadratic reprobing to resolve
		collisions.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  empty_key: A `Tensor`.
		    The key used to represent empty key buckets internally. Must not
		    be used in insert or lookup operations.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of each value.
		  initial_num_buckets: An optional `int`. Defaults to `131072`.
		    The initial number of hash table buckets. Must be a power
		    to 2.
		  max_load_factor: An optional `float`. Defaults to `0.8`.
		    The maximum ratio between number of entries and number of
		    buckets before growing the table. Must be between 0 and 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function mutable_dense_hash_table(empty_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_dense_hash_table_eager_fallback(empty_key:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, value_shape:Dynamic, initial_num_buckets:Dynamic, max_load_factor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table that uses tensors as the backing store.
		
		It uses "open addressing" with quadratic reprobing to resolve
		collisions.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  empty_key: A `Tensor`.
		    The key used to represent empty key buckets internally. Must not
		    be used in insert or lookup operations.
		  deleted_key: A `Tensor`. Must have the same type as `empty_key`.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of each value.
		  initial_num_buckets: An optional `int`. Defaults to `131072`.
		    The initial number of hash table buckets. Must be a power
		    to 2.
		  max_load_factor: An optional `float`. Defaults to `0.8`.
		    The maximum ratio between number of entries and number of
		    buckets before growing the table. Must be between 0 and 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function mutable_dense_hash_table_v2(empty_key:Dynamic, deleted_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_dense_hash_table_v2_eager_fallback(empty_key:Dynamic, deleted_key:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, value_shape:Dynamic, initial_num_buckets:Dynamic, max_load_factor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function mutable_hash_table(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_hash_table_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a vector. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function mutable_hash_table_of_tensors(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_hash_table_of_tensors_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, value_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a vector. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		  value_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function mutable_hash_table_of_tensors_v2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_hash_table_of_tensors_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, value_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an empty hash table.
		
		This op creates a mutable hash table, specifying the type of its keys and
		values. Each value must be a scalar. Data can be inserted into the table using
		the insert operations. It does not support the initialization operation.
		
		Args:
		  key_dtype: A `tf.DType`. Type of the table keys.
		  value_dtype: A `tf.DType`. Type of the table values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this table is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this table is shared under the given name across
		    multiple sessions.
		  use_node_name_sharing: An optional `bool`. Defaults to `False`.
		    If true and shared_name is empty, the table is shared
		    using the node name.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function mutable_hash_table_v2(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutable_hash_table_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, container:Dynamic, shared_name:Dynamic, use_node_name_sharing:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
		
		@compatibility(TF2)
		`tf.compat.v1.tables_initializer` is no longer needed with eager execution and
		`tf.function`. In TF2, when creating an initializable table like a
		`tf.lookup.StaticHashTable`, the table will automatically be initialized on
		creation.
		
		#### Before & After Usage Example
		
		Before:
		
		>>> with tf.compat.v1.Session():
		...   init = tf.compat.v1.lookup.KeyValueTensorInitializer(['a', 'b'], [1, 2])
		...   table = tf.compat.v1.lookup.StaticHashTable(init, default_value=-1)
		...   tf.compat.v1.tables_initializer().run()
		...   result = table.lookup(tf.constant(['a', 'c'])).eval()
		>>> result
		array([ 1, -1], dtype=int32)
		
		After:
		
		>>> init = tf.lookup.KeyValueTensorInitializer(['a', 'b'], [1, 2])
		>>> table = tf.lookup.StaticHashTable(init, default_value=-1)
		>>> table.lookup(tf.constant(['a', 'c'])).numpy()
		array([ 1, -1], dtype=int32)
		
		@end_compatibility
	**/
	static public function tables_initializer(?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}