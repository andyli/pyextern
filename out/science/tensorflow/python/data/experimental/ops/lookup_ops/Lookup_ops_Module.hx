/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.lookup_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.lookup_ops") extern class Lookup_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Raises an error if the given table initializer element spec is invalid.
	**/
	static public function _check_table_initializer_element_spec(element_spec:Dynamic):Dynamic;
	/**
		Asserts the cardinality of the input dataset.
		
		NOTE: The following assumes that "examples.tfrecord" contains 42 records.
		
		>>> dataset = tf.data.TFRecordDataset("examples.tfrecord")
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.UNKNOWN_CARDINALITY).numpy())
		True
		>>> dataset = dataset.apply(tf.data.experimental.assert_cardinality(42))
		>>> print(tf.data.experimental.cardinality(dataset).numpy())
		42
		
		Args:
		  expected_cardinality: The expected cardinality of the input dataset.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  FailedPreconditionError: The assertion is checked at runtime (when iterating
		    the dataset) and an error is raised if the actual and expected cardinality
		    differ.
	**/
	static public function assert_cardinality(expected_cardinality:Dynamic):Dynamic;
	/**
		Returns an index lookup table based on the given dataset.
		
		This operation constructs a lookup table based on the given dataset of keys.
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is
		`[vocabulary size, vocabulary size + num_oov_buckets - 1]`.
		
		Sample Usages:
		
		>>> ds = tf.data.Dataset.range(100).map(lambda x: tf.strings.as_string(x * 2))
		>>> table = tf.data.experimental.index_table_from_dataset(
		...                                     ds, key_dtype=dtypes.int64)
		>>> table.lookup(tf.constant(['0', '2', '4'], dtype=tf.string)).numpy()
		array([0, 1, 2])
		
		Args:
		  dataset: A dataset of keys.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets.
		  key_dtype: The `key` data type.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table based on the given dataset.
		
		Raises:
		  ValueError: If
		    * `num_oov_buckets` is negative
		    * `vocab_size` is not greater than zero
		    * The `key_dtype` is not integer or string
	**/
	static public function index_table_from_dataset(?dataset:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?key_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a lookup table based on the given dataset.
		
		This operation constructs a lookup table based on the given dataset of pairs
		of (key, value).
		
		Any lookup of an out-of-vocabulary token will return a bucket ID based on its
		hash if `num_oov_buckets` is greater than zero. Otherwise it is assigned the
		`default_value`.
		The bucket ID range is
		`[vocabulary size, vocabulary size + num_oov_buckets - 1]`.
		
		Sample Usages:
		
		>>> keys = tf.data.Dataset.range(100)
		>>> values = tf.data.Dataset.range(100).map(
		...     lambda x: tf.strings.as_string(x * 2))
		>>> ds = tf.data.Dataset.zip((keys, values))
		>>> table = tf.data.experimental.table_from_dataset(
		...                               ds, default_value='n/a', key_dtype=tf.int64)
		>>> table.lookup(tf.constant([0, 1, 2], dtype=tf.int64)).numpy()
		array([b'0', b'2', b'4'], dtype=object)
		
		Args:
		  dataset: A dataset containing (key, value) pairs.
		  num_oov_buckets: The number of out-of-vocabulary buckets.
		  vocab_size: Number of the elements in the vocabulary, if known.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets.
		  key_dtype: The `key` data type.
		  name: A name for this op (optional).
		
		Returns:
		  The lookup table based on the given dataset.
		
		Raises:
		  ValueError: If
		    * `dataset` does not contain pairs
		    * The 2nd item in the `dataset` pairs has a dtype which is incompatible
		      with `default_value`
		    * `num_oov_buckets` is negative
		    * `vocab_size` is not greater than zero
		    * The `key_dtype` is not integer or string
	**/
	static public function table_from_dataset(?dataset:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?hasher_spec:Dynamic, ?key_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}