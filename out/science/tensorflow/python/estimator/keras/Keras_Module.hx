/* This file is generated, do not edit! */
package tensorflow.python.estimator.keras;
@:pythonImport("tensorflow.python.estimator.keras") extern class Keras_Module {
	static public var _DEFAULT_SERVING_KEY : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if any weights has been initialized in the Keras model.
		
		Args:
		  keras_model: An instance of compiled keras model.
		
		Returns:
		  boolean, True if at least one weight has been initialized, else False.
		  Currently keras initialize all weights at get_session().
	**/
	static public function _any_weight_initialized(keras_model:Dynamic):Dynamic;
	static public function _assert_valid_model(model:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Cast tensor to keras's floatx dtype if it is not already the same dtype.
	**/
	static public function _cast_tensor_to_floatx(x:Dynamic):Dynamic;
	/**
		Clone and build the given keras_model.
		
		Args:
		  mode: training mode.
		  keras_model: an instance of compiled keras model.
		  custom_objects: Dictionary for custom objects.
		  features: Dict of tensors.
		  labels: Dict of tensors, or single tensor instance.
		  optimizer_config: Optimizer config dictionary, returned by
		    `optimizer.get_config()`. This is used when cloning a model with an
		    optimizer. Since `_clone_and_build_model` is called in a different graph
		    and session from the model, `optimizer.get_config()` may raise an error
		    during the attempt to serialize the optimizer hyperparameter values.
		
		Returns:
		  The newly built model.
	**/
	static public function _clone_and_build_model(mode:Dynamic, keras_model:Dynamic, custom_objects:Dynamic, ?features:Dynamic, ?labels:Dynamic, ?optimizer_config:Dynamic):Dynamic;
	/**
		Converts estimator features and labels to keras input and target tensors.
		
		Args:
		  keras_model: a compiled `tf.keras.Model` instance, used to determine the
		    order of the returned lists.
		  features: Dict of tensors or `None`.
		  labels: Dict of tensors, a single tensor, or `None`.
		
		Returns:
		  Tuple of (
		    list of input tensors or `None`,
		    list of target tensors or `None`,
		    list of sample weight tensors or `None`)
		  The order of tensors is determined by the order set in the keras model.
	**/
	static public function _convert_estimator_io_to_keras(keras_model:Dynamic, features:Dynamic, labels:Dynamic):Dynamic;
	/**
		Convert metrics from a Keras model to ops used by the Estimator framework.
		
		Args:
		  model: A `tf.keras.Model` object.
		  metric_names_map: Optional dictionary mapping Keras model output metric
		    names to custom names.
		
		Returns:
		  Dictionary mapping metric names to tuples of (value, update) ops. May return
		  `None` if the model does not contain any metrics.
	**/
	static public function _convert_keras_metrics_to_estimator(model:Dynamic, ?metric_names_map:Dynamic):Dynamic;
	/**
		Create or cast tensor if needed.
	**/
	static public function _convert_tensor(x:Dynamic):Dynamic;
	/**
		Creates model_fn for keras Estimator.
		
		Args:
		  keras_model: an instance of compiled keras model.
		  custom_objects: Dictionary for custom objects.
		  save_object_ckpt: Whether to save an object-based checkpoint.
		  metric_names_map: Optional dictionary mapping Keras model output metric
		    names to custom names.
		  export_outputs: Optional dictionary mapping custom names to a subclass of
		    `tf.estimator.export.ExportOutput`.
		
		Returns:
		  The model_fn for a keras Estimator.
	**/
	static public function _create_keras_model_fn(keras_model:Dynamic, ?custom_objects:Dynamic, ?save_object_ckpt:Dynamic, ?metric_names_map:Dynamic, ?export_outputs:Dynamic):Dynamic;
	static public function _extract_sample_weight_tensors(features:Dynamic):Dynamic;
	/**
		Get file from google storage and download to local file.
		
		Args:
		  keras_model_path: a google storage path for compiled keras model.
		  model_dir: the directory from estimator config.
		
		Returns:
		  The path where keras model is saved.
		
		Raises:
		  ValueError: if storage object name does not end with .h5.
	**/
	static public function _get_file_from_google_storage(keras_model_path:Dynamic, model_dir:Dynamic):Dynamic;
	/**
		Save first checkpoint for the keras Estimator.
		
		Args:
		  keras_model: an instance of compiled keras model.
		  custom_objects: Dictionary for custom objects.
		  config: Estimator config.
		  save_object_ckpt: Whether to save an object-based checkpoint.
		
		Returns:
		  The path where keras model checkpoint is saved.
	**/
	static public function _save_first_checkpoint(keras_model:Dynamic, custom_objects:Dynamic, config:Dynamic, save_object_ckpt:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
		Maps `sample_weight` or `class_weight` to model outputs.
		
		Args:
		    x_weight: User-provided `sample_weight` or `class_weight` argument.
		    output_names: List of output names (strings) in the model.
		
		Returns:
		    A list of `sample_weight` or `class_weight` where there are exactly
		        one element per model output.
		
		Raises:
		    ValueError: In case of invalid user-provided argument.
	**/
	static public function standardize_sample_weights(x_weight:Dynamic, output_names:Dynamic):Dynamic;
}