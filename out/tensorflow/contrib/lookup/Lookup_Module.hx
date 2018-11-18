/* This file is generated, do not edit! */
package tensorflow.contrib.lookup;
@:pythonImport("tensorflow.contrib.lookup") extern class Lookup_Module {
	static public var FastHashSpec : Dynamic;
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
		`tf.tables_initializer.run()` or `table.init.run()` once.
		
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
		tf.tables_initializer().run()
		
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
		int64 IDs. The mapping can be initialized from a string `mapping` 1-D tensor
		where each element is a key and corresponding index within the tensor is the
		value.
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is `[mapping size, mapping size + num_oov_buckets - 1]`.
		
		The underlying table must be initialized by calling
		`tf.tables_initializer.run()` or `table.init.run()` once.
		
		Elements in `mapping` cannot have duplicates, otherwise when executing the
		table initializer op, it will throw a `FailedPreconditionError`.
		
		Sample Usages:
		
		```python
		mapping_strings = tf.constant(["emerson", "lake", "palmer"])
		table = tf.contrib.lookup.index_table_from_tensor(
		    mapping=mapping_strings, num_oov_buckets=1, default_value=-1)
		features = tf.constant(["emerson", "lake", "and", "palmer"])
		ids = table.lookup(features)
		...
		tf.tables_initializer().run()
		
		ids.eval()  ==> [0, 1, 3, 2]
		```
		
		Args:
		  mapping: A 1-D `Tensor` that specifies the mapping of keys to indices. The
		    type of this object must be castable to `dtype`.
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
		  ValueError: If `mapping` is invalid.
		  ValueError: If `num_oov_buckets` is negative.
	**/
	static public function index_table_from_tensor(mapping:Dynamic, ?num_oov_buckets:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Maps `tensor` of indices into string values based on `mapping`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-01-07.
		Instructions for updating:
		This op will be removed after the deprecation date. Please switch to index_to_string_table_from_tensor and call the lookup method of the returned table.
		
		This operation converts `int64` indices into string values. The mapping is
		initialized from a string `mapping` tensor where each element is a value and
		the corresponding index within the tensor is the key.
		
		Any input which does not have a corresponding index in 'mapping'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`tf.tables_initializer.run()` once.
		
		For example:
		
		```python
		mapping_string = tf.constant(["emerson", "lake", "palmer"])
		indices = tf.constant([1, 5], tf.int64)
		values = tf.contrib.lookup.index_to_string(
		    indices, mapping=mapping_string, default_value="UNKNOWN")
		...
		tf.tables_initializer().run()
		
		values.eval() ==> ["lake", "UNKNOWN"]
		```
		
		Args:
		  tensor: A `int64` `Tensor` with the indices to map to strings.
		  mapping: A 1-D string `Tensor` that specifies the strings to map from
		    indices.
		  default_value: The string value to use for out-of-vocabulary indices.
		  name: A name for this op (optional).
		
		Returns:
		  The strings values associated to the indices. The resultant dense
		  feature value tensor has the same shape as the corresponding `indices`.
	**/
	static public function index_to_string(tensor:Dynamic, mapping:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a lookup table that maps a `Tensor` of indices into strings.
		
		This operation constructs a lookup table to map int64 indices into string
		values. The table is initialized from a vocabulary file specified in
		`vocabulary_file`, where the whole line is the value and the
		zero-based line number is the index.
		
		Any input which does not have a corresponding index in the vocabulary file
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`tf.tables_initializer.run()` or `table.init.run()` once.
		
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
		tf.tables_initializer().run()
		
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
		values. The mapping is initialized from a string `mapping` 1-D `Tensor` where
		each element is a value and the corresponding index within the tensor is the
		key.
		
		Any input which does not have a corresponding index in 'mapping'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`tf.tables_initializer.run()` or `table.init.run()` once.
		
		Elements in `mapping` cannot have duplicates, otherwise when executing the
		table initializer op, it will throw a `FailedPreconditionError`.
		
		Sample Usages:
		
		```python
		mapping_string = tf.constant(["emerson", "lake", "palmer"])
		indices = tf.constant([1, 5], tf.int64)
		table = tf.contrib.lookup.index_to_string_table_from_tensor(
		    mapping_string, default_value="UNKNOWN")
		values = table.lookup(indices)
		...
		tf.tables_initializer().run()
		
		values.eval() ==> ["lake", "UNKNOWN"]
		```
		
		Args:
		  mapping: A 1-D string `Tensor` that specifies the strings to map from
		    indices.
		  default_value: The value to use for out-of-vocabulary indices.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table to map a string values associated to a given index `int64`
		  `Tensors`.
		
		Raises:
		  ValueError: when `mapping` is not set.
	**/
	static public function index_to_string_table_from_tensor(mapping:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Maps `tensor` of strings into `int64` indices based on `mapping`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-01-07.
		Instructions for updating:
		This op will be removed after the deprecation date. Please switch to index_table_from_tensor and call the lookup method of the returned table.
		
		This operation converts `tensor` of strings into `int64` indices.
		The mapping is initialized from a string `mapping` tensor where each element
		is a key and corresponding index within the tensor is the value.
		
		Any entry in the input which does not have a corresponding entry in 'mapping'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		Elements in `mapping` cannot be duplicated, otherwise the initialization
		will throw a FailedPreconditionError.
		
		The underlying table must be initialized by calling
		`tf.tables_initializer.run()` once.
		
		For example:
		
		```python
		mapping_strings = tf.constant(["emerson", "lake", "palmer"])
		feats = tf.constant(["emerson", "lake", "and", "palmer"])
		ids = tf.contrib.lookup.string_to_index(
		    feats, mapping=mapping_strings, default_value=-1)
		...
		tf.tables_initializer().run()
		
		ids.eval()  ==> [0, 1, -1, 2]
		```
		
		Args:
		  tensor: A 1-D input `Tensor` with the strings to map to indices.
		  mapping: A 1-D string `Tensor` that specifies the mapping of strings to
		    indices.
		  default_value: The `int64` value to use for out-of-vocabulary strings.
		    Defaults to -1.
		  name: A name for this op (optional).
		
		Returns:
		  The mapped indices. It has the same shape and tensor type (dense or sparse)
		  as `tensor`.
	**/
	static public function string_to_index(tensor:Dynamic, mapping:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-04-10.
		Instructions for updating:
		Use `index_table_from_file`.
	**/
	static public function string_to_index_table_from_file(?vocabulary_file:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-04-10.
		Instructions for updating:
		Use `index_table_from_tensor`.
	**/
	static public function string_to_index_table_from_tensor(mapping:Dynamic, ?num_oov_buckets:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?name:Dynamic):Dynamic;
}