/* This file is generated, do not edit! */
package tensorflow.compat.v1.tpu.experimental;
@:pythonImport("tensorflow.compat.v1.tpu.experimental") extern class Experimental_Module {
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
		TPU version of `tf.compat.v1.feature_column.embedding_column`.
		
		Note that the interface for `tf.tpu.experimental.embedding_column` is
		different from that of `tf.compat.v1.feature_column.embedding_column`: The
		following arguments are NOT supported: `ckpt_to_load_from`,
		`tensor_name_in_ckpt`, `max_norm` and `trainable`.
		
		Use this function in place of `tf.compat.v1.feature_column.embedding_column`
		when you want to use the TPU to accelerate your embedding lookups via TPU
		embeddings.
		
		```
		column = tf.feature_column.categorical_column_with_identity(...)
		tpu_column = tf.tpu.experimental.embedding_column(column, 10)
		...
		def model_fn(features):
		  dense_feature = tf.keras.layers.DenseFeature(tpu_column)
		  embedded_feature = dense_feature(features)
		  ...
		
		estimator = tf.estimator.tpu.TPUEstimator(
		    model_fn=model_fn,
		    ...
		    embedding_config_spec=tf.estimator.tpu.experimental.EmbeddingConfigSpec(
		      column=[tpu_column],
		      ...))
		```
		
		Args:
		  categorical_column: A categorical column returned from
		      `categorical_column_with_identity`, `weighted_categorical_column`,
		      `categorical_column_with_vocabulary_file`,
		      `categorical_column_with_vocabulary_list`,
		      `sequence_categorical_column_with_identity`,
		      `sequence_categorical_column_with_vocabulary_file`,
		      `sequence_categorical_column_with_vocabulary_list`
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row for a non-sequence column. For more information, see
		    `tf.feature_column.embedding_column`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.compat.v1.truncated_normal_initializer` with mean `0.0` and
		    standard deviation `1/sqrt(dimension)`.
		  max_sequence_length: An non-negative integer specifying the max sequence
		    length. Any sequence shorter then this will be padded with 0 embeddings
		    and any sequence longer will be truncated. This must be positive for
		    sequence features and 0 for non-sequence features.
		  learning_rate_fn: A function that takes global step and returns learning
		    rate for the embedding table. If you intend to use the same learning rate
		    for multiple embedding tables, please ensure that you pass the exact same
		    python function to all calls of embedding_column, otherwise performence
		    may suffer.
		  embedding_lookup_device: The device on which to run the embedding lookup.
		    Valid options are "cpu", "tpu_tensor_core", and "tpu_embedding_core".
		    If specifying "tpu_tensor_core", a tensor_core_shape must be supplied.
		    If not specified, the default behavior is embedding lookup on
		    "tpu_embedding_core" for training and "cpu" for inference.
		    Valid options for training : ["tpu_embedding_core", "tpu_tensor_core"]
		    Valid options for serving :  ["cpu", "tpu_tensor_core"]
		    For training, tpu_embedding_core is good for large embedding vocab (>1M),
		    otherwise, tpu_tensor_core is often sufficient.
		    For serving, doing embedding lookup on tpu_tensor_core during serving is
		    a way to reduce host cpu usage in cases where that is a bottleneck.
		  tensor_core_shape: If supplied, a list of integers which specifies
		    the intended dense shape to run embedding lookup for this feature on
		    TensorCore. The batch dimension can be left None or -1 to indicate
		    a dynamic shape. Only rank 2 shapes currently supported.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A  `_TPUEmbeddingColumnV2`.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if `initializer` is specified but not callable.
	**/
	static public function embedding_column(categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic, ?embedding_lookup_device:Dynamic, ?tensor_core_shape:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Initialize the TPU devices.
		
		Args:
		  cluster_resolver: A tf.distribute.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		Returns:
		  The tf.tpu.Topology object for the topology of the TPU cluster. If called
		  inside tf.function, it returns the serialized topology object instead.
		
		Raises:
		  RuntimeError: If running inside a tf.function.
		  NotFoundError: If no TPU devices found in eager mode.
	**/
	static public function initialize_tpu_system(?cluster_resolver:Dynamic):Dynamic;
	/**
		TPU version of `tf.compat.v1.feature_column.shared_embedding_columns`.
		
		Note that the interface for `tf.tpu.experimental.shared_embedding_columns` is
		different from that of `tf.compat.v1.feature_column.shared_embedding_columns`:
		The following arguments are NOT supported: `ckpt_to_load_from`,
		`tensor_name_in_ckpt`, `max_norm` and `trainable`.
		
		Use this function in place of
		tf.compat.v1.feature_column.shared_embedding_columns` when you want to use the
		TPU to accelerate your embedding lookups via TPU embeddings.
		
		```
		column_a = tf.feature_column.categorical_column_with_identity(...)
		column_b = tf.feature_column.categorical_column_with_identity(...)
		tpu_columns = tf.tpu.experimental.shared_embedding_columns(
		    [column_a, column_b], 10)
		...
		def model_fn(features):
		  dense_feature = tf.keras.layers.DenseFeature(tpu_columns)
		  embedded_feature = dense_feature(features)
		  ...
		
		estimator = tf.estimator.tpu.TPUEstimator(
		    model_fn=model_fn,
		    ...
		    embedding_config_spec=tf.estimator.tpu.experimental.EmbeddingConfigSpec(
		        column=tpu_columns,
		        ...))
		```
		
		Args:
		  categorical_columns: A list of categorical columns returned from
		    `categorical_column_with_identity`, `weighted_categorical_column`,
		    `categorical_column_with_vocabulary_file`,
		    `categorical_column_with_vocabulary_list`,
		    `sequence_categorical_column_with_identity`,
		    `sequence_categorical_column_with_vocabulary_file`,
		    `sequence_categorical_column_with_vocabulary_list`
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries in
		    a single row for a non-sequence column. For more information, see
		    `tf.feature_column.embedding_column`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean `0.0` and standard deviation
		    `1/sqrt(dimension)`.
		  shared_embedding_collection_name: Optional name of the collection where
		    shared embedding weights are added. If not given, a reasonable name will
		    be chosen based on the names of `categorical_columns`. This is also used
		    in `variable_scope` when creating shared embedding weights.
		  max_sequence_lengths: An list of non-negative integers, either None or empty
		    or the same length as the argument categorical_columns. Entries
		    corresponding to non-sequence columns must be 0 and entries corresponding
		    to sequence columns specify the max sequence length for the column. Any
		    sequence shorter then this will be padded with 0 embeddings and any
		    sequence longer will be truncated.
		  learning_rate_fn: A function that takes global step and returns learning
		    rate for the embedding table. If you intend to use the same learning rate
		    for multiple embedding tables, please ensure that you pass the exact same
		    python function to all calls of shared_embedding_columns, otherwise
		    performence may suffer.
		  embedding_lookup_device: The device on which to run the embedding lookup.
		    Valid options are "cpu", "tpu_tensor_core", and "tpu_embedding_core". If
		    specifying "tpu_tensor_core", a tensor_core_shape must be supplied.
		    Defaults to "cpu". If not specified, the default behavior is embedding
		    lookup on "tpu_embedding_core" for training and "cpu" for inference.
		    Valid options for training : ["tpu_embedding_core", "tpu_tensor_core"]
		    Valid options for serving :  ["cpu", "tpu_tensor_core"]
		    For training, tpu_embedding_core is good for large embedding vocab (>1M),
		    otherwise, tpu_tensor_core is often sufficient.
		    For serving, doing embedding lookup on tpu_tensor_core during serving is
		    a way to reduce host cpu usage in cases where that is a bottleneck.
		  tensor_core_shape: If supplied, a list of integers which specifies the
		    intended dense shape to run embedding lookup for this feature on
		    TensorCore. The batch dimension can be left None or -1 to indicate a
		    dynamic shape. Only rank 2 shapes currently supported.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A  list of `_TPUSharedEmbeddingColumnV2`.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if `initializer` is specified but not callable.
		  ValueError: if `max_sequence_lengths` is specified and not the same length
		    as `categorical_columns`.
		  ValueError: if `max_sequence_lengths` is positive for a non sequence column
		    or 0 for a sequence column.
	**/
	static public function shared_embedding_columns(categorical_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?max_sequence_lengths:Dynamic, ?learning_rate_fn:Dynamic, ?embedding_lookup_device:Dynamic, ?tensor_core_shape:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Shuts down the TPU devices.
		
		This will clear all caches, even those that are maintained through sequential
		calls to tf.tpu.experimental.initialize_tpu_system, such as the compilation
		cache.
		
		Args:
		  cluster_resolver: A tf.distribute.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		
		Raises:
		  RuntimeError: If no TPU devices found for eager execution or if run in a
		      tf.function.
	**/
	static public function shutdown_tpu_system(?cluster_resolver:Dynamic):Dynamic;
}