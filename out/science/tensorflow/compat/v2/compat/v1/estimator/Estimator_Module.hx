/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v1.estimator;
@:pythonImport("tensorflow.compat.v2.compat.v1.estimator") extern class Estimator_Module {
	static public var __all__ : Dynamic;
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
		Creates a new `tf.estimator.Estimator` which has given metrics.
		
		Example:
		
		```python
		  def my_auc(labels, predictions):
		    auc_metric = tf.keras.metrics.AUC(name="my_auc")
		    auc_metric.update_state(y_true=labels, y_pred=predictions['logistic'])
		    return {'auc': auc_metric}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		Example usage of custom metric which uses features:
		
		```python
		  def my_auc(labels, predictions, features):
		    auc_metric = tf.keras.metrics.AUC(name="my_auc")
		    auc_metric.update_state(y_true=labels, y_pred=predictions['logistic'],
		                            sample_weight=features['weight'])
		    return {'auc': auc_metric}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		
		Args:
		  estimator: A `tf.estimator.Estimator` object.
		  metric_fn: A function which should obey the following signature:
		    - Args: can only have following four arguments in any order:
		      * predictions: Predictions `Tensor` or dict of `Tensor` created by given
		        `estimator`.
		      * features: Input `dict` of `Tensor` objects created by `input_fn` which
		        is given to `estimator.evaluate` as an argument.
		      * labels:  Labels `Tensor` or dict of `Tensor` created by `input_fn`
		        which is given to `estimator.evaluate` as an argument.
		      * config: config attribute of the `estimator`.
		     - Returns: Dict of metric results keyed by name. Final metrics are a
		       union of this and `estimator's` existing metrics. If there is a name
		       conflict between this and `estimator`s existing metrics, this will
		       override the existing one. The values of the dict are the results of
		       calling a metric function, namely a `(metric_tensor, update_op)` tuple.
		
		Returns:
		    A new `tf.estimator.Estimator` which has a union of original metrics with
		      given ones.
	**/
	static public function add_metrics(estimator:Dynamic, metric_fn:Dynamic):Dynamic;
	/**
		Generates parsing spec for tf.parse_example to be used with classifiers.
		
		If users keep data in tf.Example format, they need to call tf.parse_example
		with a proper feature spec. There are two main things that this utility helps:
		
		* Users need to combine parsing spec of features with labels and weights
		  (if any) since they are all parsed from same tf.Example instance. This
		  utility combines these specs.
		* It is difficult to map expected label by a classifier such as
		  `DNNClassifier` to corresponding tf.parse_example spec. This utility encodes
		  it by getting related information from users (key, dtype).
		
		Example output of parsing spec:
		
		```python
		# Define features and transformations
		feature_b = tf.feature_column.numeric_column(...)
		feature_c_bucketized = tf.feature_column.bucketized_column(
		  tf.feature_column.numeric_column("feature_c"), ...)
		feature_a_x_feature_c = tf.feature_column.crossed_column(
		    columns=["feature_a", feature_c_bucketized], ...)
		
		feature_columns = [feature_b, feature_c_bucketized, feature_a_x_feature_c]
		parsing_spec = tf.estimator.classifier_parse_example_spec(
		    feature_columns, label_key='my-label', label_dtype=tf.string)
		
		# For the above example, classifier_parse_example_spec would return the dict:
		assert parsing_spec == {
		  "feature_a": parsing_ops.VarLenFeature(tf.string),
		  "feature_b": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		  "feature_c": parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		  "my-label" : parsing_ops.FixedLenFeature([1], dtype=tf.string)
		}
		```
		
		Example usage with a classifier:
		
		```python
		feature_columns = # define features via tf.feature_column
		estimator = DNNClassifier(
		    n_classes=1000,
		    feature_columns=feature_columns,
		    weight_column='example-weight',
		    label_vocabulary=['photos', 'keep', ...],
		    hidden_units=[256, 64, 16])
		# This label configuration tells the classifier the following:
		# * weights are retrieved with key 'example-weight'
		# * label is string and can be one of the following ['photos', 'keep', ...]
		# * integer id for label 'photos' is 0, 'keep' is 1, ...
		
		
		# Input builders
		def input_fn_train():  # Returns a tuple of features and labels.
		  features = tf.contrib.learn.read_keyed_batch_features(
		      file_pattern=train_files,
		      batch_size=batch_size,
		      # creates parsing configuration for tf.parse_example
		      features=tf.estimator.classifier_parse_example_spec(
		          feature_columns,
		          label_key='my-label',
		          label_dtype=tf.string,
		          weight_column='example-weight'),
		      reader=tf.RecordIOReader)
		   labels = features.pop('my-label')
		   return features, labels
		
		estimator.train(input_fn=input_fn_train)
		```
		
		Args:
		  feature_columns: An iterable containing all feature columns. All items
		    should be instances of classes derived from `FeatureColumn`.
		  label_key: A string identifying the label. It means tf.Example stores labels
		    with this key.
		  label_dtype: A `tf.dtype` identifies the type of labels. By default it is
		    `tf.int64`. If user defines a `label_vocabulary`, this should be set as
		    `tf.string`. `tf.float32` labels are only supported for binary
		    classification.
		  label_default: used as label if label_key does not exist in given
		    tf.Example. An example usage: let's say `label_key` is 'clicked' and
		      tf.Example contains clicked data only for positive examples in following
		    format `key:clicked, value:1`. This means that if there is no data with
		      key 'clicked' it should count as negative example by setting
		      `label_deafault=0`. Type of this value should be compatible with
		      `label_dtype`.
		  weight_column: A string or a `NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		
		Returns:
		  A dict mapping each feature key to a `FixedLenFeature` or `VarLenFeature`
		  value.
		
		Raises:
		  ValueError: If label is used in `feature_columns`.
		  ValueError: If weight_column is used in `feature_columns`.
		  ValueError: If any of the given `feature_columns` is not a `_FeatureColumn`
		    instance.
		  ValueError: If `weight_column` is not a `NumericColumn` instance.
		  ValueError: if label_key is None.
	**/
	static public function classifier_parse_example_spec(feature_columns:Dynamic, label_key:Dynamic, ?label_dtype:Dynamic, ?label_default:Dynamic, ?weight_column:Dynamic):Dynamic;
	/**
		Generates parsing spec for tf.parse_example to be used with regressors.
		
		If users keep data in tf.Example format, they need to call tf.parse_example
		with a proper feature spec. There are two main things that this utility helps:
		
		* Users need to combine parsing spec of features with labels and weights
		  (if any) since they are all parsed from same tf.Example instance. This
		  utility combines these specs.
		* It is difficult to map expected label by a regressor such as `DNNRegressor`
		  to corresponding tf.parse_example spec. This utility encodes it by getting
		  related information from users (key, dtype).
		
		Example output of parsing spec:
		
		```python
		# Define features and transformations
		feature_b = tf.feature_column.numeric_column(...)
		feature_c_bucketized = tf.feature_column.bucketized_column(
		  tf.feature_column.numeric_column("feature_c"), ...)
		feature_a_x_feature_c = tf.feature_column.crossed_column(
		    columns=["feature_a", feature_c_bucketized], ...)
		
		feature_columns = [feature_b, feature_c_bucketized, feature_a_x_feature_c]
		parsing_spec = tf.estimator.regressor_parse_example_spec(
		    feature_columns, label_key='my-label')
		
		# For the above example, regressor_parse_example_spec would return the dict:
		assert parsing_spec == {
		  "feature_a": parsing_ops.VarLenFeature(tf.string),
		  "feature_b": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		  "feature_c": parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		  "my-label" : parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		}
		```
		
		Example usage with a regressor:
		
		```python
		feature_columns = # define features via tf.feature_column
		estimator = DNNRegressor(
		    hidden_units=[256, 64, 16],
		    feature_columns=feature_columns,
		    weight_column='example-weight',
		    label_dimension=3)
		# This label configuration tells the regressor the following:
		# * weights are retrieved with key 'example-weight'
		# * label is a 3 dimension tensor with float32 dtype.
		
		
		# Input builders
		def input_fn_train():  # Returns a tuple of features and labels.
		  features = tf.contrib.learn.read_keyed_batch_features(
		      file_pattern=train_files,
		      batch_size=batch_size,
		      # creates parsing configuration for tf.parse_example
		      features=tf.estimator.classifier_parse_example_spec(
		          feature_columns,
		          label_key='my-label',
		          label_dimension=3,
		          weight_column='example-weight'),
		      reader=tf.RecordIOReader)
		   labels = features.pop('my-label')
		   return features, labels
		
		estimator.train(input_fn=input_fn_train)
		```
		
		Args:
		  feature_columns: An iterable containing all feature columns. All items
		    should be instances of classes derived from `_FeatureColumn`.
		  label_key: A string identifying the label. It means tf.Example stores labels
		    with this key.
		  label_dtype: A `tf.dtype` identifies the type of labels. By default it is
		    `tf.float32`.
		  label_default: used as label if label_key does not exist in given
		    tf.Example. By default default_value is none, which means
		    `tf.parse_example` will error out if there is any missing label.
		  label_dimension: Number of regression targets per example. This is the size
		    of the last dimension of the labels and logits `Tensor` objects
		    (typically, these have shape `[batch_size, label_dimension]`).
		  weight_column: A string or a `NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		
		Returns:
		  A dict mapping each feature key to a `FixedLenFeature` or `VarLenFeature`
		  value.
		
		Raises:
		  ValueError: If label is used in `feature_columns`.
		  ValueError: If weight_column is used in `feature_columns`.
		  ValueError: If any of the given `feature_columns` is not a `_FeatureColumn`
		    instance.
		  ValueError: If `weight_column` is not a `NumericColumn` instance.
		  ValueError: if label_key is None.
	**/
	static public function regressor_parse_example_spec(feature_columns:Dynamic, label_key:Dynamic, ?label_dtype:Dynamic, ?label_default:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic):Dynamic;
	/**
		Train and evaluate the `estimator`.
		
		This utility function trains, evaluates, and (optionally) exports the model by
		using the given `estimator`. All training related specification is held in
		`train_spec`, including training `input_fn` and training max steps, etc. All
		evaluation and export related specification is held in `eval_spec`, including
		evaluation `input_fn`, steps, etc.
		
		This utility function provides consistent behavior for both local
		(non-distributed) and distributed configurations. The default distribution
		configuration is parameter server-based between-graph replication. For other
		types of distribution configurations such as all-reduce training, please use
		[DistributionStrategies](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/python/distribute).
		
		Overfitting: In order to avoid overfitting, it is recommended to set up the
		training `input_fn` to shuffle the training data properly.
		
		Stop condition: In order to support both distributed and non-distributed
		configuration reliably, the only supported stop condition for model
		training is `train_spec.max_steps`. If `train_spec.max_steps` is `None`, the
		model is trained forever. *Use with care* if model stop condition is
		different. For example, assume that the model is expected to be trained with
		one epoch of training data, and the training `input_fn` is configured to throw
		`OutOfRangeError` after going through one epoch, which stops the
		`Estimator.train`. For a three-training-worker distributed configuration, each
		training worker is likely to go through the whole epoch independently. So, the
		model will be trained with three epochs of training data instead of one epoch.
		
		Example of local (non-distributed) training:
		
		```python
		# Set up feature columns.
		categorial_feature_a = categorial_column_with_hash_bucket(...)
		categorial_feature_a_emb = embedding_column(
		    categorical_column=categorial_feature_a, ...)
		...  # other feature columns
		
		estimator = DNNClassifier(
		    feature_columns=[categorial_feature_a_emb, ...],
		    hidden_units=[1024, 512, 256])
		
		# Or set up the model directory
		#   estimator = DNNClassifier(
		#       config=tf.estimator.RunConfig(
		#           model_dir='/my_model', save_summary_steps=100),
		#       feature_columns=[categorial_feature_a_emb, ...],
		#       hidden_units=[1024, 512, 256])
		
		# Input pipeline for train and evaluate.
		def train_input_fn(): # returns x, y
		  # please shuffle the data.
		  pass
		def eval_input_fn(): # returns x, y
		  pass
		
		train_spec = tf.estimator.TrainSpec(input_fn=train_input_fn, max_steps=1000)
		eval_spec = tf.estimator.EvalSpec(input_fn=eval_input_fn)
		
		tf.estimator.train_and_evaluate(estimator, train_spec, eval_spec)
		```
		Note that in current implementation `estimator.evaluate` will be called
		multiple times. This means that evaluation graph (including eval_input_fn)
		will be re-created for each `evaluate` call. `estimator.train` will be called
		only once.
		
		Example of distributed training:
		
		Regarding the example of distributed training, the code above can be used
		without a change (Please do make sure that the `RunConfig.model_dir` for all
		workers is set to the same directory, i.e., a shared file system all workers
		can read and write). The only extra work to do is setting the environment
		variable `TF_CONFIG` properly for each worker correspondingly.
		
		Also see
		[Distributed TensorFlow](https://www.tensorflow.org/deploy/distributed).
		
		Setting environment variable depends on the platform. For example, on Linux,
		it can be done as follows (`$` is the shell prompt):
		
		```
		$ TF_CONFIG='<replace_with_real_content>' python train_model.py
		```
		
		For the content in `TF_CONFIG`, assume that the training cluster spec looks
		like:
		
		```
		cluster = {"chief": ["host0:2222"],
		           "worker": ["host1:2222", "host2:2222", "host3:2222"],
		           "ps": ["host4:2222", "host5:2222"]}
		```
		
		Example of `TF_CONFIG` for chief training worker (must have one and only one):
		
		```
		# This should be a JSON string, which is set as environment variable. Usually
		# the cluster manager handles that.
		TF_CONFIG='{
		    "cluster": {
		        "chief": ["host0:2222"],
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "chief", "index": 0}
		}'
		```
		Note that the chief worker also does the model training job, similar to other
		non-chief training workers (see next paragraph). In addition to the model
		training, it manages some extra work, e.g., checkpoint saving and restoring,
		writing summaries, etc.
		
		Example of `TF_CONFIG` for non-chief training worker (optional, could be
		multiple):
		
		```
		# This should be a JSON string, which is set as environment variable. Usually
		# the cluster manager handles that.
		TF_CONFIG='{
		    "cluster": {
		        "chief": ["host0:2222"],
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "worker", "index": 0}
		}'
		```
		where the `task.index` should be set as 0, 1, 2, in this example, respectively
		for non-chief training workers.
		
		Example of `TF_CONFIG` for parameter server, aka ps (could be multiple):
		
		```
		# This should be a JSON string, which is set as environment variable. Usually
		# the cluster manager handles that.
		TF_CONFIG='{
		    "cluster": {
		        "chief": ["host0:2222"],
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "ps", "index": 0}
		}'
		```
		where the `task.index` should be set as 0 and 1, in this example, respectively
		for parameter servers.
		
		Example of `TF_CONFIG` for evaluator task. Evaluator is a special task that is
		not part of the training cluster. There could be only one. It is used for
		model evaluation.
		
		```
		# This should be a JSON string, which is set as environment variable. Usually
		# the cluster manager handles that.
		TF_CONFIG='{
		    "cluster": {
		        "chief": ["host0:2222"],
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "evaluator", "index": 0}
		}'
		```
		
		When `distribute` or `experimental_distribute.train_distribute` and
		`experimental_distribute.remote_cluster` is set, this method will start a
		client running on the current host which connects to the `remote_cluster` for
		training and evaluation.
		
		Args:
		  estimator: An `Estimator` instance to train and evaluate.
		  train_spec: A `TrainSpec` instance to specify the training specification.
		  eval_spec: A `EvalSpec` instance to specify the evaluation and export
		    specification.
		
		Returns:
		  A tuple of the result of the `evaluate` call to the `Estimator` and the
		  export results using the specified `Exporter`s.
		  Currently, the return value is undefined for distributed training mode.
		
		Raises:
		  ValueError: if environment variable `TF_CONFIG` is incorrectly set.
	**/
	static public function train_and_evaluate(estimator:Dynamic, train_spec:Dynamic, eval_spec:Dynamic):Dynamic;
}