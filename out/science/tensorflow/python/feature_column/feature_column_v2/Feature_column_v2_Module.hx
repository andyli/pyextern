/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column_v2;
@:pythonImport("tensorflow.python.feature_column.feature_column_v2") extern class Feature_column_v2_Module {
	static public var _FEATURE_COLUMN_DEPRECATION : Dynamic;
	static public var _FEATURE_COLUMN_DEPRECATION_DATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks that a config has all expected_keys.
	**/
	static public function _check_config_keys(config:Dynamic, expected_keys:Dynamic):Dynamic;
	/**
		Returns shape if it's valid, raises error otherwise.
	**/
	static public function _check_shape(shape:Dynamic, key:Dynamic):Dynamic;
	/**
		Collects base keys by expanding all nested crosses.
		
		Args:
		  cross: A `CrossedColumn`.
		
		Returns:
		  A list of strings or `CategoricalColumn` instances.
	**/
	static public function _collect_leaf_level_keys(cross:Dynamic):Dynamic;
	/**
		Create a weighted sum of a categorical column for linear_model.
		
		Note to maintainer: As implementation details, the weighted sum is
		implemented via embedding_lookup_sparse toward efficiency. Mathematically,
		they are the same.
		
		To be specific, conceptually, categorical column can be treated as multi-hot
		vector. Say:
		
		```python
		  x = [0 0 1]  # categorical column input
		  w = [a b c]  # weights
		```
		The weighted sum is `c` in this case, which is same as `w[2]`.
		
		Another example is
		
		```python
		  x = [0 1 1]  # categorical column input
		  w = [a b c]  # weights
		```
		The weighted sum is `b + c` in this case, which is same as `w[2] + w[3]`.
		
		For both cases, we can implement weighted sum via embedding_lookup with
		sparse_combiner = "sum".
	**/
	static public function _create_categorical_column_weighted_sum(column:Dynamic, transformation_cache:Dynamic, state_manager:Dynamic, sparse_combiner:Dynamic, weight_var:Dynamic):Dynamic;
	/**
		Create a weighted sum of a dense column for linear_model.
	**/
	static public function _create_dense_column_weighted_sum(column:Dynamic, transformation_cache:Dynamic, state_manager:Dynamic, weight_var:Dynamic):Dynamic;
	/**
		Creates a weighted sum for a dense/categorical column for linear_model.
	**/
	static public function _create_weighted_sum(column:Dynamic, transformation_cache:Dynamic, state_manager:Dynamic, sparse_combiner:Dynamic, weight_var:Dynamic):Dynamic;
	/**
		Normalizes the `feature_columns` input.
		
		This method converts the `feature_columns` to list type as best as it can. In
		addition, verifies the type and other parts of feature_columns, required by
		downstream library.
		
		Args:
		  feature_columns: The raw feature columns, usually passed by users.
		
		Returns:
		  The normalized feature column list.
		
		Raises:
		  ValueError: for any invalid inputs, such as empty, duplicated names, etc.
	**/
	static public function _normalize_feature_columns(feature_columns:Dynamic):Dynamic;
	/**
		Prune invalid IDs (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_ids(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	/**
		Prune invalid weights (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_weights(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	static public function _raise_shared_embedding_column_error():Dynamic;
	/**
		Sanitizes user-provided feature names for use as variable scopes.
	**/
	static public function _sanitize_column_name_for_variable_scope(name:Dynamic):Dynamic;
	/**
		Returns a shallow copy of config with lists turned to tuples.
		
		Keras serialization uses nest to listify everything.
		This causes problems with the NumericColumn shape, which becomes
		unhashable. We could try to solve this on the Keras side, but that
		would require lots of tracking to avoid changing existing behavior.
		Instead, we ensure here that we revive correctly.
		
		Args:
		  config: dict that will be used to revive a Feature Column
		
		Returns:
		  Shallow copy of config with lists turned to tuples.
	**/
	static public function _standardize_and_copy_config(config:Dynamic):Dynamic;
	/**
		Converts a `Tensor` to a `SparseTensor`, dropping ignore_value cells.
		
		If `input_tensor` is already a `SparseTensor`, just return it.
		
		Args:
		  input_tensor: A string or integer `Tensor`.
		  ignore_value: Entries in `dense_tensor` equal to this value will be
		    absent from the resulting `SparseTensor`. If `None`, default value of
		    `dense_tensor`'s dtype will be used ('' for `str`, -1 for `int`).
		
		Returns:
		  A `SparseTensor` with the same shape as `input_tensor`.
		
		Raises:
		  ValueError: when `input_tensor`'s rank is `None`.
	**/
	static public function _to_sparse_input_and_drop_ignore_values(input_tensor:Dynamic, ?ignore_value:Dynamic):Dynamic;
	/**
		Returns transformed features based on features columns passed in.
		
		Please note that most probably you would not need to use this function. Please
		check `input_layer` and `linear_model` to see whether they will
		satisfy your use case or not.
		
		Example:
		
		```python
		# Define features and transformations
		crosses_a_x_b = crossed_column(
		    columns=["sparse_feature_a", "sparse_feature_b"], hash_bucket_size=10000)
		price_buckets = bucketized_column(
		    source_column=numeric_column("price"), boundaries=[...])
		
		columns = [crosses_a_x_b, price_buckets]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		transformed = transform_features(features=features, feature_columns=columns)
		
		assertCountEqual(columns, transformed.keys())
		```
		
		Args:
		  features: A mapping from key to tensors. `FeatureColumn`s look up via these
		    keys. For example `numeric_column('price')` will look at 'price' key in
		    this dict. Values can be a `SparseTensor` or a `Tensor` depends on
		    corresponding `FeatureColumn`.
		  feature_columns: An iterable containing all the `FeatureColumn`s.
		  state_manager: A StateManager object that holds the FeatureColumn state.
		
		Returns:
		  A `dict` mapping `FeatureColumn` to `Tensor` and `SparseTensor` values.
	**/
	static public function _transform_features_v2(features:Dynamic, feature_columns:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Verify equality between static batch sizes.
		
		Args:
		  tensors: iterable of input tensors.
		  columns: Corresponding feature columns.
		
		Raises:
		  ValueError: in case of mismatched batch sizes.
	**/
	static public function _verify_static_batch_size_equality(tensors:Dynamic, columns:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Represents discretized dense input bucketed by `boundaries`.
		
		Buckets include the left boundary, and exclude the right boundary. Namely,
		`boundaries=[0., 1., 2.]` generates buckets `(-inf, 0.)`, `[0., 1.)`,
		`[1., 2.)`, and `[2., +inf)`.
		
		For example, if the inputs are
		
		```python
		boundaries = [0, 10, 100]
		input tensor = [[-5, 10000]
		                [150,   10]
		                [5,    100]]
		```
		
		then the output will be
		
		```python
		output = [[0, 3]
		          [3, 2]
		          [1, 3]]
		```
		
		Example:
		
		```python
		price = tf.feature_column.numeric_column('price')
		bucketized_price = tf.feature_column.bucketized_column(
		    price, boundaries=[...])
		columns = [bucketized_price, ...]
		features = tf.io.parse_example(
		    ..., features=tf.feature_column.make_parse_example_spec(columns))
		dense_tensor = tf.keras.layers.DenseFeatures(columns)(features)
		```
		
		A `bucketized_column` can also be crossed with another categorical column
		using `crossed_column`:
		
		```python
		price = tf.feature_column.numeric_column('price')
		# bucketized_column converts numerical feature to a categorical one.
		bucketized_price = tf.feature_column.bucketized_column(
		    price, boundaries=[...])
		# 'keywords' is a string feature.
		price_x_keywords = tf.feature_column.crossed_column(
		    [bucketized_price, 'keywords'], 50K)
		columns = [price_x_keywords, ...]
		features = tf.io.parse_example(
		    ..., features=tf.feature_column.make_parse_example_spec(columns))
		dense_tensor = tf.keras.layers.DenseFeatures(columns)(features)
		linear_model = tf.keras.experimental.LinearModel(units=...)(dense_tensor)
		```
		
		Args:
		  source_column: A one-dimensional dense column which is generated with
		    `numeric_column`.
		  boundaries: A sorted list or tuple of floats specifying the boundaries.
		
		Returns:
		  A `BucketizedColumn`.
		
		Raises:
		  ValueError: If `source_column` is not a numeric column, or if it is not
		    one-dimensional.
		  ValueError: If `boundaries` is not a sorted list or tuple.
	**/
	static public function bucketized_column(source_column:Dynamic, boundaries:Dynamic):Dynamic;
	/**
		Represents sparse feature where ids are set by hashing.
		
		Use this when your sparse features are in string or integer format, and you
		want to distribute your inputs into a finite number of buckets by hashing.
		output_id = Hash(input_feature_string) % bucket_size for string type input.
		For int type input, the value is converted to its string representation first
		and then hashed by the same formula.
		
		For input dictionary `features`, `features[key]` is either `Tensor` or
		`SparseTensor`. If `Tensor`, missing values can be represented by `-1` for int
		and `''` for string, which will be dropped by this feature column.
		
		Example:
		
		```python
		import tensorflow as tf
		keywords = tf.feature_column.categorical_column_with_hash_bucket("keywords",
		10000)
		columns = [keywords]
		features = {'keywords': tf.constant([['Tensorflow', 'Keras', 'RNN', 'LSTM',
		'CNN'], ['LSTM', 'CNN', 'Tensorflow', 'Keras', 'RNN'], ['CNN', 'Tensorflow',
		'LSTM', 'Keras', 'RNN']])}
		linear_prediction, _, _ = tf.compat.v1.feature_column.linear_model(features,
		columns)
		
		# or
		import tensorflow as tf
		keywords = tf.feature_column.categorical_column_with_hash_bucket("keywords",
		10000)
		keywords_embedded = tf.feature_column.embedding_column(keywords, 16)
		columns = [keywords_embedded]
		features = {'keywords': tf.constant([['Tensorflow', 'Keras', 'RNN', 'LSTM',
		'CNN'], ['LSTM', 'CNN', 'Tensorflow', 'Keras', 'RNN'], ['CNN', 'Tensorflow',
		'LSTM', 'Keras', 'RNN']])}
		input_layer = tf.keras.layers.DenseFeatures(columns)
		dense_tensor = input_layer(features)
		```
		
		Args:
		  key: A unique string identifying the input feature. It is used as the
		    column name and the dictionary key for feature parsing configs, feature
		    `Tensor` objects, and feature columns.
		  hash_bucket_size: An int > 1. The number of buckets.
		  dtype: The type of features. Only string and integer types are supported.
		
		Returns:
		  A `HashedCategoricalColumn`.
		
		Raises:
		  ValueError: `hash_bucket_size` is not greater than 1.
		  ValueError: `dtype` is neither string nor integer.
	**/
	static public function categorical_column_with_hash_bucket(key:Dynamic, hash_bucket_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		A `CategoricalColumn` that returns identity values.
		
		Use this when your inputs are integers in the range `[0, num_buckets)`, and
		you want to use the input value itself as the categorical ID. Values outside
		this range will result in `default_value` if specified, otherwise it will
		fail.
		
		Typically, this is used for contiguous ranges of integer indexes, but
		it doesn't have to be. This might be inefficient, however, if many of IDs
		are unused. Consider `categorical_column_with_hash_bucket` in that case.
		
		For input dictionary `features`, `features[key]` is either `Tensor` or
		`SparseTensor`. If `Tensor`, missing values can be represented by `-1` for int
		and `''` for string, which will be dropped by this feature column.
		
		In the following examples, each input in the range `[0, 1000000)` is assigned
		the same value. All other inputs are assigned `default_value` 0. Note that a
		literal 0 in inputs will result in the same default ID.
		
		Linear model:
		
		```python
		import tensorflow as tf
		video_id = tf.feature_column.categorical_column_with_identity(
		    key='video_id', num_buckets=1000000, default_value=0)
		columns = [video_id]
		features = {'video_id': tf.sparse.from_dense([[2, 85, 0, 0, 0],
		[33,78, 2, 73, 1]])}
		linear_prediction = tf.compat.v1.feature_column.linear_model(features,
		columns)
		```
		
		Embedding for a DNN model:
		
		```python
		import tensorflow as tf
		video_id = tf.feature_column.categorical_column_with_identity(
		    key='video_id', num_buckets=1000000, default_value=0)
		columns = [tf.feature_column.embedding_column(video_id, 9)]
		features = {'video_id': tf.sparse.from_dense([[2, 85, 0, 0, 0],
		[33,78, 2, 73, 1]])}
		input_layer = tf.keras.layers.DenseFeatures(columns)
		dense_tensor = input_layer(features)
		```
		
		Args:
		  key: A unique string identifying the input feature. It is used as the
		    column name and the dictionary key for feature parsing configs, feature
		    `Tensor` objects, and feature columns.
		  num_buckets: Range of inputs and outputs is `[0, num_buckets)`.
		  default_value: If set, values outside of range `[0, num_buckets)` will
		    be replaced with this value. If not set, values >= num_buckets will
		    cause a failure while values < 0 will be dropped.
		
		Returns:
		  A `CategoricalColumn` that returns identity values.
		
		Raises:
		  ValueError: if `num_buckets` is less than one.
		  ValueError: if `default_value` is not in range `[0, num_buckets)`.
	**/
	static public function categorical_column_with_identity(key:Dynamic, num_buckets:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		A `CategoricalColumn` with a vocabulary file.
		
		Use this when your inputs are in string or integer format, and you have a
		vocabulary file that maps each value to an integer ID. By default,
		out-of-vocabulary values are ignored. Use either (but not both) of
		`num_oov_buckets` and `default_value` to specify how to include
		out-of-vocabulary values.
		
		For input dictionary `features`, `features[key]` is either `Tensor` or
		`SparseTensor`. If `Tensor`, missing values can be represented by `-1` for int
		and `''` for string, which will be dropped by this feature column.
		
		Example with `num_oov_buckets`:
		File '/us/states.txt' contains 50 lines, each with a 2-character U.S. state
		abbreviation. All inputs with values in that file are assigned an ID 0-49,
		corresponding to its line number. All other values are hashed and assigned an
		ID 50-54.
		
		```python
		import tensorflow as tf
		states = tf.feature_column.categorical_column_with_vocabulary_file(
		  key='states', vocabulary_file='states.txt', vocabulary_size=5,
		  num_oov_buckets=1)
		columns = [states]
		features = {'states':tf.constant([['california', 'georgia', 'michigan',
		'texas', 'new york'], ['new york', 'georgia', 'california', 'michigan',
		'texas']])}
		linear_prediction = tf.compat.v1.feature_column.linear_model(features,
		columns)
		```
		
		Example with `default_value`:
		File '/us/states.txt' contains 51 lines - the first line is 'XX', and the
		other 50 each have a 2-character U.S. state abbreviation. Both a literal 'XX'
		in input, and other values missing from the file, will be assigned ID 0. All
		others are assigned the corresponding line number 1-50.
		
		```python
		import tensorflow as tf
		states = tf.feature_column.categorical_column_with_vocabulary_file(
		  key='states', vocabulary_file='states.txt', vocabulary_size=6,
		  default_value=0)
		columns = [states]
		features = {'states':tf.constant([['california', 'georgia', 'michigan',
		'texas', 'new york'], ['new york', 'georgia', 'california', 'michigan',
		'texas']])}
		linear_prediction = tf.compat.v1.feature_column.linear_model(features,
		columns)
		```
		
		And to make an embedding with either:
		
		```python
		import tensorflow as tf
		states = tf.feature_column.categorical_column_with_vocabulary_file(
		  key='states', vocabulary_file='states.txt', vocabulary_size=5,
		  num_oov_buckets=1)
		columns = [tf.feature_column.embedding_column(states, 3)]
		features = {'states':tf.constant([['california', 'georgia', 'michigan',
		'texas', 'new york'], ['new york', 'georgia', 'california', 'michigan',
		'texas']])}
		input_layer = tf.keras.layers.DenseFeatures(columns)
		dense_tensor = input_layer(features)
		```
		
		Args:
		  key: A unique string identifying the input feature. It is used as the
		    column name and the dictionary key for feature parsing configs, feature
		    `Tensor` objects, and feature columns.
		  vocabulary_file: The vocabulary file name.
		  vocabulary_size: Number of the elements in the vocabulary. This must be no
		    greater than length of `vocabulary_file`, if less than length, later
		    values are ignored. If None, it is set to the length of `vocabulary_file`.
		  num_oov_buckets: Non-negative integer, the number of out-of-vocabulary
		    buckets. All out-of-vocabulary inputs will be assigned IDs in the range
		    `[vocabulary_size, vocabulary_size+num_oov_buckets)` based on a hash of
		    the input value. A positive `num_oov_buckets` can not be specified with
		    `default_value`.
		  default_value: The integer ID value to return for out-of-vocabulary feature
		    values, defaults to `-1`. This can not be specified with a positive
		    `num_oov_buckets`.
		  dtype: The type of features. Only string and integer types are supported.
		
		Returns:
		  A `CategoricalColumn` with a vocabulary file.
		
		Raises:
		  ValueError: `vocabulary_file` is missing or cannot be opened.
		  ValueError: `vocabulary_size` is missing or < 1.
		  ValueError: `num_oov_buckets` is a negative integer.
		  ValueError: `num_oov_buckets` and `default_value` are both specified.
		  ValueError: `dtype` is neither string nor integer.
	**/
	static public function categorical_column_with_vocabulary_file(key:Dynamic, vocabulary_file:Dynamic, ?vocabulary_size:Dynamic, ?num_oov_buckets:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		A `CategoricalColumn` with a vocabulary file.
		
		Use this when your inputs are in string or integer format, and you have a
		vocabulary file that maps each value to an integer ID. By default,
		out-of-vocabulary values are ignored. Use either (but not both) of
		`num_oov_buckets` and `default_value` to specify how to include
		out-of-vocabulary values.
		
		For input dictionary `features`, `features[key]` is either `Tensor` or
		`SparseTensor`. If `Tensor`, missing values can be represented by `-1` for int
		and `''` for string, which will be dropped by this feature column.
		
		Example with `num_oov_buckets`:
		File `'/us/states.txt'` contains 50 lines, each with a 2-character U.S. state
		abbreviation. All inputs with values in that file are assigned an ID 0-49,
		corresponding to its line number. All other values are hashed and assigned an
		ID 50-54.
		
		```python
		states = categorical_column_with_vocabulary_file(
		    key='states', vocabulary_file='/us/states.txt', vocabulary_size=50,
		    num_oov_buckets=5)
		columns = [states, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction = linear_model(features, columns)
		```
		
		Example with `default_value`:
		File `'/us/states.txt'` contains 51 lines - the first line is `'XX'`, and the
		other 50 each have a 2-character U.S. state abbreviation. Both a literal
		`'XX'` in input, and other values missing from the file, will be assigned
		ID 0. All others are assigned the corresponding line number 1-50.
		
		```python
		states = categorical_column_with_vocabulary_file(
		    key='states', vocabulary_file='/us/states.txt', vocabulary_size=51,
		    default_value=0)
		columns = [states, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction, _, _ = linear_model(features, columns)
		```
		
		And to make an embedding with either:
		
		```python
		columns = [embedding_column(states, 3),...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		dense_tensor = input_layer(features, columns)
		```
		
		Args:
		  key: A unique string identifying the input feature. It is used as the
		    column name and the dictionary key for feature parsing configs, feature
		    `Tensor` objects, and feature columns.
		  vocabulary_file: The vocabulary file name.
		  vocabulary_size: Number of the elements in the vocabulary. This must be no
		    greater than length of `vocabulary_file`, if less than length, later
		    values are ignored. If None, it is set to the length of `vocabulary_file`.
		  dtype: The type of features. Only string and integer types are supported.
		  default_value: The integer ID value to return for out-of-vocabulary feature
		    values, defaults to `-1`. This can not be specified with a positive
		    `num_oov_buckets`.
		  num_oov_buckets: Non-negative integer, the number of out-of-vocabulary
		    buckets. All out-of-vocabulary inputs will be assigned IDs in the range
		    `[vocabulary_size, vocabulary_size+num_oov_buckets)` based on a hash of
		    the input value. A positive `num_oov_buckets` can not be specified with
		    `default_value`.
		  file_format: The format of the vocabulary file. The format is 'text' by
		    default unless `vocabulary_file` is a string which ends in 'tfrecord.gz'.
		    Accepted alternative value for `file_format` is 'tfrecord_gzip'.
		
		Returns:
		  A `CategoricalColumn` with a vocabulary file.
		
		Raises:
		  ValueError: `vocabulary_file` is missing or cannot be opened.
		  ValueError: `vocabulary_size` is missing or < 1.
		  ValueError: `num_oov_buckets` is a negative integer.
		  ValueError: `num_oov_buckets` and `default_value` are both specified.
		  ValueError: `dtype` is neither string nor integer.
	**/
	static public function categorical_column_with_vocabulary_file_v2(key:Dynamic, vocabulary_file:Dynamic, ?vocabulary_size:Dynamic, ?dtype:Dynamic, ?default_value:Dynamic, ?num_oov_buckets:Dynamic, ?file_format:Dynamic):Dynamic;
	/**
		A `CategoricalColumn` with in-memory vocabulary.
		
		Use this when your inputs are in string or integer format, and you have an
		in-memory vocabulary mapping each value to an integer ID. By default,
		out-of-vocabulary values are ignored. Use either (but not both) of
		`num_oov_buckets` and `default_value` to specify how to include
		out-of-vocabulary values.
		
		For input dictionary `features`, `features[key]` is either `Tensor` or
		`SparseTensor`. If `Tensor`, missing values can be represented by `-1` for int
		and `''` for string, which will be dropped by this feature column.
		
		Example with `num_oov_buckets`:
		In the following example, each input in `vocabulary_list` is assigned an ID
		0-3 corresponding to its index (e.g., input 'B' produces output 2). All other
		inputs are hashed and assigned an ID 4-5.
		
		```python
		colors = categorical_column_with_vocabulary_list(
		    key='colors', vocabulary_list=('R', 'G', 'B', 'Y'),
		    num_oov_buckets=2)
		columns = [colors, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction, _, _ = linear_model(features, columns)
		```
		
		Example with `default_value`:
		In the following example, each input in `vocabulary_list` is assigned an ID
		0-4 corresponding to its index (e.g., input 'B' produces output 3). All other
		inputs are assigned `default_value` 0.
		
		
		```python
		colors = categorical_column_with_vocabulary_list(
		    key='colors', vocabulary_list=('X', 'R', 'G', 'B', 'Y'), default_value=0)
		columns = [colors, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction, _, _ = linear_model(features, columns)
		```
		
		And to make an embedding with either:
		
		```python
		columns = [embedding_column(colors, 3),...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		dense_tensor = input_layer(features, columns)
		```
		
		Args:
		  key: A unique string identifying the input feature. It is used as the column
		    name and the dictionary key for feature parsing configs, feature `Tensor`
		    objects, and feature columns.
		  vocabulary_list: An ordered iterable defining the vocabulary. Each feature
		    is mapped to the index of its value (if present) in `vocabulary_list`.
		    Must be castable to `dtype`.
		  dtype: The type of features. Only string and integer types are supported. If
		    `None`, it will be inferred from `vocabulary_list`.
		  default_value: The integer ID value to return for out-of-vocabulary feature
		    values, defaults to `-1`. This can not be specified with a positive
		    `num_oov_buckets`.
		  num_oov_buckets: Non-negative integer, the number of out-of-vocabulary
		    buckets. All out-of-vocabulary inputs will be assigned IDs in the range
		    `[len(vocabulary_list), len(vocabulary_list)+num_oov_buckets)` based on a
		    hash of the input value. A positive `num_oov_buckets` can not be specified
		    with `default_value`.
		
		Returns:
		  A `CategoricalColumn` with in-memory vocabulary.
		
		Raises:
		  ValueError: if `vocabulary_list` is empty, or contains duplicate keys.
		  ValueError: `num_oov_buckets` is a negative integer.
		  ValueError: `num_oov_buckets` and `default_value` are both specified.
		  ValueError: if `dtype` is not integer or string.
	**/
	static public function categorical_column_with_vocabulary_list(key:Dynamic, vocabulary_list:Dynamic, ?dtype:Dynamic, ?default_value:Dynamic, ?num_oov_buckets:Dynamic):Dynamic;
	/**
		Returns a column for performing crosses of categorical features.
		
		Crossed features will be hashed according to `hash_bucket_size`. Conceptually,
		the transformation can be thought of as:
		  Hash(cartesian product of features) % `hash_bucket_size`
		
		For example, if the input features are:
		
		* SparseTensor referred by first key:
		
		  ```python
		  shape = [2, 2]
		  {
		      [0, 0]: "a"
		      [1, 0]: "b"
		      [1, 1]: "c"
		  }
		  ```
		
		* SparseTensor referred by second key:
		
		  ```python
		  shape = [2, 1]
		  {
		      [0, 0]: "d"
		      [1, 0]: "e"
		  }
		  ```
		
		then crossed feature will look like:
		
		```python
		 shape = [2, 2]
		{
		    [0, 0]: Hash64("d", Hash64("a")) % hash_bucket_size
		    [1, 0]: Hash64("e", Hash64("b")) % hash_bucket_size
		    [1, 1]: Hash64("e", Hash64("c")) % hash_bucket_size
		}
		```
		
		Here is an example to create a linear model with crosses of string features:
		
		```python
		keywords_x_doc_terms = crossed_column(['keywords', 'doc_terms'], 50K)
		columns = [keywords_x_doc_terms, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction = linear_model(features, columns)
		```
		
		You could also use vocabulary lookup before crossing:
		
		```python
		keywords = categorical_column_with_vocabulary_file(
		    'keywords', '/path/to/vocabulary/file', vocabulary_size=1K)
		keywords_x_doc_terms = crossed_column([keywords, 'doc_terms'], 50K)
		columns = [keywords_x_doc_terms, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction = linear_model(features, columns)
		```
		
		If an input feature is of numeric type, you can use
		`categorical_column_with_identity`, or `bucketized_column`, as in the example:
		
		```python
		# vertical_id is an integer categorical feature.
		vertical_id = categorical_column_with_identity('vertical_id', 10K)
		price = numeric_column('price')
		# bucketized_column converts numerical feature to a categorical one.
		bucketized_price = bucketized_column(price, boundaries=[...])
		vertical_id_x_price = crossed_column([vertical_id, bucketized_price], 50K)
		columns = [vertical_id_x_price, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction = linear_model(features, columns)
		```
		
		To use crossed column in DNN model, you need to add it in an embedding column
		as in this example:
		
		```python
		vertical_id_x_price = crossed_column([vertical_id, bucketized_price], 50K)
		vertical_id_x_price_embedded = embedding_column(vertical_id_x_price, 10)
		dense_tensor = input_layer(features, [vertical_id_x_price_embedded, ...])
		```
		
		Args:
		  keys: An iterable identifying the features to be crossed. Each element can
		    be either:
		    * string: Will use the corresponding feature which must be of string type.
		    * `CategoricalColumn`: Will use the transformed tensor produced by this
		      column. Does not support hashed categorical column.
		  hash_bucket_size: An int > 1. The number of buckets.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseCrossOp (optional).
		
		Returns:
		  A `CrossedColumn`.
		
		Raises:
		  ValueError: If `len(keys) < 2`.
		  ValueError: If any of the keys is neither a string nor `CategoricalColumn`.
		  ValueError: If any of the keys is `HashedCategoricalColumn`.
		  ValueError: If `hash_bucket_size < 1`.
	**/
	static public function crossed_column(keys:Dynamic, hash_bucket_size:Dynamic, ?hash_key:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		`DenseColumn` that converts from sparse, categorical input.
		
		Use this when your inputs are sparse, but you want to convert them to a dense
		representation (e.g., to feed to a DNN).
		
		Inputs must be a `CategoricalColumn` created by any of the
		`categorical_column_*` function. Here is an example of using
		`embedding_column` with `DNNClassifier`:
		
		```python
		video_id = categorical_column_with_identity(
		    key='video_id', num_buckets=1000000, default_value=0)
		columns = [embedding_column(video_id, 9),...]
		
		estimator = tf.estimator.DNNClassifier(feature_columns=columns, ...)
		
		label_column = ...
		def input_fn():
		  features = tf.io.parse_example(
		      ..., features=make_parse_example_spec(columns + [label_column]))
		  labels = features.pop(label_column.name)
		  return features, labels
		
		estimator.train(input_fn=input_fn, steps=100)
		```
		
		Here is an example using `embedding_column` with model_fn:
		
		```python
		def model_fn(features, ...):
		  video_id = categorical_column_with_identity(
		      key='video_id', num_buckets=1000000, default_value=0)
		  columns = [embedding_column(video_id, 9),...]
		  dense_tensor = input_layer(features, columns)
		  # Form DNN layers, calculate loss, and return EstimatorSpec.
		  ...
		```
		
		Args:
		  categorical_column: A `CategoricalColumn` created by a
		    `categorical_column_with_*` function. This column produces the sparse IDs
		    that are inputs to the embedding lookup.
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries in
		    a single row. Currently 'mean', 'sqrtn' and 'sum' are supported, with
		    'mean' the default. 'sqrtn' often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column. For more information, see
		    `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `truncated_normal_initializer` with mean `0.0` and
		    standard deviation `1/sqrt(dimension)`.
		  ckpt_to_load_from: String representing checkpoint name/pattern from which to
		    restore column weights. Required if `tensor_name_in_ckpt` is not `None`.
		  tensor_name_in_ckpt: Name of the `Tensor` in `ckpt_to_load_from` from which
		    to restore the column weights. Required if `ckpt_to_load_from` is not
		    `None`.
		  max_norm: If not `None`, embedding values are l2-normalized to this value.
		  trainable: Whether or not the embedding is trainable. Default is True.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  `DenseColumn` that converts from sparse input.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if exactly one of `ckpt_to_load_from` and `tensor_name_in_ckpt`
		    is specified.
		  ValueError: if `initializer` is specified and is not callable.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function embedding_column(categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Represents multi-hot representation of given categorical column.
		
		- For DNN model, `indicator_column` can be used to wrap any
		  `categorical_column_*` (e.g., to feed to DNN). Consider to Use
		  `embedding_column` if the number of buckets/unique(values) are large.
		
		- For Wide (aka linear) model, `indicator_column` is the internal
		  representation for categorical column when passing categorical column
		  directly (as any element in feature_columns) to `linear_model`. See
		  `linear_model` for details.
		
		```python
		name = indicator_column(categorical_column_with_vocabulary_list(
		    'name', ['bob', 'george', 'wanda']))
		columns = [name, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		dense_tensor = input_layer(features, columns)
		
		dense_tensor == [[1, 0, 0]]  # If "name" bytes_list is ["bob"]
		dense_tensor == [[1, 0, 1]]  # If "name" bytes_list is ["bob", "wanda"]
		dense_tensor == [[2, 0, 0]]  # If "name" bytes_list is ["bob", "bob"]
		```
		
		Args:
		  categorical_column: A `CategoricalColumn` which is created by
		    `categorical_column_with_*` or `crossed_column` functions.
		
		Returns:
		  An `IndicatorColumn`.
		
		Raises:
		  ValueError: If `categorical_column` is not CategoricalColumn type.
	**/
	static public function indicator_column(categorical_column:Dynamic):Dynamic;
	/**
		Returns True if all feature columns are V2.
	**/
	static public function is_feature_column_v2(feature_columns:Dynamic):Dynamic;
	/**
		Creates parsing spec dictionary from input feature_columns.
		
		The returned dictionary can be used as arg 'features' in
		`tf.io.parse_example`.
		
		Typical usage example:
		
		```python
		# Define features and transformations
		feature_a = tf.feature_column.categorical_column_with_vocabulary_file(...)
		feature_b = tf.feature_column.numeric_column(...)
		feature_c_bucketized = tf.feature_column.bucketized_column(
		    tf.feature_column.numeric_column("feature_c"), ...)
		feature_a_x_feature_c = tf.feature_column.crossed_column(
		    columns=["feature_a", feature_c_bucketized], ...)
		
		feature_columns = set(
		    [feature_b, feature_c_bucketized, feature_a_x_feature_c])
		features = tf.io.parse_example(
		    serialized=serialized_examples,
		    features=tf.feature_column.make_parse_example_spec(feature_columns))
		```
		
		For the above example, make_parse_example_spec would return the dict:
		
		```python
		{
		    "feature_a": parsing_ops.VarLenFeature(tf.string),
		    "feature_b": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		    "feature_c": parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		}
		```
		
		Args:
		  feature_columns: An iterable containing all feature columns. All items
		    should be instances of classes derived from `FeatureColumn`.
		
		Returns:
		  A dict mapping each feature key to a `FixedLenFeature` or `VarLenFeature`
		  value.
		
		Raises:
		  ValueError: If any of the given `feature_columns` is not a `FeatureColumn`
		    instance.
	**/
	static public function make_parse_example_spec_v2(feature_columns:Dynamic):Dynamic;
	/**
		Represents real valued or numerical features.
		
		Example:
		
		Assume we have data with two features `a` and `b`.
		
		>>> data = {'a': [15, 9, 17, 19, 21, 18, 25, 30],
		...    'b': [5.0, 6.4, 10.5, 13.6, 15.7, 19.9, 20.3 , 0.0]}
		
		Let us represent the features `a` and `b` as numerical features.
		
		>>> a = tf.feature_column.numeric_column('a')
		>>> b = tf.feature_column.numeric_column('b')
		
		Feature column describe a set of transformations to the inputs.
		
		For example, to "bucketize" feature `a`, wrap the `a` column in a
		`feature_column.bucketized_column`.
		Providing `5` bucket boundaries, the bucketized_column api
		will bucket this feature in total of `6` buckets.
		
		>>> a_buckets = tf.feature_column.bucketized_column(a,
		...    boundaries=[10, 15, 20, 25, 30])
		
		Create a `DenseFeatures` layer which will apply the transformations
		described by the set of `tf.feature_column` objects:
		
		>>> feature_layer = tf.keras.layers.DenseFeatures([a_buckets, b])
		>>> print(feature_layer(data))
		tf.Tensor(
		[[ 0.   0.   1.   0.   0.   0.   5. ]
		 [ 1.   0.   0.   0.   0.   0.   6.4]
		 [ 0.   0.   1.   0.   0.   0.  10.5]
		 [ 0.   0.   1.   0.   0.   0.  13.6]
		 [ 0.   0.   0.   1.   0.   0.  15.7]
		 [ 0.   0.   1.   0.   0.   0.  19.9]
		 [ 0.   0.   0.   0.   1.   0.  20.3]
		 [ 0.   0.   0.   0.   0.   1.   0. ]], shape=(8, 7), dtype=float32)
		
		Args:
		  key: A unique string identifying the input feature. It is used as the
		    column name and the dictionary key for feature parsing configs, feature
		    `Tensor` objects, and feature columns.
		  shape: An iterable of integers specifies the shape of the `Tensor`. An
		    integer can be given which means a single dimension `Tensor` with given
		    width. The `Tensor` representing the column will have the shape of
		    [batch_size] + `shape`.
		  default_value: A single value compatible with `dtype` or an iterable of
		    values compatible with `dtype` which the column takes on during
		    `tf.Example` parsing if data is missing. A default value of `None` will
		    cause `tf.io.parse_example` to fail if an example does not contain this
		    column. If a single value is provided, the same value will be applied as
		    the default value for every item. If an iterable of values is provided,
		    the shape of the `default_value` should be equal to the given `shape`.
		  dtype: defines the type of values. Default value is `tf.float32`. Must be a
		    non-quantized, real integer or floating point type.
		  normalizer_fn: If not `None`, a function that can be used to normalize the
		    value of the tensor after `default_value` is applied for parsing.
		    Normalizer function takes the input `Tensor` as its argument, and returns
		    the output `Tensor`. (e.g. lambda x: (x - 3.0) / 4.2). Please note that
		    even though the most common use case of this function is normalization, it
		    can be used for any kind of Tensorflow transformations.
		
		Returns:
		  A `NumericColumn`.
		
		Raises:
		  TypeError: if any dimension in shape is not an int
		  ValueError: if any dimension in shape is not a positive integer
		  TypeError: if `default_value` is an iterable but not compatible with `shape`
		  TypeError: if `default_value` is not compatible with `dtype`.
		  ValueError: if `dtype` is not convertible to `tf.float32`.
	**/
	static public function numeric_column(key:Dynamic, ?shape:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic, ?normalizer_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		List of dense columns that convert from sparse, categorical input.
		
		This is similar to `embedding_column`, except that it produces a list of
		embedding columns that share the same embedding weights.
		
		Use this when your inputs are sparse and of the same type (e.g. watched and
		impression video IDs that share the same vocabulary), and you want to convert
		them to a dense representation (e.g., to feed to a DNN).
		
		Inputs must be a list of categorical columns created by any of the
		`categorical_column_*` function. They must all be of the same type and have
		the same arguments except `key`. E.g. they can be
		categorical_column_with_vocabulary_file with the same vocabulary_file. Some or
		all columns could also be weighted_categorical_column.
		
		Here is an example embedding of two features for a DNNClassifier model:
		
		```python
		watched_video_id = categorical_column_with_vocabulary_file(
		    'watched_video_id', video_vocabulary_file, video_vocabulary_size)
		impression_video_id = categorical_column_with_vocabulary_file(
		    'impression_video_id', video_vocabulary_file, video_vocabulary_size)
		columns = shared_embedding_columns(
		    [watched_video_id, impression_video_id], dimension=10)
		
		estimator = tf.estimator.DNNClassifier(feature_columns=columns, ...)
		
		label_column = ...
		def input_fn():
		  features = tf.io.parse_example(
		      ..., features=make_parse_example_spec(columns + [label_column]))
		  labels = features.pop(label_column.name)
		  return features, labels
		
		estimator.train(input_fn=input_fn, steps=100)
		```
		
		Here is an example using `shared_embedding_columns` with model_fn:
		
		```python
		def model_fn(features, ...):
		  watched_video_id = categorical_column_with_vocabulary_file(
		      'watched_video_id', video_vocabulary_file, video_vocabulary_size)
		  impression_video_id = categorical_column_with_vocabulary_file(
		      'impression_video_id', video_vocabulary_file, video_vocabulary_size)
		  columns = shared_embedding_columns(
		      [watched_video_id, impression_video_id], dimension=10)
		  dense_tensor = input_layer(features, columns)
		  # Form DNN layers, calculate loss, and return EstimatorSpec.
		  ...
		```
		
		Args:
		  categorical_columns: List of categorical columns created by a
		    `categorical_column_with_*` function. These columns produce the sparse IDs
		    that are inputs to the embedding lookup. All columns must be of the same
		    type and have the same arguments except `key`. E.g. they can be
		    categorical_column_with_vocabulary_file with the same vocabulary_file.
		    Some or all columns could also be weighted_categorical_column.
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries in
		    a single row. Currently 'mean', 'sqrtn' and 'sum' are supported, with
		    'mean' the default. 'sqrtn' often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column. For more information, see
		    `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `truncated_normal_initializer` with mean `0.0` and
		    standard deviation `1/sqrt(dimension)`.
		  shared_embedding_collection_name: Optional name of the collection where
		    shared embedding weights are added. If not given, a reasonable name will
		    be chosen based on the names of `categorical_columns`. This is also used
		    in `variable_scope` when creating shared embedding weights.
		  ckpt_to_load_from: String representing checkpoint name/pattern from which to
		    restore column weights. Required if `tensor_name_in_ckpt` is not `None`.
		  tensor_name_in_ckpt: Name of the `Tensor` in `ckpt_to_load_from` from which
		    to restore the column weights. Required if `ckpt_to_load_from` is not
		    `None`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value, before combining.
		  trainable: Whether or not the embedding is trainable. Default is True.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A list of dense columns that converts from sparse input. The order of
		  results follows the ordering of `categorical_columns`.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if any of the given `categorical_columns` is of different type
		    or has different arguments than the others.
		  ValueError: if exactly one of `ckpt_to_load_from` and `tensor_name_in_ckpt`
		    is specified.
		  ValueError: if `initializer` is specified and is not callable.
		  RuntimeError: if eager execution is enabled.
	**/
	static public function shared_embedding_columns(categorical_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		List of dense columns that convert from sparse, categorical input.
		
		This is similar to `embedding_column`, except that it produces a list of
		embedding columns that share the same embedding weights.
		
		Use this when your inputs are sparse and of the same type (e.g. watched and
		impression video IDs that share the same vocabulary), and you want to convert
		them to a dense representation (e.g., to feed to a DNN).
		
		Inputs must be a list of categorical columns created by any of the
		`categorical_column_*` function. They must all be of the same type and have
		the same arguments except `key`. E.g. they can be
		categorical_column_with_vocabulary_file with the same vocabulary_file. Some or
		all columns could also be weighted_categorical_column.
		
		Here is an example embedding of two features for a DNNClassifier model:
		
		```python
		watched_video_id = categorical_column_with_vocabulary_file(
		    'watched_video_id', video_vocabulary_file, video_vocabulary_size)
		impression_video_id = categorical_column_with_vocabulary_file(
		    'impression_video_id', video_vocabulary_file, video_vocabulary_size)
		columns = shared_embedding_columns(
		    [watched_video_id, impression_video_id], dimension=10)
		
		estimator = tf.estimator.DNNClassifier(feature_columns=columns, ...)
		
		label_column = ...
		def input_fn():
		  features = tf.io.parse_example(
		      ..., features=make_parse_example_spec(columns + [label_column]))
		  labels = features.pop(label_column.name)
		  return features, labels
		
		estimator.train(input_fn=input_fn, steps=100)
		```
		
		Here is an example using `shared_embedding_columns` with model_fn:
		
		```python
		def model_fn(features, ...):
		  watched_video_id = categorical_column_with_vocabulary_file(
		      'watched_video_id', video_vocabulary_file, video_vocabulary_size)
		  impression_video_id = categorical_column_with_vocabulary_file(
		      'impression_video_id', video_vocabulary_file, video_vocabulary_size)
		  columns = shared_embedding_columns(
		      [watched_video_id, impression_video_id], dimension=10)
		  dense_tensor = input_layer(features, columns)
		  # Form DNN layers, calculate loss, and return EstimatorSpec.
		  ...
		```
		
		Args:
		  categorical_columns: List of categorical columns created by a
		    `categorical_column_with_*` function. These columns produce the sparse IDs
		    that are inputs to the embedding lookup. All columns must be of the same
		    type and have the same arguments except `key`. E.g. they can be
		    categorical_column_with_vocabulary_file with the same vocabulary_file.
		    Some or all columns could also be weighted_categorical_column.
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently 'mean', 'sqrtn' and 'sum' are supported, with
		    'mean' the default. 'sqrtn' often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column. For more information, see
		    `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `truncated_normal_initializer` with mean `0.0` and standard
		    deviation `1/sqrt(dimension)`.
		  shared_embedding_collection_name: Optional collective name of these columns.
		    If not given, a reasonable name will be chosen based on the names of
		    `categorical_columns`.
		  ckpt_to_load_from: String representing checkpoint name/pattern from which to
		    restore column weights. Required if `tensor_name_in_ckpt` is not `None`.
		  tensor_name_in_ckpt: Name of the `Tensor` in `ckpt_to_load_from` from
		    which to restore the column weights. Required if `ckpt_to_load_from` is
		    not `None`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is
		    larger than this value, before combining.
		  trainable: Whether or not the embedding is trainable. Default is True.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A list of dense columns that converts from sparse input. The order of
		  results follows the ordering of `categorical_columns`.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if any of the given `categorical_columns` is of different type
		    or has different arguments than the others.
		  ValueError: if exactly one of `ckpt_to_load_from` and `tensor_name_in_ckpt`
		    is specified.
		  ValueError: if `initializer` is specified and is not callable.
		  RuntimeError: if eager execution is enabled.
	**/
	static public function shared_embedding_columns_v2(categorical_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies weight values to a `CategoricalColumn`.
		
		Use this when each of your sparse inputs has both an ID and a value. For
		example, if you're representing text documents as a collection of word
		frequencies, you can provide 2 parallel sparse input features ('terms' and
		'frequencies' below).
		
		Example:
		
		Input `tf.Example` objects:
		
		```proto
		[
		  features {
		    feature {
		      key: "terms"
		      value {bytes_list {value: "very" value: "model"}}
		    }
		    feature {
		      key: "frequencies"
		      value {float_list {value: 0.3 value: 0.1}}
		    }
		  },
		  features {
		    feature {
		      key: "terms"
		      value {bytes_list {value: "when" value: "course" value: "human"}}
		    }
		    feature {
		      key: "frequencies"
		      value {float_list {value: 0.4 value: 0.1 value: 0.2}}
		    }
		  }
		]
		```
		
		```python
		categorical_column = categorical_column_with_hash_bucket(
		    column_name='terms', hash_bucket_size=1000)
		weighted_column = weighted_categorical_column(
		    categorical_column=categorical_column, weight_feature_key='frequencies')
		columns = [weighted_column, ...]
		features = tf.io.parse_example(..., features=make_parse_example_spec(columns))
		linear_prediction, _, _ = linear_model(features, columns)
		```
		
		This assumes the input dictionary contains a `SparseTensor` for key
		'terms', and a `SparseTensor` for key 'frequencies'. These 2 tensors must have
		the same indices and dense shape.
		
		Args:
		  categorical_column: A `CategoricalColumn` created by
		    `categorical_column_with_*` functions.
		  weight_feature_key: String key for weight values.
		  dtype: Type of weights, such as `tf.float32`. Only float and integer weights
		    are supported.
		
		Returns:
		  A `CategoricalColumn` composed of two sparse features: one represents id,
		  the other represents weight (value) of the id feature in that example.
		
		Raises:
		  ValueError: if `dtype` is not convertible to float.
	**/
	static public function weighted_categorical_column(categorical_column:Dynamic, weight_feature_key:Dynamic, ?dtype:Dynamic):Dynamic;
}