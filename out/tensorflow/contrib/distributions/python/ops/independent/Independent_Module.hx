/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.independent;
@:pythonImport("tensorflow.contrib.distributions.python.ops.independent") extern class Independent_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Batched KL divergence `KL(a || b)` for Independent distributions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		We can leverage the fact that
		```
		KL(Independent(a) || Independent(b)) = sum(KL(a || b))
		```
		where the sum is over the `reinterpreted_batch_ndims`.
		
		Args:
		  a: Instance of `Independent`.
		  b: Instance of `Independent`.
		  name: (optional) name to use for created ops. Default "kl_independent".
		
		Returns:
		  Batchwise `KL(a || b)`.
		
		Raises:
		  ValueError: If the event space for `a` and `b`, or their underlying
		    distributions don't match.
	**/
	static public function _kl_independent(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}