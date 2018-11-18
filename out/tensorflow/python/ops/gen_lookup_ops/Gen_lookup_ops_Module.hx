/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_lookup_ops;
@:pythonImport("tensorflow.python.ops.gen_lookup_ops") extern class Gen_lookup_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _lookup_table_export_outputs : Dynamic;
	static public var _lookup_table_export_v2_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function hash_table_v2
	**/
	static public function hash_table_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_from_text_file(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?name:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function initialize_table_from_text_file_v2(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function initialize_table_from_text_file_v2
	**/
	static public function initialize_table_from_text_file_v2_eager_fallback(table_handle:Dynamic, filename:Dynamic, key_index:Dynamic, value_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function initialize_table_v2
	**/
	static public function initialize_table_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lookup_table_export_v2
	**/
	static public function lookup_table_export_v2_eager_fallback(table_handle:Dynamic, Tkeys:Dynamic, Tvalues:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lookup_table_find_v2
	**/
	static public function lookup_table_find_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, default_value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lookup_table_import_v2
	**/
	static public function lookup_table_import_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lookup_table_insert_v2
	**/
	static public function lookup_table_insert_v2_eager_fallback(table_handle:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type mutable `string`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function lookup_table_size(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given table.
		
		Args:
		  table_handle: A `Tensor` of type `resource`. Handle to the table.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function lookup_table_size_v2(table_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lookup_table_size_v2
	**/
	static public function lookup_table_size_v2_eager_fallback(table_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  A `Tensor` of type `resource`.
	**/
	static public function mutable_dense_hash_table_v2(empty_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mutable_dense_hash_table_v2
	**/
	static public function mutable_dense_hash_table_v2_eager_fallback(empty_key:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?initial_num_buckets:Dynamic, ?max_load_factor:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mutable_hash_table_of_tensors_v2
	**/
	static public function mutable_hash_table_of_tensors_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?value_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mutable_hash_table_v2
	**/
	static public function mutable_hash_table_v2_eager_fallback(key_dtype:Dynamic, value_dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?use_node_name_sharing:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}