/* This file is generated, do not edit! */
package tensorflow.python.tpu.feature_column;
@:pythonImport("tensorflow.python.tpu.feature_column") extern class Feature_column_Module {
	static public var _DENYLISTED_CATEGORICAL_COLUMNS_V2 : Dynamic;
	static public var _SEQUENCE_FEATURE_LENGTH_POSTFIX : Dynamic;
	static public var _SUPPORTED_CATEGORICAL_COLUMNS : Dynamic;
	static public var _SUPPORTED_CATEGORICAL_COLUMNS_V2 : Dynamic;
	static public var _SUPPORTED_SEQUENCE_COLUMNS : Dynamic;
	static public var _TPU_FC_TO_SCOPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns True if the current context is CPU model.
	**/
	static public function _is_running_on_cpu():Dynamic;
	/**
		Add embedding variable name and scope to collection.
	**/
	static public function _record_variable_scope_and_name(embedding_var_name:Dynamic, embedding_var_name_in_fc:Dynamic, ?is_shared_embedding:Dynamic, ?bypass_scope_validation:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		TPU embedding_column for `tf.feature_column.embedding_column`.
		
		Note that the interface for TPU embedding_column is different from the non-TPU
		version. The following args available for the non-TPU version are NOT
		supported: ckpt_to_load_from, tensor_name_in_ckp, max_norm and trainable.
		
		Args:
		  categorical_column: A categorical_column returned from
		      categorical_column_with_identity, weighted_categorical_column,
		      categorical_column_with_vocabulary_file,
		      categorical_column_with_vocabulary_list,
		      sequence_categorical_column_with_identity,
		      sequence_categorical_column_with_vocabulary_file,
		      sequence_categorical_column_with_vocabulary_list
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
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A  _TPUEmbeddingColumn.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if `initializer` is specified but not callable.
		  TypeError: if categorical_column is not a supported type.
	**/
	static public function embedding_column(categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Gets the name of the sequence length feature from that of the base feature.
		
		Args:
		  feature_name: The feature key of a sequence column.
		
		Returns:
		  A string which is the feature key for the associated feature length column.
	**/
	static public function get_sequence_length_feature_key_name_from_feature_key_name(feature_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		List of dense columns that convert from sparse, categorical input.
		
		Note that the interface for TPU embedding_column is different from the non-TPU
		version. The following args available for the non-TPU version are NOT
		supported: ckpt_to_load_from, tensor_name_in_ckp, max_norm and trainable.
		
		Args:
		  categorical_columns: A list of categorical_columns returned from
		      categorical_column_with_identity, weighted_categorical_column,
		      categorical_column_with_vocabulary_file,
		      categorical_column_with_vocabulary_list,
		      sequence_categorical_column_with_identity,
		      sequence_categorical_column_with_vocabulary_file,
		      sequence_categorical_column_with_vocabulary_list
		  dimension: An integer specifying dimension of the embedding, must be > 0.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row for a non-sequence column. For more information, see
		    `tf.feature_column.embedding_column`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean `0.0` and standard deviation
		    `1/sqrt(dimension)`.
		  shared_embedding_collection_name: Optional name of the collection where
		    shared embedding weights are added. If not given, a reasonable name will
		    be chosen based on the names of `categorical_columns`. This is also used
		    in `variable_scope` when creating shared embedding weights.
		  max_sequence_lengths: An list of non-negative integers, either None or
		    empty or the same length as the argument categorical_columns. Entries
		    corresponding to non-sequence columns must be 0 and entries corresponding
		    to sequence columns specify the max sequence length for the column. Any
		    sequence shorter then this will be padded with 0 embeddings and any
		    sequence longer will be truncated.
		  learning_rate_fn: A function that takes global step and returns learning
		    rate for the embedding table. If you intend to use the same learning rate
		    for multiple embedding tables, please ensure that you pass the exact same
		    python function to all calls of shared_embedding_columns, otherwise
		    performence may suffer.
		  use_safe_embedding_lookup: If true, uses safe_embedding_lookup_sparse
		    instead of embedding_lookup_sparse. safe_embedding_lookup_sparse ensures
		    there are no empty rows and all weights and ids are positive at the
		    expense of extra compute cost. This only applies to rank 2 (NxM) shaped
		    input tensors. Defaults to true, consider turning off if the above checks
		    are not needed. Note that having empty rows will not trigger any error
		    though the output result might be 0 or omitted.
		
		Returns:
		  A  _TPUEmbeddingColumn.
		
		Raises:
		  ValueError: if `dimension` not > 0.
		  ValueError: if `initializer` is specified but not callable.
		  ValueError: if `max_sequence_lengths` is specified and not the same length
		    as `categorical_columns`.
		  ValueError: if `max_sequence_lengths` is positive for a non sequence column
		    or 0 for a sequence column.
	**/
	static public function shared_embedding_columns(categorical_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?max_sequence_lengths:Dynamic, ?learning_rate_fn:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Split a list of _TPUEmbeddingColumn into sequence and non-sequence columns.
		
		For use in a TPUEstimator model_fn function. E.g.
		
		def model_fn(features):
		  sequence_columns, feature_columns = (
		      tf.tpu.feature_column.split_sequence_columns(feature_columns))
		  input = tf.feature_column.input_layer(
		      features=features, feature_columns=feature_columns)
		  sequence_features, sequence_lengths = (
		      tf.contrib.feature_column.sequence_input_layer(
		          features=features, feature_columns=sequence_columns))
		
		Args:
		  feature_columns: A list of _TPUEmbeddingColumns to split.
		
		Returns:
		  Two lists of _TPUEmbeddingColumns, the first is the sequence columns and the
		  second is the non-sequence columns.
	**/
	static public function split_sequence_columns(feature_columns:Dynamic):Dynamic;
}