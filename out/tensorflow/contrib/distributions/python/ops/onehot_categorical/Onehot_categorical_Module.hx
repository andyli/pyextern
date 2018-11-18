/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.onehot_categorical;
@:pythonImport("tensorflow.contrib.distributions.python.ops.onehot_categorical") extern class Onehot_categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the batched KL divergence KL(a || b) with a, b OneHotCategorical. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  a: instance of a OneHotCategorical distribution object.
		  b: instance of a OneHotCategorical distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_categorical_categorical".
		
		Returns:
		  Batchwise KL(a || b)
	**/
	static public function _kl_categorical_categorical(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}