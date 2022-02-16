/* This file is generated, do not edit! */
package tensorflow.python.distribute.single_loss_example;
@:pythonImport("tensorflow.python.distribute.single_loss_example") extern class Single_loss_example_Module {
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
		Example of non-distribution-aware legacy code with batch normalization.
	**/
	static public function batchnorm_example(optimizer_fn:Dynamic, ?batch_per_epoch:Dynamic, ?momentum:Dynamic, ?renorm:Dynamic, ?update_ops_in_replica_mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Example of non-distribution-aware legacy code.
	**/
	static public function minimize_loss_example(optimizer:Dynamic, ?use_bias:Dynamic, ?use_callable_loss:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Build a very simple network to use in tests and examples.
	**/
	static public function single_loss_example(optimizer_fn:Dynamic, distribution:Dynamic, ?use_bias:Dynamic, ?iterations_per_step:Dynamic):Dynamic;
}