/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.transforms.boolean_mask;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.transforms.boolean_mask") extern class Boolean_mask_Module {
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
		Boolean mask for `SparseTensor`s.
		
		Args:
		  sparse_tensor: a `SparseTensor`.
		  mask: a 1D boolean dense`Tensor` whose length is equal to the 0th dimension
		    of `sparse_tensor`.
		  name: optional name for this operation.
		Returns:
		  A `SparseTensor` that contains row `k` of `sparse_tensor` iff `mask[k]` is
		  `True`.
	**/
	static public function sparse_boolean_mask(sparse_tensor:Dynamic, mask:Dynamic, ?name:Dynamic):Dynamic;
}