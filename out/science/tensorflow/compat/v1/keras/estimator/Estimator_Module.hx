/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.estimator;
@:pythonImport("tensorflow.compat.v1.keras.estimator") extern class Estimator_Module {
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
		Constructs an `Estimator` instance from given keras model.
		
		If you use infrastructure or other tooling that relies on Estimators, you can
		still build a Keras model and use model_to_estimator to convert the Keras
		model to an Estimator for use with downstream systems.
		
		For usage example, please see:
		[Creating estimators from Keras Models](
		  https://www.tensorflow.org/guide/estimator#create_an_estimator_from_a_keras_model).
		
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
		    save checkpoints from `tf.train.Saver` or `tf.train.Checkpoint`. This
		    argument currently defaults to `saver`. When 2.0 is released, the default
		    will be `checkpoint`. Estimators use name-based `tf.train.Saver`
		    checkpoints, while Keras models use object-based checkpoints from
		    `tf.train.Checkpoint`. Currently, saving object-based checkpoints from
		    `model_to_estimator` is only supported by Functional and Sequential
		    models. Defaults to 'saver'.
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
		    {'serving_default': `tf.estimator.export.PredictOutput`}. If not None,
		    the keys must match the keys of `model.output_names`.
		    A dict `{name: output}` where:
		      * name: An arbitrary name for this output.
		      * output: an `ExportOutput` class such as `ClassificationOutput`,
		        `RegressionOutput`, or `PredictOutput`. Single-headed models only need
		        to specify one entry in this dictionary. Multi-headed models should
		        specify one entry for each head, one of which must be named using
		        `tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`
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
	static public function model_to_estimator(?keras_model:Dynamic, ?keras_model_path:Dynamic, ?custom_objects:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?checkpoint_format:Dynamic, ?metric_names_map:Dynamic, ?export_outputs:Dynamic):Dynamic;
}