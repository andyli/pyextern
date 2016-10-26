/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column") extern class Feature_column_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_variable_collection(weight_collections:Dynamic):Dynamic;
	/**
		Creates embedding variable and does a lookup.
		
		Args:
		  input_tensor: A `SparseTensor` which should contain sparse id to look up.
		  weight_tensor: A `SparseTensor` with the same shape and indices as
		    `input_tensor`, which contains the float weights corresponding to each
		    sparse id, or None if all weights are assumed to be 1.0.
		  vocab_size: An integer specifying the vocabulary size.
		  dimension: An integer specifying the embedding vector dimension.
		  weight_collections: List of graph collections to which weights are added.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  name: A string specifying the name of the embedding variable.
		
		Returns:
		  A Tensor with shape [batch_size, dimension] and embedding Variable.
	**/
	static public function _create_embedding_lookup(input_tensor:Dynamic, weight_tensor:Dynamic, vocab_size:Dynamic, dimension:Dynamic, weight_collections:Dynamic, initializer:Dynamic, combiner:Dynamic, trainable:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates embedding variable.
		
		If called within the scope of a partitioner, will partition the variable and
		return a list of `tf.Variable`. If no partitioner is specified, returns a list
		with just one variable.
		
		Args:
		  name: A string. The name of the embedding variable will be name + _weights.
		  shape: shape of the embeddding. Note this is not the shape of partitioned
		    variables.
		  dtype: type of the embedding. Also the shape of each partitioned variable.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  weight_collections: List of graph collections to which embedding variables
		    are added.
		
		Returns:
		  A list of `tf.Variable` containing the partitioned embeddings.
		
		Raises:
		  ValueError: If initializer is None or not callable.
	**/
	static public function _create_embeddings(name:Dynamic, shape:Dynamic, dtype:Dynamic, initializer:Dynamic, trainable:Dynamic, weight_collections:Dynamic):Dynamic;
	/**
		Returns configuration for the base feature defined in feature_column.
	**/
	static public function _get_feature_config(feature_column:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a _BucketizedColumn.
		
		Args:
		  source_column: A _RealValuedColumn defining dense column.
		  boundaries: A list of floats specifying the boundaries. It has to be sorted.
		
		Returns:
		  A _BucketizedColumn.
		
		Raises:
		  ValueError: if 'boundaries' is empty or not sorted.
	**/
	static public function bucketized_column(source_column:Dynamic, boundaries:Dynamic):Dynamic;
	/**
		Helper that prepares features config from input feature_columns.
		
		The returned feature config can be used as arg 'features' in tf.parse_example.
		
		Typical usage example:
		
		```python
		# Define features and transformations
		country = sparse_column_with_vocabulary_file("country", VOCAB_FILE)
		age = real_valued_column("age")
		click_bucket = bucketized_column(real_valued_column("historical_click_ratio"),
		                                 boundaries=[i/10. for i in range(10)])
		country_x_click = crossed_column([country, click_bucket], 10)
		
		feature_columns = set([age, click_bucket, country_x_click])
		batch_examples = tf.parse_example(
		    serialized_examples,
		    create_feature_spec_for_parsing(feature_columns))
		```
		
		For the above example, create_feature_spec_for_parsing would return the dict:
		{"age": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		 "historical_click_ratio": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		 "country": parsing_ops.VarLenFeature(tf.string)}
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		Returns:
		  A dict mapping feature keys to FixedLenFeature or VarLenFeature values.
	**/
	static public function create_feature_spec_for_parsing(feature_columns:Dynamic):Dynamic;
	/**
		Creates a _CrossedColumn.
		
		Args:
		  columns: An iterable of _FeatureColumn. Items can be an instance of
		    _SparseColumn, _CrossedColumn, or _BucketizedColumn.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A combiner string, supports sum, mean, sqrtn.
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		
		Returns:
		  A _CrossedColumn.
		
		Raises:
		  TypeError: if any item in columns is not an instance of _SparseColumn,
		    _CrossedColumn, or _BucketizedColumn, or
		    hash_bucket_size is not an int.
		  ValueError: if hash_bucket_size is not > 1 or
		    len(columns) is not > 1.
	**/
	static public function crossed_column(columns:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates an _EmbeddingColumn.
		
		Args:
		  sparse_id_column: A _SparseColumn which is created by `sparse_column_with_*`
		    or crossed_column functions. Note that `combiner` defined in
		    `sparse_id_column` is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported. Each
		    of this can be thought as example level normalizations on the column:
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0.0 and standard deviation
		    1/sqrt(sparse_id_column.length).
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		
		Returns:
		  An _EmbeddingColumn.
	**/
	static public function embedding_column(sparse_id_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic):Dynamic;
	/**
		Creates an embedding column of a sparse feature using parameter hashing.
		
		The i-th embedding component of a value v is found by retrieving an
		embedding weight whose index is a fingerprint of the pair (v,i).
		
		Args:
		  column_name: A string defining sparse column name.
		  size: An integer specifying the number of parameters in the embedding layer.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported. Each
		    of this can be thought as example level normalizations on the column:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0 and standard deviation 0.1.
		
		Returns:
		  A _HashedEmbeddingColumn.
		
		Raises:
		  ValueError: if dimension or size is not a positive integer; or if combiner
		    is not supported.
	**/
	static public function hashed_embedding_column(column_name:Dynamic, size:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Returns placeholder tensors for inference.
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		Returns:
		  A dict mapping feature keys to SparseTensors (sparse columns) or
		  placeholder Tensors (dense columns).
	**/
	static public function make_place_holder_tensors_for_base_features(feature_columns:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a _RealValuedColumn.
		
		Args:
		  column_name: A string defining real valued column name.
		  dimension: An integer specifying dimension of the real valued column.
		    The default is 1. The Tensor representing the _RealValuedColumn
		    will have the shape of [batch_size, dimension].
		  default_value: A single value compatible with dtype or a list of values
		    compatible with dtype which the column takes on if data is missing. If
		    None, then tf.parse_example will fail if an example does not contain
		    this column. If a single value is provided, the same value will be
		    applied as the default value for every dimension. If a list of values
		    is provided, the length of the list should be equal to the value of
		    `dimension`.
		  dtype: defines the type of values. Default value is tf.float32.
		Returns:
		  A _RealValuedColumn.
		Raises:
		  TypeError: if dimension is not an int
		  ValueError: if dimension is not a positive integer
		  TypeError: if default_value is a list but its length is not equal to the
		    value of `dimension`.
		  TypeError: if default_value is not compatible with dtype.
		  ValueError: if dtype is not convertable to tf.float32.
	**/
	static public function real_valued_column(column_name:Dynamic, ?dimension:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with hashed bucket configuration.
		
		Use this when your sparse features are in string format, but you don't have a
		vocab file that maps each string to an integer ID.
		output_id = Hash(input_feature_string) % bucket_size
		
		Args:
		  column_name: A string defining sparse column name.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		
		Returns:
		  A _SparseColumn with hashed bucket configuration
		
		Raises:
		  ValueError: hash_bucket_size is not greater than 2.
	**/
	static public function sparse_column_with_hash_bucket(column_name:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic):Dynamic;
	/**
		Creates an integerized _SparseColumn.
		
		Use this when your features are already pre-integerized into int64 IDs.
		output_id = input_feature
		
		Args:
		  column_name: A string defining sparse column name.
		  bucket_size: An int that is > 1. The number of buckets. It should be bigger
		    than maximum feature. In other words features in this column should be an
		    int64 in range [0, bucket_size)
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: Type of features. It should be an integer type. Default value is
		    dtypes.int64.
		
		Returns:
		  An integerized _SparseColumn definition.
		
		Raises:
		  ValueError: bucket_size is not greater than 1.
		  ValueError: dtype is not integer.
	**/
	static public function sparse_column_with_integerized_feature(column_name:Dynamic, bucket_size:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with keys.
		
		Look up logic is as follows:
		lookup_id = index_of_feature_in_keys if feature in keys else default_value
		
		Args:
		  column_name: A string defining sparse column name.
		  keys: a string list defining vocabulary.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Default is -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		
		Returns:
		  A _SparseColumnKeys with keys configuration.
	**/
	static public function sparse_column_with_keys(column_name:Dynamic, keys:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn by combining sparse_id_column with a weight column.
		
		Args:
		  sparse_id_column: A _SparseColumn which is created by `sparse_column_with_*`
		    functions.
		  weight_column_name: A string defining a sparse column name which represents
		    weight or value of the corresponding sparse id feature.
		  dtype: Type of weights, such as `tf.float32`
		Returns:
		  A _WeightedSparseColumn composed of two sparse features: one represents id,
		  the other represents weight (value) of the id feature in that example.
		Raises:
		  ValueError: if dtype is not convertible to float.
		
		An example usage:
		  ```python
		  words = sparse_column_with_hash_bucket("words", 1000)
		  tfidf_weighted_words = weighted_sparse_column(words, "tfidf_score")
		  ```
		
		  This configuration assumes that input dictionary of model contains the
		  following two items:
		    * (key="words", value=word_tensor) where word_tensor is a SparseTensor.
		    * (key="tfidf_score", value=tfidf_score_tensor) where tfidf_score_tensor
		      is a SparseTensor.
		   Following are assumed to be true:
		     * word_tensor.indices = tfidf_score_tensor.indices
		     * word_tensor.shape = tfidf_score_tensor.shape
	**/
	static public function weighted_sparse_column(sparse_id_column:Dynamic, weight_column_name:Dynamic, ?dtype:Dynamic):Dynamic;
}