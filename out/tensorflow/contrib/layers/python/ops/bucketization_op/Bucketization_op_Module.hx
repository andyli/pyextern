/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.ops.bucketization_op;
@:pythonImport("tensorflow.contrib.layers.python.ops.bucketization_op") extern class Bucketization_op_Module {
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
		Bucketizes input_tensor by given boundaries.
		
		See bucketize_op.cc for more details.
		
		Args:
		  input_tensor: A `Tensor` which will be bucketize.
		  boundaries: A list of floats gives the boundaries. It has to be sorted.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `Tensor` with type int32 which indicates the corresponding bucket for
		    each value in `input_tensor`.
		
		Raises:
		  TypeError: If boundaries is not a list.
	**/
	static public function bucketize(input_tensor:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}