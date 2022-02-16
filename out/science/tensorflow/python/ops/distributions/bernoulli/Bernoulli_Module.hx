/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.bernoulli;
@:pythonImport("tensorflow.python.ops.distributions.bernoulli") extern class Bernoulli_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the batched KL divergence KL(a || b) with a and b Bernoulli.
		
		Args:
		  a: instance of a Bernoulli distribution object.
		  b: instance of a Bernoulli distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_bernoulli_bernoulli".
		
		Returns:
		  Batchwise KL(a || b)
	**/
	static public function _kl_bernoulli_bernoulli(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}