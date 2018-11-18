/* This file is generated, do not edit! */
package tensorflow.python.estimator.keras;
@:pythonImport("tensorflow.python.estimator.keras") extern class Keras_Module {
	static public var _DEFAULT_SERVING_KEY : Dynamic;
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
		
		Returns:
		  The newly built model.
	**/
	static public function _clone_and_build_model(mode:Dynamic, keras_model:Dynamic, custom_objects:Dynamic, ?features:Dynamic, ?labels:Dynamic):Dynamic;
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
		    list of target tensors or `None`)
		  The order of tensors is determined by the order set in the keras model.
	**/
	static public function _convert_estimator_io_to_keras(keras_model:Dynamic, features:Dynamic, labels:Dynamic):Dynamic;
	/**
		Convert metrics from a Keras model to ops used by the Estimator framework.
		
		Args:
		  model: A `tf.keras.Model` object.
		
		Returns:
		  Dictionary mapping metric names to tuples of (value, update) ops. May return
		  `None` if the model does not contain any metrics.
	**/
	static public function _convert_keras_metrics_to_estimator(model:Dynamic):Dynamic;
	/**
		Create or cast tensor if needed.
	**/
	static public function _convert_tensor(x:Dynamic):Dynamic;
	/**
		Creates model_fn for keras Estimator.
		
		Args:
		  keras_model: an instance of compiled keras model.
		  custom_objects: Dictionary for custom objects.
		
		Returns:
		  The model_fn for a keras Estimator.
	**/
	static public function _create_keras_model_fn(keras_model:Dynamic, ?custom_objects:Dynamic):Dynamic;
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
		
		Returns:
		  The path where keras model checkpoint is saved.
	**/
	static public function _save_first_checkpoint(keras_model:Dynamic, custom_objects:Dynamic, config:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Constructs an `Estimator` instance from given keras model.
		
		For usage example, please see:
		[Creating estimators from Keras
		Models](https://tensorflow.org/guide/estimators#model_to_estimator).
		
		Args:
		  keras_model: A compiled Keras model object. This argument is mutually
		    exclusive with `keras_model_path`.
		  keras_model_path: Path to a compiled Keras model saved on disk, in HDF5
		    format, which can be generated with the `save()` method of a Keras model.
		    This argument is mutually exclusive with `keras_model`.
		  custom_objects: Dictionary for custom objects.
		  model_dir: Directory to save `Estimator` model parameters, graph, summary
		    files for TensorBoard, etc.
		  config: `RunConfig` to config `Estimator`.
		
		Returns:
		  An Estimator from given keras model.
		
		Raises:
		  ValueError: if neither keras_model nor keras_model_path was given.
		  ValueError: if both keras_model and keras_model_path was given.
		  ValueError: if the keras_model_path is a GCS URI.
		  ValueError: if keras_model has not been compiled.
	**/
	static public function model_to_estimator(?keras_model:Dynamic, ?keras_model_path:Dynamic, ?custom_objects:Dynamic, ?model_dir:Dynamic, ?config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}