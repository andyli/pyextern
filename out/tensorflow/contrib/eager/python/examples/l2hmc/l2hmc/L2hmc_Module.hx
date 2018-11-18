/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.l2hmc.l2hmc;
@:pythonImport("tensorflow.contrib.eager.python.examples.l2hmc.l2hmc") extern class L2hmc_Module {
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
		Compute loss defined in equation (8).
	**/
	static public function compute_loss(dynamics:Dynamic, x:Dynamic, ?scale:Dynamic, ?eps:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get energy function for rough well distribution.
	**/
	static public function get_rw_energy_fn():Dynamic;
	/**
		Get energy function for 2d strongly correlated Gaussian.
	**/
	static public function get_scg_energy_fn():Dynamic;
	/**
		Obtain loss value and gradients.
	**/
	static public function loss_and_grads(dynamics:Dynamic, x:Dynamic, ?loss_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}