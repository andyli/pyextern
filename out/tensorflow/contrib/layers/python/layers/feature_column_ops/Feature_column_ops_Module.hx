/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column_ops;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column_ops") extern class Feature_column_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a real_valued_column for given tensor and name.
	**/
	static public function _infer_real_valued_column_for_tensor(name:Dynamic, tensor:Dynamic):Dynamic;
	static public function _log_variable(variable:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks the validity of the set of FeatureColumns.
		
		Args:
		  feature_columns: A set of instances or subclasses of FeatureColumn.
		
		Raises:
		  ValueError: If there are duplicate feature column keys.
	**/
	static public function check_feature_columns(feature_columns:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function infer_real_valued_columns(features:Dynamic):Dynamic;
	/**
		A tf.contrib.layer style input layer builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		At the first layer of the model, this column oriented data should be converted
		to a single tensor. Each feature column needs a different kind of operation
		during this conversion. For example sparse features need a totally different
		handling than continuous features.
		
		An example usage of input_from_feature_columns is as follows:
		
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  first_layer = input_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns)
		  second_layer = fully_connected(first_layer, ...)
		  ...
		
		  where feature_columns can be defined as follows:
		
		  occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		  occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                   combiner="sum")
		  age = real_valued_column("age")
		  age_buckets = bucketized_column(
		      source_column=age,
		      boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		  occupation_x_age = crossed_column(columns=[occupation, age_buckets],
		                                    hash_bucket_size=10000)
		
		  feature_columns=[occupation_emb, occupation_x_age]
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Parses tf.Examples to extract tensors for given feature_columns.
		
		This is a wrapper of 'tf.parse_example'. A typical usage is as follows:
		
		```python
		columns_to_tensor = parse_feature_columns_from_examples(
		    serialized=my_data,
		    feature_columns=my_features)
		
		# Where my_features are:
		# Define features and transformations
		country = sparse_column_with_keys(column_name="native_country",
		                                  keys=["US", "BRA", ...])
		country_emb = embedding_column(sparse_id_column=country, dimension=3,
		                               combiner="sum")
		occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                 combiner="sum")
		occupation_x_country = crossed_column(columns=[occupation, country],
		                                      hash_bucket_size=10000)
		age = real_valued_column("age")
		age_buckets = bucketized_column(
		    source_column=age,
		    boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		
		my_features = [occupation_emb, age_buckets, country_emb]
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
	static public var print_function : Dynamic;
	/**
		A tf.contrib.layer style linear prediction builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		This function generates weighted sum for each num_outputs. Weighted sum refers
		to logits in classification problems. It refers to prediction itself for
		linear regression problems.
		
		An example usage of weighted_sum_from_feature_columns is as follows:
		
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  logits = weighted_sum_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns,
		      num_outputs=1)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(logits, labels)
		
		  where feature_columns can be defined as follows:
		
		  occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		  occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                   combiner="sum")
		  age = real_valued_column("age")
		  age_buckets = bucketized_column(
		      source_column=age,
		      boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		  occupation_x_age = crossed_column(columns=[occupation, age_buckets],
		                                    hash_bucket_size=10000)
		
		  feature_columns=[occupation_emb, occupation_x_age]
		
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
		  scope: Optional scope fpor variable_op_scope.
		
		Returns:
		  A tuple of followings:
		    * A Tensor which represents predictions of a linear model.
		    * A dictionary which maps feature_column to corresponding Variable.
		    * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
}