/* This file is generated, do not edit! */
package tensorflow.contrib.layers.ops.gen_bucketization_op;
@:pythonImport("tensorflow.contrib.layers.ops.gen_bucketization_op") extern class Gen_bucketization_op_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bucketize_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Bucketizes 'input' based on 'boundaries'.
		
		For example, if the inputs are
		    boundaries = [0, 10, 100]
		    input = [[-5, 10000]
		             [150,   10]
		             [5,    100]]
		
		then the output will be
		    output = [[0, 3]
		              [3, 2]
		              [1, 3]]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Any shape of Tensor contains with int or float type.
		  boundaries: A list of `floats`.
		    A sorted list of floats gives the boundary of the buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  Same shape with 'input', each value of input replaced with bucket index.
	**/
	static public function bucketize(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
}