/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.estimator;
@:pythonImport("tensorflow.compat.v1.keras.estimator") extern class Estimator_Module {
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
}