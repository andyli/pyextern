/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.gamma;
@:pythonImport("tensorflow.python.ops.distributions.gamma") extern class Gamma_Module {
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
		Calculate the batched KL divergence KL(g0 || g1) with g0 and g1 Gamma.
		
		Args:
		  g0: instance of a Gamma distribution object.
		  g1: instance of a Gamma distribution object.
		  name: (optional) Name to use for created operations.
		    Default is "kl_gamma_gamma".
		
		Returns:
		  kl_gamma_gamma: `Tensor`. The batchwise KL(g0 || g1).
	**/
	static public function _kl_gamma_gamma(g0:Dynamic, g1:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}