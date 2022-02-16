/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2.keras.applications.mobilenet_v3;
@:pythonImport("tensorflow.compat.v1.compat.v2.keras.applications.mobilenet_v3") extern class Mobilenet_v3_Module {
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
		Decodes the prediction of an ImageNet model.
		
		Args:
		  preds: Numpy array encoding a batch of predictions.
		  top: Integer, how many top-guesses to return. Defaults to 5.
		
		Returns:
		  A list of lists of top class prediction tuples
		  `(class_name, class_description, score)`.
		  One list of tuples per sample in batch input.
		
		Raises:
		  ValueError: In case of invalid shape of the `pred` array
		    (must be 2D).
	**/
	static public function decode_predictions(preds:Dynamic, ?top:Dynamic):Dynamic;
	/**
		A placeholder method for backward compatibility.
		
		The preprocessing logic has been included in the mobilenet_v3 model
		implementation. Users are no longer required to call this method to normalize
		the input data. This method does nothing and only kept as a placeholder to
		align the API surface between old and new version of model.
		
		Args:
		  x: A floating point `numpy.array` or a `tf.Tensor`.
		  data_format: Optional data format of the image tensor/array. Defaults to
		    None, in which case the global setting
		    `tf.keras.backend.image_data_format()` is used (unless you changed it,
		    it defaults to "channels_last").{mode}
		
		Returns:
		  Unchanged `numpy.array` or `tf.Tensor`.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic):Dynamic;
}