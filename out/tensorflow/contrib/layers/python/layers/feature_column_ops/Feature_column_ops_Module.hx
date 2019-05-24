/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column_ops;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column_ops") extern class Feature_column_ops_Module {
	static public var _FORBIDDEN_SEQUENCE_COLUMNS : Dynamic;
	static public var _SUPPORTED_SEQUENCE_COLUMNS : Dynamic;
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
		Recursively checks `feature_columns` for `_FORBIDDEN_SEQUENCE_COLUMNS`.
	**/
	static public function _check_forbidden_sequence_columns(feature_columns:Dynamic):Dynamic;
	/**
		Asserts `feature_columns` are in `_SUPPORTED_SEQUENCE_COLUMNS`.
	**/
	static public function _check_supported_sequence_columns(feature_columns:Dynamic):Dynamic;
	/**
		Creates variables and returns predictions for linear weights in a model.
		
		Args:
		 column: the column we're working on.
		 columns_to_tensors: a map from column name to tensors.
		 embedding_lookup_arguments: arguments for embedding lookup.
		 num_outputs: how many outputs.
		 trainable: whether the variable we create is trainable.
		 weight_collections: weights will be placed here.
		
		Returns:
		variables: the created embeddings.
		predictions: the computed predictions.
	**/
	static public function _create_embedding_lookup(column:Dynamic, columns_to_tensors:Dynamic, embedding_lookup_arguments:Dynamic, num_outputs:Dynamic, trainable:Dynamic, weight_collections:Dynamic):Dynamic;
	/**
		Creates an embedding lookup for all columns sharing a single weight.
	**/
	static public function _create_joint_embedding_lookup(columns_to_tensors:Dynamic, embedding_lookup_arguments:Dynamic, num_outputs:Dynamic, trainable:Dynamic, weight_collections:Dynamic):Dynamic;
	/**
		Returns a list of all ancestor `FeatureColumns` of `feature_columns`.
	**/
	static public function _gather_feature_columns(feature_columns:Dynamic):Dynamic;
	/**
		Returns the tuple of `FeatureColumn`s that `feature_column` depends on.
	**/
	static public function _get_parent_columns(feature_column:Dynamic):Dynamic;
	/**
		Creates a real_valued_column for given tensor and name.
	**/
	static public function _infer_real_valued_column_for_tensor(name:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Implementation of `input_from(_sequence)_feature_columns`.
	**/
	static public function _input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, weight_collections:Dynamic, trainable:Dynamic, scope:Dynamic, output_rank:Dynamic, default_name:Dynamic, ?cols_to_outs:Dynamic):Dynamic;
	static public function _log_variable(variable:Dynamic):Dynamic;
	/**
		Reshape the input tensor by the following rule.
		
		1. If `output_rank > input_rank + 1`, raise a `ValueError`.
		2. If `output_rank == input_rank + 1`, expand the tensor by one dimension.
		3. If `output_rank == input_rank`, do nothing.
		4. If `output_rank < input_rank`, flatten the inner dimensions of the tensor.
		
		Args:
		  tensor: A Tensor or SparseTensor to be reshaped.
		  column_name: A string name of the feature column for the tensor.
		  output_rank: the desired rank of the tensor.
		Returns:
		  A reshaped Tensor or SparseTensor.
		Raises:
		  ValueError: if `output_rank > input_rank + 1` for the input tensor.
	**/
	static public function _maybe_reshape_input_tensor(tensor:Dynamic, column_name:Dynamic, output_rank:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks the validity of the set of FeatureColumns.
		
		Args:
		  feature_columns: An iterable of instances or subclasses of FeatureColumn.
		
		Raises:
		  ValueError: If `feature_columns` is a dict.
		  ValueError: If there are duplicate feature column keys.
	**/
	static public function check_feature_columns(feature_columns:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public function infer_real_valued_columns(features:Dynamic):Dynamic;
	/**
		A tf.contrib.layers style input layer builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		At the first layer of the model, this column oriented data should be converted
		to a single tensor. Each feature column needs a different kind of operation
		during this conversion. For example sparse features need a totally different
		handling than continuous features.
		
		Example:
		
		```python
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  first_layer = input_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns)
		  second_layer = fully_connected(inputs=first_layer, ...)
		  ...
		```
		
		where feature_columns can be defined as follows:
		
		```python
		  sparse_feature = sparse_column_with_hash_bucket(
		      column_name="sparse_col", ...)
		  sparse_feature_emb = embedding_column(sparse_id_column=sparse_feature, ...)
		  real_valued_feature = real_valued_column(...)
		  real_valued_buckets = bucketized_column(
		      source_column=real_valued_feature, ...)
		
		  feature_columns=[sparse_feature_emb, real_valued_buckets]
		```
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		  cols_to_outs: Optional dict from feature column to output tensor,
		    which is concatenated into the returned tensor.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?cols_to_outs:Dynamic):Dynamic;
	/**
		A restricted linear prediction builder based on FeatureColumns.
		
		As long as all feature columns are unweighted sparse columns this computes the
		prediction of a linear model which stores all weights in a single variable.
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived from FeatureColumn.
		  num_outputs: An integer specifying number of outputs. Default value is 1.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tuple containing:
		
		  * A Tensor which represents predictions of a linear model.
		  * A list of Variables storing the weights.
		  * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function joint_weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Parses tf.Examples to extract tensors for given feature_columns.
		
		This is a wrapper of 'tf.parse_example'.
		
		Example:
		
		```python
		columns_to_tensor = parse_feature_columns_from_examples(
		    serialized=my_data,
		    feature_columns=my_features)
		
		# Where my_features are:
		# Define features and transformations
		sparse_feature_a = sparse_column_with_keys(
		    column_name="sparse_feature_a", keys=["AB", "CD", ...])
		
		embedding_feature_a = embedding_column(
		    sparse_id_column=sparse_feature_a, dimension=3, combiner="sum")
		
		sparse_feature_b = sparse_column_with_hash_bucket(
		    column_name="sparse_feature_b", hash_bucket_size=1000)
		
		embedding_feature_b = embedding_column(
		    sparse_id_column=sparse_feature_b, dimension=16, combiner="sum")
		
		crossed_feature_a_x_b = crossed_column(
		    columns=[sparse_feature_a, sparse_feature_b], hash_bucket_size=10000)
		
		real_feature = real_valued_column("real_feature")
		real_feature_buckets = bucketized_column(
		    source_column=real_feature, boundaries=[...])
		
		my_features = [embedding_feature_b, real_feature_buckets, embedding_feature_a]
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping FeatureColumn to `Tensor` and `SparseTensor` values.
	**/
	static public function parse_feature_columns_from_examples(serialized:Dynamic, feature_columns:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses tf.SequenceExamples to extract tensors for given `FeatureColumn`s.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single serialized
		    `SequenceExample` proto.
		  context_feature_columns: An iterable containing the feature columns for
		    context features. All items should be instances of classes derived from
		    `_FeatureColumn`. Can be `None`.
		  sequence_feature_columns: An iterable containing the feature columns for
		    sequence features. All items should be instances of classes derived from
		    `_FeatureColumn`. Can be `None`.
		  name: A name for this operation (optional).
		  example_name: A scalar (0-D Tensor) of type string (optional), the names of
		    the serialized proto.
		
		Returns:
		  A tuple consisting of (context_features, sequence_features)
		
		  *  context_features: a dict mapping `FeatureColumns` from
		      `context_feature_columns` to their parsed `Tensors`/`SparseTensor`s.
		  *  sequence_features: a dict mapping `FeatureColumns` from
		      `sequence_feature_columns` to their parsed `Tensors`/`SparseTensor`s.
	**/
	static public function parse_feature_columns_from_sequence_examples(serialized:Dynamic, context_feature_columns:Dynamic, sequence_feature_columns:Dynamic, ?name:Dynamic, ?example_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Builds inputs for sequence models from `FeatureColumn`s. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		See documentation for `input_from_feature_columns`. The following types of
		`FeatureColumn` are permitted in `feature_columns`: `_OneHotColumn`,
		`_EmbeddingColumn`, `_ScatteredEmbeddingColumn`, `_RealValuedColumn`,
		`_DataFrameColumn`. In addition, columns in `feature_columns` may not be
		constructed using any of the following: `ScatteredEmbeddingColumn`,
		`BucketizedColumn`, `CrossedColumn`.
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function sequence_input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns transformed features based on features columns passed in.
		
		Example:
		
		```python
		columns_to_tensor = transform_features(features=features,
		                                       feature_columns=feature_columns)
		
		# Where my_features are:
		# Define features and transformations
		sparse_feature_a = sparse_column_with_keys(
		    column_name="sparse_feature_a", keys=["AB", "CD", ...])
		
		embedding_feature_a = embedding_column(
		    sparse_id_column=sparse_feature_a, dimension=3, combiner="sum")
		
		sparse_feature_b = sparse_column_with_hash_bucket(
		    column_name="sparse_feature_b", hash_bucket_size=1000)
		
		embedding_feature_b = embedding_column(
		    sparse_id_column=sparse_feature_b, dimension=16, combiner="sum")
		
		crossed_feature_a_x_b = crossed_column(
		    columns=[sparse_feature_a, sparse_feature_b], hash_bucket_size=10000)
		
		real_feature = real_valued_column("real_feature")
		real_feature_buckets = bucketized_column(
		    source_column=real_feature, boundaries=[...])
		
		feature_columns = [embedding_feature_b,
		                   real_feature_buckets,
		                   embedding_feature_a]
		```
		
		Args:
		  features: A dictionary of features.
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		
		Returns:
		  A `dict` mapping FeatureColumn to `Tensor` and `SparseTensor` values.
	**/
	static public function transform_features(features:Dynamic, feature_columns:Dynamic):Dynamic;
	/**
		A tf.contrib.layers style linear prediction builder based on FeatureColumn.
		
		Generally a single example in training data is described with feature columns.
		This function generates weighted sum for each num_outputs. Weighted sum refers
		to logits in classification problems. It refers to prediction itself for
		linear regression problems.
		
		Example:
		
		  ```
		  # Building model for training
		  feature_columns = (
		      real_valued_column("my_feature1"),
		      ...
		  )
		  columns_to_tensor = tf.parse_example(...)
		  logits = weighted_sum_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns,
		      num_outputs=1)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(labels=labels,
		                                                 logits=logits)
		  ```
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived from FeatureColumn.
		  num_outputs: An integer specifying number of outputs. Default value is 1.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tuple containing:
		
		    * A Tensor which represents predictions of a linear model.
		    * A dictionary which maps feature_column to corresponding Variable.
		    * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
}