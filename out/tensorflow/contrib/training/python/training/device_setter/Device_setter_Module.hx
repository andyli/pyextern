/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.device_setter;
@:pythonImport("tensorflow.contrib.training.python.training.device_setter") extern class Device_setter_Module {
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
		Load function that computes the byte size of a single-output `Operation`.
		
		This is intended to be used with `"Variable"` ops, which have a single
		`Tensor` output with the contents of the variable.  However, it can also be
		used for calculating the size of any op that has a single output.
		
		Intended to be used with `GreedyLoadBalancingStrategy`.
		
		Args:
		  op: An `Operation` with a single output, typically a "Variable" op.
		
		Returns:
		  The number of bytes in the output `Tensor`.
		
		Raises:
		  ValueError: if `op` does not have a single output, or if the shape of the
		    single output is not fully-defined.
	**/
	static public function byte_size_load_fn(op:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}