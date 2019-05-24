/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.kumaraswamy;
@:pythonImport("tensorflow.contrib.distributions.python.ops.kumaraswamy") extern class Kumaraswamy_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute the harmonic number from its analytic continuation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Derivation from [here](
		https://en.wikipedia.org/wiki/Digamma_function#Relation_to_harmonic_numbers)
		and [Euler's constant](
		https://en.wikipedia.org/wiki/Euler%E2%80%93Mascheroni_constant).
		
		Args:
		  x: input float.
		
		Returns:
		  z: The analytic continuation of the harmonic number for the input.
	**/
	static public function _harmonic_number(x:Dynamic):Dynamic;
	static public var _kumaraswamy_sample_note : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}