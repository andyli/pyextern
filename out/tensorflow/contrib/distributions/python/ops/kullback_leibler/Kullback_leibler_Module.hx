/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.kullback_leibler;
@:pythonImport("tensorflow.contrib.distributions.python.ops.kullback_leibler") extern class Kullback_leibler_Module {
	static public var _DIVERGENCES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get the KL-divergence KL(dist_a || dist_b).
		
		Args:
		  dist_a: instance of distributions.Distribution.
		  dist_b: instance of distributions.Distribution.
		  allow_nan: If `False` (default), a runtime error is raised
		    if the KL returns NaN values for any batch entry of the given
		    distributions.  If `True`, the KL may return a NaN for the given entry.
		  name: (optional) Name scope to use for created operations.
		
		Returns:
		  A Tensor with the batchwise KL-divergence between dist_a and dist_b.
		
		Raises:
		  TypeError: If dist_a or dist_b is not an instance of Distribution.
		  NotImplementedError: If no KL method is defined for distribution types
		    of dist_a and dist_b.
	**/
	static public function kl(dist_a:Dynamic, dist_b:Dynamic, ?allow_nan:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}