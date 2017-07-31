/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.beta;
@:pythonImport("tensorflow.python.ops.distributions.beta") extern class Beta_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _beta_sample_note : Dynamic;
	/**
		Calculate the batchwise KL divergence KL(d1 || d2) with d1 and d2 Beta.
		
		Args:
		  d1: instance of a Beta distribution object.
		  d2: instance of a Beta distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_beta_beta".
		
		Returns:
		  Batchwise KL(d1 || d2)
	**/
	static public function _kl_beta_beta(d1:Dynamic, d2:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}