/* This file is generated, do not edit! */
package tensorflow.python.ops.numerics;
@:pythonImport("tensorflow.python.ops.numerics") extern class Numerics_Module {
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
		Connect a `check_numerics` to every floating point tensor.
		
		`check_numerics` operations themselves are added for each `half`, `float`,
		or `double` tensor in the graph. For all ops in the graph, the
		`check_numerics` op for all of its (`half`, `float`, or `double`) inputs
		is guaranteed to run before the `check_numerics` op on any of its outputs.
		
		Returns:
		  A `group` op depending on all `check_numerics` ops added.
	**/
	static public function add_check_numerics_ops():Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Assert that the tensor does not contain any NaN's or Inf's.
		
		Args:
		  t: Tensor to check.
		  msg: Message to log on failure.
		  name: A name for this operation (optional).
		
		Returns:
		  Same tensor as `t`.
	**/
	static public function verify_tensor_all_finite(t:Dynamic, msg:Dynamic, ?name:Dynamic):Dynamic;
}