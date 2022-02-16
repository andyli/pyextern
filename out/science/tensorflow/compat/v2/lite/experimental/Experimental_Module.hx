/* This file is generated, do not edit! */
package tensorflow.compat.v2.lite.experimental;
@:pythonImport("tensorflow.compat.v2.lite.experimental") extern class Experimental_Module {
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
		Returns loaded Delegate object.
		
		Example usage:
		
		```
		import tensorflow as tf
		
		try:
		  delegate = tf.lite.experimental.load_delegate('delegate.so')
		except ValueError:
		  // Fallback to CPU
		
		if delegate:
		  interpreter = tf.lite.Interpreter(
		      model_path='model.tflite',
		      experimental_delegates=[delegate])
		else:
		  interpreter = tf.lite.Interpreter(model_path='model.tflite')
		```
		
		This is typically used to leverage EdgeTPU for running TensorFlow Lite models.
		For more information see: https://coral.ai/docs/edgetpu/tflite-python/
		
		Args:
		  library: Name of shared library containing the
		    [TfLiteDelegate](https://www.tensorflow.org/lite/performance/delegates).
		  options: Dictionary of options that are required to load the delegate. All
		    keys and values in the dictionary should be convertible to str. Consult
		    the documentation of the specific delegate for required and legal options.
		    (default None)
		
		Returns:
		  Delegate object.
		
		Raises:
		  ValueError: Delegate failed to load.
		  RuntimeError: If delegate loading is used on unsupported platform.
	**/
	static public function load_delegate(library:Dynamic, ?options:Dynamic):Dynamic;
}