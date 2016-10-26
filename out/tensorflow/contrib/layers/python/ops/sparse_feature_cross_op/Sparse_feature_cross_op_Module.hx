/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.ops.sparse_feature_cross_op;
@:pythonImport("tensorflow.contrib.layers.python.ops.sparse_feature_cross_op") extern class Sparse_feature_cross_op_Module {
	static public function _SparseFeatureCrossShape(unused_op:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Crosses a list of Tensor or SparseTensor objects.
		
		See sparse_feature_cross_kernel.cc for more details.
		
		Args:
		  inputs: List of `SparseTensor` or `Tensor` to be crossed.
		  hashed_output: If true, returns the hash of the cross instead of the string.
		    This will allow us avoiding string manipulations.
		  num_buckets: It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `SparseTensor` with the crossed features.
		  Return type is string if hashed_output=False, int64 otherwise.
		
		Raises:
		  TypeError: If the inputs aren't either SparseTensor or Tensor.
	**/
	static public function sparse_feature_cross(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic):Dynamic;
}