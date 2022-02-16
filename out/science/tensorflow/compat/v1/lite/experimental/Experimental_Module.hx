/* This file is generated, do not edit! */
package tensorflow.compat.v1.lite.experimental;
@:pythonImport("tensorflow.compat.v1.lite.experimental") extern class Experimental_Module {
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
		Converts a graphdef with LiteOp hints into stub operations. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please follow instructions under https://www.tensorflow.org/lite/convert/operation_fusion for operationfusion in tflite.
		
		This is used to prepare for toco conversion of complex intrinsic usages.
		Note: only one of session or graph_def should be used, not both.
		
		Args:
		  session: A TensorFlow session that contains the graph to convert.
		  graph_def: A graph def that we should convert.
		  write_callback: A function pointer that can be used to write intermediate
		    steps of graph transformation (optional).
		
		Returns:
		  A new graphdef with all ops contained in OpHints being replaced by
		  a single op call with the right parameters.
		Raises:
		  ValueError: If both session and graph_def are provided.
	**/
	static public function convert_op_hints_to_stubs(?session:Dynamic, ?graph_def:Dynamic, ?write_callback:Dynamic):Dynamic;
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