/* This file is generated, do not edit! */
package tensorflow.lite.python.interpreter;
@:pythonImport("tensorflow.lite.python.interpreter") extern class Interpreter_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a integer identifier for the op resolver.
	**/
	static public function _get_op_resolver_id(?op_resolver_type:Dynamic):Dynamic;
	static public function _tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}