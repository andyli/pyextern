/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.batch_reshape;
@:pythonImport("tensorflow.contrib.distributions.python.ops.batch_reshape") extern class Batch_reshape_Module {
	static public var __all__ : Dynamic;
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
		Calculates the reshaped dimensions (replacing up to one -1 in reshape). (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function calculate_reshape(original_shape:Dynamic, new_shape:Dynamic, ?validate:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to __init__ which makes or raises assertions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function validate_init_args_statically(distribution:Dynamic, batch_shape:Dynamic):Dynamic;
}