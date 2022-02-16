/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.dirichlet;
@:pythonImport("tensorflow.python.ops.distributions.dirichlet") extern class Dirichlet_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _dirichlet_sample_note : Dynamic;
	/**
		Batchwise KL divergence KL(d1 || d2) with d1 and d2 Dirichlet.
		
		Args:
		  d1: instance of a Dirichlet distribution object.
		  d2: instance of a Dirichlet distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_dirichlet_dirichlet".
		
		Returns:
		  Batchwise KL(d1 || d2)
	**/
	static public function _kl_dirichlet_dirichlet(d1:Dynamic, d2:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}