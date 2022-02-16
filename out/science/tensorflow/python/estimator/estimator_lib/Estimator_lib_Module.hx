/* This file is generated, do not edit! */
package tensorflow.python.estimator.estimator_lib;
@:pythonImport("tensorflow.python.estimator.estimator_lib") extern class Estimator_lib_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
		Calls logit_fn (experimental).
		
		THIS FUNCTION IS EXPERIMENTAL. Keras layers/models are the recommended APIs
		for logit and model composition.
		
		A utility function that calls the provided logit_fn with the relevant subset
		of provided arguments. Similar to tf.estimator._call_model_fn().
		
		Args:
		  logit_fn: A logit_fn as defined above.
		  features: The features dict.
		  mode: TRAIN / EVAL / PREDICT ModeKeys.
		  params: The hyperparameter dict.
		  config: The configuration object.
		
		Returns:
		  A logit Tensor, the output of logit_fn.
		
		Raises:
		  ValueError: if logit_fn does not return a Tensor or a dictionary mapping
		    strings to Tensors.
	**/
	static public function call_logit_fn(logit_fn:Dynamic, features:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the MultiHead
		    case, this should be the sum of all component Heads' logit dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, input_layer_partitioner:Dynamic, batch_norm:Dynamic):Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Function builder for a linear logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.
		  feature_columns: An iterable containing all the feature columns used by the
		    model.
		  sparse_combiner: A string specifying how to reduce if a categorical column
		    is multivalent.  One of "mean", "sqrtn", and "sum".
		
		Returns:
		  A logit_fn (see below).
	**/
	static public function linear_logit_fn_builder(units:Dynamic, feature_columns:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
	/**
		Creates early-stopping hook.
		
		Returns a `SessionRunHook` that stops training when `should_stop_fn` returns
		`True`.
		
		Usage example:
		
		```python
		estimator = ...
		hook = early_stopping.make_early_stopping_hook(
		    estimator, should_stop_fn=make_stop_fn(...))
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  should_stop_fn: `callable`, function that takes no arguments and returns a
		    `bool`. If the function returns `True`, stopping will be initiated by the
		    chief.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  A `SessionRunHook` that periodically executes `should_stop_fn` and initiates
		  early stopping if the function returns `True`.
		
		Raises:
		  TypeError: If `estimator` is not of type `tf.estimator.Estimator`.
		  ValueError: If both `run_every_secs` and `run_every_steps` are set.
	**/
	static public function make_early_stopping_hook(estimator:Dynamic, should_stop_fn:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Constructs an `Estimator` instance from given keras model.
		
		If you use infrastructure or other tooling that relies on Estimators, you can
		still build a Keras model and use model_to_estimator to convert the Keras
		model to an Estimator for use with downstream systems.
		
		For usage example, please see:
		[Creating estimators from Keras
		Models](https://www.tensorflow.org/guide/estimator#create_an_estimator_from_a_keras_model).
		
		Sample Weights:
		Estimators returned by `model_to_estimator` are configured so that they can
		handle sample weights (similar to `keras_model.fit(x, y, sample_weights)`).
		
		To pass sample weights when training or evaluating the Estimator, the first
		item returned by the input function should be a dictionary with keys
		`features` and `sample_weights`. Example below:
		
		```python
		keras_model = tf.keras.Model(...)
		keras_model.compile(...)
		
		estimator = tf.keras.estimator.model_to_estimator(keras_model)
		
		def input_fn():
		  return dataset_ops.Dataset.from_tensors(
		      ({'features': features, 'sample_weights': sample_weights},
		       targets))
		
		estimator.train(input_fn, steps=1)
		```
		
		Example with customized export signature:
		```python
		inputs = {'a': tf.keras.Input(..., name='a'),
		          'b': tf.keras.Input(..., name='b')}
		outputs = {'c': tf.keras.layers.Dense(..., name='c')(inputs['a']),
		           'd': tf.keras.layers.Dense(..., name='d')(inputs['b'])}
		keras_model = tf.keras.Model(inputs, outputs)
		keras_model.compile(...)
		export_outputs = {'c': tf.estimator.export.RegressionOutput,
		                  'd': tf.estimator.export.ClassificationOutput}
		
		estimator = tf.keras.estimator.model_to_estimator(
		    keras_model, export_outputs=export_outputs)
		
		def input_fn():
		  return dataset_ops.Dataset.from_tensors(
		      ({'features': features, 'sample_weights': sample_weights},
		       targets))
		
		estimator.train(input_fn, steps=1)
		```
		
		Note: We do not support creating weighted metrics in Keras and converting them
		to weighted metrics in the Estimator API using `model_to_estimator`.
		You will have to create these metrics directly on the estimator spec using the
		`add_metrics` function.
		
		Args:
		  keras_model: A compiled Keras model object. This argument is mutually
		    exclusive with `keras_model_path`. Estimator's `model_fn` uses the
		    structure of the model to clone the model. Defaults to `None`.
		  keras_model_path: Path to a compiled Keras model saved on disk, in HDF5
		    format, which can be generated with the `save()` method of a Keras model.
		    This argument is mutually exclusive with `keras_model`.
		    Defaults to `None`.
		  custom_objects: Dictionary for cloning customized objects. This is
		    used with classes that is not part of this pip package. For example, if
		    user maintains a `relu6` class that inherits from `tf.keras.layers.Layer`,
		    then pass `custom_objects={'relu6': relu6}`. Defaults to `None`.
		  model_dir: Directory to save `Estimator` model parameters, graph, summary
		    files for TensorBoard, etc. If unset a directory will be created with
		    `tempfile.mkdtemp`
		  config: `RunConfig` to config `Estimator`. Allows setting up things in
		    `model_fn` based on configuration such as `num_ps_replicas`, or
		    `model_dir`. Defaults to `None`. If both `config.model_dir` and the
		    `model_dir` argument (above) are specified the `model_dir` **argument**
		    takes precedence.
		  checkpoint_format: Sets the format of the checkpoint saved by the estimator
		    when training. May be `saver` or `checkpoint`, depending on whether to
		    save checkpoints from `tf.compat.v1.train.Saver` or `tf.train.Checkpoint`.
		    The default is `checkpoint`. Estimators use name-based `tf.train.Saver`
		    checkpoints, while Keras models use object-based checkpoints from
		    `tf.train.Checkpoint`. Currently, saving object-based checkpoints from
		    `model_to_estimator` is only supported by Functional and Sequential
		    models.
		  use_v2_estimator: Whether to convert the model to a V2 Estimator or V1
		    Estimator. Defaults to `False`.
		  metric_names_map: Optional dictionary mapping Keras model output metric
		    names to custom names. This can be used to override the default Keras
		    model output metrics names in a multi IO model use case and provide custom
		    names for the `eval_metric_ops` in Estimator.
		    The Keras model metric names can be obtained using `model.metrics_names`
		    excluding any loss metrics such as total loss and output losses.
		    For example, if your Keras model has two outputs `out_1` and `out_2`,
		    with `mse` loss and `acc` metric, then `model.metrics_names` will be
		    `['loss', 'out_1_loss', 'out_2_loss', 'out_1_acc', 'out_2_acc']`.
		    The model metric names excluding the loss metrics will be
		    `['out_1_acc', 'out_2_acc']`.
		  export_outputs: Optional dictionary. This can be used to override the
		    default Keras model output exports in a multi IO model use case and
		    provide custom names for the `export_outputs` in
		    `tf.estimator.EstimatorSpec`. Default is None, which is equivalent to
		    {'serving_default': `tf.estimator.export.PredictOutput`}.
		    A dict `{name: output}` where:
		      * name: An arbitrary name for this output. This becomes the signature
		        name in the SavedModel.
		      * output: an `ExportOutput` object such as `ClassificationOutput`,
		        `RegressionOutput`, or `PredictOutput`. Single-headed models only need
		        to specify one entry in this dictionary. Multi-headed models should
		        specify one entry for each head, one of which must be named using
		        `tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`.
		        If no entry is provided, a default `PredictOutput` mapping to
		        `predictions` will be created.
		
		Returns:
		  An Estimator from given keras model.
		
		Raises:
		  ValueError: If neither keras_model nor keras_model_path was given.
		  ValueError: If both keras_model and keras_model_path was given.
		  ValueError: If the keras_model_path is a GCS URI.
		  ValueError: If keras_model has not been compiled.
		  ValueError: If an invalid checkpoint_format was given.
	**/
	static public function model_to_estimator(?keras_model:Dynamic, ?keras_model_path:Dynamic, ?custom_objects:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?checkpoint_format:Dynamic, ?use_v2_estimator:Dynamic, ?metric_names_map:Dynamic, ?export_outputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to read eval metrics from eval summary files.
		
		Args:
		  eval_dir: Directory containing summary files with eval metrics.
		
		Returns:
		  A `dict` with global steps mapping to `dict` of metric names and values.
	**/
	static public function read_eval_metrics(eval_dir:Dynamic):Dynamic;
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
		Creates hook to stop if the given metric is higher than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy becomes higher than 0.9.
		hook = early_stopping.stop_if_higher_hook(estimator, "accuracy", 0.9)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is higher than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_higher_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if the given metric is lower than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss becomes lower than 100.
		hook = early_stopping.stop_if_lower_hook(estimator, "loss", 100)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is lower than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_lower_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not decrease within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss does not decrease in over 100000 steps.
		hook = early_stopping.stop_if_no_decrease_hook(estimator, "loss", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_decrease: `int`, maximum number of training steps with no
		    decrease in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no decrease over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_decrease_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_decrease:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not increase within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy does not increase in over 100000 steps.
		hook = early_stopping.stop_if_no_increase_hook(estimator, "accuracy", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_increase: `int`, maximum number of training steps with no
		    increase in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no increase over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_increase_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_increase:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
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