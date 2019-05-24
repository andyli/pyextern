/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.quantized_distribution;
@:pythonImport("tensorflow.contrib.distributions.python.ops.quantized_distribution") extern class Quantized_distribution_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cdf_base_note : Dynamic;
	static public var _cdf_note : Dynamic;
	static public var _log_cdf_note : Dynamic;
	static public var _log_prob_note : Dynamic;
	static public var _log_sf_note : Dynamic;
	/**
		Stable evaluation of `Log[exp{big} - exp{small}]`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		To work correctly, we should have the pointwise relation:  `small <= big`.
		
		Args:
		  big: Floating-point `Tensor`
		  small: Floating-point `Tensor` with same `dtype` as `big` and broadcastable
		    shape.
		
		Returns:
		  `Tensor` of same `dtype` of `big` and broadcast shape.
	**/
	static public function _logsum_expbig_minus_expsmall(big:Dynamic, small:Dynamic):Dynamic;
	static public var _prob_base_note : Dynamic;
	static public var _prob_note : Dynamic;
	static public var _sf_base_note : Dynamic;
	static public var _sf_note : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}