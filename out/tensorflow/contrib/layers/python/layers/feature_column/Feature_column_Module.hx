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
	/**
		Prepares a feature spec for parsing `tf.SequenceExample`s.
		
		Args:
		  sequence_feature_columns: an iterable containing all the feature columns.
		    All items should be instances of classes derived from `_FeatureColumn`.
		  allow_missing_by_default: whether to set `allow_missing=True` by default for
		    `FixedLenSequenceFeature`s.
		Returns:
		  A dict mapping feature keys to `FixedLenSequenceFeature` or `VarLenFeature`.
	**/
	static public function _create_sequence_feature_spec_for_parsing(sequence_feature_columns:Dynamic, ?allow_missing_by_default:Dynamic):Dynamic;
	/**
		Returns embeddings for a column based on the computed arguments.
		
		Args:
		 column: the column name.
		 args: the _DeepEmbeddingLookupArguments for this column.
		 weight_collections: collections to store weights in.
		 trainable: whether these embeddings should be trainable.
		 output_rank: the desired rank of the returned `Tensor`. Inner dimensions will
		   be combined to produce the desired rank.
		
		Returns:
		 the embeddings.
		
		Raises:
		 ValueError: if not possible to create.
	**/
	static public function _embeddings_from_arguments(column:Dynamic, args:Dynamic, weight_collections:Dynamic, trainable:Dynamic, ?output_rank:Dynamic):Dynamic;
	/**
		Returns configuration for the base feature defined in feature_column.
	**/
	static public function _get_feature_config(feature_column:Dynamic):Dynamic;
	/**
		Returns true if `v` is a variable.
	**/
	static public function _is_variable(v:Dynamic):Dynamic;
	static public function _maybe_restore_from_checkpoint(checkpoint_path:Dynamic, variable:Dynamic):Dynamic;
	/**
		Creates a `_RealValuedVarLenColumn` for variable-length numeric data. (experimental)
		
		THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		
		Note, this is not integrated with any of the DNNEstimators, except the RNN
		ones DynamicRNNEstimator and the StateSavingRNNEstimator.
		
		It can either create a parsing config for a SparseTensor (with is_sparse=True)
		or a padded Tensor.
		The (dense_)shape of the result will be [batch_size, None], which can be used
		with is_sparse=False as input into an RNN (see DynamicRNNEstimator or
		StateSavingRNNEstimator) or with is_sparse=True as input into a tree (see
		gtflow).
		
		Use real_valued_column if the Feature has a fixed length. Use some
		SparseColumn for columns to be embedded / one-hot-encoded.
		
		Args:
		  column_name: A string defining real valued column name.
		  default_value: A scalar value compatible with dtype. Needs to be specified
		    if is_sparse=False.
		  dtype: Defines the type of values. Default value is tf.float32. Needs to be
		    convertible to tf.float32.
		  normalizer: If not None, a function that can be used to normalize the value
		    of the real valued column after default_value is applied for parsing.
		    Normalizer function takes the input tensor as its argument, and returns
		    the output tensor. (e.g. lambda x: (x - 3.0) / 4.2). Note that for
		    is_sparse=False, the normalizer will be run on the values of the
		    `SparseTensor`.
		  is_sparse: A boolean defining whether to create a SparseTensor or a Tensor.
		Returns:
		  A _RealValuedSparseColumn.
		Raises:
		  TypeError: if default_value is not a scalar value compatible with dtype.
		  TypeError: if dtype is not convertible to tf.float32.
		  ValueError: if default_value is None and is_sparse is False.
	**/
	static public function _real_valued_var_len_column(column_name:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic, ?normalizer:Dynamic, ?is_sparse:Dynamic):Dynamic;
	/**
		Reshaping logic for dense, numeric `Tensors`.
		
		Follows the following rules:
		  1. If `output_rank > input_rank + 1` raise a `ValueError`.
		  2. If `output_rank == input_rank + 1`, expand `input_tensor` by one
		     dimension and return
		  3. If `output_rank == input_rank`, return `input_tensor`.
		  4. If `output_rank < input_rank`, flatten the inner dimensions of
		     `input_tensor` and return a `Tensor` with `output_rank`
		
		Args:
		  input_tensor: a dense `Tensor` to be reshaped.
		  output_rank: the desired rank of the reshaped `Tensor`.
		  column_name: (optional) the name of the associated column. Used for error
		    messages.
		Returns:
		  A `Tensor` with the same entries as `input_tensor` and rank `output_rank`.
		Raises:
		  ValueError: if `output_rank > input_rank + 1`.
	**/
	static public function _reshape_real_valued_tensor(input_tensor:Dynamic, output_rank:Dynamic, ?column_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a _BucketizedColumn for discretizing dense input.
		
		Args:
		  source_column: A _RealValuedColumn defining dense column.
		  boundaries: A list or tuple of floats specifying the boundaries. It has to
		    be sorted.
		
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
		feature_a = sparse_column_with_vocabulary_file(...)
		feature_b = real_valued_column(...)
		feature_c_bucketized = bucketized_column(real_valued_column("feature_c"), ...)
		feature_a_x_feature_c = crossed_column(
		  columns=[feature_a, feature_c_bucketized], ...)
		
		feature_columns = set(
		  [feature_b, feature_c_bucketized, feature_a_x_feature_c])
		batch_examples = tf.parse_example(
		    serialized=serialized_examples,
		    features=create_feature_spec_for_parsing(feature_columns))
		```
		
		For the above example, create_feature_spec_for_parsing would return the dict:
		{
		  "feature_a": parsing_ops.VarLenFeature(tf.string),
		  "feature_b": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		  "feature_c": parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		}
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn, unless
		    feature_columns is a dict -- in which case, this should be true of all
		    values in the dict.
		Returns:
		  A dict mapping feature keys to FixedLenFeature or VarLenFeature values.
	**/
	static public function create_feature_spec_for_parsing(feature_columns:Dynamic):Dynamic;
	/**
		Creates a _CrossedColumn for performing feature crosses.
		
		Args:
		  columns: An iterable of _FeatureColumn. Items can be an instance of
		    _SparseColumn, _CrossedColumn, or _BucketizedColumn.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column::
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		  A _CrossedColumn.
		
		Raises:
		  TypeError: if any item in columns is not an instance of _SparseColumn,
		    _CrossedColumn, or _BucketizedColumn, or
		    hash_bucket_size is not an int.
		  ValueError: if hash_bucket_size is not > 1 or
		    len(columns) is not > 1.
	**/
	static public function crossed_column(columns:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?hash_key:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates an `_EmbeddingColumn` for feeding sparse data into a DNN.
		
		Args:
		  sparse_id_column: A `_SparseColumn` which is created by for example
		    `sparse_column_with_*` or crossed_column functions. Note that `combiner`
		    defined in `sparse_id_column` is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
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
		  max_norm: (Optional). If not None, embedding values are l2-normalized to
		    the value of max_norm.
		  trainable: (Optional). Should the embedding be trainable. Default is True
		
		Returns:
		  An `_EmbeddingColumn`.
	**/
	static public function embedding_column(sparse_id_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
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
	/**
		Creates an `_OneHotColumn` for a one-hot or multi-hot repr in a DNN.
		
		Args:
		    sparse_id_column: A _SparseColumn which is created by
		      `sparse_column_with_*`
		      or crossed_column functions. Note that `combiner` defined in
		      `sparse_id_column` is ignored.
		
		Returns:
		  An _OneHotColumn.
	**/
	static public function one_hot_column(sparse_id_column:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a `_RealValuedColumn` for dense numeric data.
		
		Args:
		  column_name: A string defining real valued column name.
		  dimension: An integer specifying dimension of the real valued column.
		    The default is 1.
		  default_value: A single value compatible with dtype or a list of values
		    compatible with dtype which the column takes on during tf.Example parsing
		    if data is missing. When dimension is not None, a default value of None
		    will cause tf.parse_example to fail if an example does not contain this
		    column. If a single value is provided, the same value will be applied as
		    the default value for every dimension. If a list of values is provided,
		    the length of the list should be equal to the value of `dimension`.
		    Only scalar default value is supported in case dimension is not specified.
		  dtype: defines the type of values. Default value is tf.float32. Must be a
		    non-quantized, real integer or floating point type.
		  normalizer: If not None, a function that can be used to normalize the value
		    of the real valued column after default_value is applied for parsing.
		    Normalizer function takes the input tensor as its argument, and returns
		    the output tensor. (e.g. lambda x: (x - 3.0) / 4.2). Note that for
		    variable length columns, the normalizer should expect an input_tensor of
		    type `SparseTensor`.
		Returns:
		  A _RealValuedColumn.
		Raises:
		  TypeError: if dimension is not an int
		  ValueError: if dimension is not a positive integer
		  TypeError: if default_value is a list but its length is not equal to the
		    value of `dimension`.
		  TypeError: if default_value is not compatible with dtype.
		  ValueError: if dtype is not convertible to tf.float32.
	**/
	static public function real_valued_column(column_name:Dynamic, ?dimension:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic, ?normalizer:Dynamic):Dynamic;
	/**
		Creates an embedding column of a sparse feature using parameter hashing.
		
		This is a useful shorthand when you have a sparse feature you want to use an
		embedding for, but also want to hash the embedding's values in each dimension
		to a variable based on a different hash.
		
		Specifically, the i-th embedding component of a value v is found by retrieving
		an embedding weight whose index is a fingerprint of the pair (v,i).
		
		An embedding column with sparse_column_with_hash_bucket such as
		
		    embedding_column(
		      sparse_column_with_hash_bucket(column_name, bucket_size),
		      dimension)
		
		could be replaced by
		
		    scattered_embedding_column(
		      column_name,
		      size=bucket_size * dimension,
		      dimension=dimension,
		      hash_key=tf.contrib.layers.SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY)
		
		for the same number of embedding parameters. This should hopefully reduce the
		impact of collisions, but adds the cost of slowing down training.
		
		Args:
		  column_name: A string defining sparse column name.
		  size: An integer specifying the number of parameters in the embedding layer.
		  dimension: An integer specifying dimension of the embedding.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0 and standard deviation 0.1.
		
		Returns:
		  A _ScatteredEmbeddingColumn.
		
		Raises:
		  ValueError: if dimension or size is not a positive integer; or if combiner
		    is not supported.
	**/
	static public function scattered_embedding_column(column_name:Dynamic, size:Dynamic, dimension:Dynamic, hash_key:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Creates a list of `_EmbeddingColumn` sharing the same embedding.
		
		Args:
		  sparse_id_columns: An iterable of `_SparseColumn`, such as those created by
		    `sparse_column_with_*` or crossed_column functions. Note that `combiner`
		    defined in each sparse_id_column is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  shared_embedding_name: (Optional). A string specifying the name of shared
		    embedding weights. This will be needed if you want to reference the shared
		    embedding separately from the generated `_EmbeddingColumn`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0.0 and standard deviation
		    1/sqrt(sparse_id_columns[0].length).
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		  max_norm: (Optional). If not None, embedding values are l2-normalized to
		    the value of max_norm.
		  trainable: (Optional). Should the embedding be trainable. Default is True
		
		Returns:
		  A tuple of `_EmbeddingColumn` with shared embedding space.
		
		Raises:
		  ValueError: if sparse_id_columns is empty, or its elements are not
		    compatible with each other.
		  TypeError: if `sparse_id_columns` is not a sequence or is a string. If at
		    least one element of `sparse_id_columns` is not a `SparseTensor`.
	**/
	static public function shared_embedding_columns(sparse_id_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?shared_embedding_name:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with hashed bucket configuration.
		
		Use this when your sparse features are in string or integer format, but you
		don't have a vocab file that maps each value to an integer ID.
		output_id = Hash(input_feature_string) % bucket_size
		
		Args:
		  column_name: A string defining sparse column name.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: The type of features. Only string and integer types are supported.
		
		Returns:
		  A _SparseColumn with hashed bucket configuration
		
		Raises:
		  ValueError: hash_bucket_size is not greater than 2.
		  ValueError: dtype is neither string nor integer.
	**/
	static public function sparse_column_with_hash_bucket(column_name:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates an integerized _SparseColumn.
		
		Use this when your features are already pre-integerized into int64 IDs, that
		is, when the set of values to output is already coming in as what's desired in
		the output. Integerized means we can use the feature value itself as id.
		
		Typically this is used for reading contiguous ranges of integers indexes, but
		it doesn't have to be. The output value is simply copied from the
		input_feature, whatever it is. Just be aware, however, that if you have large
		gaps of unused integers it might affect what you feed those in (for instance,
		if you make up a one-hot tensor from these, the unused integers will appear as
		values in the tensor which are always zero.)
		
		Args:
		  column_name: A string defining sparse column name.
		  bucket_size: An int that is > 1. The number of buckets. It should be bigger
		    than maximum feature. In other words features in this column should be an
		    int64 in range [0, bucket_size)
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
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
		  keys: A list or tuple defining vocabulary. Must be castable to `dtype`.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Default is -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: Type of features. Only integer and string are supported.
		
		Returns:
		  A _SparseColumnKeys with keys configuration.
	**/
	static public function sparse_column_with_keys(column_name:Dynamic, keys:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with vocabulary file configuration.
		
		Use this when your sparse features are in string or integer format, and you
		have a vocab file that maps each value to an integer ID.
		output_id = LookupIdFromVocab(input_feature_string)
		
		Args:
		  column_name: A string defining sparse column name.
		  vocabulary_file: The vocabulary filename.
		  num_oov_buckets: The number of out-of-vocabulary buckets. If zero all out of
		    vocabulary features will be ignored.
		  vocab_size: Number of the elements in the vocabulary.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: The type of features. Only string and integer types are supported.
		
		Returns:
		  A _SparseColumn with vocabulary file configuration.
		
		Raises:
		  ValueError: vocab_size is not defined.
		  ValueError: dtype is neither string nor integer.
	**/
	static public function sparse_column_with_vocabulary_file(column_name:Dynamic, vocabulary_file:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn by combining sparse_id_column with a weight column.
		
		Example:
		
		  ```python
		  sparse_feature = sparse_column_with_hash_bucket(column_name="sparse_col",
		                                                  hash_bucket_size=1000)
		  weighted_feature = weighted_sparse_column(sparse_id_column=sparse_feature,
		                                            weight_column_name="weights_col")
		  ```
		
		  This configuration assumes that input dictionary of model contains the
		  following two items:
		    * (key="sparse_col", value=sparse_tensor) where sparse_tensor is
		      a SparseTensor.
		    * (key="weights_col", value=weights_tensor) where weights_tensor
		      is a SparseTensor.
		   Following are assumed to be true:
		     * sparse_tensor.indices = weights_tensor.indices
		     * sparse_tensor.dense_shape = weights_tensor.dense_shape
		
		Args:
		  sparse_id_column: A `_SparseColumn` which is created by
		    `sparse_column_with_*` functions.
		  weight_column_name: A string defining a sparse column name which represents
		    weight or value of the corresponding sparse id feature.
		  dtype: Type of weights, such as `tf.float32`. Only floating and integer
		    weights are supported.
		
		Returns:
		  A _WeightedSparseColumn composed of two sparse features: one represents id,
		  the other represents weight (value) of the id feature in that example.
		
		Raises:
		  ValueError: if dtype is not convertible to float.
	**/
	static public function weighted_sparse_column(sparse_id_column:Dynamic, weight_column_name:Dynamic, ?dtype:Dynamic):Dynamic;
}