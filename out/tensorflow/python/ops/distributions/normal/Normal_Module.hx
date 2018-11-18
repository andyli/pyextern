/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.normal;
@:pythonImport("tensorflow.python.ops.distributions.normal") extern class Normal_Module {
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
		Calculate the batched KL divergence KL(n_a || n_b) with n_a and n_b Normal.
		
		Args:
		  n_a: instance of a Normal distribution object.
		  n_b: instance of a Normal distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_normal_normal".
		
		Returns:
		  Batchwise KL(n_a || n_b)
	**/
	static public function _kl_normal_normal(n_a:Dynamic, n_b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}